//
//  GradientView.swift
//  smack-it
//
//  Created by Krishna Torrence on 1/16/19.
//  Copyright © 2019 Krishna Torrence. All rights reserved.
//

import UIKit

@IBDesignable //work in storyboard
class GradientView: UIView {

    //Creating a variable that can be changed in the storyboard
    //color picture that is choosen
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    //this is called when on the variable have changed
    override func layoutSubviews() {
        //Creating the gradient layer
        let gradientLayer = CAGradientLayer()
        //Set the gradient colors
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        //Start and end point
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        //Size of the layer
        gradientLayer.frame = self.bounds
        //Add the gradient layer to the UIView layers
        self.layer.insertSublayer(gradientLayer, at: 0)
    }

}
