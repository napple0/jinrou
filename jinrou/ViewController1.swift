//
//  ViewController.swift
//  jinrou
//
//  Created by k13052kk on 2016/07/16.
//  Copyright © 2016年 k13052kk. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {
    
    
    @IBOutlet var plus: UIButton!
    @IBOutlet var minus: UIButton!
    @IBOutlet var label: UILabel!
    var count = 3
    var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    override func viewDidLoad() {
        label.text = "3"
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //+ボタンを押した時の処理
    @IBAction func tapedPlusButton(sender: AnyObject) {
        count++
        if count >= 7{
            count = 7 //上限の設定
        }
        appDelegate.message = count
        label.text = String(count)
    }
    
    //-ボタンを押した時の処理
    @IBAction func tapedMinusButton(sender: AnyObject) {
        count--
        if count <= 3{
            count = 3 //下限の設定
        }
        appDelegate.message = count
        label.text = String(count)
  }
    @IBAction func tapedStrat(sender: AnyObject) {
        performSegueWithIdentifier("go2", sender: nil)
    }
    
}

