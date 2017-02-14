
//
//  UIViewExtension.swift
//  Gradienter
//
//  Created by Tony Toussaint on 8/26/16.
//  Copyright © 2016 Tony Toussaint. All rights reserved.
//

import UIKit


extension UIView {
    
    func addHorizontalGradientLeft(_ beginningColor: UIColor, endingColor: UIColor, animated: Bool) {
        
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [beginningColor.cgColor, endingColor.cgColor]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1, y: 0.5)
        if(animated){
            UIView.transition(with: self, duration: 0.5, options: .transitionCrossDissolve , animations: {self.layer.addSublayer(gradient)}, completion: nil)
        }
        else {
        self.layer.addSublayer(gradient)
        }
    }
    
    func addHorizontalGradientRight(_ beginningColor: UIColor , endingColor: UIColor, animated: Bool) {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [beginningColor.cgColor, endingColor.cgColor]
        gradient.startPoint = CGPoint(x: 1, y: 0.5)
        gradient.endPoint = CGPoint(x: 0, y: 0.5)
        if(animated){
            
               UIView.transition(with: self, duration: 0.5, options: .transitionCrossDissolve , animations: {self.layer.addSublayer(gradient)}, completion: nil)
            
        }
        else{
            self.layer.addSublayer(gradient)
        }
    }
    
    func addVerticalGradientTop(_ beginningColor: UIColor , endingColor: UIColor, animated: Bool){
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [beginningColor.cgColor, endingColor.cgColor]
        gradient.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradient.endPoint = CGPoint(x: 0.5, y: 1)
        if(animated){
            
            UIView.transition(with: self, duration: 0.5, options: .transitionCrossDissolve , animations: {self.layer.addSublayer(gradient)}, completion: nil)
            
        }
        else{
            self.layer.addSublayer(gradient)
        }
    }
    
    func addVerticalGradientBottom(_ beginningColor: UIColor , endingColor: UIColor, animated: Bool){
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [beginningColor.cgColor, endingColor.cgColor]
        gradient.startPoint = CGPoint(x: 0.5, y: 1)
        gradient.endPoint = CGPoint(x: 0.5, y: 0.0)
        if(animated){
            
            UIView.transition(with: self, duration: 0.5, options: .transitionCrossDissolve , animations: {self.layer.addSublayer(gradient)}, completion: nil)
            
        }
        else{
            self.layer.addSublayer(gradient)
        }
    }
    
    func addDiagonalGradientLeft(_ beginningColor: UIColor , endingColor: UIColor, animated: Bool){
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [beginningColor.cgColor, endingColor.cgColor]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        if(animated){
            
            UIView.transition(with: self, duration: 0.5, options: .transitionCrossDissolve , animations: {self.layer.addSublayer(gradient)}, completion: nil)
            
        }
        else{
            self.layer.addSublayer(gradient)
        }
    }
    
    func addDiagonalGradientRight(_ beginningColor: UIColor , endingColor: UIColor, animated: Bool){
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [beginningColor.cgColor, endingColor.cgColor]
        gradient.startPoint = CGPoint(x: 1, y: 0.0)
        gradient.endPoint = CGPoint(x: 0.0, y: 1)
        if(animated){
            
            UIView.transition(with: self, duration: 0.5, options: .transitionCrossDissolve , animations: {self.layer.addSublayer(gradient)}, completion: nil)
            
        }
        else{
            self.layer.addSublayer(gradient)
        }
    }
    func deleteGradient(animated: Bool){
       let a = self.layer.sublayers
        
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
