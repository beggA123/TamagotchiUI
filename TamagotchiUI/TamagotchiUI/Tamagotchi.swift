//
//  Tamagotchi.swift
//  TamagotchiUI
//
//  Created by Begg, Alistair (AMM) on 20/01/2022.
//

import Foundation

class Tamagotchi: ObservableObject {
    @Published var hunger = Int()
    var age = Double()
    var intelligence = Int()
    var name = String()
    
    init() {
        self.hunger = 10
        self.age = 0
        self.intelligence = 0
        print("Enter Age")
        if let input = readLine() {
            self.name = input
        } else {
            print("Invalid Name, Setting Name to Tamagotchi")
            self.name = "Tamagotchi"
        }
    }
    
    func eatSnack() {
        if self.hunger <= 0 {
            self.hunger = 0
        } else {
            self.hunger -= 1
        }
    }
    
    func displayStats() -> String {
        let ageYear = Int(self.age)
        return ("""
            Name: \(self.name)
            Age: \(ageYear) Years
            Hunger: \(self.hunger)
            Intelligence: \(self.intelligence)
            """)
    }
}
