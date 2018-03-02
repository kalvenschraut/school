#include "array_pointer_test.h"

#include <string>

/*  USE THIS FOR INITIALIZING DUCKS
Duck::Duck(std::string name) {
    SetName(name);
}
*/

ArrayPointerTest::ArrayPointerTest(int size) {

  size_ = size;
  std::string names[12] = {
    "lemon", "yang", "mia", "cupcake", "kareem", "bob",
    "zipper", "angel", "flo", "venkat", "spot", "akira"};

  // Initialize Duck ducks1[size];
  printf("Initializing ducks1\n");
  for (int i=0; i<size; i++) {
    ducks1_[i].set_name(names[i]);
  }

  printf("Initializing ducks2\n");
  /*
  // Initialize an array of ducks of size 'size'
  ducks2_ = XXX
  for (int i=0; i<size; i++) {
    // set the name of each duck using the names array
    XXX set_name(names[i]);
  }
  */

  // Initialize Duck * ducks3_[size];
  printf("Initializing ducks3\n");
  /*
  // Initialize array ducks3_ and assign it names
  YYY
  }
  */

  // Initialize Duck ** ducks4; with "size" number of elements
  printf("Initializing ducks4\n");
  ducks4_ = new Duck*[size];
  /*
  for (int i=0; i<size; i++) {
    ZZZ
  }
  */
}

ArrayPointerTest::~ArrayPointerTest() {

  printf("In destructor\n");

  // delete Duck ducks1[3];
  printf("Deleting ducks1\n");
  delete ducks1_;

  // delete Duck * ducks2;
  printf("Deleting ducks2\n");
  delete ducks2_;
  delete[] ducks2_;

  // delete  Duck * ducks3[3]
  printf("Deleting ducks3\n");
  delete ducks3_;
  delete[] ducks3_;

  // delete Duck ** ducks4;
  printf("Deleting ducks4\n");
  delete ducks4_;
  delete[] ducks4_;

}

void ArrayPointerTest::DisplayContents() {
  // quack Duck ducks1[3];
  printf("Duck ducks1[3]\n");
  for (int i=0;i<3;i++) {
    ducks1_[i].PerformQuack();
  }

  // quack Duck * ducks2;
  printf("Duck ducks2[size_]\n");
  for (int i=0;i<size_;i++) {
    ducks2_[i].PerformQuack();
  }

  // quack  Duck * ducks3[3]
  printf("Duck ducks3[3]\n");
  for (int i=0;i<3;i++) {
    ducks3_[i]->PerformQuack();
  }

  // quack Duck ** ducks4;
  printf("Duck ducks4[size_]\n");
  for (int i=0;i<size_;i++) {
    ducks4_[i]->PerformQuack();
  }
}
