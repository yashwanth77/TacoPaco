//
//  Shakeble.swift
//  TacoPaco
//
//  Created by Roger on 1/24/17.
//  Copyright © 2017 Yashwanth. All rights reserved.
//

import UIKit
protocol Shakeble {}
extension Shakeble where Self: UIView {
    func shake() {
        //implementation
        let anim = CABasicAnimation(keyPath: "position")
        anim.duration = 0.05
        anim.repeatCount = 5
        anim.autoreverses = true
        anim.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4.0, y: self.center.y))
        anim.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4.0, y: self.center.y))
        layer.add(anim, forKey: "position")
    }
}
