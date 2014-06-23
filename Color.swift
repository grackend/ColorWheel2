//
//  Color.swift
//  ColorWheel
//
//  Created by Grace Kendall on 6/23/14.
//  Copyright (c) 2014 Grace Kendall. All rights reserved.
//

import Foundation

class Color {
    var redAtt = 0
    var greenAtt = 0
    var blueAtt = 0
    //default color is black
    
    func getRed() -> Int {
        return redAtt
    }
    func getGreen() -> Int {
        return greenAtt
    }
    func getBlue() -> Int {
        return blueAtt
    }
    //getters for each of the rgb attributes
    
    func setRed(inRed: Int) {
        redAtt = inRed
    }
    func setGreen(inGreen: Int) {
        greenAtt = inGreen
    }
    func setBlue(inBlue: Int) {
        blueAtt = inBlue
    }
    //setters for each of the rgb attributes
    
    init(inRed: Int, inGreen: Int, inBlue: Int){
        redAtt = inRed
        greenAtt = inGreen
        blueAtt = inBlue
    }
    //nondefault constructor....?
}