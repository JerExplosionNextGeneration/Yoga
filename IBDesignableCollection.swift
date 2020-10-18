//
//  IBDesignableCollection.swift
//  Yoga
//
//  Created by Jerry Ren on 9/15/20.
//  Copyright © 2020 Jerry Ren. All rights reserved.
//

import UIKit

// MARS: - TBR
@IBDesignable class CustomTabBar: UITabBar {
    @IBInspectable var barHeight: CGFloat = 0.0
    
    @IBInspectable var cRadio: CGFloat = 5.55 {
    didSet {
        self.layer.cornerRadius = cRadio
    }}
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        var desiredSize = super.sizeThatFits(size)
        if barHeight > 0.0 {
            desiredSize.height = barHeight
            desiredSize.height = barHeight + 33
        }
        return desiredSize
    }
}

// MARS: - BTN
@IBDesignable class RoButton: UIButton {
    @IBInspectable var cRadius: CGFloat = 3.33 {
        didSet {
            self.layer.cornerRadius = cRadius
        }}}

// MARS: - IMG
@IBDesignable class RImageView: UIImageView {
    
    @IBInspectable var cRadio: CGFloat = 5.55 {
        didSet {
            self.layer.cornerRadius = cRadio
    }}}

// MARS: - UIV
@IBDesignable class RoUIView: UIView {
    
    @IBInspectable var cRadio: CGFloat = 13.33 {
        didSet {
            self.layer.cornerRadius = cRadio
        }
    }
}

// MARS: - TBI
@IBDesignable class CustomizedTabBarItem: UITabBarItem {
    @IBInspectable var barHeight: CGFloat = 39.0
    
    @IBInspectable var biSize: CGFloat = 25.55 {
    didSet {
         // blablabla 
    }}
}

// MARS: - TXF (not applicable yet but just in case)
@IBDesignable class RTextfield: UITextField {
    @IBInspectable var cRadio: CGFloat = 2.22 {
        didSet {
            self.layer.cornerRadius = cRadio
        }}
    @IBInspectable var borColo: UIColor? {
        didSet {
            self.layer.borderColor = borColo?.cgColor
        }}
    
    @IBInspectable var borWii: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borWii
        }}
}

