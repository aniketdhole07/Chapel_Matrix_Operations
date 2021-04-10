## Matrix Operations in Chapel

#### 1. Matrix Addition
* I have firste created 2 matrices using Random function and user input size of n.
* Then created two procedures 
  1. Without Library: Traditional method to add two matrices by using two for loops and traversing each element.
  2. With Library: Using LinearAlgebra Library's Matrix Addition.
* And Benchmarked the Results using Time Library.

**Here Are the Results:**

| Function  <td colspan=3>Without --fast compile  <td colspan=3>With --fast Compile |
|-|-|-|
|Size (n) = | 10 | 100 | 1000 | 10 | 100 | 1000 |
|Without Library| 0.000132 | 0.007585 | 0.286974 | 9e-06 | 0.000293 |  0.016301|
|With Library| 0.000298 | 0.003431 | 0.190525 | 6.8e-05 | 0.000288 | 0.019807|

**Compile Instructions**
1. Without --fast : `chpl  --set blasImpl=off --set lapackImpl=off  mat_add.chpl`
2. With --fast: `chpl --fast --set blasImpl=off --set lapackImpl=off  mat_add.chpl`

#### 2. Matrix Dot Product
* I have firste created 2 matrices using Random function and user input size of n.
* Then created two procedures 
  1. Without Library: Traditional method to take dot product matrices by using three for loops and traversing each element and taking sum and product of column and rows
  2. With Library: Using LinearAlgebra Library's Dot Function.
* And Benchmarked the Results using Time Library.

**Here Are the Results:**

| Function  <td colspan=3>Without --fast compile  <td colspan=3>With --fast Compile |
|-|-|-|
|Size (n) = | 10 | 100 | 1000 | 10 | 100 | 1000 |
|Without Library| 0.000368 | 0.152378 | 32.856741 | 4e-06| 0.001166 |  1.29507 |
|With Library| 0.000305 | 0.054136 | 25.905575 | 4.4e-05 | 0.00079 | 0.408527 |

**Compile Instructions**
1. Without --fast : `chpl  --set blasImpl=off --set lapackImpl=off  mat_dotproduct.chpl`
2. With --fast: `chpl --fast --set blasImpl=off --set lapackImpl=off  mat_dotproduct.chpl`