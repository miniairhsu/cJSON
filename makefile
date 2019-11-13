ARCH=arm
COMPILER=arm-linux-gnueabihf-


deps := $(wildcard *.h) 	
	
libcJSON.so:cJSON.o $(deps)
	arm-linux-gnueabihf-gcc -shared -o libcJSON.so cJSON.o
	
cJSON.o:cJSON.c $(deps)
	arm-linux-gnueabihf-gcc -c -fPIC cJSON.c -o cJSON.o


	
clean:
	rm -f *.o 
	rm -f *.so
	rm -f *.exe
