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


//(void)addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;
class ButtonController: UIControl {
        if self.UIControlState == "selected"{
            if self.accessibilityLabel == "Orange" {
                orange = true
            }else if self.accessibilityLabel == "Fuschia" {
                fuschia = true
            }else if self.accessibilityLabel == "Magenta" {
                magenta = true
            }else if self.accessibilityLabel == "Purple" {
                purple = true
            }else if self.accessibilityLabel == "Blue" {
                blue = true
            }else if self.accessibilityLabel == "LightBlue" {
                lightBlue = true
            }else if self.accessibilityLabel == "Green" {
                green = true
            }else if self.accessibilityLabel == "YellowGreen" {
                yellowGreen = true
            }else if self.accessibilityLabel == "Yellow" {
                yellow = true
            }
        }
}