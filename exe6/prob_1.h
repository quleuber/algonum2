
#define NAME simples

# Usa variáveis x e y
#define KAPPA   1
#define BETA_X  0
#define BETA_Y  0
#define GAMMA   0
#define F       5

#   e
# b a c
#   d

#define PRESC(VAL) \
    A = 1; \
    R  = VAL;

#define COND_XD  PRESC(1000)
#define COND_XU  PRESC(1000)
#define COND_YD  PRESC(2000)
#define COND_YU  PRESC(2000)

#define COND_YD_XD  COND_YD
#define COND_YD_XU  COND_YD
#define COND_YU_XD  COND_YU
#define COND_YU_XU  COND_YU
