num_threads=4
path_data="../../../data"

echo "Run Leukocyte"
it=1
for i in {5..200..5}
do
	echo "Leukocyte ${it} run, sample_value ${i}, threads ${num_threads}"
	time ./leukocyte ${i} ${num_threads} ${path_data}/leukocyte/testfile.avi > /dev/null
	it=$((it+1))
done
