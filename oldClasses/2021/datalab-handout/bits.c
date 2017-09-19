/* 
 * CS:APP Data Lab 
 * 
 * <Kalven Schraut x500:Schra447 ID:4949830>
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */


#endif
/* Copyright (C) 1991-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 8.0.0.  Version 8.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2014, plus Amendment 1 (published
   2015-05-15).  */
/* We do not support C11 <threads.h>.  */
/* 
 * bitXor - x^y using only ~ and & 
 *   Example: bitXor(4, 5) = 1
 *   Legal ops: ~ &
 *   Max ops: 14
 *   Rating: 1
 */
int bitXor(int x, int y) {
	int rb = ~x&y;
	int temp = x&~y;
	rb = ~rb & ~temp; //same thing as an or operator
	return ~rb;
}
/* 
 * evenBits - return word with all even-numbered bits set to 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 1
 */
int evenBits(void) {
	//start with 01010101 and shift by 8 more bits add the bits and repeat until the 32 bits are filled
	int rb = 85 | 85 << 8;
	rb = rb | rb << 8;
	rb = rb | rb << 8;
  return rb;
}
/* 
 * leastBitPos - return a mask that marks the position of the
 *               least significant 1 bit. If x == 0, return 0
 *   Example: leastBitPos(96) = 0x20
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2 
 */
int leastBitPos(int x) {
	//inverse then add 1 to cascade the 1s until first 0 and then & with x to grab the position;
	int rb = ~x + 1;
	rb = x&rb;
  return rb;
}
/* 
 * isEqual - return 1 if x == y, and 0 otherwise 
 *   Examples: isEqual(5,5) = 1, isEqual(4,5) = 0
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int isEqual(int x, int y) {
	int rb = x^y;
  return !rb;
}
/* 
 * fitsBits - return 1 if x can be represented as an 
 *  n-bit, two's complement integer.
 *   1 <= n <= 32
 *   Examples: fitsBits(5,3) = 0, fitsBits(-4,3) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int fitsBits(int x, int n) {
	/*Creating a mask to deal with negative numbers and 
	 * then shifting over n-1 bits to figure out if the 
	 * bit string will fit
	 */
	int temp = x >> 31;
	int temp2 = ~x&temp;
	int rb;
	temp = x & ~temp;
	temp = temp | temp2;
	rb = n + ~0;
	rb = temp >> rb;
  return !rb; 
}
/* 

 * reverseBytes - reverse the bytes of x

 *   Example: reverseBytes(0x01020304) = 0x04030201

 *   Legal ops: ! ~ & ^ | + << >>

 *   Max ops: 25

 *   Rating: 3

 */
int reverseBytes(int x) {
	/*
	 * Seperate into bytes and then reverse
	 */
	int c = 255;
	int temp = 1 << 31;
	int temp2 = x^temp;
	int byte1 = temp2&c;
	int byte2 = temp2&c << 8;
	int byte3 = temp2&c << 16;
	int byte4 = temp2&c << 24;
	byte1 = byte1 << 24;
	byte2 = byte2 << 8;
	byte3 = byte3 >> 8;
	temp = !!temp << 7;
	byte4 = byte4 >> 24;
	byte4 = byte4 + temp;
  return byte1|byte2|byte3|byte4;
}
/* 
 * isPositive - return 1 if x > 0, return 0 otherwise 
 *   Example: isPositive(-1) = 0.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 3
 */
int isPositive(int x) {
	// Check sign bit and and second line is checking for the zero case
	int rb = x & 1 << 31;
	rb = !rb ^ !x;
  return rb;
}
/*
 * multFiveEighths - multiplies by 5/8 rounding toward 0.
 *   Should exactly duplicate effect of C expression (x*5/8),
 *   including overflow behavior.
 *   Examples: multFiveEighths(77) = 48
 *             multFiveEighths(-22) = -13
 *             multFiveEighths(1073741824) = 13421728 (overflow)
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 3
 */
int multFiveEighths(int x) {
	/*Multiply by 5 then check if negative or not
	 * if negative apply the bias otherwise bias won't have any effect
	 * Divide by 8
	 */
	//times by 5
	int rb = x << 2;
	int bias;
	int negBias;
	rb = rb + x;
	//generate bias for neg numbers. If postive the bias will just add 0 to return bit
	bias = rb >> 31;
	bias = !!bias;
	// either shifting 1 or 0 by 3
	negBias = ~bias + 1;
	bias = bias << 3;
	bias = bias + negBias;
	rb = rb + bias;
	rb = rb >> 3;
  return rb;
}
/* 
 * isLessOrEqual - if x <= y  then return 1, else return 0 
 *   Example: isLessOrEqual(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isLessOrEqual(int x, int y) {
	/* First check if they are equal
	 * otherwise find the difference betwen x and y and due a few checks
	*/
	int negx = ~x + 1;
	int tmin = 1 << 31;
	int isEqual = x ^ y;
	int equal = !isEqual;
	int check = ~isEqual;
	int less = y + negx;
	isEqual = isEqual & x;
	less = ~less;
	check = check & less;
	check = check | isEqual;
	check = check & tmin;
	check = !!check;

  return check | equal ;
}
/* 
 * logicalNeg - implement the ! operator, using all of 
 *              the legal operators except !
 *   Examples: logicalNeg(3) = 0, logicalNeg(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4 
 */
int logicalNeg(int x) {
	int rb = ~x+1;
	rb = rb|x;
	rb = rb >> 31;
	rb = ~rb & 1;
  return rb;
}
/* 
 * tc2sm - Convert from two's complement to sign-magnitude 
 *   where the MSB is the sign bit
 *   You can assume that x > TMin
 *   Example: tc2sm(-5) = 0x80000005.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 4
 */
int tc2sm(int x) {
	// Grab sign bit, inverse, add sign bit and inverse
	// Also converting negative to postive numbers 
	int mask = 1 << 31;
	int sb = mask&x;
	int temp = x >> 31;
	int temp2 = ~x+1;
	temp2 = temp2&temp;
	temp = x & ~temp;
	temp = temp | temp2;
  return sb | temp;
}
/*
 * leftBitCount - returns count of number of consective 1's in
 *     left-hand (most significant) end of word.
 *   Examples: leftBitCount(-1) = 32, leftBitCount(0xFFF0F0F0) = 12
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 50
 *   Rating: 4
 */
int leftBitCount(int x) {
	/* Count the ones in each section of the bits 16 8 4 and 2 */
	int x1 = x;
	int negx = ~x;
	int one = !negx;
	int count = x1 >>16;
	int temp;
	count = ~count;
	count = !count;
	count = count << 4;
	x1 = x1 << count;
	temp = x1 >> 24;
	temp = ~temp;
	temp = !temp;
	temp = temp << 3;
	x1 = x1 << temp;
	count = count | temp;
	temp = x1 >> 28;
	temp = ~temp;
	temp = !temp;
	temp = temp << 2;
	x1 = x1 << temp;
	count = count | temp;
	temp = x1 >> 30;
	temp = ~temp;
	temp = !temp;
	temp = temp << 1;
	x1 = x1 << temp;
	count = count | temp;
	temp = x1 >> 31;
	temp = 1&temp;
	count= count ^ temp;
	return count + one;
}
/* 
 * float_neg - Return bit-level equivalent of expression -f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representations of
 *   single-precision floating point values.
 *   When argument is NaN, return argument.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 10
 *   Rating: 2
 */
unsigned float_neg(unsigned uf) {
	// check for NAN otherwise add sign bit to the number
	int nancheck = 255 << 23;
	int temp = nancheck & uf;
	int frac,nan,sb,rb;
	temp = temp ^ nancheck;
	frac = uf << 9;
	nan = !temp && frac;
	sb = 1 << 31;
	rb = sb + uf;
	if(nan){
		rb = uf;
	}
 return rb;
}
/* 
 * float_half - Return bit-level equivalent of expression 0.5*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_half(unsigned uf) {
	//Grabbing the sign bit, exp bits, and frac bits. 
	//Checking if odd so rounding can be handled
	int sbm = 1 << 31;
	int tempm = sbm >> 8;
	int em = sbm^tempm;
	int fm = ~tempm;
	int sb = uf&sbm;
	int exp = em&uf;
	int frac = fm&uf;
	int odd = frac & 3;
	int newFrac;
	int nan = em ^ exp;
	int check = 0;
	int rb = 0;
	int testCase = exp >> 23;
	int temp = 1 << 22;
	odd = odd^3;
	odd = !odd;
	newFrac = frac + odd;
	newFrac = newFrac >> 1;
	// nan and infinity case
	if(!nan){
		check = 1;
		rb = uf;
	}
	// exp 0 case
	if(!exp){
		check = 1;
		rb = sb | newFrac;
	}
	//The shift from normalized to denormalized case
	testCase = testCase^1;
	if(!testCase){
		check = 1;
		return sb | temp | newFrac;
	}
	//otherwise decrease exp by 1
	if(!check){
		exp = exp + ~0;
		exp = exp&em; // get rid of overflow
		rb = sb | exp | frac;
	}
  return rb;
}
