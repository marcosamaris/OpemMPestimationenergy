#configs
#change num_threads for make different tests
#sudo chmod -R a+r /sys/class/powercap/intel-rapl #enable
num_threads=4
path_data="../../../data"

#//////////////////////////////////////////////////////////////////////////

#run Backprop
#example exec ./backprop 65536
output=$(./jouleit.sh -l)
output="$output;INPUT"
output=${output//$'\n'/,}
#echo $output >> out_backprop.csv
echo $output >> out_test2.csv

echo "Run Backprop"
for i in {100000..10000000..100000}
do
	#echo "Backprop ${it} run, sample_value ${i}, threads ${num_threads}"
	#time ./backprop ${i} > /dev/null
	
	output=$(./jouleit.sh -c ./backprop ${i} > /dev/null)
	output="$output;$i"
	output=${output//$'\n'/,}
	#echo $output >> out_backprop.csv
	echo $output >> out_test2.csv
	echo $output
done

#run LavaMD
#example exec ./lavaMD -cores 4 -boxes1d 10
output=$(./jouleit.sh -l)
output="$output;INPUT"
output=${output//$'\n'/,}
echo $output >> out_lavaMD.csv

echo "Run LavaMD"
it=1
for i in {1000..100000..1000}
do
	#echo "LavaMD ${it} run, sample_value ${i}, threads ${num_threads}"
	#time ./lavaMD -cores ${num_threads} -boxes1d ${i} > /dev/null

	output=$(./jouleit.sh -c ./lavaMD -cores ${num_threads} -boxes1d ${i})
	output="$output;$i"
	output=${output//$'\n'/,}
	echo $output >> out_lavaMD.csv
	echo $output

	it=$((it+1))
done

#run Lud
#example exec ./omp/lud_omp -s 8000 
output=$(./jouleit.sh -l)
output="$output;INPUT"
output=${output//$'\n'/,}
echo $output >> out_Lud.csv

echo "Run Lud"
it=1
for i in {1000000..100000000..1000000}
do
	#echo "Lud ${it} run, sample_value $((8000+i)), threads ${num_threads}"
	#time ./lud_omp -s $((8000+i)) > /dev/null

	output=$(./jouleit.sh -c ./lud_omp -s ${i})
	output="$output;$i"
	output=${output//$'\n'/,}
	echo $output >> out_Lud.csv
	echo $output

	it=$((it+1))
done

#run Myocyte
#example exec ./myocyte.out 100 1 0 4
output=$(./jouleit.sh -l)
output="$output;INPUT"
output=${output//$'\n'/,}
echo $output >> out_myocyte.csv

echo "Run Myocyte"
it=1
for i in {1000000..100000000..1000000}
do
	#echo "Myocyte ${it} run, sample_value ${i}, threads ${num_threads}"
	#time ./myocyte.out ${i} 1 0 ${num_threads} > /dev/null

	output=$(./jouleit.sh -c ./myocyte.out ${i} 1 0 ${num_threads})
	output="$output;$i"
	output=${output//$'\n'/,}
	echo $output >> out_myocyte.csv
	echo $output

	it=$((it+1))
done

#run StreamCluster
#example exec ./sc_omp 10 20 256 65536 65536 1000 none output.txt 4
output=$(./jouleit.sh -l)
output="$output;INPUT"
output=${output//$'\n'/,}
echo $output >> out_streamCluster.csv

echo "Run StreamCluster"
it=1
for i in {32768..65536..1024}
do
	#echo "StreamCluster ${it} run, sample_value ${i}, threads ${num_threads}"
	#time ./sc_omp 10 20 256 ${i} 65536 1000 none output.txt ${num_threads} > /dev/null 2>&1

	output=$(./jouleit.sh -c ./sc_omp 10 20 256 ${i} 65536 1000 none outputStreamTest.txt ${num_threads})
	output="$output;$i"
	output=${output//$'\n'/,}
	echo $output >> out_streamCluster.csv
	echo $output

	it=$((it+1))
done
