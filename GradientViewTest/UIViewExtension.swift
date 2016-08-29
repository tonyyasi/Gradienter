//
//  UIViewExtension.swift
//  Gradienter
//
//  Created by Tony Toussaint on 8/26/16.
//  Copyright © 2016 Tony Toussaint. All rights reserved.
//

import UIKit


extension UIView {
    
    func addHorizontalGradientLeft(beginningColor: UIColor, endingColor: UIColor, animated: Bool) {
        
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [beginningColor.CGColor, endingColor.CGColor]
        gradient.startPoint = CGPointMake(0.0, 0.5)
        gradient.endPoint = CGPointMake(1, 0.5)
        if(animated){
            UIView.transitionWithView(self, duration: 0.5, options: .TransitionCrossDissolve , animations: {self.layer.addSublayer(gradient)}, completion: nil)
        }
        else {
        self.layer.addSublayer(gradient)
        }
    }
    
    func addHorizontalGradientRight(beginningColor: UIColor , endingColor: UIColor, animated: Bool) {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [beginningColor.CGColor, endingColor.CGColor]
        gradient.startPoint = CGPointMake(1, 0.5)
        gradient.endPoint = CGPointMake(0, 0.5)
        if(animated){
            
               UIView.transitionWithView(self, duration: 0.5, options: .TransitionCrossDissolve , animations: {self.layer.addSublayer(gradient)}, completion: nil)
            
        }
        else{
            self.layer.addSublayer(gradient)
        }
    }
    
    func addVerticalGradientTop(beginningColor: UIColor , endingColor: UIColor, animated: Bool){
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [beginningColor.CGColor, endingColor.CGColor]
        gradient.startPoint = CGPointMake(0.5, 0.0)
        gradient.endPoint = CGPointMake(0.5, 1)
        if(animated){
            
            UIView.transitionWithView(self, duration: 0.5, options: .TransitionCrossDissolve , animations: {self.layer.addSublayer(gradient)}, completion: nil)
            
        }
        else{
            self.layer.addSublayer(gradient)
        }
    }
    
    func addVerticalGradientBottom(beginningColor: UIColor , endingColor: UIColor, animated: Bool){
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [beginningColor.CGColor, endingColor.CGColor]
        gradient.startPoint = CGPointMake(0.5, 1)
        gradient.endPoint = CGPointMake(0.5, 0.0)
        if(animated){
            
            UIView.transitionWithView(self, duration: 0.5, options: .TransitionCrossDissolve , animations: {self.layer.addSublayer(gradient)}, completion: nil)
            
        }
        else{
            self.layer.addSublayer(gradient)
        }
    }
    
    func addDiagonalGradientLeft(beginningColor: UIColor , endingColor: UIColor, animated: Bool){
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [beginningColor.CGColor, endingColor.CGColor]
        gradient.startPoint = CGPointMake(0.0, 0.0)
        gradient.endPoint = CGPointMake(1, 1)
        if(animated){
            
            UIView.transitionWithView(self, duration: 0.5, options: .TransitionCrossDissolve , animations: {self.layer.addSublayer(gradient)}, completion: nil)
            
        }
        else{
            self.layer.addSublayer(gradient)
        }
    }
    
    func addDiagonalGradientRight(beginningColor: UIColor , endingColor: UIColor, animated: Bool){
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [beginningColor.CGColor, endingColor.CGColor]
        gradient.startPoint = CGPointMake(1, 0.0)
        gradient.endPoint = CGPointMake(0.0, 1)
        if(animated){
            
            UIView.transitionWithView(self, duration: 0.5, options: .TransitionCrossDissolve , animations: {self.layer.addSublayer(gradient)}, completion: nil)
            
        }
        else{
            self.layer.addSublayer(gradient)
        }
    }
}
