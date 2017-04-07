//
//  MainVC.swift
//  TacoPaco
//
//  Created by Roger on 1/23/17.
//  Copyright © 2017 Yashwanth. All rights reserved.
//

import UIKit

class MainVC: UIViewController ,DataServiceDelegate{
    
    var ds : DataService = DataService.sharedInstance;

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var headerView: HeaderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self;
        collectionView.dataSource = self;
        ds.delegate = self;
        ds.loadDeliciousData()
        ds.tacoArray.shuffle()

        headerView.addDropShadow();
//        let nib = UINib(nibName: "TacoCell", bundle: nil)
//        collectionView.register(nib, forCellWithReuseIdentifier: "TacoCell")
        
        collectionView.register(TacoCell.self)
    }
    
    func deliciousTacoDataLoaded() {
        print("data loaded");
        collectionView.reloadData()

    }

    
}

extension MainVC :UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1;
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(ds.tacoArray.count)
        return ds.tacoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let cell = collectionView.dequeueReusableCell(forIndexPath: indexPath) as TacoCell
        cell.configureCell(taco:ds.tacoArray[indexPath.row]);
        return cell;
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100);
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? TacoCell {
            cell.shake()
        }
    }
    
    
    
    
    
    
    
    
    
    
    
}
