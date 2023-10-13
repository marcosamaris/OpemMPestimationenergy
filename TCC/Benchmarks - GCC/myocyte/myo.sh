num_threads=4
echo "Run Myocyte"
it=1
for i in {10000..1000000..10000}
do
	echo "Myocyte ${it} run, sample_value ${i}, threads ${num_threads}"
	time ./myocyte.out ${i} 1 0 ${num_threads} > /dev/null
	it=$((it+1))
done
