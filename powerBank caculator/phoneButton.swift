//
//  phoneButton.swift
//  powerBank caculator
//
//  Created by Arthur Sh on 23.10.2022.
//

import SwiftUI

struct phoneButton: View {
    
    var color: Color
    var iphone: String
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 135, height: 60)
                .foregroundColor(color)
                .cornerRadius(14)
                .shadow(radius: 6)
            //MARK: Text on button
            VStack{
                Text(iphone)
                    .bold()
                    .foregroundColor(.white)
                    .shadow(radius: 1)
            }
        }
    }
}

struct phoneButton_Previews: PreviewProvider {
    static var previews: some View {
        phoneButton(color: .green, iphone: "13 pro max")
    }
}
