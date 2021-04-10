use Random;
use Time;
use LinearAlgebra;
config var n: int =10;  //Used to CHange value of n

//Sum with traditional addition method
proc dotproduct_without_library(mat1: [1..n][1..n] int,mat2: [1..n][1..n] int) 
{
  var ans:[1..n][1..n] int;
  for i in 1..n do{
      for j in 1..n do{
          for k in 1..n{
              ans[i][j]+=mat1[i][j]*mat2[i][j];
          }
      }
  }
}

//Sum using LinearAlgebra Library
proc dotproduct_with_library(matrix1: [1..n, 1..n] int,matrix2: [1..n, 1..n] int) 
{
    var ans= dot(matrix1,matrix2);
}

//Generate Random Matrix for Without Library
var mat1:[1..n][1..n] int;
for i in 1..n do{
    var rands: [1..n] int;
    fillRandom(rands);
    mat1[i]=rands;
}
var mat2:[1..n][1..n] int;
for i in 1..n do{
    var rands: [1..n] int;
    fillRandom(rands);
    mat2[i]=rands;
}
//Set time for Without Library
var watch:Timer;
watch.start();
dotproduct_without_library(mat1,mat2);
watch.stop();
writeln('Without Library:  ', watch.elapsed());


//Generate Random Matrix for With Library
var matrix1: [1..n, 1..n] int; 
var matrix2: [1..n, 1..n] int; 
for i in 1..n do{
    var rands: [1..n] int;
    fillRandom(rands);
    matrix1[i, ..]=rands;
}
for i in 1..n do{
    var rands: [1..n] int;
    fillRandom(rands);
    matrix2[i, ..]=rands;
}
//Set time for With Library
var watch1:Timer;
watch1.start();
dotproduct_with_library(matrix1,matrix2);
watch1.stop();
writeln('With Library: ', watch1.elapsed());
