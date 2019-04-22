//
//  CustomView.swift
//  FyreSwiftExtensions_Example
//
//  Created by Travis Delly on 4/22/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import FyreSwiftExtensions

class CustomView: UIView, NibView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

extension CustomView {
    func setup() {
        self.xibSetup();
    }
}
