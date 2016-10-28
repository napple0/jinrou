//
//  ViewController3.swift
//  jinrou
//
//  Created by k13052kk on 2016/08/14.
//  Copyright © 2016年 k13052kk. All rights reserved.
//

import Foundation
import UIKit

class ViewController3: UIViewController{
    
    @IBOutlet weak var joblabel: UILabel!
    @IBOutlet weak var jobimage: UIImageView!
    
    let werewolf = UIImage(named:"人狼.jpg")
    let villager = UIImage(named:"村人.jpg")
    let fortune_teller = UIImage(named:"占い師.jpg")
    let thief = UIImage(named:"怪盗.jpg")
    
    var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    var num = 0
    var count = 0
    var m:[Int] = [1]
    
    override func viewDidLoad() {
        getArray()
        num = appDelegate.message
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getArray(){
        ViewController2.returnArray()
    }
    
    
    //ボタンをタップする度、画像が切り替わる。(職業確認画面のもと)
    @IBAction func tapednext(sender: AnyObject) {
        
        if(num>count){
            if(m[count]<=1){
                joblabel.text = "あなたは人狼です。"
                jobimage.image = werewolf
            }else if(m[count]==2){
                joblabel.text = "あなたは占い師です。"
                jobimage.image = fortune_teller
            }else if(m[count]==3){
                joblabel.text = "あなたは怪盗です。"
                jobimage.image = thief
            }else if(m[count]>=4){
                joblabel.text = "あなたは村人です。"
                jobimage.image = villager
            }
            count++
        }
        else{
        }
    }

    
}