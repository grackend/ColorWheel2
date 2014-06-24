//
//  ColorController.swift
//  ColorWheel
//
//  Created by Grace Kendall on 6/23/14.
//  Copyright (c) 2014 Grace Kendall. All rights reserved.
//

import Foundation
import UIKit

class ColorController : UIView {
    override func setNeedsLayout() {
        super.setNeedsLayout()
        // Do any additional setup after loading the view, typically from a nib.
        var colorArray: UIColor[] = [UIColor(), UIColor(), UIColor(), UIColor()]
        
        let origColor = UIColor(red: 255, green: 0, blue: 0, alpha: 1)
        colorArray[0] = origColor
        
        //math stuff:
        var redVal: CMutablePointer<CGFloat> = nil
        var greenVal: CMutablePointer<CGFloat> = nil
        var blueVal: CMutablePointer<CGFloat> = nil
        var alpha1: CMutablePointer<CGFloat> = nil
        
        var newColor = UIColor(CGColor: origColor.CGColor)
        
        
        origColor.getRed(redVal, green: greenVal, blue: blueVal, alpha: alpha1)
        
        //var matchOne: UIColor = UIColor(&redVal, &greenVal, &blueVal, &alpha1)
        
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