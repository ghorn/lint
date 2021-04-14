#include <iostream>

#include "test/testing_cc_dep.hpp"

int main(int argc __attribute__((unused)),
         char * argv[] __attribute__((unused))) {
  std::cout << "The answer is " << yolo(2) << "." << std::endl;
  return 0;
}
