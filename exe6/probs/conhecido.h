#define NAME simples

# Usa variáveis x e y
#define KAPPA   ( 1 )
#define BETA_X  ( 1 )
#define BETA_Y  ( 20 * y )
#define GAMMA   ( 1 )
#define F       ( 000 )
# TODO obter f(x,y)

#define B_A  ( 0 )
#define B_B  ( 1 )
#define B_C  ( 0 )
#define B_D  ( 1 )

#   e
# b a c
#   d

#define PRESC(VAL) \
    A = 1; \
    R  = VAL;

#define COND_XD  PRESC(0)
#define COND_XU  PRESC(0)
#define COND_YD  PRESC(0)
#define COND_YU  PRESC(0)

#define COND_YD_XD  COND_YD
#define COND_YD_XU  COND_YD
#define COND_YU_XD  COND_YU
#define COND_YU_XU  COND_YU
