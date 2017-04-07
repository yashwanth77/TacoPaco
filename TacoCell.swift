//
//  TacoCell.swift
//  TacoPaco
//
//  Created by Roger on 1/23/17.
//  Copyright © 2017 Yashwanth. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell,NibLoadableView,Shakeble {

    @IBOutlet weak var tacoImg: UIImageView!
    @IBOutlet weak var tacoLbl: UILabel!
    var taco : Taco!
    
    func configureCell(taco : Taco){
        
        self.taco = taco;
        tacoImg.image = UIImage(named: taco.proteinId.rawValue)
        tacoLbl.text = taco.productName;
        
        
    }
    
    

}
