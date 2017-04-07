//
//  DropShadow.swift
//  TacoPaco
//
//  Created by Roger on 1/23/17.
//  Copyright © 2017 Yashwanth. All rights reserved.
//

import UIKit

protocol DropShadow {}

extension DropShadow where Self : UIView {
    func addDropShadow(){
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
        
        
    }
    
    
}
