//
//  PopupConfig.swift
//  PopupTest
//
//  Created by ahmed hussien on 09/11/2022.
//

import SwiftUI

struct PopupConfig: Equatable {
    let position: Position
    let animation: Animation
    let autohideIn: Double?
    let dragToDismiss: Bool
    let closeOnTap: Bool
    let closeOnTapOutside: Bool
    let backgroundColor: Color
    
    init(
        position: Position = .top,
        animation: Animation = Animation.easeOut(duration: 0.3),
        autohideIn: Double? = 1,
        dragToDismiss: Bool = true,
        closeOnTap: Bool = true,
        closeOnTapOutside: Bool = false,
        backgroundColor: Color = Color.clear
    ) {
        self.position = position
        self.animation = animation
        self.autohideIn = autohideIn
        self.dragToDismiss = dragToDismiss
        self.closeOnTap = closeOnTap
        self.closeOnTapOutside = closeOnTapOutside
        self.backgroundColor = backgroundColor
    }
}
