
tipo_a = 1;
ua     = -1;
sigma_a = [];
alfa_a  = [];
beta_a  = [];
gamma_a = [];

tipo_b = 1;
ub = 1;
sigma_b = [];
alfa_b  = [];
beta_b  = [];
gamma_b = [];

[x, u] = pvc(0, 1, 10,
    tipo_a,ua,sigma_a,alfa_a,beta_a,gamma_a,
    tipo_b,ub,sigma_b,alfa_b,beta_b,gamma_b
);

u

%%%%%%

tipo_a = 2;
ua     = [];
sigma_a = 1;
alfa_a  = [];
beta_a  = [];
gamma_a = [];

tipo_b = 1;
ub = 1;
sigma_b = [];
alfa_b  = [];
beta_b  = [];
gamma_b = [];


[x, u] = pvc(0, 1, 10,
    tipo_a,ua,sigma_a,alfa_a,beta_a,gamma_a,
    tipo_b,ub,sigma_b,alfa_b,beta_b,gamma_b
);

u

%%%

tipo_a = 1;
ua     = -1;
sigma_a = [];
alfa_a  = [];
beta_a  = [];
gamma_a = [];

tipo_b = 3;
ub = [];
sigma_b = [];
alfa_b  = -1;
beta_b  = 2;
gamma_b = -1;


[x, u] = pvc(0, 1, 10,
    tipo_a,ua,sigma_a,alfa_a,beta_a,gamma_a,
    tipo_b,ub,sigma_b,alfa_b,beta_b,gamma_b
);

u

