CXX = g++
CXXFLAGS = -O3
LDFLAGS = -O3
OBJS = main_file.o file1.o file2.o

all: hellomake

hellomake: $(OBJS)
	$(CXX) $(LDFLAGS)  $(OBJS) -o hellomake

main_file.o: main_file.cpp file1.h file2.h
	$(CXX) $(CXXFLAGS) -c main_file.cpp

file1.o: file1.cpp file1.h
	$(CXX) $(CXXFLAGS) -c file1.cpp

file2.o: file2.cpp file2.h
	$(CXX) $(CXXFLAGS) -c file2.cpp

clean:
	rm *.o hellomake
