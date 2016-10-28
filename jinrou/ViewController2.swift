//
//  ViewController2.swift
//  jinrou
//
//  Created by k13052kk on 2016/07/16.
//  Copyright © 2016年 k13052kk. All rights reserved.
//

import Foundation
import UIKit

class ViewController2:  UIViewController{
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    var count = 0

    //0,1人狼 2占い師 3怪盗 4,5,6,7村人
    var n3 = [0,1,2,3,4]
    var n4 = [0,1,2,3,4,5]
    var n5 = [0,1,2,3,4,5,6]
    var n6 = [0,1,2,3,4,5,6,7]
    var n7 = [0,1,2,3,4,5,6,7]
    var m:[Int]=[]
    var num = 0
    var alert = UIAlertView()
    var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    //画面が表示された時の関数
   override func viewDidLoad() {
        label2.text = String(appDelegate.message)
        num = appDelegate.message //最初の画面で設定した人数を取得
        if(num==3){ m=self.shuffleArray(n3)}
        else if(num==4){m=self.shuffleArray(n4)}
        else if(num==5){m=self.shuffleArray(n5)}
        else if(num==6){m=self.shuffleArray(n6)}
        else if(num==7){m=self.shuffleArray(n7)}
        self.a()
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //配列の中身をシャッフルする関数
    func shuffleBang<T>(inout array: [T]) {
        for index in 0..<array.count {
            let newIndex = Int(arc4random_uniform(UInt32(array.count - index))) + index
            if index != newIndex {
                swap(&array[index], &array[newIndex])
            }
        }
    }
    //上の関数が破壊的関数なのでここでコピーした配列を渡す
    func shuffleArray<S>(source: [S]) -> [S] {
        var copy = source
        shuffleBang(&copy)
        return copy
    }
    
    //シャッフルした後の配列の中身を確認するメソッド
    func a(){
        var str:String = ""
        for var i=0;i<num;i=i+1{
            if(m[i]==0){str=str+"人狼\n"}
            else if(m[i]==1){str=str+"人狼\n"}
            else if(m[i]==2){str=str+"占い師\n"}
            else if(m[i]==3){str=str+"怪盗\n"}
            else if(m[i]>=4){str=str+"村人\n"}
        }
        label3.text = str

    }
    
    
    
}
