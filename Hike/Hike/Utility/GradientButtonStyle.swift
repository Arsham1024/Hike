//
//  File.swift
//  Hike
//
//  Created by Arsham Mehrani on 8/12/23.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                
                configuration.isPressed ?
                
                LinearGradient(
                    colors: [.customGreenLight, .customGreenDark],
                    startPoint: .top,
                    endPoint: .bottom)
                :
                LinearGradient(
                    colors: [.customGreenDark, .customGreenLight],
                    startPoint: .top,
                    endPoint: .bottom)
                    
            )
            .cornerRadius(40)
    }
}
