#./kmeans_openmp/kmeans -n 4 -i ../../data/kmeans/kdd_cup 

echo "Run Kmeans"
it=1
for i in {1..10}
do
	echo "Kmeans ${it} run, sample $((1000000*i))"
	./kmeans -n 4 -i ../../../data/kmeans/inpuGen/$((1000000*i))_34.txt
	it=$((it+1))
done