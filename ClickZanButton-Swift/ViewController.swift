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
        
        /**
        *  设置点赞的动作
        */
        zanView.zanAction = {(zhanNumber)->Void in
            self.label.text = "\(zhanNumber)"
            self.label.textColor = UIColor(red: 0.098, green: 0.565, blue: 0.827, alpha: 1)
        }
        
        /**
        *  设置取消点赞的动作
        */
        zanView.unzanAction = {(zhanNumber)->Void in
            self.label.text = "\(zhanNumber)"
            self.label.textColor = UIColor.blackColor()
        }
        
        //设置初始值
        zanView.initNumber = 5
        self.label.text = "5"
        
        /**
        设置若干数字计树器的动画效果
        */
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
        //随机设置计数器的值,并开始动画
        numberScrollView.value = random()
        numberScrollView.startAnimation()
        
    }
    
}

