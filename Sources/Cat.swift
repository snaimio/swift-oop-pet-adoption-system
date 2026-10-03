//
//  Cat.swift (Child Class)
//  Sheikh_Swift_3
//
//  Created by Sheikh Naim on 2026-05-08.
//

import Foundation

// Cat class inheriting from Pet
class Cat: Pet {
  
  var isIndoor: Bool
  
  init(name: String, age: Int, isIndoor: Bool) {
    self.isIndoor = isIndoor
    super.init(name: name, age: age)
  }
  
  override func makeSound() {
    print("\(name) says: Meow! Meow!")
  }
  
  override func showDetails() {
    print("----- CAT -----")
    super.showDetails()
    
    if isIndoor {
      print("Indoor Cat: Yes")
    } else {
      print("Indoor Cat: No")
    }
  }
  
} // Cat
