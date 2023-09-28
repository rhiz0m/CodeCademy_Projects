import UIKit

func getUserChoice(userInput: String) -> String {
  if userInput == "rock" || userInput == "paper" || userInput == "scissors" {
    return userInput
  } else {
    return "You can only enter rock, paper, or scissors. Try again."
  }
}

//print(getUserChoice(userInput: "rock"))

func getComputerChoice() -> String {
  let randomNumber = Int.random(in: 0...2)

  switch randomNumber {
    case 0:
      return "rock"
    case 1:
      return "paper"
    case 2:
      return "scissors"
    default:
      return "not a valid choice..."
  }
}

//print(getComputerChoice())


func determineWinner(_ usersChoice: String, _ computersChoice: String) -> String {
  var decision = "It's a tie"

  switch usersChoice {
    case "rock":
      if computersChoice == "paper" {
        decision = "The computer won"
      } else if computersChoice == "scissors" {
        decision = "The user won"
      }
    case "paper":
      if computersChoice == "rock" {
        decision = "The user won"
      } else if computersChoice == "scissors" {
        decision = "The computer won"
      }
    case "scissors":
            if computersChoice == "rock" {
        decision = "The computer won"
      } else if computersChoice == "scissors" {
        decision = "The user won"
      }
    default:
      return "Something went wrong"
  }
  return decision
}

let userChoice = getUserChoice(userInput: "paper")
let compChoice = getComputerChoice()

print("You threw \(userChoice)")
print("The computer threw \(compChoice)")
print(determineWinner(userChoice, compChoice))
