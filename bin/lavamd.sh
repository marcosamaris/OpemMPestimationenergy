#./lavaMD -cores 4 -boxes1d 10
num_threads=4
echo "Run LavaMD"
it=1
for i in {10..100..5}
do
	echo "LavaMD ${it} run, sample ${i}, threads ${num_threads}"
	time ./lavaMD -cores 4 -boxes1d ${i} > /dev/null
	it=$((it+1))
done
