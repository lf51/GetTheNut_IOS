//
//  TimeBankSelectionView.swift
//  TexasHoldem
//
//  Created by Calogero Friscia on 24/11/21.
//

import SwiftUI

struct TimeBankSelectionView: View {
    
    var screenWidth:CGFloat
    var screenHeight:CGFloat
    var inSecond:InSecondTB
    // Animazione
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    @State var scaleDimension: CGFloat = 1.0
    @State var rotationAngle: Double = 0.0
    // end Animation
   
   /* var roundTB:Int = 5
    var isPremium:Bool {
        
        self.roundTB != 0
    } */

    var isLevelUnlocked: Bool
    var clockColor:Color
    
    init(screenWidth:CGFloat,screenHeight:CGFloat, inSecond:InSecondTB, isLevelUnlocked:Bool, clockColor:Color ) {
        
        self.screenWidth = screenWidth
        self.screenHeight = screenHeight
        self.inSecond = inSecond
        
        self.isLevelUnlocked = isLevelUnlocked
        self.clockColor = clockColor
    //    self.roundTB = 5 - UserDefaults.standard.integer(forKey: "roundTB")
        
    }
    
    var body: some View {
        
        ZStack {
            
            Image("ClassicGame")
                .resizable()
                .frame(width: screenWidth * 0.5, height: screenHeight * 0.25, alignment: .center)
                .opacity(0.2)
                .edgesIgnoringSafeArea(.bottom)
            
            Image(systemName: "clock.fill")
                .resizable()
                .scaledToFit()
                .scaleEffect(scaleDimension)
                //.rotationEffect(.degrees(rotationAngle))
                .foregroundColor(clockColor)
                .padding()
                .frame(width: screenWidth * 0.5, height: screenHeight * 0.25, alignment: .center)
                .opacity(isLevelUnlocked ? 0.6 : 0.2)
                .edgesIgnoringSafeArea(.bottom)
            
            VStack {
    
                VStack() {
         
                    Text("\(inSecond.rawValue,specifier: "%.0f")'")
                        .font(.system(size: screenWidth * 0.05, weight: .bold, design: .monospaced))
                        
                       // .foregroundColor(Color(CGColor(red: 1, green: 1, blue: 1, alpha: 1)))
                      //  .padding(.leading,screenWidth * 0.03)
                    //  .scaleEffect(scaleDimension)
                       // .rotationEffect(.degrees(rotationAngle))
                      //  .padding(.top, screenWidth * 0.15) // modificare per ipad
                    Image(systemName: isLevelUnlocked ? "lock.open" : "lock")
                        .font(.system(size: screenWidth * 0.1, weight: .bold, design: .monospaced))
                      //  .opacity(isLevelUnlocked ? 1.0 : 0.4)
                        
                 
                }
               // .font(.system(size: screenWidth * 0.05, weight: .bold, design: .monospaced))
                .foregroundColor(Color(CGColor(red: 1, green: 1, blue: 1, alpha: 1)))
                .opacity(isLevelUnlocked ? 1.0 : 0.4)
                .padding(.leading,(screenWidth * 0.03))
                .padding(.top, screenWidth * 0.12)
                
                //Text("\(roundTB)/5 left") // si può visualizzare il best score
            }
            
        }.onReceive(timer) { _ in
            
            withAnimation(.easeInOut(duration: 0.5)) {
                
                if isLevelUnlocked {
                    
                    scaleDimension = scaleDimension == 1.0 ? 0.9 : scaleDimension + 0.1
                  //  rotationAngle += (360 / Double(inSecond.rawValue))
                
                } else {
                    
                    scaleDimension = 1.0
                 //   rotationAngle = 0.0
                    
                }
                
            }
        }
        
    }
}

/*struct TimeBankSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        TimeBankSelectionView()
    }
}*/
