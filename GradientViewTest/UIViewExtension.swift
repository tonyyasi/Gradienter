//
//  UIViewExtension.swift
//  Gradienter
//
//  Created by Tony Toussaint on 8/26/16.
//  Copyright © 2016 Tony Toussaint. All rights reserved.
//
import UIKit

extension UIView {
    
    enum GradientType{
        
        case leftToRight
        case rightToLeft
        case topToBottom
        case bottomToTop
        case DiagonalLeftToRight
        case DiagonalRightToLeft
    }
    
    func addGradient(beginingColor: UIColor, endingColor: UIColor, type: GradientType, animated: Bool){
        var startX = 0.0
        var startY = 0.0
        var endX = 0.0
        var endY = 0.0
        switch type {
        case .leftToRight:
            startX = 0.0
            startY = 0.5
            endX = 1.0
            endY = 0.5
            
        case .rightToLeft:
            startX = 1.0
            startY = 0.5
            endX = 0.0
            endY = 0.5
            
        case .topToBottom:
            startX = 0.5
            startY = 0.0
            endX = 0.5
            endY = 1.0
            
        case .bottomToTop:
            startX = 0.5
            startY = 1.0
            endX = 0.5
            endY = 0.0
            
        case .DiagonalLeftToRight:
            startX = 0.0
            startY = 0.0
            endX = 1.0
            endY = 1.0
            
        case .DiagonalRightToLeft:
            startX = 1.0
            startY = 1.0
            endX = 0.0
            endY = 0.0
            
        }
        
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [beginingColor.cgColor, endingColor.cgColor]
        gradient.startPoint = CGPoint(x: startX, y: startY)
        gradient.endPoint = CGPoint(x: endX, y: endY)
        gradient.zPosition = -1
        if(animated){
            UIView.transition(with: self, duration: 0.5, options: .transitionCrossDissolve , animations: {self.layer.addSublayer(gradient)}, completion: nil)
        }
        else {
            self.layer.addSublayer(gradient)
        }
    }
    
    func addGradientWithMultipleColors(colors: [CGColor], type: GradientType, animated: Bool){
        // Maybe add the posibility to add a gradient of more then one color
    }
    
    func deleteGradient(animated: Bool){
        
        if(animated){
            UIView.transition(with: self, duration: 0.5, options: .transitionCrossDissolve , animations: {for layers in self.layer.sublayers! {
                if(layers is CAGradientLayer){
                    self.layer.sublayers?.remove(at: (self.layer.sublayers?.index(of: layers))!)
                }
                }
            }, completion: nil)
        }
        else{
            for layers in self.layer.sublayers! {
                if(layers is CAGradientLayer){
                    self.layer.sublayers?.remove(at: (self.layer.sublayers?.index(of: layers))!)
                }
            }
        }
    }
}
