#!/bin/bash

#cd OpenMP/stencils/convolution-2d
#pwd
#output=$(./jouleit.sh -l)
#output="$output;INPUT"
#output=${output//$'\n'/,}
#echo $output >> output_convolution-2d.csv
#for i in `seq 4096 32 8192`; do
#	
#	gcc -O2 -I../../utilities convolution-2d.c ../../utilities/polybench.c -o convolution-2d_acc -DNI=${i} -DNJ=${i} -fopenmp
#	output=$(./jouleit.sh -c ./convolution-2d_acc -n)
#	output="$output;$i"
#	output=${output//$'\n'/,}
#	echo $output >> output_convolution-2d.csv
#	echo $output
#done
#mv output_convolution-2d.csv  ../../../../data/output_Polybench
#cd -
#
#cd OpenMP/linear-algebra/kernels/atax
#pwd
#output=$(./jouleit.sh -l)
#output="$output;INPUT"
#output=${output//$'\n'/,}
#echo $output >> output_atax.csv 
#
#for i in `seq 6800 32 10000`; do
#	gcc -O2 -I../../../utilities atax.c ../../../utilities/polybench.c -o atax_acc -DNX=${i} -DNY=${i} -fopenmp
#	
#	output=$(./jouleit.sh -c ./atax_acc -n)
#	output="$output;$i"
#	output=${output//$'\n'/,}
#	echo $output >> output_atax.csv
#	echo $output
#done
#mv output_atax.csv   ../../../../../../data/output_Polybench
#cd -
#
#cd OpenMP/linear-algebra/kernels/bicg
#pwd
#output=$(./jouleit.sh -l)
#output="$output;INPUT"
#output=${output//$'\n'/,}
#echo $output >> output_bicg.csv 
#
#for i in `seq 6800 32 10000`; do
#	gcc -I../../../utilities bicg.c ../../../utilities/polybench.c -o bicg_acc -DNX=${i} -DNY=${i} -fopenmp
#	
#	output=$(./jouleit.sh -c ./bicg_acc -n)
#	output="$output;$i"
#	output=${output//$'\n'/,}
#	echo $output >> output_bicg.csv
#	echo $output
#done
#mv output_bicg.csv   ../../../../../../data/output_Polybench
#cd -
#
#cd OpenMP/stencils/fdtd-apml
#pwd
#output=$(./jouleit.sh -l)
#output="$output;INPUT"
#output=${output//$'\n'/,}
#echo $output >> output_fdtd-apml.csv
### no valor 595 ja nao tive memoria suficiente
#for i in `seq 100 5 600`; do
#	gcc -O2 -I../../utilities fdtd-apml.c ../../utilities/polybench.c -o fdtd-apml_acc -DCZ=${i} -DCYM=${i} -DCXM=${i} -fopenmp
#	output=$(./jouleit.sh -c ./fdtd-apml_acc -n)
#	output="$output;$i"
#	output=${output//$'\n'/,}
#	echo $output >> output_fdtd-apml.csv
#	echo $output
#done
#mv output_fdtd-apml.csv   ../../../../data/output_Polybench
#cd -
#cd OpenMP/linear-algebra/kernels/cholesky
#pwd
#output=$(./jouleit.sh -l)
#output="$output;INPUT"
#output=${output//$'\n'/,}
#echo $output >> output_cholesky.csv 
#for i in `seq 800 32 4000`; do
#	gcc -O2 -I../../../utilities cholesky.c ../../../utilities/polybench.c -o cholesky_acc -DN=${i} -lm -fopenmp
#	
#	output=$(./jouleit.sh -c ./cholesky_acc -n)
#	output="$output;$i"
#	output=${output//$'\n'/,}
#	echo $output >> output_cholesky.csv
#	echo $output
#done
#mv output_cholesky.csv   ../../../../../../data/output_Polybench
#cd -
#
#cd OpenMP/linear-algebra/kernels/gesummv
#pwd
#
#output=$(./jouleit.sh -l)
#output="$output;INPUT"
#output=${output//$'\n'/,}
#echo $output >> output_gesummv.csv 
#
#for i in `seq 20000 100 30000`; do
#
#gcc -O2 -I../../../utilities gesummv.c ../../../utilities/polybench.c -o gesummv_acc -DN=${i} -fopenmp
#
#	output=$(./jouleit.sh -c ./gesummv_acc -n)
#	output="$output;$i"
#	output=${output//$'\n'/,}
#	echo $output >> output_gesummv.csv
#	echo $output
#done
#mv output_gesummv.csv   ../../../../../../data/output_Polybench
#cd -
#
#cd OpenMP/linear-algebra/solvers/lu
#pwd
#
#output=$(./jouleit.sh -l)
#output="$output;INPUT"
#output=${output//$'\n'/,}
#echo $output >> output_lu.csv
#
#for i in `seq 800 32 4000`; do
#	gcc -O2 -I../../../utilities lu.c ../../../utilities/polybench.c -o lu_acc -DN=${i} -fopenmp
#
#	output=$(./jouleit.sh -c ./lu_acc -n)
#	output="$output;$i"
#	output=${output//$'\n'/,}
#	echo $output >> output_lu.csv
#	echo $output
#
#done
#mv output_lu.csv   ../../../../../../data/output_Polybench
#cd -
#
#cd OpenMP/linear-algebra/kernels/trmm
#pwd
#
#output=$(./jouleit.sh -l)
#output="$output;INPUT"
#output=${output//$'\n'/,}
#echo $output >> output_trmm.csv 
#
#for i in `seq 800 32 4000`; do
#
#gcc -O2 -I../../../utilities trmm.c ../../../utilities/polybench.c -o trmm_acc -DNI=${i} -fopenmp
#	output=$(./jouleit.sh -c ./trmm_acc -n)
#	output="$output;$i"
#	output=${output//$'\n'/,}
#	echo $output >> output_trmm.csv
#	echo $output
#done
#mv output_trmm.csv   ../../../../../../data/output_Polybench
#cd -
#
#cd OpenMP/linear-algebra/kernels/syrk
#pwd
#
#output=$(./jouleit.sh -l)
#output="$output;INPUT"
#output=${output//$'\n'/,}
#echo $output >> output_syrk.csv 
#
#for i in `seq 800 32 4000`; do
#	gcc -O2 -I../../../utilities syrk.c ../../../utilities/polybench.c -o syrk_acc -DNI=${i} -DNJ=${i} -fopenmp
#	output=$(./jouleit.sh -c ./syrk_acc -n)
#	output="$output;$i"
#	output=${output//$'\n'/,}
#	echo $output >> output_syrk.csv
#	echo $output
#done
#mv output_syrk.csv   ../../../../../../data/output_Polybench
#cd -
#
#cd OpenMP/linear-algebra/kernels/mvt
#pwd
#
#output=$(./jouleit.sh -l)
#output="$output;INPUT"
#output=${output//$'\n'/,}
#echo $output >> output_mvt.csv 
#
#for i in `seq 20000 100 30000`; do
#
#gcc -O2 -I../../../utilities mvt.c ../../../utilities/polybench.c -o mvt_acc -DN=${i} -fopenmp
#	output=$(./jouleit.sh -c ./mvt_acc -n)
#	output="$output;$i"
#	output=${output//$'\n'/,}
#	echo $output >> output_mvt.csv
#	echo $output
#
#done
#mv output_mvt.csv   ../../../../../../data/output_Polybench
#cd -
#
#cd OpenMP/linear-algebra/kernels/gemver
#pwd
#
#output=$(./jouleit.sh -l)
#output="$output;INPUT"
#output=${output//$'\n'/,}
#echo $output >> output_gemver.csv 
#
#for i in `seq 20000 100 30000`; do
#
#	gcc -O2 -I../../../utilities gemver.c ../../../utilities/polybench.c -o gemver_acc -DN=${i} -fopenmp
#	output=$(./jouleit.sh -c ./gemver_acc -n)
#	output="$output;$i"
#	output=${output//$'\n'/,}
#	echo $output >> output_gemver.csv
#	echo $output
#done
#mv output_gemver.csv   ../../../../../../data/output_Polybench
#cd -
#
#cd OpenMP/linear-algebra/solvers/durbin
#pwd
#
#output=$(./jouleit.sh -l)
#output="$output;INPUT"
#output=${output//$'\n'/,}
#echo $output >> output_durbin.csv 
#
#for i in `seq 10000 100 20000`; do
#
#gcc -O2 -I../../../utilities durbin.c ../../../utilities/polybench.c -o durbin_acc -DN=${i} -fopenmp
#	output=$(./jouleit.sh -c ./durbin_acc -n)
#	output="$output;$i"
#	output=${output//$'\n'/,}
#	echo $output >> output_durbin.csv
#	echo $output
#
#done
#mv output_durbin.csv   ../../../../../../data/output_Polybench
#cd -
#
#cd OpenMP/linear-algebra/kernels/syr2k
#pwd
#
#output=$(./jouleit.sh -l)
#output="$output;INPUT"
#output=${output//$'\n'/,}
#echo $output >> output_syr2k.csv 
#
#for i in `seq 800 32 4000`; do
#	gcc -O2 -I../../../utilities syr2k.c ../../../utilities/polybench.c -o syr2k_acc -DNI=${i} -DNJ=${i} -DNK=${i} -DNL=${i} -DNM=${i} -fopenmp
#	output=$(./jouleit.sh -c ./syr2k_acc -n)
#	output="$output;$i"
#	output=${output//$'\n'/,}
#	echo $output >> output_syr2k.csv
#	echo $output
#
#done
#mv output_syr2k.csv   ../../../../../../data/output_Polybench
#cd -
#
#cd OpenMP/ datamining/correlation
#pwd
#
#output=$(./jouleit.sh -l)
#output="$output;INPUT"
#output=${output//$'\n'/,}
#echo $output >> output_correlation.csv
#
#for i in `seq 800 32 4000`; do
#	
#	gcc -O2 -I../../utilities correlation.c ../../utilities/polybench.c -o correlation_acc -DN=${i} -DM=${i} -lm -fopenmp 
#	
#	output=$(./jouleit.sh -c ./correlation_acc -n)
#	output="$output;$i"
#	output=${output//$'\n'/,}
#	echo $output >> output_correlation.csv
#	echo $output
#
#done
#mv output_correlation.csv ../../../../data/output_Polybench
#cd -
#
#cd OpenMP/linear-algebra/kernels/gemm
#pwd
#output=$(./jouleit.sh -l)
#output="$output;INPUT"
#output=${output//$'\n'/,}
#echo $output >> output_gemm.csv 
#for i in `seq 800 32 4000`; do
#	gcc -O2 -I../../../utilities gemm.c ../../../utilities/polybench.c -o gemm_acc -DNI=${i} -DNJ=${i} -DNK=${i} -fopenmp
#	output=$(./jouleit.sh -c ./gemm_acc -n)
#	output="$output;$i"
#	output=${output//$'\n'/,}
#	echo $output >> output_gemm.csv
#	echo $output
#done
#mv output_gemm.csv   ../../../../../../data/output_Polybench
#cd -
#
#cd OpenMP/linear-algebra/kernels/doitgen
#pwd
#output=$(./jouleit.sh -l)
#output="$output;INPUT"
#output=${output//$'\n'/,}
#echo $output >> output_doitgen.csv 
#for i in `seq 128 9 1028`; do
#	gcc -O2 -I../../../utilities doitgen.c ../../../utilities/polybench.c -o doitgen_acc -DNQ=${i} -DNR=${i} -DNP=${i} -fopenmp
#	
#	output=$(./jouleit.sh -c ./doitgen_acc -n)
#	output="$output;$i"
#	output=${output//$'\n'/,}
#	echo $output >> output_doitgen.csv
#	echo $output
#done
#mv output_doitgen.csv   ../../../../../../data/output_Polybench
#cd -
#
#pwd

#cd OpenMP/datamining/covariance
#pwd
#output=$(./jouleit.sh -l)
#output="$output;INPUT"
#output=${output//$'\n'/,}
#echo $output >> output_covariance.csv
#for i in `seq 800 32 4000`; do

#	gcc -O2 -I../../utilities covariance.c ../../utilities/polybench.c -o covariance_acc -DN=${i} -DM=${i} -lm -fopenmp 
#	output=$(./jouleit.sh -c ./covariance_acc -n)
#	output="$output;$i"
#	output=${output//$'\n'/,}
#	echo $output >> output_covariance.csv
#	echo $output
#done
#mv output_covariance.csv ../../../../data/output_Polybench
#cd -


#cd OpenMP/linear-algebra/kernels/2mm
#pwd
#output=$(./jouleit.sh -l)
#output="$output;INPUT"
#output=${output//$'\n'/,}
#echo $output >> output_2mm.csv 
#
#for i in `seq 800 32 4000`; do
#	gcc -O2 -I../../../utilities 2mm.c ../../../utilities/polybench.c -o 2mm_acc -DNI=${i} -DNJ=${i} -DNK=${i} -DNL=${i} -fopenmp
#	
#	output=$(./jouleit.sh -c ./2mm_acc -n)
#	output="$output;$i"
#	output=${output//$'\n'/,}
#	echo $output >> output_2mm.csv
#	echo $output
#done
#mv output_2mm.csv   ../../../../../../data/output_Polybench
#cd -
#cd OpenMP/linear-algebra/kernels/symm
#pwd
#
#output=$(./jouleit.sh -l)
#output="$output;INPUT"
#output=${output//$'\n'/,}
#echo $output >> output_symm.csv 
#for i in `seq 800 32 4000`; do
#	gcc -O2 -I../../../utilities symm.c ../../../utilities/polybench.c -o symm_acc -DNI=${i} -DNJ=${i} -DNK=${i} -DNL=${i} -DNM=${i} -fopenmp
#	
#	output=$(./jouleit.sh -c ./symm_acc -n)
#	output="$output;$i"
#	output=${output//$'\n'/,}
#	echo $output >> output_symm.csv
#	echo $output
#
#done
#mv output_symm.csv   ../../../../../../data/output_Polybench
#cd -
#
#cd OpenMP/linear-algebra/kernels/3mm
#
#pwd
#output=$(./jouleit.sh -l)
#output="$output;INPUT"
#output=${output//$'\n'/,}
#echo $output >> output_3mm.csv 
#
#for i in `seq 800 32 4000`; do
#	gcc -O2 -I../../../utilities 3mm.c ../../../utilities/polybench.c -o 3mm_acc -DNI=${i} -DNJ=${i} -DNK=${i} -DNL=${i} -DNM=${i} -fopenmp
#	output=$(./jouleit.sh -c ./3mm_acc -n)
#	output="$output;$i"
#	output=${output//$'\n'/,}
#	echo $output >> output_3mm.csv
#	echo $output
#done
#mv output_3mm.csv   ../../../../../../data/output_Polybench
#cd -
#
#
#
#cd OpenMP/linear-algebra/solvers/gramschmidt
#pwd
#output=$(./jouleit.sh -l)
#output="$output;INPUT"
#output=${output//$'\n'/,}
#echo $output >> output_gramscmidt.csv
#for i in `seq 800 32 4000`;do

#gcc -O2 -I../../../utilities gramschmidt.c ../../../utilities/polybench.c -o gramschmidt_acc -DNI=${i} -DNJ=${i}  -fopenmp -lm
#
#	output=$(./jouleit.sh -c ./gramschmidt_acc -n)
#	output="$output;$i"
#	output=${output//$'\n'/,}
#	echo $output >> output_gramscmidt.csv
#	echo $output
#done
#
#mv output_gramscmidt.csv   ../../../../../../data/output_Polybench
#cd -
#
##-------------------------------------------STENCILS--------------------------------------------------------------------



###cd OpenMP/stencils/convolution-3d
###
###pwd
###
###for i in `seq 1 1 128`; do
###	
###	gcc -O2 -I../../utilities convolution-3d.c ../../utilities/polybench.c -o convolution-3d_acc -DNI=${i} -DNJ=${i} -DNK=${i} -fopenmp -w
###	
###	./convolution-3d_acc
###
###done
###mv output_convolution-3d.csv   ../../../../../../data_Polybench/output
###cd -
