#./heartwall ../../data/heartwall/test.avi 20 4

echo "Run HearthWall"
it=1
for i in {20..120}
do
	echo "HeartWall ${it} run, sample ${i}"
	./heartwall ../../../data/heartwall/test.avi ${i} 4
	it=$((it+1))
done

