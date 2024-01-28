//
//  Toasts.swift
//  PopupTest
//
//  Created by ahmed hussien on 09/11/2022.
//

import SwiftUI

struct ToastError: View {
    
    let message: String
    let retryAction: (() -> Void)?
    
    private let color: Color = .red
    
    var body: some View {
        HStack {
            Text(message)
                .foregroundColor(.white)
            
            
            if let action = retryAction {
                
                Spacer()
                
                Button(action: action) {
                    Text("Retry")
                }
                .foregroundColor(color)
                .padding(.vertical, 4)
                .padding(.horizontal, 10)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundColor(.white)
                )
            }
        }
        .padding(EdgeInsets(top: 60, leading: 32, bottom: 16, trailing: 16))
        .frame(maxWidth: .infinity)
        .background(color)
    }
}

struct ToastInfo: View {
    
    let message: String
    
    var body: some View {
        Text(message)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 60, leading: 32, bottom: 16, trailing: 32))
            .frame(maxWidth: .infinity)
            .background(Color.gray)
    }
}

struct ToastWarning: View {
    
    let message: String
    
    var body: some View {
        Text(message)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 60, leading: 32, bottom: 16, trailing: 32))
            .frame(maxWidth: .infinity)
            .background(Color.yellow)
    }
}

struct ToastSuccess: View {
    
    let message: String
    
    var body: some View {
        Text(message)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 60, leading: 32, bottom: 16, trailing: 32))
            .frame(maxWidth: .infinity)
            .background(Color.green)
    }
}


struct Toasts_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing:60) {
            ToastError(message: "This is an error message", retryAction: {})
            ToastInfo(message: "This is an info message")
            ToastWarning(message: "This is a warning message")
            ToastSuccess(message: "This is a success message")
        }
    }
}
