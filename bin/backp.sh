num_threads=4

#run Backprop
#example exec ./backprop 65536
echo "Run Backprop"
it=1
for i in {10000000..40000000..1000000}
do
	echo "Backprop ${it} run, sample_value ${i}, threads ${num_threads}"
	time ./backprop ${i} > /dev/null
	it=$((it+1))
done
