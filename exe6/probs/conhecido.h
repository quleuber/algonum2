#include "common.h"

#define NAME conhecido

#define RESTART []
#define MAXIT   1000
#define TOL     1e-6

#define KAPPA   ( 1 )
#define BETA_X  ( 1 )
#define BETA_Y  ( 20 * y )
#define GAMMA   ( 1 )
#define F       ( -(202.5*x - 202.5)*x^8.0*(y - 1)*y*e^(x^4.5) + (45.0*x - 45.0)*x^4.5*(y - 1)*y*e^(x^4.5) - (247.5*x - 247.5)*x^3.5*(y - 1)*y*e^(x^4.5) - 90.0*x^4.5*(y - 1)*y*e^(x^4.5) + 10*(x - 1)*x*(y - 1)*y*e^(x^4.5) + 10*(x - 1)*(y - 1)*y*e^(x^4.5) + 10*x*(y - 1)*y*e^(x^4.5) - 20*(x - 1)*x*e^(x^4.5) - 20*(y - 1)*y*e^(x^4.5) + 200*((x - 1)*x*(y - 1)*e^(x^4.5) + (x - 1)*x*y*e^(x^4.5))*y )

#define B_A  ( 0 )
#define B_B  ( 1 )
#define B_C  ( 0 )
#define B_D  ( 1 )

#define REPLC_XD  PRESC(0)
#define REPLC_XU  PRESC(0)
#define REPLC_YD  PRESC(0)
#define REPLC_YU  PRESC(0)

#define REPLC_YD_XD  REPLC_YD
#define REPLC_YD_XU  REPLC_YD
#define REPLC_YU_XD  REPLC_YU
#define REPLC_YU_XU  REPLC_YU
