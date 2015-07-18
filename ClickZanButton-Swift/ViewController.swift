//
//  ViewController.swift
//  ClickZhanButton
//
//  Created by SUN on 15/7/14.
//  Copyright © 2015年 SUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var zanView: ZanButton!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var numberScrollView: NumberScrollAnimatedView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        zanView.zanAction = {(zhanNumber)->Void in
            self.label.text = "\(zhanNumber)"
            self.label.textColor = UIColor(red: 0.098, green: 0.565, blue: 0.827, alpha: 1)
        }
        
        zanView.unzanAction = {(zhanNumber)->Void in
            self.label.text = "\(zhanNumber)"
            self.label.textColor = UIColor.blackColor()
        }
        
        numberScrollView.value = 0
        numberScrollView.desity = 5
        numberScrollView.duration = 1.5
        numberScrollView.durationOffset = 0.2
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func doAction(sender: UIButton) {
        numberScrollView.value = random()
        numberScrollView.startAnimation()
        
    }
    
}

