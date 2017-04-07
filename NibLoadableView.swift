//
//  NibLoadableView.swift
//  TacoPaco
//
//  Created by Roger on 1/24/17.
//  Copyright © 2017 Yashwanth. All rights reserved.
//

import UIKit

protocol NibLoadableView : class{}

extension NibLoadableView where Self : UIView{
    static var nibName : String{
        return String(describing: self);
    }
}
