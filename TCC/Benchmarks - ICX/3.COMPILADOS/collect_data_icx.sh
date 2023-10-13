#chmod -R a+r /sys/class/powercap/intel-rapl

cc="icx"

output=$(./jouleit.sh -l)
output="$output;INPUT"
output=${output//$'\n'/,}
echo $output >> bp_${cc}.csv

echo "Run BACKPROP"
#for i in {10240000..40960000..320000}
#for i in {2**24..2**25..2**17}
for i in {16777216..33554432..131072}
do

	output=$(./jouleit.sh -c ./backprop ${i})
	output="$output;$i"
	output=${output//$'\n'/,}
	echo $output >> bp_${cc}.csv
	echo $output
done

# ##############################################

output=$(./jouleit.sh -l)
output="$output;INPUT"
output=${output//$'\n'/,}
echo $output >> lava_${cc}.csv

echo "Run LAVAMD"
for i in {1..90..1}
do
	output=$(./jouleit.sh -c ./lavaMD -cores 4 -boxes1d ${i})
	output="$output;$i"
	output=${output//$'\n'/,}
	echo $output >> lava_${cc}.csv
	echo $output
done

# ##############################################

output=$(./jouleit.sh -l)
output="$output;INPUT"
output=${output//$'\n'/,}
echo $output >> lud_${cc}.csv

echo "Run LUD"
#for i in {10240..40960..320}
for i in {16384..32768..128}
# for i in {2**14..2**15..2**7}
do

	output=$(./jouleit.sh -c ./lud_omp -n 8 -s ${i})
	output="$output;$i"
	output=${output//$'\n'/,}
	echo $output >> lud_${cc}.csv
	echo $output
done

# ##############################################

output=$(./jouleit.sh -l)
output="$output;INPUT"
output=${output//$'\n'/,}
echo $output >> myo_${cc}.csv

echo "Run MYO"
for i in {512..1024..4}
# for i in {2**9..2**10..2**2}
do
	
	output=$(./jouleit.sh -c ./myocyte.out $i 1024 0 4 )
	output="$output;$i"
	output=${output//$'\n'/,}
	echo $output >> myo_${cc}.csv
	echo $output
done

# ##############################################

output=$(./jouleit.sh -l)
output="$output;INPUT"
output=${output//$'\n'/,}
echo $output >> stc_${cc}.csv

echo "Run STREAM"
for i in {2097152..4194304..16384}
# for i in {2**21..2**22..2**14}
do	
	output=$(./jouleit.sh -c ./sc_omp 10 20 256 ${i} ${i} 1000 none outputStreamTest.txt 4)
	output="$output;$i"
	output=${output//$'\n'/,}
	echo $output >> stc_${cc}.csv
	echo $output
done
