
PROBS=$(wildcard probs/*.h)
TGS_1=$(patsubst probs/%.h,bin/sys_%.m,$(PROBS))

build: $(TGS_1)

%/:
	mkdir -p $@

bin/sys_%.m: probs/*.h | bin/
	@#gpp -I "src" -I "probs" --include "$*.h" "./src/monta_pvc.m" -o "./bin/sysold_$*.m"
	gpp -I "src" -I "probs" --include "$*.h" "./src/monta_sistema.m" -o "./bin/sys_$*.m"

	gpp -I "src" -I "probs" --include "$*.h" "./src/executa_gmres.m" -o "./bin/gmres_$*.m"
	gpp -I "src" -I "probs" --include "$*.h" "./src/sor.m" -o "./bin/sor_$*.m"
