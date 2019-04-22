//
//  UIColorExtensions.swift
//  FyreSwiftExtensions
//
//  Created by Travis Delly on 4/22/19.
//

import Foundation

extension UIColor {
    public static var FyresiteOrange300 = UIColor.colorFromHex(rgb: 0xFF7F11, alpha: 1.0);
    public static var FyresiteOrange500 = UIColor.colorFromHex(rgb: 0xFF6700, alpha: 1.0);
    public static var FyresiteOrange700 = UIColor.colorFromHex(rgb: 0xFF3F00, alpha: 1.0);
    
    class func colorFromHex(rgb: Int, alpha: CGFloat) -> UIColor {
        let components = (
            R: CGFloat((rgb >> 16) & 0xff) / 255,
            G: CGFloat((rgb >> 08) & 0xff) / 255,
            B: CGFloat((rgb >> 00) & 0xff) / 255
        )
        
        return UIColor.init(
            red: components.R,
            green: components.G,
            blue: components.B,
            alpha: alpha
        );
        
    }
}
