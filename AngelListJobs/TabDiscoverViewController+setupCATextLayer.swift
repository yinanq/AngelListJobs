//
//  TabDiscoverViewController+caTextLayer.swift
//  AngelListJobs
//
//  Created by Yinan Qiu on 1/20/17.
//  Copyright © 2017 YinanQiu. All rights reserved.
//

import UIKit

extension TabDiscoverViewController {
    
    func setupCATextLayerForFontSizeAnimation() {
        setupUIViewContainingCATextLayer()
        setupCATextLayer()
        moveConstraintsFromUILabelToUIViewContainingCATextLayer()
        getBigFontWidthAndHeightFromUILabel()
        applyBigFontWidthAndHeightToCATextLayer()
    }
    
    private func setupUIViewContainingCATextLayer() {
        textLayerView.translatesAutoresizingMaskIntoConstraints = false
        filterHeaderView.addSubview(textLayerView)
        textLayerViewLeading = textLayerView.leadingAnchor.constraint(equalTo: startupNumberLabel.leadingAnchor, constant: 0)
        textLayerViewTop = textLayerView.topAnchor.constraint(equalTo: startupNumberLabel.topAnchor, constant: 0)
        smallWidth = startupNumberLabel.bounds.width
        smallHeight = startupNumberLabel.bounds.height
        textLayerViewWidth = textLayerView.widthAnchor.constraint(equalToConstant: smallWidth)
        textLayerViewHeight = textLayerView.heightAnchor.constraint(equalToConstant: smallHeight)
        textLayerViewLeading.isActive = true
        textLayerViewTop.isActive = true
        textLayerViewWidth.isActive = true
        textLayerViewHeight.isActive = true
    }
    
    private func setupCATextLayer() {
        textLayer.string = startupNumberLabel.text
        textLayer.font = startupNumberLabel.font.fontName as CFTypeRef?
        smallFontSize = startupNumberLabel.font.pointSize
        textLayer.fontSize = smallFontSize
        textLayer.foregroundColor = UIColor.black.cgColor
        textLayer.contentsScale = UIScreen.main.scale
        textLayer.frame = textLayerView.bounds
        textLayerView.layer.addSublayer(textLayer)
    }
    
    private func moveConstraintsFromUILabelToUIViewContainingCATextLayer() {
        let newLeading = startupsLabelLeadingContraint.constant
        startupsLabelLeading = startupsLabel.leadingAnchor.constraint(equalTo: textLayerView.trailingAnchor, constant: newLeading)
        startupsLabelTopConstantWhenSmall = startupNumberLabelTopConstraint.constant
        startupsLabelTop = startupsLabel.topAnchor.constraint(equalTo: filterHeaderView.topAnchor, constant: startupsLabelTopConstantWhenSmall)
        startupsLabelLeadingContraint.isActive = false
        startupsLabelBaselineConstraint.isActive = false
        startupsLabelLeading.isActive = true
        startupsLabelTop.isActive = true
    }
    
    private func getBigFontWidthAndHeightFromUILabel() {
        startupNumberLabel.font = UIFont.init(name: startupNumberLabel.font.fontName, size: bigFontSize)
        filterHeaderView.layoutIfNeeded()
        bigWidth = startupNumberLabel.bounds.width
        bigHeight = startupNumberLabel.bounds.height
    }
    
    private func applyBigFontWidthAndHeightToCATextLayer() {
        textLayer.frame.size.width = bigWidth
        textLayer.frame.size.height = bigHeight
    }
}
