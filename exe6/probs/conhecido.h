#include "conds.h"

#define NAME conhecido

# Usa variáveis x e y
#define KAPPA   ( 1 )
#define BETA_X  ( 1 )
#define BETA_Y  ( 20 * y )
#define GAMMA   ( 1 )
#define F       ( 000 )

#define B_A  ( 0 )
#define B_B  ( 1 )
#define B_C  ( 0 )
#define B_D  ( 1 )

#define COND_XD  PRESC(0)
#define COND_XU  PRESC(0)
#define COND_YD  PRESC(0)
#define COND_YU  PRESC(0)

#define COND_YD_XD  COND_YD
#define COND_YD_XU  COND_YD
#define COND_YU_XD  COND_YU
#define COND_YU_XU  COND_YU
