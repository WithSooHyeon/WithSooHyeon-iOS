//
//  ColorExtension.swift
//  withSooHyeon
//
//  Created by 이자민 on 2023/10/23.
//

import SwiftUI

extension Color {
    static let primaryColor = Color("PrimaryColor")
    init(hex: UInt) {
        // 16진수 값을 사용하여 Color 초기화
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255.0,
            green: Double((hex >> 8) & 0xff) / 255.0,
            blue: Double(hex & 0xff) / 255.0
        )
    }
}
