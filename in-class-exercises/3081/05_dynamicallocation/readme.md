### Dynamic Allocation Exercise

Included in this directory is a class definition for _duck_, and a class definition for _ArrayPointerTest_ that has a collection of duck arrays of various types.

- Decide on your group of 2 to 3 people.
- Copy this over to a repo in which you can modify it.
- Take out a piece of paper and write the names of everyone in the group at the top.
- Answer the following questions below.
- Turn in your piece of paper TODAY, regardless of how far you get on it.

1. Given this declaration of member variables in ArrayPointerTest class

  ```C++
  Duck ducks1_[MAX_DUCK_COUNT];
  Duck * ducks2_;
  Duck * ducks3_[MAX_DUCK_COUNT];
  Duck ** ducks4_;
  ```

  For each
  - define how much space will be allocated at the instantiation of this class within main.cc.
  - state where this will be allocated: static, stack, or heap.
  - if there is a duck defined, state what is the content of Duck::name_.

2. Fill in the following in the ArrayPointerTest constructor to appropriately define the array in your code. Compile to confirm it works.

  ```C++
  // Initialize the array ducks2_ up to size_
  ducks2_ = XXX
  for (int i=0; i<size; i++) {
    // set the name of each duck using the names array
    ZZZ set_name(names[i]);
  }
  ```

  - What did you put in place of XXX and ZZZ?

  - Why do you have to assign a value to ducks2_ in this situation but you do not have to assign a value to ducks1_ to initialize it?

3. Initialize the ducks3_ array and confirm it compiles.
  - Write down what you put in place of YYY.

4. Initialize ducks4_ array and confirm it compiles.
  - Write down what you put in place of ZZZ.

5. Notice in the DisplayContents that ducks2_ uses the _point_ operator (`.`), whereas ducks3_ and ducks4_ use the _pointer_ operator (`->`), even though ducks2_ is defined as a pointer. Why do we not use the pointer operator for ducks2_?

6. In the destructor, a variety of delete statements are provided. For each array, indicate which, if any are correct in destroying all the array elements -- you don't want any leaks in your memory!

  - ducks1 delete:
  - ducks2 delete:
  - ducks3 delete:
  - ducks4 delete:
