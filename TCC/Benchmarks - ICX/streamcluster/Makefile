PREFIX=${PARSECDIR}/pkgs/kernels/streamcluster/inst/${PARSECPLAT}

TARGET_C = sc_cpu

TARGET_O = sc_omp

ifdef version
  ifeq "$(version)" "parallel"
    CXXFLAGS :=	$(CXXFLAGS) -DENABLE_THREADS -pthread
  endif
endif

all: cpu omp

cpu:
	icpx $(CXXFLAGS) $(LDFLAGS) streamcluster_original.cpp -o $(TARGET_C) $(LIBS) -DENABLE_THREADS -pthread

omp:
	icpx -O3 -qopenmp -o $(TARGET_O) streamcluster_omp.cpp


clean:
	rm -f *.o *~ *.txt sc_cpu sc_omp
	
