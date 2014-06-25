//
//  ASCollectionViewController.swift
//  ColorWheel
//
//  Created by Andrew Selvia on 6/25/14.
//  Copyright (c) 2014 Grace Kendall. All rights reserved.
//

import Foundation
import UIKit

class ASCollectionViewController: UICollectionViewController {
    
}

extension ASCollectionViewController {
    override func collectionView(collectionView: UICollectionView!, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(collectionView: UICollectionView!, cellForItemAtIndexPath indexPath: NSIndexPath!) -> UICollectionViewCell! {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as UICollectionViewCell!
        switch indexPath.row {
        case 0:
            cell.backgroundColor = UIColor.redColor()
        case 1:
            cell.backgroundColor = UIColor.whiteColor()
        case 2:
            cell.backgroundColor = UIColor.blueColor()
        default:
            cell.backgroundColor = UIColor.yellowColor()
        }
        return cell
    }
}