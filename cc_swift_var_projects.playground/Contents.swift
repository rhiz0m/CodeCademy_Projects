import UIKit

// Quadratic Formula. CodeCademy Project //

var a: Double = 3.0
var b: Double = -11.0
var c: Double = -4.0

var root1: Double = b*b - 4*a*c
var root2: Double = b*b - 4*a*c

root1 = root1.squareRoot()
root1 = -b + root1
root1 = root1 / (2*a)

root2 = root2.squareRoot()
root2 = -b - root2
root2 = root2 / (2*a)

print(root1)
print(root2)

// DogYears. CodeCademy Project //

// My dogs age
var dogAge = 8

// The dogs years in human years the first two years
var earlyYears = 21

// The dogs lateryears, minus 2 multiplied by 4
var laterYears = (dogAge - 2) * 4
var humanYears = earlyYears + laterYears

print("my name is Rufus! Ruff, ruff, I am \(humanYears) years old in human years")
