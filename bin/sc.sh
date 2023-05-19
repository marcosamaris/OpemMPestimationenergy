num_threads=4
echo "Run StreamCluster"
it=1
for i in {32768..65536..1024}
do
	echo "StreamCluster ${it} run, sample_value ${i}, threads ${num_threads}"
	time ./sc_omp 10 20 256 ${i} 65536 1000 none output.txt ${num_threads} > /dev/null 2>&1
	it=$((it+1))
done
