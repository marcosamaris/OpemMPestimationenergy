num_threads=4
echo "Run Myocyte"
it=1
for i in {0..100..5}
do
	echo "Myocyte ${it} run, sample_value $((100+i)), threads ${num_threads}"
	time ./myocyte.out $((100+i)) 1 0 ${num_threads} > /dev/null
	it=$((it+1))
done
