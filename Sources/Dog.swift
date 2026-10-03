//
//  Dog.swift (Child Class)
//  Sheikh_Swift_3
//
//  Created by Sheikh Naim on 2026-05-07.
//

import Foundation

// Dog class inheriting from Pet
class Dog: Pet {
  
  var breed: String
  
  init(name: String, age: Int, breed: String) {
    self.breed = breed
    super.init(name: name, age: age)
  }
  
  override func makeSound() {
    print("\(name) says: Woof! Woof!")
  }
  
  override func showDetails() {
    print("----- DOG -----")
    super.showDetails() 
    print("Breed: \(breed)")
  }
  
} // Dog
