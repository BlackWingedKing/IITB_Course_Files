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
string fun(bool x[8]){

	int k = 0;
	string z;
	for(int i=0;i<8;i++)
	{
		if(x[i] == true)
		{
		k++;
		}
	}
	if(k==0)
	{
	z = "0000";
	}
	if(k==1)
	{
	z = "0001";
	}
	if(k==2)
	{
	z = "0010";
	}
	if(k==3)
	{
	z = "0011";
	}
	if(k==4)
	{
	z = "0100";
	}
	if(k==5)
	{
	z = "0101";
	}
	if(k==6)
	{
	z = "0110";
	}
	if(k==7)
	{
	z = "0111";
	}
	if(k==8)
	{
	z = "1000";
	}
return z;
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
