## Matrix Operations in Chapel

### 1. Matrix Addition
* I have firste created 2 matrices using Random function and user input size of n.
* Then created two procedures 
  1. Without Library: Traditional method to add two matrices by using two for loops and traversing each element.
  2. With Library: Using LinearAlgebra Library's Matrix Addition.
* And Benchmarked the Results using Time Library.

**Here Are the Results:**
(Time in Seconds)

<table>
  <tr>
    <td>Function</td>
    <td colspan="3">Without --fast compile</td>
    <td colspan="3">With --fast compile</td>
  </tr>
  <tr>
    <td>Size (n) = </td>
    <td>10</td>
    <td>100</td>
    <td>1000</td>
    <td>10</td>
    <td>100</td>
    <td>1000</td>
  </tr>
  <tr>
    <td>Without Library</td>
    <td>0.000132</td>
    <td>0.007585</td>
    <td>0.286974</td>
    <td>9e-06</td>
    <td>0.000293</td>
    <td>0.016301</td>
  </tr>
  <tr>
    <td>With Library</td>
    <td>0.000298</td>
    <td>0.003431</td>
    <td>0.190525</td>
    <td>6.8e-05</td>
    <td>0.000288</td>
    <td>0.019807</td>
  </tr>
</table>

**Compile Instructions**
1. Without --fast : `chpl  --set blasImpl=off --set lapackImpl=off  mat_add.chpl`
2. With --fast: `chpl --fast --set blasImpl=off --set lapackImpl=off  mat_add.chpl`

### 2. Matrix Dot Product
* I have firste created 2 matrices using Random function and user input size of n.
* Then created two procedures 
  1. Without Library: Traditional method to take dot product matrices by using three for loops and traversing each element and taking sum and product of column and rows
  2. With Library: Using LinearAlgebra Library's Dot Function.
* And Benchmarked the Results using Time Library.

**Here Are the Results:**
(Time in Seconds)

<table>
  <tr>
    <td>Function</td>
    <td colspan="3">Without --fast compile</td>
    <td colspan="3">With --fast compile</td>
  </tr>
  <tr>
    <td>Size (n) = </td>
    <td>10</td>
    <td>100</td>
    <td>1000</td>
    <td>10</td>
    <td>100</td>
    <td>1000</td>
  </tr>
  <tr>
    <td>Without Library</td>
    <td>0.000368</td>
    <td>0.152378</td>
    <td>32.856741</td>
    <td>4e-06</td>
    <td>0.001166</td>
    <td>1.29507 </td>
  </tr>
  <tr>
    <td>With Library</td>
    <td>0.000305</td>
    <td>0.054136</td>
    <td>25.905575</td>
    <td>4.4e-05</td>
    <td>0.00079 </td>
    <td>0.408527</td>
  </tr>
</table>


**Compile Instructions**
1. Without --fast : `chpl  --set blasImpl=off --set lapackImpl=off  mat_dotproduct.chpl`
2. With --fast: `chpl --fast --set blasImpl=off --set lapackImpl=off  mat_dotproduct.chpl`
