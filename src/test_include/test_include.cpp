#include <iostream>
using namespace std;
extern void TestCpp();
extern "C" void TestC();
int main(int argc,char*argv[])
{
   TestCpp();
   TestC();
    return 0;
}