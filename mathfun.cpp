// main.cpp

#include <iostream>
#include <time.h>
#include <cstdlib>

using namespace std;

extern "C" long product(long, long);
extern "C" long power(long, long);

// Purpose: This main program produces a vector of random numbers
// between 0 and 99, then calls the externally defined function
// 'vecsum' to add up the elements of the vector.

// Originally written by Adam Ferrari, and updated by Aaron Bloomfield

int  main () {

    // delcare the local variables
  long  n, b, sum,pow;

    // how big is the array we want to use?
    cout << "Please enter a number:  ";
    cin >> n;

    cout << "Enter your next number: ";
    cin >> b;
    // fill the array with random values
    // sum up the array and print out results
    sum = product(b, n);
    pow = power(n, b);
    cout << "The product is " << sum << endl;
    cout << "The power is " << pow << endl;
    // all done!
    return 0;
}
