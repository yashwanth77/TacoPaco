//
//  ReusableView.swift
//  TacoPaco
//
//  Created by Roger on 1/24/17.
//  Copyright © 2017 Yashwanth. All rights reserved.
//

import UIKit

protocol ReusableView  : class {}
extension ReusableView where Self : UIView{
    static var reuseIdentifier : String{
        return String(describing: self)
    }
}
