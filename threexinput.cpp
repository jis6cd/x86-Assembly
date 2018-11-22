//Jessica Shaughnessy
//jis6cd
//threexinput.cpp
//11/13/2017

#include <iostream>
#include <cstdlib>
#include "timer.h"

using namespace std;

extern "C" long threexplusone (long x);

int main () {
  long x;
  int n;
  timer t1;
  cout << "Please enter the parameter to pass to the subroutine: " << endl;
  cin >> x;
  cout << "Please enter how many times the subroutine should run: " << endl;
  cin >> n;


  t1.start();
  for (int i = n; i != 0; i--){
  threexplusone(x);
  }
    
  
  t1.stop();
  double time = t1.getTime();
  double average_time =0.0;
  if (n != 0){
  average_time = time/n;
  }
  cout << "The number of steps it took to get to 1 was: " << threexplusone(x) << endl;
  cout <<"The average time (in seconds) was: " << average_time << endl;
  return 0;
  
}
