//
//  Floats.swift
//  PopupTest
//
//  Created by ahmed hussien on 08/11/2022.
//

import SwiftUI

struct FloatError: View {
    
    let message: String
    let retryAction: (() -> Void)?
    
    private let color: Color = .red
    
    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: "xmark.circle.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 46))
                .aspectRatio(1.0, contentMode: .fit)
            
            VStack(alignment: .leading, spacing: 2) {
                Text("Error")
                    .foregroundColor(.white)
                    .font(.system(size: 18))
                
                Text(message)
                    .foregroundColor(.white)
                    .font(.system(size: 16))
                    .opacity(0.8)
                
            }
            
            Spacer()
            
            if let action = retryAction {
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
        .padding(16)
        .background(color.cornerRadius(12))
        .shadow(color:color.opacity(0.5), radius: 40, x: 0, y: 12)
        .padding(.horizontal, 16)
    }
}


struct FloatInfo: View {
    
    let message: String
    
    private let color: Color = .gray
    
    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: "exclamationmark.circle.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 46))
                .aspectRatio(1.0, contentMode: .fit)
            
            VStack(alignment: .leading, spacing: 2) {
                Text("Info")
                    .foregroundColor(.white)
                    .font(.system(size: 18))
                
                Text(message)
                    .foregroundColor(.white)
                    .font(.system(size: 16))
                    .opacity(0.8)
            }
            
            Spacer()
            
            
        }
        .padding(16)
        .background(color.cornerRadius(12))
        .shadow(color:color.opacity(0.5), radius: 40, x: 0, y: 12)
        .padding(.horizontal, 16)
    }
}


struct FloatWarning: View {
    
    let message: String
    
    private let color: Color = .yellow
    
    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: "exclamationmark.triangle.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 46))
                .aspectRatio(1.0, contentMode: .fit)
            
            VStack(alignment: .leading, spacing: 2) {
                Text("Warning")
                    .foregroundColor(.white)
                    .font(.system(size: 18))
                
                Text(message)
                    .foregroundColor(.white)
                    .font(.system(size: 16))
                    .opacity(0.8)
            }
            
            Spacer()
            
            
        }
        .padding(16)
        .background(color.cornerRadius(12))
        .shadow(color:color.opacity(0.5), radius: 40, x: 0, y: 12)
        .padding(.horizontal, 16)
    }
}

struct FloatSuccess: View {
    
    let message: String
    
    private let color: Color = .green
    
    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: "checkmark.circle.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 46))
                .aspectRatio(1.0, contentMode: .fit)
            
            VStack(alignment: .leading, spacing: 2) {
                Text("Success")
                    .foregroundColor(.white)
                    .font(.system(size: 18))
                
                Text(message)
                    .foregroundColor(.white)
                    .font(.system(size: 16))
                    .opacity(0.8)
            }
            
            Spacer()
            
            
        }
        .padding(16)
        .background(color.cornerRadius(12))
        .shadow(color:color.opacity(0.5), radius: 40, x: 0, y: 12)
        .padding(.horizontal, 16)
    }
}


struct Floats_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing:60) {
            FloatError(message: "This is an error message", retryAction: {})
            FloatInfo(message: "This is an info message")
            FloatWarning(message: "This is a warning message")
            FloatSuccess(message: "This is a success message")
        }
    }
}
