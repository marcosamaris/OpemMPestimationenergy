echo "Run Lud"
it=1
for i in {0..10000..2000}
do
	echo "Lud ${it} run, sample_value $((8000+i)), threads 4"
	time ./lud_omp -s $((8000+i)) > /dev/null
	it=$((it+1))
done
