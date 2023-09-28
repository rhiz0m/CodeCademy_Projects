import UIKit

// Make a Mixtape //


print(".------------------------.")
print("|    Rock Mix 90 min     |")
print("|     __  ______  __     |")
print("|    (  )|).....|(  )    |")
print("|    (__)|)_____|(__)    |")
print("|    ________________    |")
print("|___/_._o________o_._\\___|")

var mixtape = [String]()

mixtape.append(
  "Led Zeppelin - stairway to heaven")
mixtape.append("Black sabbath - paranoid")
mixtape.append("Jimi Hendrix - All along the watchtower")
mixtape.append("The Band - The Weight")
mixtape.append("Creedence - Fortunate Son")
mixtape.append("Blue Oyster - The Reaper")
mixtape.append("The Doors - Fire")
mixtape.append("Led Zeppelin - Rock n Roll")

print(mixtape.count)

mixtape.remove(at: 3)
mixtape.remove(at: 5)

mixtape.insert("Smashing Pumpkins - Tonight", at: 2)

mixtape.insert("Elvis Presley - Hound Dog", at: 5)

print("Side A")
for tracks in 0 ..< mixtape.count / 2 {
    print("\(tracks+1). \(mixtape[tracks])")
}

print("Side B")
for tracks in mixtape.count / 2 ..< mixtape.count {
    print("\(tracks+1). \(mixtape[tracks])")
}

// PalinDrome //

var text: [String] = ["a", "n", "n", "a"]

// Empty string array
var reversed = [String]()
var counter = text.count - 1

/*
Before the decrement of the counter, add a line of code that appends the character in text at index counter to the end of reversed array.
*/

while counter >= 0 {
  reversed.append(text[counter])
  counter -= 1
}

if text == reversed {
  print("We have a palindrome")
} else {
  print("it is not equal")
}

print(reversed)

// Caesar's Cipher //

// Array 1
var alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

// y på codecademy är index out of range. Alfabetet har bara 26 bokstäver och skulle behövt 27. Vi använder då % vilket gör att bokstäverna aldrig går längre än sista, dvs 26

var secretMessage = "codecademy"
// Array 2. "hello" styckas upp
var message = Array(secretMessage)


// två arrayer med bokstäver jämförs och är de lika förskjuts message med 3 bokstäver
for i in 0 ..< message.count {
  for j in 0 ..< alphabet.count{
    if message[i] == alphabet[j] {
      message[i] = alphabet[(j+3) % 26]
      break
    }
  }
}

print(message)

// School Roster //

var spanish101: Set = ["Angela", "Declan", "Aldany", "Alex", "Sonny", "Alif", "Skyla"]
var german101: Set = ["Angela", "Alex", "Declan", "Kenny", "Cynara", "Adam"]
var advancedCalculus: Set = ["Cynara", "Gabby", "Angela", "Samantha", "Ana", "Aldany", "Galina", "Jasmine"]
var artHistory: Set = ["Samantha", "Vanessa", "Aldrian", "Cynara", "Kenny", "Declan", "Skyla"]
var englishLiterature: Set = ["Gabby", "Jasmine", "Alex", "Alif", "Aldrian", "Adam", "Angela"]
var computerScience: Set = ["Galina", "Kenny", "Sonny", "Alex", "Skyla"]

// Write your code below 🍎

var allStudents: Set<String>

allStudents = advancedCalculus.union(spanish101).union(german101).union(advancedCalculus).union(artHistory).union(englishLiterature).union(computerScience)

/*for student in 0 ..< allStudents.count {
  print("\(student+1)")
  print(student)
  //print(allStudents[student])
}*/

for student in allStudents{
  print(student)
}
print("Total students: \(allStudents.count)")

var noLanguage: Set<String>

noLanguage = allStudents.subtracting(german101).subtracting(spanish101)
print("Students with no language:")
print(noLanguage)

var spanishOrGerman = spanish101.symmetricDifference(german101)
print("Spanish or German students")
print(spanishOrGerman)

var sevenPlus = 0

var classSet: Set = [spanish101, german101, advancedCalculus, artHistory, englishLiterature, computerScience]

for students in classSet {
  if students.count >= 7 {
    sevenPlus += 1
  }
}
print(sevenPlus)

