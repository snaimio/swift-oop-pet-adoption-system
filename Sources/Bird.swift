//
//  Bird.swift (Child Class)
//  Sheikh_Swift_3
//
//  Created by Sheikh Naim on 2026-05-08.
//

import Foundation

// Bird class inheriting from Pet
class Bird: Pet {
  
  var wingSpan: Double
  
  init(name: String, age: Int, wingSpan: Double) {
    self.wingSpan = wingSpan
    super.init(name: name, age: age)
  }
  
  override func makeSound() {
    print("\(name) says: Chirp! Chirp!")
  }
  
  override func showDetails() {
    print("----- BIRD -----")
    super.showDetails()
    print("Wing Span: \(wingSpan) cm")
  }
  
} // Bird
