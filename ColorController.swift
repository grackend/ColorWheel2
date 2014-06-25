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
let date = NSDate()
let calendar = NSCalendar.currentCalendar()
let components = calendar.components(.CalendarUnitHour | .CalendarUnitMinute, fromDate: date)
let seconds = Float(components.second)

protocol RandomNumberGenerator {
    func random() -> Double
}
class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = seconds
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double{
        lastRandom = ((lastRandom * Float(a) + Float(c)) % Float(m))
        let retVal: Float = Float(lastRandom) / Float(m)
        return (Double(retVal) * 10) % 18
    }
}
let generator = LinearCongruentialGenerator()
    // Generate "random" number from 1-10


class ColorController : UIView {
    override func setNeedsLayout() {
        super.setNeedsLayout()

        colorArray[0] = origColor
        
        var rgba = CGFloat[](count: 4, repeatedValue: 0.0)
        origColor.getRed(&rgba[0], green: &rgba[1], blue: &rgba[2], alpha: &rgba[3])
        
        var redArray = CGFloat[](count: 18, repeatedValue: 0.0)
        redArray[0] = rgba[0]
        redArray[1] = rgba[0]/2
        
        if rgba[0] < (194/255) {
            redArray[2] = rgba[0] + (61/255)
        }else{
            redArray[2] = rgba[0]/4
        }
        if rgba[0] > (61/255) {
            redArray[3] = rgba[0] - (61/255)
        }else{
            redArray[3] = rgba[0]
        }
        
        if rgba[0] < (224/255) {
            redArray[4] = rgba[0] + (31/255)
        }else{
            redArray[4] = rgba[0]/4
        }
        if rgba[0] > (31/255) {
            redArray[5] = rgba[0] - (31/255)
        }else{
            redArray[5] = rgba[0]
        }
        
        redArray[6] = rgba[1]
        redArray[7] = rgba[1]/2
        if rgba[1] < (194/255) {
            redArray[8] = rgba[1] + (61/255)
        }else{
            redArray[8] = rgba[1]/4
        }
        if rgba[1] > (61/255) {
            redArray[9] = rgba[1] - (61/255)
        }else{
            redArray[9] = rgba[1]
        }
        
        if rgba[1] < (224/255) {
            redArray[10] = rgba[1] + (31/255)
        }else{
            redArray[10] = rgba[1]/4
        }
        if rgba[1] > (31/255) {
            redArray[11] = rgba[1] - (31/255)
        }else{
            redArray[11] = rgba[1]
        }
        
        redArray[12] = rgba[2] + (61/255)
        redArray[13] = rgba[2] - (61/255)
        if rgba[2] < (194/255) {
            redArray[14] = rgba[2] + (61/255)
        }else{
            redArray[14] = rgba[2]/4
        }
        if rgba[2] > (61/255) {
            redArray[15] = rgba[2] - (61/255)
        }else{
            redArray[15] = rgba[2]
        }
        
        if rgba[2] < (224/255) {
            redArray[16] = rgba[2] + (31/255)
        }else{
            redArray[16] = rgba[2]/4
        }
        if rgba[2] > (31/255) {
            redArray[17] = rgba[2] - (31/255)
        }else{
            redArray[17] = rgba[2]
        }
        
        
        func getColor() -> (){
            var redIndex = Int(generator.random())
            var blueIndex = Int(generator.random())
            var greenIndex = Int(generator.random())
        
            var MatchOne: UIColor = UIColor(red: redArray[redIndex], green: redArray[greenIndex], blue: redArray[blueIndex], alpha: rgba[3])
        
            redIndex = Int(generator.random())
            blueIndex = Int(generator.random())
            greenIndex = Int(generator.random())
        
            var MatchTwo: UIColor = UIColor(red: redArray[redIndex], green: redArray[greenIndex], blue: redArray[blueIndex], alpha: rgba[3])
        
            redIndex = Int(generator.random())
            blueIndex = Int(generator.random())
            greenIndex = Int(generator.random())
        
            var MatchThree: UIColor = UIColor(red: redArray[redIndex], green: redArray[greenIndex], blue: redArray[blueIndex], alpha: rgba[3])
        
            colorArray[1] = MatchOne
            colorArray[2] = MatchTwo
            colorArray[3] = MatchThree
        

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
        getColor()
    }
}