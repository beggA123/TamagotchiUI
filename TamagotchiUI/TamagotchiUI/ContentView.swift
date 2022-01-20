//
//  ContentView.swift
//  TamagotchiUI
//
//  Created by Begg, Alistair (AMM) on 20/01/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var tamagotchi = Tamagotchi()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(tamagotchi.displayStats())
            Button("Eat Snack", action: {
                tamagotchi.eatSnack()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
