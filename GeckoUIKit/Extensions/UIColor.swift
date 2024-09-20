//
//  UIColor.swift
//  GeckoUIKit
//
//  Created by Maziar Layeghkar on 20.09.24.
//

import Foundation
import UIKit

extension UIColor {
    static let theme = ThemeColor()
}

struct ThemeColor {
    let customAccent = UIColor(named: "CustomAccent")
    let customBackground = UIColor(named: "CustomBackground")
    let customRed = UIColor(named: "CustomRed")
    let customGreen = UIColor(named: "CustomGreen")
    let customSecondary = UIColor(named: "CustomSecondary")
}
