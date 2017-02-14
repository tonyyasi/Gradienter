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
        if(!flag){
            view.addHorizontalGradientLeft(UIColor.red, endingColor: UIColor.orange, animated: true)
            flag = true
            view.bringSubview(toFront: sender)
        }
        else{
            view.deleteGradient(animated: true)
            flag = false
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

