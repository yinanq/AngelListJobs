//
//  TabDiscoverViewController+animations.swift
//  AngelListJobs
//
//  Created by Yinan Qiu on 1/20/17.
//  Copyright © 2017 YinanQiu. All rights reserved.
//

import UIKit

extension TabDiscoverViewController {
    
    func animateFilterOpening() {
        let duration = animationDuration
        
        // animate filter view and drop down arrow
        UIView.animate(withDuration: duration, delay: 0, options: .curveEaseInOut, animations: {
            self.filterViewBottomConstraint.constant = self.filterView.bounds.height
            self.filterDropdownBtn.transform = CGAffineTransform(rotationAngle: 179.999*(.pi)/180)
        }, completion: { (Bool) in
            //
        })
        
        // animate font size using CATextLayer
        textLayer.fontSize = bigFontSize
        let fontSizeAnimation = CABasicAnimation(keyPath: "fontSize")
        fontSizeAnimation.fromValue = smallFontSize
        fontSizeAnimation.toValue = bigFontSize
        fontSizeAnimation.duration = duration
        fontSizeAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        textLayer.add(fontSizeAnimation, forKey: nil)
        
        // animate "Startups" label location
        UIView.animate(withDuration: duration, delay: 0, options: .curveEaseInOut, animations: {
            self.textLayerViewWidth.constant = self.bigWidth
            self.startupsLabelTop.constant = self.startupsLabelTopConstantWhenBig
            self.headerView.layoutIfNeeded()
        }, completion: { (Bool) in
            //
        })
    }
    
    func animateFilterClosing() {
        let duration = animationDuration
        
        // animate filter view and drop down arrow
        UIView.animate(withDuration: duration, delay: 0, options: .curveEaseInOut, animations: {
            self.filterViewBottomConstraint.constant = 0
            self.filterDropdownBtn.transform = CGAffineTransform(rotationAngle: 0)
        }, completion: { (Bool) in
            //
        })
        
        // animate font size using CATextLayer
        textLayer.fontSize = smallFontSize
        let fontSizeAnimation = CABasicAnimation(keyPath: "fontSize")
        fontSizeAnimation.fromValue = bigFontSize
        fontSizeAnimation.toValue = smallFontSize
        fontSizeAnimation.duration = duration
        fontSizeAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        textLayer.add(fontSizeAnimation, forKey: nil)
        
        // animate "Startups" label location
        UIView.animate(withDuration: duration, delay: 0, options: .curveEaseInOut, animations: {
            self.textLayerViewWidth.constant = self.smallWidth
            self.startupsLabelTop.constant = self.startupsLabelTopConstantWhenSmall
            self.headerView.layoutIfNeeded()
        }, completion: { (Bool) in
            //
        })
    }
}
