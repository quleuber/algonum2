#include "common.h"

#define NAME ap2a

#define PREF 100
#define RW   (-250)

#define KAPPA   ( 1 )
#define BETA_X  ( 0 )
#define BETA_Y  ( 0 )
#define GAMMA   ( 0 )
#define F       ( 0 )

#define B_A  ( 0 )
#define B_B  ( 5000 )
#define B_C  ( 0 )
#define B_D  ( 1000 )

#define REPLC_XD  PRESC(PREF)
#define REPLC_XU  PRESC(PREF)

#define REPLC_YD_XD  REPLC_XD
#define REPLC_YD_XU  REPLC_XU
#define REPLC_YU_XD  REPLC_XD
#define REPLC_YU_XU  REPLC_XU

#define AFTER_YD  MISTA_YD(-KAPPA, 0, 0)
#define AFTER_YU  MISTA_YU(-KAPPA, 0, 0)

#define AFTER_ALL \
    x = 1500; y = 600; \
    i = get_i(B_A, B_B, B_C, B_D, n, m, x, y) \
    R = RW; \
    x = 3200; y = 250; \
    i = get_i(B_A, B_B, B_C, B_D, n, m, x, y) \
    R = RW;

#define SOR_AFTER_MID \
    if x == 1500 && y == 600 || x == 3200 && y == 250 \
        R = RW; \
    endif
