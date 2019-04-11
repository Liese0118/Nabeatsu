//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func isAho() -> Int {
        // 3の倍数かどうか調べる
        if number % 3 == 0 {
            return 1
        }
        //5の倍数かどうか調べる
        else if number % 5 == 0 {
            return 2
        }
        // 3がつくかどうか調べる
        var checkNum: Int = number  //3がつくかは判断するための変数を宣言
        
        while checkNum != 0 {
            if checkNum % 10 == 3 {
                return 1
            }
            else {
                checkNum = checkNum / 10
            }
        }
        
        return 3
    }
    @IBAction func plusButton(){
        number = number + 1
        countLabel.text = String(number)
        //3の倍数or３がつく数だったら
        if isAho() == 1 {
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        }
        //5の倍数だったら、、、
        else if isAho() == 2 {
            faceLabel.text = "∪･ω･∪"
        }
        //どっちでもなかったら、、、
        else {
            faceLabel.text = "(゜o゜)"
        }
    }
    
    @IBAction func clearButton(){
        number = 0
        countLabel.text = String(number)
    }
}
