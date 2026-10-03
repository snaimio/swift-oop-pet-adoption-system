//
//  Pet.swift (Parent Class)
//  Sheikh_Swift_3
//
//  Created by Sheikh Naim on 2026-05-07.
//

import Foundation

// Parent class representing a generic pet
class Pet {
  
  static var nextID = 1
  
  var petID: Int
  var name: String
  var age: Int
  
  init(name: String, age: Int) {
  
    self.petID = Pet.nextID
    Pet.nextID += 1
    self.name = name
    self.age = age
  }
  
  func makeSound() {

    print("\(name) makes a sound.")
  }
  
  func showDetails() {
    print("Pet ID: \(petID)")
    print("Name: \(name)")
    print("Age: \(age) years")
  }
    
} // Pet
