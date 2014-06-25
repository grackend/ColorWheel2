//
//  CollectionViewController.swift
//  ColorWheel
//
//  Created by Grace Kendall on 6/25/14.
//  Copyright (c) 2014 Grace Kendall. All rights reserved.
//

import Foundation
import UIKit

class CollectionViewController: UICollectionViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        collectionView.registerClass(UICollectionViewCell.classForCoder(), forCellWithReuseIdentifier: "Cell")
    
    }
    
    init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
        collectionView.registerClass(UICollectionViewCell.classForCoder(), forCellWithReuseIdentifier: "Cell")
        
    }
    
    init(collectionViewLayout layout: UICollectionViewLayout!) {
        super.init(collectionViewLayout: layout)
        collectionView.registerClass(UICollectionViewCell.classForCoder(), forCellWithReuseIdentifier: "Cell")
    }
    
    override func collectionView(collectionView: UICollectionView!, numberOfItemsInSection section: Int) -> Int {
        return 36
    }
    
    override func collectionView(collectionView: UICollectionView!, cellForItemAtIndexPath indexPath: NSIndexPath!) -> UICollectionViewCell! {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as UICollectionViewCell
        cell.backgroundColor = UIColor .blackColor()
        return cell
    }
    
}