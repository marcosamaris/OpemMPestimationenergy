#configs
#change num_threads for make different tests
num_threads=4
path_data="../../../data"

#//////////////////////////////////////////////////////////////////////////

#run Backprop
#example exec ./backprop 65536


output=$(./jouleit.sh -l)
output="$output;INPUT"
output=${output//$'\n'/,}
echo $output >> output_test.csv

echo "Run Backprop"
it=1
for i in {10000000..40000000..1000000}
do
	#echo "Backprop ${it} run, sample_value ${i}, threads ${num_threads}"
	#time ./backprop ${i} > /dev/null
	
	output=$(./jouleit.sh -c ./backprop ${i})
	output="$output;$i"
	output=${output//$'\n'/,}
	echo $output >> output_test.csv
	echo $output
	
	it=$((it+1))
done
