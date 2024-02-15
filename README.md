# ADTComplex Template

This is a C program *template* tailored for:

- GCC, GDB, MAKE, VALGRING and DOXYGEN
- VS CODE editor

## Abstract Data Types (definition)

An ADT stands for Abstract Data Type. It refers to a mathematical model for data types where the behavior of data and operations on that data are defined independently of any specific implementation. In other words, it defines what operations can be performed on the data type and what the behavior of those operations should be, without specifying how those operations are implemented.

ADTs are important in computer science because they allow programmers to focus on the logical aspects of data structures and algorithms without being concerned about the details of their implementation.

### The Complex ADT

A complex number ADT shall encapsulate the behavior and operations associated with complex numbers:

- **Complex Number Representation**: The ADT defines a way to represent complex numbers, typically as a pair of real numbers: one representing the real part and the other representing the imaginary part.

- **Basic Operations**: It includes operations such as addition, subtraction, multiplication, division, and conjugation of complex numbers. These operations are defined in terms of manipulating the real and imaginary parts of the numbers.

- **Magnitude and Phase**: The ADT also includes methods to calculate the magnitude (or modulus) and phase (or argument) of a complex number, which are useful in various mathematical computations and applications.

- **Error Handling**: Error handling mechanisms are included to handle scenarios such as division by zero or invalid input.

### ADT methodology

- The type definition and respective operations are defined in the *header file*, i.e., `complex.h`; the *doxygen* documentation describes the behavior of each operation, the inputs and outputs.

	- This is the ADT's *specification*.

- The program, e.g., `main.c` is developed only with the ADT specification in mind. The user abstracts himself from implementation details, knowing that the operations "just work".

- An implementation of the ADT exists, e.g., `complex.c`, in which the data struture to store a complex number is defined and where all operations are implemented, regarding this data structure.

	- Multiple implementations (varying the data structure) could exist, but only one is used at *compile time*.

## Exercises 

1. Clone this repository;

2. Add to the specification of the Complex ADT the operation to obtain the *conjugate* of a complex number, using the function `PtComplex complexConjugate(PtComplex c)`.
   * Provide the implementation of this function and test it.

3. Add to the specification of the Complex ADT operations to **multiply** and **divide** a number by a scalar, i.e., `PtComplex complexMultiplyByScalar(PtComplex c, double scalar)` and `complexDivideByScalar`. Note that in the division operation, division by zero should not be allowed.
   * Provide implementations for these two functions and test them.

4. Add to the specification of the Complex ADT the operation to divide one complex number by another, i.e., `PtComplex complexDivide(PtComplex w, PtComplex z)`.
   * Use the following online reference to understand how to proceed: [Review on division of complex numbers (article) | Khan Academy](https://pt.khanacademy.org/math/precalculus/imaginary-and-complex-numbers/complex-conjugates-and-dividing-complex-numbers/a/dividing-complex-numbers-review);
   * Provide the implementation of this function and test it.

5. Using the specification obtained from the previous exercises, solve the following calculations within a program:

    * Consider the complex number $z=1+8i$. What is the product of $z * \bar{z}$, where $\bar{z}$ is the conjugate of $z$? 

		- :bulb: The expected result is $65$.

    * Consider the complex number $w=(4+2i)/(-1+i)$. What is the algebraic form of $w$?

		- :bulb: The expected result is $w=(-1-3i)$. 

    * Consider the complex number $z=(-6+8i)/(-4-3i)$. What is the algebraic form of $z$?

		- :bulb: The expected result is $z=-2i$. 

