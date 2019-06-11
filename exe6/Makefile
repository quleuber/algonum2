
PROBS=$(wildcard probs/*.h)
TGS_1=$(patsubst probs/%.h,bin/sys_%.m,$(PROBS))

build: $(TGS_1)
	@# gpp "./monta_pvc.pre.m" -o "./monta_pvc.m"
	@# gpp "./monta_pvc_cond.pre.m" -o "./monta_pvc_cond.m"

%/:
	mkdir -p $@

bin/sys_%.m: probs/*.h | bin/
	gpp -I "probs" --include "$*.h" "./src/monta_pvc.m" -o "./bin/sys_$*.m"
