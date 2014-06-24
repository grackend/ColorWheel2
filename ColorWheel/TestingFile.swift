//
//  TestingFile.swift
//  ColorWheel
//
//  Created by Grace Kendall on 6/24/14.
//  Copyright (c) 2014 Grace Kendall. All rights reserved.
//

import Foundation
import UIKit

class TestingFile: UIButton {
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        var rgb = CGFloat[](count: 4, repeatedValue: 0.0)
        var Color: UIColor = self.backgroundColor
        Color.getRed(&rgb[0], green: &rgb[1], blue: &rgb[2], alpha: &rgb[3])
        println("red: \(rgb[0]), green: \(rgb[1]), blue: \(rgb[2]), alpha: \(rgb[3]), button: \(self.accessibilityLabel)")
    }
}