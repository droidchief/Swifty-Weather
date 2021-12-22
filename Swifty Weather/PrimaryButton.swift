//
//  PrimaryButton.swift
//  Swifty Weather
//
//  Created by Victor Loveday on 22/12/2021.
//

import SwiftUI

struct PrimaryButton: View {
    var buttonLabel: String
    var textColor: Color
    var backgroundColor: Color
    var cornerRadius: Int
    
    var body: some View {
        Text(buttonLabel)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold))
            .cornerRadius(CGFloat(cornerRadius))
    }
}

