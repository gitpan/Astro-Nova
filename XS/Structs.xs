   ### WARNING! AUTO-GENERATED! ALL CHANGES WILL BE LOST!


MODULE=Astro::Nova	PACKAGE=Astro::Nova::GalPosn

struct ln_gal_posn*
new(CLASS)
	char *CLASS
    CODE:
	RETVAL = (struct ln_gal_posn*)safemalloc( sizeof( struct ln_gal_posn ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct ln_gal_posn");
		XSRETURN_UNDEF;
	}
        RETVAL->l = 0.;
        RETVAL->b = 0.;
    OUTPUT:
	RETVAL

void
DESTROY(self)
	struct ln_gal_posn* self
    CODE:
	safefree( (char*)self );

double
get_l( self )
	struct ln_gal_posn* self
    CODE:
	RETVAL = self->l;
    OUTPUT:
	RETVAL

void
set_l( self, val )
	struct ln_gal_posn* self
	double val
    PPCODE:
	self->l = val;


double
get_b( self )
	struct ln_gal_posn* self
    CODE:
	RETVAL = self->b;
    OUTPUT:
	RETVAL

void
set_b( self, val )
	struct ln_gal_posn* self
	double val
    PPCODE:
	self->b = val;



MODULE=Astro::Nova	PACKAGE=Astro::Nova::Date

struct ln_date*
new(CLASS)
	char *CLASS
    CODE:
	RETVAL = (struct ln_date*)safemalloc( sizeof( struct ln_date ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct ln_date");
		XSRETURN_UNDEF;
	}
        RETVAL->seconds = 0.;
        RETVAL->hours = 0;
        RETVAL->years = 0;
        RETVAL->minutes = 0;
        RETVAL->days = 0;
        RETVAL->months = 0;
    OUTPUT:
	RETVAL

void
DESTROY(self)
	struct ln_date* self
    CODE:
	safefree( (char*)self );

double
get_seconds( self )
	struct ln_date* self
    CODE:
	RETVAL = self->seconds;
    OUTPUT:
	RETVAL

void
set_seconds( self, val )
	struct ln_date* self
	double val
    PPCODE:
	self->seconds = val;


int
get_hours( self )
	struct ln_date* self
    CODE:
	RETVAL = self->hours;
    OUTPUT:
	RETVAL

void
set_hours( self, val )
	struct ln_date* self
	int val
    PPCODE:
	self->hours = val;


int
get_years( self )
	struct ln_date* self
    CODE:
	RETVAL = self->years;
    OUTPUT:
	RETVAL

void
set_years( self, val )
	struct ln_date* self
	int val
    PPCODE:
	self->years = val;


int
get_minutes( self )
	struct ln_date* self
    CODE:
	RETVAL = self->minutes;
    OUTPUT:
	RETVAL

void
set_minutes( self, val )
	struct ln_date* self
	int val
    PPCODE:
	self->minutes = val;


int
get_days( self )
	struct ln_date* self
    CODE:
	RETVAL = self->days;
    OUTPUT:
	RETVAL

void
set_days( self, val )
	struct ln_date* self
	int val
    PPCODE:
	self->days = val;


int
get_months( self )
	struct ln_date* self
    CODE:
	RETVAL = self->months;
    OUTPUT:
	RETVAL

void
set_months( self, val )
	struct ln_date* self
	int val
    PPCODE:
	self->months = val;



MODULE=Astro::Nova	PACKAGE=Astro::Nova::LnLatPosn

struct ln_lnlat_posn*
new(CLASS)
	char *CLASS
    CODE:
	RETVAL = (struct ln_lnlat_posn*)safemalloc( sizeof( struct ln_lnlat_posn ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct ln_lnlat_posn");
		XSRETURN_UNDEF;
	}
        RETVAL->lat = 0.;
        RETVAL->lng = 0.;
    OUTPUT:
	RETVAL

void
DESTROY(self)
	struct ln_lnlat_posn* self
    CODE:
	safefree( (char*)self );

double
get_lat( self )
	struct ln_lnlat_posn* self
    CODE:
	RETVAL = self->lat;
    OUTPUT:
	RETVAL

void
set_lat( self, val )
	struct ln_lnlat_posn* self
	double val
    PPCODE:
	self->lat = val;


double
get_lng( self )
	struct ln_lnlat_posn* self
    CODE:
	RETVAL = self->lng;
    OUTPUT:
	RETVAL

void
set_lng( self, val )
	struct ln_lnlat_posn* self
	double val
    PPCODE:
	self->lng = val;



MODULE=Astro::Nova	PACKAGE=Astro::Nova::HMS

struct ln_hms*
new(CLASS)
	char *CLASS
    CODE:
	RETVAL = (struct ln_hms*)safemalloc( sizeof( struct ln_hms ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct ln_hms");
		XSRETURN_UNDEF;
	}
        RETVAL->seconds = 0.;
        RETVAL->hours = 0;
        RETVAL->minutes = 0;
    OUTPUT:
	RETVAL

void
DESTROY(self)
	struct ln_hms* self
    CODE:
	safefree( (char*)self );

double
get_seconds( self )
	struct ln_hms* self
    CODE:
	RETVAL = self->seconds;
    OUTPUT:
	RETVAL

void
set_seconds( self, val )
	struct ln_hms* self
	double val
    PPCODE:
	self->seconds = val;


unsigned short
get_hours( self )
	struct ln_hms* self
    CODE:
	RETVAL = self->hours;
    OUTPUT:
	RETVAL

void
set_hours( self, val )
	struct ln_hms* self
	unsigned short val
    PPCODE:
	self->hours = val;


unsigned short
get_minutes( self )
	struct ln_hms* self
    CODE:
	RETVAL = self->minutes;
    OUTPUT:
	RETVAL

void
set_minutes( self, val )
	struct ln_hms* self
	unsigned short val
    PPCODE:
	self->minutes = val;



MODULE=Astro::Nova	PACKAGE=Astro::Nova::DMS

struct ln_dms*
new(CLASS)
	char *CLASS
    CODE:
	RETVAL = (struct ln_dms*)safemalloc( sizeof( struct ln_dms ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct ln_dms");
		XSRETURN_UNDEF;
	}
        RETVAL->seconds = 0.;
        RETVAL->minutes = 0;
        RETVAL->neg = 0;
        RETVAL->degrees = 0;
    OUTPUT:
	RETVAL

void
DESTROY(self)
	struct ln_dms* self
    CODE:
	safefree( (char*)self );

double
get_seconds( self )
	struct ln_dms* self
    CODE:
	RETVAL = self->seconds;
    OUTPUT:
	RETVAL

void
set_seconds( self, val )
	struct ln_dms* self
	double val
    PPCODE:
	self->seconds = val;


unsigned short
get_minutes( self )
	struct ln_dms* self
    CODE:
	RETVAL = self->minutes;
    OUTPUT:
	RETVAL

void
set_minutes( self, val )
	struct ln_dms* self
	unsigned short val
    PPCODE:
	self->minutes = val;


unsigned short
get_neg( self )
	struct ln_dms* self
    CODE:
	RETVAL = self->neg;
    OUTPUT:
	RETVAL

void
set_neg( self, val )
	struct ln_dms* self
	unsigned short val
    PPCODE:
	self->neg = val;


unsigned short
get_degrees( self )
	struct ln_dms* self
    CODE:
	RETVAL = self->degrees;
    OUTPUT:
	RETVAL

void
set_degrees( self, val )
	struct ln_dms* self
	unsigned short val
    PPCODE:
	self->degrees = val;



MODULE=Astro::Nova	PACKAGE=Astro::Nova::HEquPosn

struct lnh_equ_posn*
new(CLASS)
	char *CLASS
    CODE:
	RETVAL = (struct lnh_equ_posn*)safemalloc( sizeof( struct lnh_equ_posn ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct lnh_equ_posn");
		XSRETURN_UNDEF;
	}
        Zero(&(RETVAL->ra), 1, struct ln_hms);
        Zero(&(RETVAL->dec), 1, struct ln_dms);
    OUTPUT:
	RETVAL

void
DESTROY(self)
	struct lnh_equ_posn* self
    CODE:
	safefree( (char*)self );

struct ln_hms*
get_ra( self )
	struct lnh_equ_posn* self
    INIT:
        const char* CLASS = "Astro::Nova::HMS"; /* hack to work around perlobject.map */
    CODE:
	RETVAL = (struct ln_hms*)safemalloc( sizeof( struct ln_hms ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct ln_hms");
		XSRETURN_UNDEF;
	}
        Copy(&(self->ra), (RETVAL), 1, struct ln_hms);
    OUTPUT:
	RETVAL

void
set_ra( self, val )
	struct lnh_equ_posn* self
	struct ln_hms* val
    PPCODE:
        Copy(val, &(self->ra), 1, struct ln_hms);


struct ln_dms*
get_dec( self )
	struct lnh_equ_posn* self
    INIT:
        const char* CLASS = "Astro::Nova::DMS"; /* hack to work around perlobject.map */
    CODE:
	RETVAL = (struct ln_dms*)safemalloc( sizeof( struct ln_dms ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct ln_dms");
		XSRETURN_UNDEF;
	}
        Copy(&(self->dec), (RETVAL), 1, struct ln_dms);
    OUTPUT:
	RETVAL

void
set_dec( self, val )
	struct lnh_equ_posn* self
	struct ln_dms* val
    PPCODE:
        Copy(val, &(self->dec), 1, struct ln_dms);



MODULE=Astro::Nova	PACKAGE=Astro::Nova::HLnLatPosn

struct lnh_lnlat_posn*
new(CLASS)
	char *CLASS
    CODE:
	RETVAL = (struct lnh_lnlat_posn*)safemalloc( sizeof( struct lnh_lnlat_posn ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct lnh_lnlat_posn");
		XSRETURN_UNDEF;
	}
        Zero(&(RETVAL->lat), 1, struct ln_dms);
        Zero(&(RETVAL->lng), 1, struct ln_dms);
    OUTPUT:
	RETVAL

void
DESTROY(self)
	struct lnh_lnlat_posn* self
    CODE:
	safefree( (char*)self );

struct ln_dms*
get_lat( self )
	struct lnh_lnlat_posn* self
    INIT:
        const char* CLASS = "Astro::Nova::DMS"; /* hack to work around perlobject.map */
    CODE:
	RETVAL = (struct ln_dms*)safemalloc( sizeof( struct ln_dms ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct ln_dms");
		XSRETURN_UNDEF;
	}
        Copy(&(self->lat), (RETVAL), 1, struct ln_dms);
    OUTPUT:
	RETVAL

void
set_lat( self, val )
	struct lnh_lnlat_posn* self
	struct ln_dms* val
    PPCODE:
        Copy(val, &(self->lat), 1, struct ln_dms);


struct ln_dms*
get_lng( self )
	struct lnh_lnlat_posn* self
    INIT:
        const char* CLASS = "Astro::Nova::DMS"; /* hack to work around perlobject.map */
    CODE:
	RETVAL = (struct ln_dms*)safemalloc( sizeof( struct ln_dms ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct ln_dms");
		XSRETURN_UNDEF;
	}
        Copy(&(self->lng), (RETVAL), 1, struct ln_dms);
    OUTPUT:
	RETVAL

void
set_lng( self, val )
	struct lnh_lnlat_posn* self
	struct ln_dms* val
    PPCODE:
        Copy(val, &(self->lng), 1, struct ln_dms);



MODULE=Astro::Nova	PACKAGE=Astro::Nova::HHrzPosn

struct lnh_hrz_posn*
new(CLASS)
	char *CLASS
    CODE:
	RETVAL = (struct lnh_hrz_posn*)safemalloc( sizeof( struct lnh_hrz_posn ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct lnh_hrz_posn");
		XSRETURN_UNDEF;
	}
        Zero(&(RETVAL->alt), 1, struct ln_dms);
        Zero(&(RETVAL->az), 1, struct ln_dms);
    OUTPUT:
	RETVAL

void
DESTROY(self)
	struct lnh_hrz_posn* self
    CODE:
	safefree( (char*)self );

struct ln_dms*
get_alt( self )
	struct lnh_hrz_posn* self
    INIT:
        const char* CLASS = "Astro::Nova::DMS"; /* hack to work around perlobject.map */
    CODE:
	RETVAL = (struct ln_dms*)safemalloc( sizeof( struct ln_dms ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct ln_dms");
		XSRETURN_UNDEF;
	}
        Copy(&(self->alt), (RETVAL), 1, struct ln_dms);
    OUTPUT:
	RETVAL

void
set_alt( self, val )
	struct lnh_hrz_posn* self
	struct ln_dms* val
    PPCODE:
        Copy(val, &(self->alt), 1, struct ln_dms);


struct ln_dms*
get_az( self )
	struct lnh_hrz_posn* self
    INIT:
        const char* CLASS = "Astro::Nova::DMS"; /* hack to work around perlobject.map */
    CODE:
	RETVAL = (struct ln_dms*)safemalloc( sizeof( struct ln_dms ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct ln_dms");
		XSRETURN_UNDEF;
	}
        Copy(&(self->az), (RETVAL), 1, struct ln_dms);
    OUTPUT:
	RETVAL

void
set_az( self, val )
	struct lnh_hrz_posn* self
	struct ln_dms* val
    PPCODE:
        Copy(val, &(self->az), 1, struct ln_dms);



MODULE=Astro::Nova	PACKAGE=Astro::Nova::HrzPosn

struct ln_hrz_posn*
new(CLASS)
	char *CLASS
    CODE:
	RETVAL = (struct ln_hrz_posn*)safemalloc( sizeof( struct ln_hrz_posn ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct ln_hrz_posn");
		XSRETURN_UNDEF;
	}
        RETVAL->alt = 0.;
        RETVAL->az = 0.;
    OUTPUT:
	RETVAL

void
DESTROY(self)
	struct ln_hrz_posn* self
    CODE:
	safefree( (char*)self );

double
get_alt( self )
	struct ln_hrz_posn* self
    CODE:
	RETVAL = self->alt;
    OUTPUT:
	RETVAL

void
set_alt( self, val )
	struct ln_hrz_posn* self
	double val
    PPCODE:
	self->alt = val;


double
get_az( self )
	struct ln_hrz_posn* self
    CODE:
	RETVAL = self->az;
    OUTPUT:
	RETVAL

void
set_az( self, val )
	struct ln_hrz_posn* self
	double val
    PPCODE:
	self->az = val;



MODULE=Astro::Nova	PACKAGE=Astro::Nova::ZoneDate

struct ln_zonedate*
new(CLASS)
	char *CLASS
    CODE:
	RETVAL = (struct ln_zonedate*)safemalloc( sizeof( struct ln_zonedate ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct ln_zonedate");
		XSRETURN_UNDEF;
	}
        RETVAL->seconds = 0.;
        RETVAL->hours = 0;
        RETVAL->gmtoff = 0;
        RETVAL->years = 0;
        RETVAL->minutes = 0;
        RETVAL->days = 0;
        RETVAL->months = 0;
    OUTPUT:
	RETVAL

void
DESTROY(self)
	struct ln_zonedate* self
    CODE:
	safefree( (char*)self );

double
get_seconds( self )
	struct ln_zonedate* self
    CODE:
	RETVAL = self->seconds;
    OUTPUT:
	RETVAL

void
set_seconds( self, val )
	struct ln_zonedate* self
	double val
    PPCODE:
	self->seconds = val;


int
get_hours( self )
	struct ln_zonedate* self
    CODE:
	RETVAL = self->hours;
    OUTPUT:
	RETVAL

void
set_hours( self, val )
	struct ln_zonedate* self
	int val
    PPCODE:
	self->hours = val;


long
get_gmtoff( self )
	struct ln_zonedate* self
    CODE:
	RETVAL = self->gmtoff;
    OUTPUT:
	RETVAL

void
set_gmtoff( self, val )
	struct ln_zonedate* self
	long val
    PPCODE:
	self->gmtoff = val;


int
get_years( self )
	struct ln_zonedate* self
    CODE:
	RETVAL = self->years;
    OUTPUT:
	RETVAL

void
set_years( self, val )
	struct ln_zonedate* self
	int val
    PPCODE:
	self->years = val;


int
get_minutes( self )
	struct ln_zonedate* self
    CODE:
	RETVAL = self->minutes;
    OUTPUT:
	RETVAL

void
set_minutes( self, val )
	struct ln_zonedate* self
	int val
    PPCODE:
	self->minutes = val;


int
get_days( self )
	struct ln_zonedate* self
    CODE:
	RETVAL = self->days;
    OUTPUT:
	RETVAL

void
set_days( self, val )
	struct ln_zonedate* self
	int val
    PPCODE:
	self->days = val;


int
get_months( self )
	struct ln_zonedate* self
    CODE:
	RETVAL = self->months;
    OUTPUT:
	RETVAL

void
set_months( self, val )
	struct ln_zonedate* self
	int val
    PPCODE:
	self->months = val;



MODULE=Astro::Nova	PACKAGE=Astro::Nova::ParOrbit

struct ln_par_orbit*
new(CLASS)
	char *CLASS
    CODE:
	RETVAL = (struct ln_par_orbit*)safemalloc( sizeof( struct ln_par_orbit ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct ln_par_orbit");
		XSRETURN_UNDEF;
	}
        RETVAL->w = 0.;
        RETVAL->omega = 0.;
        RETVAL->q = 0.;
        RETVAL->JD = 0.;
        RETVAL->i = 0.;
    OUTPUT:
	RETVAL

void
DESTROY(self)
	struct ln_par_orbit* self
    CODE:
	safefree( (char*)self );

double
get_w( self )
	struct ln_par_orbit* self
    CODE:
	RETVAL = self->w;
    OUTPUT:
	RETVAL

void
set_w( self, val )
	struct ln_par_orbit* self
	double val
    PPCODE:
	self->w = val;


double
get_omega( self )
	struct ln_par_orbit* self
    CODE:
	RETVAL = self->omega;
    OUTPUT:
	RETVAL

void
set_omega( self, val )
	struct ln_par_orbit* self
	double val
    PPCODE:
	self->omega = val;


double
get_q( self )
	struct ln_par_orbit* self
    CODE:
	RETVAL = self->q;
    OUTPUT:
	RETVAL

void
set_q( self, val )
	struct ln_par_orbit* self
	double val
    PPCODE:
	self->q = val;


double
get_JD( self )
	struct ln_par_orbit* self
    CODE:
	RETVAL = self->JD;
    OUTPUT:
	RETVAL

void
set_JD( self, val )
	struct ln_par_orbit* self
	double val
    PPCODE:
	self->JD = val;


double
get_i( self )
	struct ln_par_orbit* self
    CODE:
	RETVAL = self->i;
    OUTPUT:
	RETVAL

void
set_i( self, val )
	struct ln_par_orbit* self
	double val
    PPCODE:
	self->i = val;



MODULE=Astro::Nova	PACKAGE=Astro::Nova::EllOrbit

struct ln_ell_orbit*
new(CLASS)
	char *CLASS
    CODE:
	RETVAL = (struct ln_ell_orbit*)safemalloc( sizeof( struct ln_ell_orbit ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct ln_ell_orbit");
		XSRETURN_UNDEF;
	}
        RETVAL->w = 0.;
        RETVAL->e = 0.;
        RETVAL->n = 0.;
        RETVAL->a = 0.;
        RETVAL->omega = 0.;
        RETVAL->JD = 0.;
        RETVAL->i = 0.;
    OUTPUT:
	RETVAL

void
DESTROY(self)
	struct ln_ell_orbit* self
    CODE:
	safefree( (char*)self );

double
get_w( self )
	struct ln_ell_orbit* self
    CODE:
	RETVAL = self->w;
    OUTPUT:
	RETVAL

void
set_w( self, val )
	struct ln_ell_orbit* self
	double val
    PPCODE:
	self->w = val;


double
get_e( self )
	struct ln_ell_orbit* self
    CODE:
	RETVAL = self->e;
    OUTPUT:
	RETVAL

void
set_e( self, val )
	struct ln_ell_orbit* self
	double val
    PPCODE:
	self->e = val;


double
get_n( self )
	struct ln_ell_orbit* self
    CODE:
	RETVAL = self->n;
    OUTPUT:
	RETVAL

void
set_n( self, val )
	struct ln_ell_orbit* self
	double val
    PPCODE:
	self->n = val;


double
get_a( self )
	struct ln_ell_orbit* self
    CODE:
	RETVAL = self->a;
    OUTPUT:
	RETVAL

void
set_a( self, val )
	struct ln_ell_orbit* self
	double val
    PPCODE:
	self->a = val;


double
get_omega( self )
	struct ln_ell_orbit* self
    CODE:
	RETVAL = self->omega;
    OUTPUT:
	RETVAL

void
set_omega( self, val )
	struct ln_ell_orbit* self
	double val
    PPCODE:
	self->omega = val;


double
get_JD( self )
	struct ln_ell_orbit* self
    CODE:
	RETVAL = self->JD;
    OUTPUT:
	RETVAL

void
set_JD( self, val )
	struct ln_ell_orbit* self
	double val
    PPCODE:
	self->JD = val;


double
get_i( self )
	struct ln_ell_orbit* self
    CODE:
	RETVAL = self->i;
    OUTPUT:
	RETVAL

void
set_i( self, val )
	struct ln_ell_orbit* self
	double val
    PPCODE:
	self->i = val;



MODULE=Astro::Nova	PACKAGE=Astro::Nova::Nutation

struct ln_nutation*
new(CLASS)
	char *CLASS
    CODE:
	RETVAL = (struct ln_nutation*)safemalloc( sizeof( struct ln_nutation ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct ln_nutation");
		XSRETURN_UNDEF;
	}
        RETVAL->ecliptic = 0.;
        RETVAL->obliquity = 0.;
        RETVAL->longitude = 0.;
    OUTPUT:
	RETVAL

void
DESTROY(self)
	struct ln_nutation* self
    CODE:
	safefree( (char*)self );

double
get_ecliptic( self )
	struct ln_nutation* self
    CODE:
	RETVAL = self->ecliptic;
    OUTPUT:
	RETVAL

void
set_ecliptic( self, val )
	struct ln_nutation* self
	double val
    PPCODE:
	self->ecliptic = val;


double
get_obliquity( self )
	struct ln_nutation* self
    CODE:
	RETVAL = self->obliquity;
    OUTPUT:
	RETVAL

void
set_obliquity( self, val )
	struct ln_nutation* self
	double val
    PPCODE:
	self->obliquity = val;


double
get_longitude( self )
	struct ln_nutation* self
    CODE:
	RETVAL = self->longitude;
    OUTPUT:
	RETVAL

void
set_longitude( self, val )
	struct ln_nutation* self
	double val
    PPCODE:
	self->longitude = val;



MODULE=Astro::Nova	PACKAGE=Astro::Nova::RectPosn

struct ln_rect_posn*
new(CLASS)
	char *CLASS
    CODE:
	RETVAL = (struct ln_rect_posn*)safemalloc( sizeof( struct ln_rect_posn ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct ln_rect_posn");
		XSRETURN_UNDEF;
	}
        RETVAL->Z = 0.;
        RETVAL->X = 0.;
        RETVAL->Y = 0.;
    OUTPUT:
	RETVAL

void
DESTROY(self)
	struct ln_rect_posn* self
    CODE:
	safefree( (char*)self );

double
get_Z( self )
	struct ln_rect_posn* self
    CODE:
	RETVAL = self->Z;
    OUTPUT:
	RETVAL

void
set_Z( self, val )
	struct ln_rect_posn* self
	double val
    PPCODE:
	self->Z = val;


double
get_X( self )
	struct ln_rect_posn* self
    CODE:
	RETVAL = self->X;
    OUTPUT:
	RETVAL

void
set_X( self, val )
	struct ln_rect_posn* self
	double val
    PPCODE:
	self->X = val;


double
get_Y( self )
	struct ln_rect_posn* self
    CODE:
	RETVAL = self->Y;
    OUTPUT:
	RETVAL

void
set_Y( self, val )
	struct ln_rect_posn* self
	double val
    PPCODE:
	self->Y = val;



MODULE=Astro::Nova	PACKAGE=Astro::Nova::HelioPosn

struct ln_helio_posn*
new(CLASS)
	char *CLASS
    CODE:
	RETVAL = (struct ln_helio_posn*)safemalloc( sizeof( struct ln_helio_posn ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct ln_helio_posn");
		XSRETURN_UNDEF;
	}
        RETVAL->R = 0.;
        RETVAL->B = 0.;
        RETVAL->L = 0.;
    OUTPUT:
	RETVAL

void
DESTROY(self)
	struct ln_helio_posn* self
    CODE:
	safefree( (char*)self );

double
get_R( self )
	struct ln_helio_posn* self
    CODE:
	RETVAL = self->R;
    OUTPUT:
	RETVAL

void
set_R( self, val )
	struct ln_helio_posn* self
	double val
    PPCODE:
	self->R = val;


double
get_B( self )
	struct ln_helio_posn* self
    CODE:
	RETVAL = self->B;
    OUTPUT:
	RETVAL

void
set_B( self, val )
	struct ln_helio_posn* self
	double val
    PPCODE:
	self->B = val;


double
get_L( self )
	struct ln_helio_posn* self
    CODE:
	RETVAL = self->L;
    OUTPUT:
	RETVAL

void
set_L( self, val )
	struct ln_helio_posn* self
	double val
    PPCODE:
	self->L = val;



MODULE=Astro::Nova	PACKAGE=Astro::Nova::HypOrbit

struct ln_hyp_orbit*
new(CLASS)
	char *CLASS
    CODE:
	RETVAL = (struct ln_hyp_orbit*)safemalloc( sizeof( struct ln_hyp_orbit ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct ln_hyp_orbit");
		XSRETURN_UNDEF;
	}
        RETVAL->w = 0.;
        RETVAL->e = 0.;
        RETVAL->omega = 0.;
        RETVAL->q = 0.;
        RETVAL->JD = 0.;
        RETVAL->i = 0.;
    OUTPUT:
	RETVAL

void
DESTROY(self)
	struct ln_hyp_orbit* self
    CODE:
	safefree( (char*)self );

double
get_w( self )
	struct ln_hyp_orbit* self
    CODE:
	RETVAL = self->w;
    OUTPUT:
	RETVAL

void
set_w( self, val )
	struct ln_hyp_orbit* self
	double val
    PPCODE:
	self->w = val;


double
get_e( self )
	struct ln_hyp_orbit* self
    CODE:
	RETVAL = self->e;
    OUTPUT:
	RETVAL

void
set_e( self, val )
	struct ln_hyp_orbit* self
	double val
    PPCODE:
	self->e = val;


double
get_omega( self )
	struct ln_hyp_orbit* self
    CODE:
	RETVAL = self->omega;
    OUTPUT:
	RETVAL

void
set_omega( self, val )
	struct ln_hyp_orbit* self
	double val
    PPCODE:
	self->omega = val;


double
get_q( self )
	struct ln_hyp_orbit* self
    CODE:
	RETVAL = self->q;
    OUTPUT:
	RETVAL

void
set_q( self, val )
	struct ln_hyp_orbit* self
	double val
    PPCODE:
	self->q = val;


double
get_JD( self )
	struct ln_hyp_orbit* self
    CODE:
	RETVAL = self->JD;
    OUTPUT:
	RETVAL

void
set_JD( self, val )
	struct ln_hyp_orbit* self
	double val
    PPCODE:
	self->JD = val;


double
get_i( self )
	struct ln_hyp_orbit* self
    CODE:
	RETVAL = self->i;
    OUTPUT:
	RETVAL

void
set_i( self, val )
	struct ln_hyp_orbit* self
	double val
    PPCODE:
	self->i = val;



MODULE=Astro::Nova	PACKAGE=Astro::Nova::EquPosn

struct ln_equ_posn*
new(CLASS)
	char *CLASS
    CODE:
	RETVAL = (struct ln_equ_posn*)safemalloc( sizeof( struct ln_equ_posn ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct ln_equ_posn");
		XSRETURN_UNDEF;
	}
        RETVAL->ra = 0.;
        RETVAL->dec = 0.;
    OUTPUT:
	RETVAL

void
DESTROY(self)
	struct ln_equ_posn* self
    CODE:
	safefree( (char*)self );

double
get_ra( self )
	struct ln_equ_posn* self
    CODE:
	RETVAL = self->ra;
    OUTPUT:
	RETVAL

void
set_ra( self, val )
	struct ln_equ_posn* self
	double val
    PPCODE:
	self->ra = val;


double
get_dec( self )
	struct ln_equ_posn* self
    CODE:
	RETVAL = self->dec;
    OUTPUT:
	RETVAL

void
set_dec( self, val )
	struct ln_equ_posn* self
	double val
    PPCODE:
	self->dec = val;



MODULE=Astro::Nova	PACKAGE=Astro::Nova::RstTime

struct ln_rst_time*
new(CLASS)
	char *CLASS
    CODE:
	RETVAL = (struct ln_rst_time*)safemalloc( sizeof( struct ln_rst_time ) );
	if( RETVAL == NULL ){
		warn("unable to malloc struct ln_rst_time");
		XSRETURN_UNDEF;
	}
        RETVAL->rise = 0.;
        RETVAL->transit = 0.;
        RETVAL->set = 0.;
    OUTPUT:
	RETVAL

void
DESTROY(self)
	struct ln_rst_time* self
    CODE:
	safefree( (char*)self );

double
get_rise( self )
	struct ln_rst_time* self
    CODE:
	RETVAL = self->rise;
    OUTPUT:
	RETVAL

void
set_rise( self, val )
	struct ln_rst_time* self
	double val
    PPCODE:
	self->rise = val;


double
get_transit( self )
	struct ln_rst_time* self
    CODE:
	RETVAL = self->transit;
    OUTPUT:
	RETVAL

void
set_transit( self, val )
	struct ln_rst_time* self
	double val
    PPCODE:
	self->transit = val;


double
get_set( self )
	struct ln_rst_time* self
    CODE:
	RETVAL = self->set;
    OUTPUT:
	RETVAL

void
set_set( self, val )
	struct ln_rst_time* self
	double val
    PPCODE:
	self->set = val;


