//
//  Popups.swift
//  PopupTest
//
//  Created by ahmed hussien on 09/11/2022.
//

import SwiftUI

struct PopupMiddle: View {

    @Binding var isPresented: Bool
    let message: String

    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: "wifi.slash")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 226, maxHeight: 226)
            
            Text("Error")
                .foregroundColor(.black)
                .font(.system(size: 24))
                .padding(.top, 12)
            
            Text(message)
                .foregroundColor(.black)
                .font(.system(size: 16))
                .opacity(0.6)
                .multilineTextAlignment(.center)
                .padding(.bottom, 20)
            
            Button("OK") {
                isPresented = false
            }
            .buttonStyle(.plain)
            .font(.system(size: 18, weight: .bold))
            .frame(maxWidth: .infinity)
            .padding(.vertical, 18)
            .padding(.horizontal, 24)
            .foregroundColor(.white)
            .background(Color(hex: "9265F8"))
            .cornerRadius(12)
        }
        .padding(EdgeInsets(top: 37, leading: 24, bottom: 40, trailing: 24))
        .background(Color.white.cornerRadius(20))
        .padding(.horizontal, 40)
    }
}

struct Popups_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing:60) {
            PopupMiddle(isPresented: .constant(false), message: "Error Message")
        }
    }
}
