# output=$(./jouleit.sh -l)
# output="$output;INPUT"
# output=${output//$'\n'/,}
# echo $output >> BACKPROP.csv

# echo "Run BACKPROP"
# for i in {10240000..40960000..320000}
# do

# 	output=$(./jouleit.sh -c ./backprop ${i})
# 	output="$output;$i"
# 	output=${output//$'\n'/,}
# 	echo $output >> BACKPROP.csv
# 	echo $output
# done

# ##############################################

# output=$(./jouleit.sh -l)
# output="$output;INPUT"
# output=${output//$'\n'/,}
# echo $output >> LAVAMD.csv

# echo "Run LAVAMD"
# for i in {1..90..1}
# do
# 	output=$(./jouleit.sh -c ./lavaMD -cores 4 -boxes1d ${i})
# 	output="$output;$i"
# 	output=${output//$'\n'/,}
# 	echo $output >> LAVAMD.csv
# 	echo $output
# done

# ##############################################

# output=$(./jouleit.sh -l)
# output="$output;INPUT"
# output=${output//$'\n'/,}
# echo $output >> LUD.csv

# echo "Run LUD"
# for i in {10240..40960..320}
# do

# 	output=$(./jouleit.sh -c ./lud_omp -n 8 -s ${i})
# 	output="$output;$i"
# 	output=${output//$'\n'/,}
# 	echo $output >> LUD.csv
# 	echo $output
# done

# ##############################################

output=$(./jouleit.sh -l)
output="$output;INPUT"
output=${output//$'\n'/,}
echo $output >> MYO.csv

echo "Run MYO"
for i in {256..1024..8}
do
	
	output=$(./jouleit.sh -c ./myocyte.out $i 1024 0 4 )
	output="$output;$i"
	output=${output//$'\n'/,}
	echo $output >> MYO.csv
	echo $output
done

# ##############################################

# output=$(./jouleit.sh -l)
# output="$output;INPUT"
# output=${output//$'\n'/,}
# echo $output >> STREAM.csv

# echo "Run STREAM"
# for i in {65536..6619136..65536}
# do
	
# 	output=$(./jouleit.sh -c ./sc_omp 10 20 256 ${i} ${i} 1000 none outputStreamTest.txt 4)
# 	output="$output;$i"
# 	output=${output//$'\n'/,}
# 	echo $output >> STREAM.csv
# 	echo $output
# done
