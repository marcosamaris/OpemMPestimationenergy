#configs
#change num_threads for make different tests
num_threads=4
path_data="../../../data"

#//////////////////////////////////////////////////////////////////////////

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

#run Bfs
#example exec ./bfs 4 ../../data/bfs/graph1MW_6.txt 
echo "Run BFS"
it=1
for i in {16..25}
do
    echo "BFS ${it} run, sample_value graph${i}M.txt, threads ${num_threads}"
    time ./bfs ${num_threads} ${path_data}/bfs/inputGen/graph${i}M.txt > /dev/null
    it=$((it + 1))
done

#run Heartwall
#example exec ./heartwall ../../data/heartwall/test.avi 20 4
echo "Run HearthWall"
it=1
for i in {20..120}
do
	echo "HeartWall ${it} run, sample_value ${i}, threads ${num_threads}"
	time ./heartwall ${path_data}/heartwall/test.avi ${i} ${num_threads} > /dev/null
	it=$((it+1))
done

#run Hotspot
#example exec ./hotspot 1024 1024 2 4 ../../data/hotspot/temp_1024 ../../data/hotspot/power_1024 output.out
echo "Run Hotspot"
it=1
for i in {1..100}
do 
	echo "Hotspot ${i} run, sample_value $((1024*i)), threads ${num_threads}"
	time ./hotspot 1024 1024 $((1024*i)) ${num_threads} ${path_data}/hotspot/temp_1024 ${path_data}/hotspot/power_1024 output.out > /dev/null
	it=$((it+1))
done

#run Kmeans
#example exec ./kmeans_openmp/kmeans -n 4 -i ../../data/kmeans/kdd_cup 
echo "Run Kmeans"
it=1
for i in {1..10}
do
	echo "Kmeans ${it} run, sample_value $((1000000*i)), threads ${num_threads}"
	time ./kmeans -n ${num_threads} -i ${path_data}/kmeans/inpuGen/$((1000000*i))_34.txt > /dev/null
	it=$((it+1))
done

#run LavaMD
#example exec ./lavaMD -cores 4 -boxes1d 10
echo "Run LavaMD"
it=1
for i in {10..100..5}
do
	echo "LavaMD ${it} run, sample_value ${i}, threads ${num_threads}"
	time ./lavaMD -cores ${num_threads} -boxes1d ${i} > /dev/null
	it=$((it+1))
done

#run Leukocyte
#example exec ./OpenMP/leukocyte 5 4 ../../data/leukocyte/testfile.avi 
echo "Run Leukocyte"
it=1
for i in {5..200..5}
do
	echo "Leukocyte ${it} run, sample_value ${i}, threads ${num_threads}"
	time ./leukocyte ${i} ${num_threads} ${path_data}/leukocyte/testfile.avi > /dev/null
	it=$((it+1))
done

#run Lud
#example exec ./omp/lud_omp -s 8000 
echo "Run Lud"
it=1
for i in {0..10000..2000}
do
	echo "Lud ${it} run, sample_value $((8000+i)), threads ${num_threads}"
	time ./lud_omp -s $((8000+i)) > /dev/null
	it=$((it+1))
done

#run Myocyte
#example exec ./myocyte.out 100 1 0 4
echo "Run Myocyte"
it=1
for i in {10000..1000000..10000}
do
	echo "Myocyte ${it} run, sample_value ${i}, threads ${num_threads}"
	time ./myocyte.out ${i} 1 0 ${num_threads} > /dev/null
	it=$((it+1))
done

#run StreamCluster
#example exec ./sc_omp 10 20 256 65536 65536 1000 none output.txt 4
echo "Run StreamCluster"
it=1
for i in {32768..65536..1024}
do
	echo "StreamCluster ${it} run, sample_value ${i}, threads ${num_threads}"
	time ./sc_omp 10 20 256 ${i} 65536 1000 none output.txt ${num_threads} > /dev/null 2>&1
	it=$((it+1))
done
