#include <iostream>
#include <fstream>
#include <string>
#include <math.h>
#include <stdlib.h>
#include <string>
using namespace std;
bool isodd(int a)
{
	if(a%2==0){
		return false;
	}
	else{
		return true;
	}
}
string fun(bool x[3]){
	string o = "00000000";
	o[7-x[1]-2*x[2]-4*x[3]] = '1'; 
	return o;
}

int main()
{
	int n;
//no of input bits
	cin>>n;
	ofstream trace;
//specify the address	
	trace.open("/home/ritesh/Desktop/tracefile.txt");
	
	int i=0;
	while(i<pow(2, n))
	{	
		int z=n;
		bool a[n];
		while(z>0)
		{
			z--;
			if(isodd(i/(pow(2,z))))
			{
				a[z] = true;
				trace<<1;
			}
			else
			{
				a[z] = false;
				trace<<0;
			}
		}
		trace<<"\t";
//o/p n=bits order		
		trace<<fun(a);
		trace<<"\n";
		i++;
	}
	trace.close();
	return 0;
}
