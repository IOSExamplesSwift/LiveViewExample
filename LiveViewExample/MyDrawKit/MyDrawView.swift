//
//  MyDrawView.swift
//  MyDrawKit
//
//  Created by Douglas Alexander on 5/8/18.
//  Copyright © 2018 Douglas Alexander. All rights reserved.
//

import UIKit
import QuartzCore

@IBDesignable
class MyDrawView: UIView {

    @IBInspectable var startColor: UIColor = UIColor.white
    @IBInspectable var endColor: UIColor = UIColor.red
    @IBInspectable var endRadius: CGFloat = 100
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        
        let colorspace = CGColorSpaceCreateDeviceRGB()
        let locations: [CGFloat] = [0.0, 1.0]
        
        if let gradient = CGGradient(colorsSpace: colorspace, colors: [startColor.cgColor, endColor.cgColor] as CFArray, locations: locations) {
            var startPoint = CGPoint()
            var endPoint = CGPoint()
            
            let startRadius: CGFloat = 0
            
            startPoint.x = 130
            startPoint.y = 100
            endPoint.x = 130
            endPoint.y = 120
            
            context?.drawRadialGradient(gradient, startCenter: startPoint, startRadius: startRadius,endCenter: endPoint, endRadius: endRadius, options: .drawsBeforeStartLocation)
        }
    }
}
