//
//  ViewController.swift
//  Gradienter
//
//  Created by Tony Toussaint on 8/26/16.
//  Copyright © 2016 Tony Toussaint. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func leftButtonPressed(_ sender: UIButton) {
        if(!sender.isSelected){
            sender.isSelected = true
            view.addGradient(beginingColor: .blue, endingColor: .yellow, type: .leftToRight, animated: true)
        }
        else{
            sender.isSelected = false
            view.deleteGradient(animated: true)
        }
    }
    
    @IBAction func topButtonPressed(_ sender: UIButton) {
        if(!sender.isSelected){
            sender.isSelected = true
            view.addGradient(beginingColor: .blue, endingColor: .yellow, type: .topToBottom, animated: true)
        }
        else{
            sender.isSelected = false
            view.deleteGradient(animated: true)
        }

    }
    
    @IBAction func rightButtonPressed(_ sender: UIButton) {
        if(!sender.isSelected){
            sender.isSelected = true
            view.addGradient(beginingColor: .blue, endingColor: .yellow, type: .rightToLeft, animated: true)
        }
        else{
            sender.isSelected = false
            view.deleteGradient(animated: true)
        }

    }
    @IBAction func bottomButtonPressed(_ sender: UIButton) {
        if(!sender.isSelected){
            sender.isSelected = true
            view.addGradient(beginingColor: .blue, endingColor: .yellow, type: .bottomToTop, animated: true)
        }
        else{
            sender.isSelected = false
            view.deleteGradient(animated: true)
        }

    }
    @IBAction func diagonal1ButtonPressed(_ sender: UIButton) {
        if(!sender.isSelected){
            sender.isSelected = true
            view.addGradient(beginingColor: .blue, endingColor: .yellow, type: .DiagonalLeftToRight, animated: true)
        }
        else{
            sender.isSelected = false
            view.deleteGradient(animated: true)
        }

    }
    
    @IBAction func diagonal2ButtonPressed(_ sender: UIButton) {
        if(!sender.isSelected){
            sender.isSelected = true
            view.addGradient(beginingColor: .blue, endingColor: .yellow, type: .DiagonalRightToLeft, animated: true)
        }
        else{
            sender.isSelected = false
            view.deleteGradient(animated: true)
        }

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

