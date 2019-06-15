
#define Ai  (2 * KAPPA * (_hx2i + _hy2i) + GAMMA)
#define Bi  (-KAPPA * (_hx2i) - BETA_X / (_2hx))
#define Ci  (-KAPPA * (_hx2i) + BETA_X / (_2hx))
#define Di  (-KAPPA * (_hy2i) - BETA_Y / (_2hy))
#define Ei  (-KAPPA * (_hy2i) + BETA_Y / (_2hy))

#define PRESC(VAL) \
    A = 1; \
    R  = VAL;

#define MISTA_YD(ALFA, BETA, GAMA) \
    A += Di *  (1 - hy * (BETA) / (ALFA)); \
    R -= Di * hy * (GAMA) / (ALFA);

#define MISTA_YU(ALFA, BETA, GAMA) \
    A += Ei *  (1 + hy * (BETA) / (ALFA)); \
    R -= Ei * hy * (GAMA) / (ALFA);

#define MISTA_XD(ALFA, BETA, GAMA) \
    A += Bi *  (1 + hx * (BETA) / (ALFA)); \
    R -= Bi * hy * (GAMA) / (ALFA);

#define MISTA_XU(ALFA, BETA, GAMA) \
    A += Ci *  (1 + hx * (BETA) / (ALFA)); \
    R -= Ci * hy * (GAMA) / (ALFA);

#define AFTER_XD
#define AFTER_XU
#define AFTER_YD
#define AFTER_YU

#define AFTER_YD_XD
#define AFTER_YD_XU
#define AFTER_YU_XD
#define AFTER_YU_XU
