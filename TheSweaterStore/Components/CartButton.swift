//
//  CartButton.swift
//  TheSweaterStore
//
//  Created by Chinmay S Nawkar on 16/07/23.
//

import SwiftUI

struct CartButton: View {
    //will accept one arg
    var numberofProducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "cart")
                .padding(.top, 5)
            
            if numberofProducts > 0 {
                Text("\(numberofProducts)")
                    .font(.caption2)
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(hue:1.0, saturation: 0.89, brightness: 0.835))
                    .cornerRadius(50)
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberofProducts: 1)
    }
}
