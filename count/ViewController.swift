//
//  ViewController.swift
//  count
//
//  Created by 鶴崎かんな on 2015/03/01.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label:UILabel!
    var number:Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func plus(){
        number = number + 1
        label.text = "\(number)"
        self.changeLabelRedColor()
        self.changeLabelBlueColor()
    }
    
    
    
    @IBAction func minus(){
        number = number - 1
        label.text = "\(number)"
        self.changeLabelRedColor()
        self.changeLabelBlueColor()

    }
    
    @IBAction func clear(){
        number = 0
        label.text = "\(number)"
        self.changeLabelRedColor()
        self.changeLabelBlueColor()

    }

    @IBAction func kakeru(){
        number = number * number
        label.text = "\(number)"
        self.changeLabelRedColor()
        self.changeLabelBlueColor()

    }

    @IBAction func waru(){
        number = number / number
        label.text = "\(number)"
        self.changeLabelRedColor()
        self.changeLabelBlueColor()

    }
    
    
    func changeLabelRedColor(){
        if number >= 10{
            label.textColor = UIColor.redColor()
        }
    }
    func changeLabelBlueColor(){
        if number <= -10{
            label.textColor = UIColor.blueColor()
        }
    }
    
    
    
    
}

