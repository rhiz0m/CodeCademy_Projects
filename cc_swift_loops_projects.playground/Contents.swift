import UIKit

// Whale Talk //

// Create your Whale Talk program below:

var input = "great job"
var output = ""

for char in input {
  let lowerChar = char.lowercased()

  switch lowerChar {
    case "a", "i", "o":
      output += lowerChar.uppercased()
    case "e":
      output += "EE"
    case "u":
      output += "UU"
    default:
    continue
  }
}

print(output)

// 99 Bottles of Milk //


var numBottles: Int = 99


while (numBottles > 0) {
  print("\(numBottles) bottles of beer")
  numBottles -= 1
}

print("0 bottles of beer on the wall, 0 bottles of beer!\nGo to the store and buy some more, \n99 bottles of milk on the wall")

// Fizz Buzz //

for num in 1...100 {
  
  if num % 3 == 0 && num % 5 == 0{
    print("\(num) FizzBuzz")
  } else if num % 5 == 0 {
    print("\(num) Buzz")
  } else if num % 3 == 0 {
    print("\(num) Fizz")
  } else {
    print(num)
  }

}
