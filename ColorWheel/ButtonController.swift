//
//  ButtonController.swift
//  ColorWheel
//
//  Created by Grace Kendall on 6/24/14.
//  Copyright (c) 2014 Grace Kendall. All rights reserved.
//

import Foundation
import UIKit

var orange: Bool = false; var fuschia: Bool = false; var magenta: Bool = false
var purple: Bool = false; var blue: Bool = false; var lightBlue: Bool = false
var green: Bool = false; var yellowGreen: Bool = false; var yellow: Bool = false
var noneSelected: Bool = false

var colorArray: UIColor[] = [UIColor(), UIColor(), UIColor(), UIColor()]
var origColor: UIColor = UIColor()

class ButtonController: UIViewController {
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        switch segue.identifier! {
            case "OrangeSegue":
                orange = true
                origColor = UIColor(red: 0.95678, green: 0.43704, blue: 0.25741, alpha: 1.0)
            case "FuschiaSegue":
                fuschia = true
                origColor = UIColor(red: 0.95678, green: 0.24217, blue: 0.45291, alpha: 1.0)
            case "MagentaSegue":
                magenta = true
                origColor = UIColor(red: 0.95678, green: 0.26952, blue: 0.84864, alpha: 1.0)
            case "PurpleSegue":
                purple = true
                origColor = UIColor(red: 0.62752, green: 0.19313, blue: 0.95678, alpha: 1.0)
            case "BlueSegue":
                blue = true
                origColor = UIColor(red: 0.21388, green: 0.49418, blue: 0.95678, alpha: 1.0)
            case "LightBlueSegue":
                lightBlue = true
                origColor = UIColor(red: 0.41767, green: 0.95678, blue: 0.89126, alpha: 1.0)
            case "GreenSegue":
                green = true
                origColor = UIColor(red: 0.25636, green: 0.95678, blue: 0.51797, alpha: 1.0)
            case "YellowGreenSegue":
                yellowGreen = true
                origColor = UIColor(red: 0.78382, green: 0.95678, blue: 0.30451, alpha: 1.0)
            case "YellowSegue":
                yellow = true
                origColor = UIColor(red: 1.0, green: 1.0, blue: 0, alpha: 1.0)
            default:
                noneSelected = true
        }
    }
}