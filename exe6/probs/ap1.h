#include "conds.h"

#define NAME ap1

#define RESTART []
#define MAXIT   1000
#define TOL     1e-6

# Usa variáveis x e y
#define KAPPA   ( 1 )
#define BETA_X  ( 0 )
#define BETA_Y  ( 0 )
#define GAMMA   ( 1 )
#define F       ( 70 )

#define B_A  ( 0 )
#define B_B  ( 1 )
#define B_C  ( 0 )
#define B_D  ( 1 )

# u(x, 0) = 70
# u(x, W) = 70
# u(0, y) = 200
# u(L, y) = c ( u(L, y) - u_ref )

#define REPLC_YD  PRESC(70)
#define REPLC_YU  PRESC(70)
#define REPLC_XD  PRESC(200)

#define REPLC_YD_XD  REPLC_YD
#define REPLC_YD_XU  REPLC_YD
#define REPLC_YU_XD  REPLC_YU
#define REPLC_YU_XU  REPLC_YU

#define AFTER_XU  MISTA_XU(-KAPPA, -1, -70)
