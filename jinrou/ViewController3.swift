//
//  ViewController3.swift
//  jinrou
//
//  Created by k13052kk on 2016/10/29.
//  Copyright © 2016年 k13052kk. All rights reserved.
//

import Foundation
import UIKit

class ViewController3: UIViewController{
    var sendText:String = ""
    @IBOutlet weak var jobLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jobLabel.text = sendText
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}