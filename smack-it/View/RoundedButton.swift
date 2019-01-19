//
//  RoundedButton.swift
//  smack-it
//
//  Created by Krishna Torrence on 1/19/19.
//  Copyright © 2019 Krishna Torrence. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
    }
    
}
