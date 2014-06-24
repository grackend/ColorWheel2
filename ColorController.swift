//
//  ColorController.swift
//  ColorWheel
//
//  Created by Grace Kendall on 6/23/14.
//  Copyright (c) 2014 Grace Kendall. All rights reserved.
//

import Foundation
import UIKit

// I feel like this is about to be way more complicated than it could be



class ColorController : UIView {
    override func setNeedsLayout() {
        super.setNeedsLayout()

        colorArray[0] = origColor
        
        var rgba = CGFloat[](count: 4, repeatedValue: 0.0)
        origColor.getRed(&rgba[0], green: &rgba[1], blue: &rgba[2], alpha: &rgba[3])
        
        var MatchOne: UIColor = UIColor(red: rgba[0], green: rgba[2], blue: rgba[1], alpha: rgba[3])
        var MatchTwo: UIColor = UIColor(red: rgba[2], green: rgba[1], blue: rgba[0], alpha: rgba[3])
        var MatchThree: UIColor = UIColor(red: rgba[1], green: rgba[2], blue: rgba[0], alpha: rgba[3])
        
        colorArray[1] = MatchOne
        colorArray[2] = MatchTwo
        colorArray[3] = MatchThree

        println("red: \(rgba[0]), green: \(rgba[1]), blue: \(rgba[2]), alpha: \(rgba[3])")
        
        if self.accessibilityLabel == "ColorOriginal" {
            self.backgroundColor = colorArray[0]
        }else if self.accessibilityLabel == "MatchOne" {
            self.backgroundColor = colorArray[1]
        }else if self.accessibilityLabel == "MatchTwo" {
            self.backgroundColor = colorArray[2]
        }else if self.accessibilityLabel == "MatchThree" {
            self.backgroundColor = colorArray[3]
        }

    }
}