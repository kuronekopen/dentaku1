//
//  ViewController.swift
//  計算機作成用
//
//  Created by 川田加奈 on 2015/05/07.
//  Copyright (c) 2015年 かなたす. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        // Labelを作成.
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,395,205))
        
        // 背景をオレンジ色にする.
        myLabel.backgroundColor = UIColor.blackColor()
        
        // 枠を丸くする.
        myLabel.layer.masksToBounds = true
        
        // コーナーの半径.
        myLabel.layer.cornerRadius = 30.0
        
        // Labelに文字を代入.
        myLabel.text = "12345"
        
        // 文字の色を白にする.
        myLabel.textColor = UIColor.whiteColor()
        
        // 文字の影の色をグレーにする.
        myLabel.shadowColor = UIColor.grayColor()
        
        // Textを中央寄せにする.
        myLabel.textAlignment = NSTextAlignment.Center
        
        // 配置する座標を設定する.
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y:120)
        
        // ViewにLabelを追加.
        self.view.addSubview(myLabel)
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let button1 = makebutton(267)
        let button2 = makebutton(357)
        let button3 = makebutton(447)
        let button4 = makebutton(537)
        
        self.view.addSubview(button1)
        self.view.addSubview(button2)
        self.view.addSubview(button3)
        self.view.addSubview(button4)
        
    }
    
    func makebutton(y:CGFloat)-> UIButton {
        
        let button3 = UIButton()
        
        //表示されるテキスト
        button3.setTitle("Tap Me!", forState: .Normal)
        
        //テキストの色
        button3.setTitleColor(UIColor.blueColor(), forState: .Normal)
        
        //タップした状態のテキスト
        button3.setTitle("Tapped!", forState: .Highlighted)
        
        //タップした状態の色
        button3.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        
        //サイズ
        button3.frame = CGRectMake(0, 0, 90, 90)
        
        //配置場所
        button3.layer.position = CGPoint(x:45, y:y)
        
        //背景色
        button3.backgroundColor = UIColor(red: 0.7, green: 0.2, blue: 0.2, alpha: 0.2)
        
        //角丸
        button3.layer.cornerRadius = 10
        
        //ボーダー幅
        button3.layer.borderWidth = 1
        
        //ボタンをタップした時に実行するメソッドを指定
        //button.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
        
        //viewにボタンを追加する
        return button3
    }
   
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

