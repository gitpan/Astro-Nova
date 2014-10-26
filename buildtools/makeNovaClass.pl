use strict;
use warnings;

my $xs_file = 'XS/Structs.xs';
my $module = 'Astro::Nova';

open my $oh, '>', $xs_file or die "Can't open $xs_file for output: $!";
print $oh "   ### WARNING! AUTO-GENERATED! ALL CHANGES WILL BE LOST!\n\n";
parse($oh);

sub parse {
  my $oh = shift;
  my %structs;
  my $struct;
  while (<DATA>) {
    chomp;
    if (/^\s*$/ and $struct) {
      $structs{$struct->{name}} = $struct;
      $struct = undef;
      next;
    }
    next if /^\s*$/;

    if (not $struct) {
      /^\s*(\S+)\s+(\S.*)$/ or die;
      $struct = {members => {}};
      $struct->{name} = $2;
      $struct->{package} = $1;
      $struct->{name} =~ s/\s+$//;
    }
    else {
      /^\s*([^\t]+)\t+(.*)$/ or die;
      my ($mtype, $mname) = ($1, $2);
      $mtype =~ s/^\s+//; $mtype =~ s/\s+$//;
      $mname =~ s/^\s+//; $mname =~ s/\s+$//;
      $struct->{members}{$mname} = $mtype;
    }
  }
  if ($struct) {
    $structs{$struct->{name}} = $struct;
  }
  write_structs($oh, \%structs);
}

sub write_structs {
  my ($oh, $structs) = @_;
  foreach my $struct (values %$structs) {
    print $oh "\nMODULE=$module	PACKAGE=$struct->{package}\n\n";
    print $oh constructor($struct), "\n";
    print $oh destructor($struct), "\n";
    print $oh accessors($struct, $structs), "\n";
  }
}

sub accessors {
  my ($struct, $structs_hash) = @_;
  my $name = $struct->{name};
  my $members = $struct->{members};

  my @code;
  foreach my $field (keys %$members) {
    my $type = $members->{$field};
    if ($type !~ /^\s*struct/ or $type =~ /^\s*struct.*\*\s*$/) {
      push @code, <<HERE;
$type
get_$field( self )
	$name* self
    CODE:
	RETVAL = self->$field;
    OUTPUT:
	RETVAL

void
set_$field( self, val )
	$name* self
	$type val
    PPCODE:
	self->$field = val;
HERE
    }
    else {
      my $field_class = $structs_hash->{$type}{package};
      die "Can't find class for type '$type'" if not defined $field_class;
      push @code, <<HERE;
$type*
get_$field( self )
	$name* self
    INIT:
        const char* CLASS = "$field_class"; /* hack to work around perlobject.map */
    CODE:
	RETVAL = ($type*)safemalloc( sizeof( $type ) );
	if( RETVAL == NULL ){
		warn("unable to malloc $type");
		XSRETURN_UNDEF;
	}
        Copy(&(self->$field), (RETVAL), 1, $type);
    OUTPUT:
	RETVAL

void
set_$field( self, val )
	$name* self
	$type* val
    PPCODE:
        Copy(val, &(self->$field), 1, $type);
HERE
    }
  }
  return join("\n\n", @code)."\n";
}


sub destructor {
  my ($struct) = @_;
  my $name = $struct->{name};
  return <<HERE;
void
DESTROY(self)
	$name* self
    CODE:
	safefree( (char*)self );
HERE
}

sub constructor {
  my ($struct) = @_;
  my $name = $struct->{name};
  my $initsection = '';
  my @init = (
    [qr/^\s*(?:unsigned\s+)?(?:int|long\s*long|long|short|char)\s*$/, '0'],
    [qr/^\s*(?:double|float)\s*$/, '0.'],
    [qr/^\s*struct\b/, sub {my ($f, $t) = @_; "Zero(&(RETVAL->$f), 1, $t);"}], # hack
  );

  foreach my $field (keys %{$struct->{members}}) {
    my $type = $struct->{members}{$field};
    foreach my $init (@init) {
      if ($type =~ $init->[0]) {
        if (ref($init->[1])) {
          $initsection .= "\n        " . $init->[1]->($field, $type);
        }
        else {
          $initsection .= "\n        RETVAL->$field = ".$init->[1].";";
        }
        last;
      }
    }
  }
  return <<HERE;
$name*
new(CLASS)
	char *CLASS
    CODE:
	RETVAL = ($name*)safemalloc( sizeof( $name ) );
	if( RETVAL == NULL ){
		warn("unable to malloc $name");
		XSRETURN_UNDEF;
	}$initsection
    OUTPUT:
	RETVAL
HERE
}

__DATA__

Astro::Nova::Date	struct ln_date
  int	years
  int	months
  int	days
  int	hours
  int	minutes
  double	seconds

Astro::Nova::DMS	struct ln_dms
  unsigned short 	neg
  unsigned short 	degrees
  unsigned short 	minutes
  double 	seconds

Astro::Nova::EllOrbit	struct ln_ell_orbit
  double 	a
  double 	e
  double 	i
  double 	w
  double 	omega
  double 	n
  double 	JD

Astro::Nova::EquPosn	struct ln_equ_posn
  double 	ra
  double 	dec

Astro::Nova::GalPosn	struct ln_gal_posn
  double 	l
  double 	b

Astro::Nova::HelioPosn	struct ln_helio_posn
  double 	L
  double 	B
  double 	R

Astro::Nova::HMS	struct ln_hms
  unsigned short 	hours
  unsigned short 	minutes
  double 	seconds

Astro::Nova::HrzPosn	struct ln_hrz_posn
  double 	az
  double 	alt

Astro::Nova::HypOrbit	struct ln_hyp_orbit
  double 	q
  double 	e
  double 	i
  double 	w
  double 	omega
  double 	JD

Astro::Nova::LnLatPosn	struct ln_lnlat_posn
  double 	lng
  double 	lat

Astro::Nova::Nutation	struct ln_nutation
  double 	longitude
  double 	obliquity
  double 	ecliptic

Astro::Nova::ParOrbit	struct ln_par_orbit
  double 	q
  double 	i
  double 	w
  double 	omega
  double 	JD

Astro::Nova::RectPosn	struct ln_rect_posn
  double 	X
  double 	Y
  double 	Z

Astro::Nova::RstTime	struct ln_rst_time
  double 	rise
  double 	set
  double 	transit

Astro::Nova::ZoneDate	struct ln_zonedate
  int 	years
  int 	months
  int 	days
  int 	hours
  int 	minutes
  double 	seconds
  long 	gmtoff

Astro::Nova::HEquPosn	struct lnh_equ_posn
  struct ln_hms	ra
  struct ln_dms	dec

Astro::Nova::HHrzPosn	struct lnh_hrz_posn
  struct ln_dms 	az
  struct ln_dms 	alt

Astro::Nova::HLnLatPosn	struct lnh_lnlat_posn
  struct ln_dms 	lng
  struct ln_dms 	lat
