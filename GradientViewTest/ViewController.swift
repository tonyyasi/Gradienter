//
//  ViewController.swift
//  Gradienter
//
//  Created by Tony Toussaint on 8/26/16.
//  Copyright © 2016 Tony Toussaint. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var flag = false
    @IBAction func buttonPressed(_ sender: UIButton) {
        if(sender.isSelected == false){
            sender.isSelected = true
            view.addHorizontalGradientLeft(.red, endingColor: .orange, animated: true)
            view.bringSubview(toFront: sender)
        }
        else{
            view.deleteGradient(animated: true)
            sender.isSelected = false
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

