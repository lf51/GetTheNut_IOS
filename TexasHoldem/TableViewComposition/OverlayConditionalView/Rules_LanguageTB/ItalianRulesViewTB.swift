//
//  EnglishRulesView.swift
//  TexasHoldem
//
//  Created by Calogero Friscia on 31/10/21.
//

import SwiftUI

struct ItalianRulesViewTB: View {
    
    var fontSize: Double
    
    var body: some View {
        
        VStack {
          //  Spacer()
            
            Text("Show the Nut") // Show the Nut // Hunt the Nut //
                .font(.system(size: fontSize * 1.4, weight: .bold, design: .monospaced))
                .foregroundColor(Color.purple)
                .padding(.vertical)
            
            Text("TimeBank 60'")
                .font(.system(size: fontSize * 1.2, weight: .bold, design: .monospaced))
                 .foregroundColor(Color.purple)
                 .padding(.bottom)
                        
            Text("• Il giocatore dispone di 60 secondi per indovinare quante più 'Mani Nut' possibili.\n\n• Il giocatore ha facoltà di scegliere le proprie carte subito dopo il flop.")
            
           
            
           /* Text("• Pre-Flop: \nthe player open the game with a no limits bet;\nif the Opening Bet is All-in, the win multiplier is Double.\n\n• Flop:\nthe player chooses the pocket cards. Bet is 5x Opening Bet limited.\n\n• Turn:\nthe player can change one of the pocket cards (half win multiplier). Bet is 3x Opening Bet limited.\n\n• River:\nthe player wins if he finally gets the nut, the highest possible hand.\n\n\nWin multiplier:\n• Standard -> 3x Pot\n• Double -> 6x Pot\n• Half -> 1.5x Pot") */

            Spacer()
            
        }
        .shadow(color: Color.black, radius: 5.0, x: 0.0, y: 0.0)
        .font(.system(size: fontSize, weight: .bold, design: .monospaced))
        .foregroundColor(Color.yellow)
        .multilineTextAlignment(.leading)
        .minimumScaleFactor(0.1)
        .padding()
    }
}
