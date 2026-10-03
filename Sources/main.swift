//
//  main.swift
//  Sheikh_Swift_3
//
//  Created by Sheikh Naim on 2026-05-07.
//
//  PetAdoptionCentre
//

import Foundation

// Variables
var pets: [Pet] = []
var running = true

// Helper Functions
func input(_ text: String) -> String {
  print(text, terminator: "")
  return readLine() ?? ""
}

func validateName(_ name: String) -> Bool {
  return !name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
}

func validateAge(_ text: String) -> Int? {
  let trimmed = text.trimmingCharacters(in: .whitespacesAndNewlines)
  guard let age = Int(trimmed), age >= 0 else {
    return nil
  }
  return age
}

func validateWingSpan(_ text: String) -> Double? {
  let trimmed = text.trimmingCharacters(in: .whitespacesAndNewlines)
  guard let span = Double(trimmed), span > 0 else {
    return nil
  }
  return span
}

func validateYesNo(_ text: String) -> Bool? {
  let trimmed = text.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
  if trimmed == "yes" || trimmed == "y" {
    return true
  } else if trimmed == "no" || trimmed == "n" {
    return false
  } else {
    return nil
  }
}

// Menu
func displayMenu() {
  print("""
  
  ╔════════════════════════════════╗
  ║     🐾 PET ADOPTION CENTRE 🐾  ║
  ╚════════════════════════════════╝
  
  1) 🐕 Create Dog
  2) 🐱 Create Cat
  3) 🐦 Create Bird
  4) 📋 List All Pets
  5) 🔊 Make All Pets Speak
  6) 🚪 Exit
  
  ────────────────────────────────
  """)
}

// Actions
func listPets() {
  print("\n📋 ALL PETS IN ADOPTION CENTRE")
  print("────────────────────────────────")
  
  if pets.isEmpty {
    print("    🐾 No pets available to display.")
    print("    💡 Use options 1-3 to add some furry friends!")
    return
  }
  
  for pet in pets {
    print("\n   ⭐ ⭐ ⭐ ⭐ ⭐")
    pet.showDetails()
    pet.makeSound()
  }
  print("\n────────────────────────────────")
}

func makePetsSpeak() {
  print("\n🔊 PET SOUNDS CONCERT")
  print("────────────────────────────────")
  
  if pets.isEmpty {
    print("    🤫 No pets available to speak.")
    print("    💡 Create some pets first using options 1-3!")
    return
  }
  
  for pet in pets {
    print("    🎵 ", terminator: "")
    pet.makeSound()
  }
  print("\n────────────────────────────────")
}

// Main Program
print("""
╔════════════════════════════════════════════╗
║    🐾WELCOME TO THE PET ADOPTION CENTRE🐾  ║
║     Your one-stop shop for finding pets!   ║
╚════════════════════════════════════════════╝
""")

while running {
  displayMenu()
  let choice = input("📌 Enter choice (1-6): ")
  
  switch choice {
  case "1":
    print("\n🐕 CREATE A NEW DOG")
    print("────────────────────────────────")
    let name = input("   📝 Dog name: ")
    guard validateName(name) else {
      print("   ❌ Invalid name. Name cannot be empty.")
      print("   💡 Please enter a valid name (e.g., 'Buddy')")
      continue
    }
    
    let ageInput = input("   📅 Age (in years): ")
    guard let age = validateAge(ageInput) else {
      print("   ❌ Invalid age.")
      print("   💡 Please enter a positive number (e.g., 3)")
      continue
    }
    
    let breed = input("   🏷️  Breed: ")
    let dog = Dog(name: name, age: age, breed: breed)
    pets.append(dog)
    print("\n   ✅ Dog added successfully! 🎉")
    print("   📌 Your new friend has been registered with ID: \(dog.petID)")
    
  case "2":
    print("\n🐱 CREATE A NEW CAT")
    print("────────────────────────────────")
    let name = input("   📝 Cat name: ")
    guard validateName(name) else {
      print("   ❌ Invalid name. Name cannot be empty.")
      print("   💡 Please enter a valid name (e.g., 'Whiskers')")
      continue
    }
    
    let ageInput = input("   📅 Age (in years): ")
    guard let age = validateAge(ageInput) else {
      print("   ❌ Invalid age.")
      print("   💡 Please enter a positive number (e.g., 2)")
      continue
    }
    
    let indoorInput = input("   🏠 Indoor cat? (yes/no): ")
    guard let isIndoor = validateYesNo(indoorInput) else {
      print("   ❌ Invalid input.")
      print("   💡 Please enter 'yes', 'y', 'no', or 'n'")
      continue
    }
    
    let cat = Cat(name: name, age: age, isIndoor: isIndoor)
    pets.append(cat)
    print("\n   ✅ Cat added successfully! 🎉")
    print("   📌 Your new friend has been registered with ID: \(cat.petID)")
    
  case "3":
    print("\n🐦 CREATE A NEW BIRD")
    print("────────────────────────────────")
    let name = input("   📝 Bird name: ")
    guard validateName(name) else {
      print("   ❌ Invalid name. Name cannot be empty.")
      print("   💡 Please enter a valid name (e.g., 'Tweety')")
      continue
    }
    
    let ageInput = input("   📅 Age (in years): ")
    guard let age = validateAge(ageInput) else {
      print("   ❌ Invalid age.")
      print("   💡 Please enter a positive number (e.g., 2)")
      continue
    }
    
    let spanInput = input("   📏 Wing span (in cm): ")
    guard let wingSpan = validateWingSpan(spanInput) else {
      print("   ❌ Invalid wing span.")
      print("   💡 Please enter a positive number (e.g., 15.5)")
      continue
    }
    
    let bird = Bird(name: name, age: age, wingSpan: wingSpan)
    pets.append(bird)
    print("\n   ✅ Bird added successfully! 🎉")
    print("   📌 Your new friend has been registered with ID: \(bird.petID)")
    
  case "4":
    listPets()
    
  case "5":
    makePetsSpeak()
    
  case "6":
    print("\n🚪 EXITING PET ADOPTION CENTRE")
    print("────────────────────────────────")
    print("   👋 Thank you for visiting!")
    print("   🐾 Have a pawsitive day!")
    print("   ⭐ Come back soon!")
    running = false
    
  default:
    print("   ❌ Invalid choice. Please enter 1-6.")
    print("   💡 Select a number from the menu above.")
  } // switch
} // while
