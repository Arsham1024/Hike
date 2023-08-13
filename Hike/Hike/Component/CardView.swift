//
//  CardView.swift
//  Hike
//
//  Created by Arsham Mehrani on 8/12/23.
//

import SwiftUI

struct CardView: View {
    
    //MARK: - PROPERTIES
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    
    // MARK: - FUNCTIONS
    func randomImage() {
        print("hereeee")
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
                    
        imageNumber = randomNumber
    }
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
            VStack {
                // MARK: - HEADER
                VStack (alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        .customGrayLight,
                                        .customGrayMedium
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                        )
                        
                        Spacer()
                        
                        Button {
                            // ACTION: show a sheet
                            print("The button was pressed.")
                        } label: {
                            CustomButtonView()
                        }

                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and familities.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                    
                } //: HEADER
                .padding(.horizontal, 30)
                
                // MARK: - MAIN CONTENT
                
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [Color("ColorIndigoMedium"), Color("ColorSalmonLight")],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 256, height: 256)
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default,
                                   value: imageNumber)
                }
                
                // MARK: FOOTER
                
                Button {
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.customGreenLight, .customGrayMedium],
                                startPoint: .top,
                                endPoint: .bottom))
                }
                .buttonStyle(GradientButton())
            } //: VSTACK
        } //: CARD
        .frame(width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
