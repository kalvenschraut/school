#include <stdio.h>
#include <math.h>
void main(){
	float p = powf(2,1);
	float d = 1025.0/1024.0;
	float f = (d)*p;
	printf("f: %f,d: %f,p: %f\n",f,d,p);
}
