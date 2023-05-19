#./hotspot 1024 1024 1024 4 ../../../data/hotspot/temp_1024 ../../../data/hotspot/power_1024 output.out
echo "Run Hotspot"
it=1
for i in {1..100}
do 
	echo "Hotspot ${i} run, sample $((1024*i))"
	./hotspot 1024 1024 $((1024*i)) 4 ../../../data/hotspot/temp_1024 ../../../data/hotspot/power_1024 output.out
	it=$((it+1))
done
