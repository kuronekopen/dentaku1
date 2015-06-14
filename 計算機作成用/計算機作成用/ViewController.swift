//
//  ViewController.swift
//  計算機作成用
//
//  Created by 川田加奈 on 2015/05/07.
//  Copyright (c) 2015年 かなたす. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myLabel:UILabel?
    
    var number:Double = 0

//どの四則演算を行うのかを覚えるための変数
    var operate:String = ""
    
    override func viewDidLoad() {
        
    super.viewDidLoad()
        
        //画像のインスタンスを生成
        let image = UIImage(named: "star")
        
        //画像の追加
        let imageView = UIImageView(image: image)
        
        //Viweに画像を追加
        self.view.addSubview(imageView)
        
        // Labelを作成.
        myLabel = UILabel(frame: CGRectMake(0,0,370,193))
        
        //フォントの変更
        myLabel?.font = UIFont(name: "Baskerville-BoldItalic", size: 20)
        
        // 背景をオレンジ色にする.
        myLabel?.backgroundColor = UIColor.clearColor() // UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0)
        
        // 枠を丸くする.
        myLabel?.layer.masksToBounds = true
        
        // コーナーの半径.
        myLabel?.layer.cornerRadius = 1.0
        
        // Labelに文字を代入.
        myLabel?.text = ""
        
        // 文字の色をに黒にする.
        myLabel?.textColor = UIColor.whiteColor()
        
        // 文字の影の色をグレーにする.
        myLabel?.shadowColor = UIColor.grayColor()
        
        // Textを中央寄せにする.
        myLabel?.textAlignment = NSTextAlignment.Center
        
        // 配置する座標を設定する.
        myLabel?.layer.position = CGPoint(x: self.view.bounds.width/2,y:93)
        
        // ViewにLabelを追加.
        self.view.addSubview(myLabel!)
        
        
        
        
        
        
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        let button1 = makebutton(235,x:48,title:"AC")
        let button2 = makebutton(235,x:140,title:"+/-")
        let button3 = makebutton(235,x:234,title:"%")
        let button4 = makebutton(235,x:326,title:"÷")
        let button5 = makebutton(329,x:48,title:"7")
        let button6 = makebutton(329,x:140,title:"8")
        let button7 = makebutton(329,x:234,title:"9")
        let button8 = makebutton(329,x:326,title:"×")
        let button9 = makebutton(423,x:48,title:"4")
        let button10 = makebutton(423,x:140,title:"5")
        let button11 = makebutton(423,x:234,title:"6")
        let button12 = makebutton(423,x:326,title:"-")
        let button13 = makebutton(517,x:48,title:"1")
        let button14 = makebutton(517,x:140,title:"2")
        let button15 = makebutton(517,x:234,title:"3")
        let button16 = makebutton(517,x:326,title:"+")
        
        let button17 = makebutton(611,x:48,title:"0")
        button17.frame = CGRectMake(1,564,188,94)
        
        let button18 = makebutton(611,x:234,title:".")
        let button19 = makebutton(611,x:326,title:"=")
        
        
        
        self.view.addSubview(button1)
        self.view.addSubview(button2)
        self.view.addSubview(button3)
        self.view.addSubview(button4)
        self.view.addSubview(button5)
        self.view.addSubview(button6)
        self.view.addSubview(button7)
        self.view.addSubview(button8)
        self.view.addSubview(button9)
        self.view.addSubview(button10)
        self.view.addSubview(button11)
        self.view.addSubview(button12)
        self.view.addSubview(button13)
        self.view.addSubview(button14)
        self.view.addSubview(button15)
        self.view.addSubview(button16)
        self.view.addSubview(button17)
        self.view.addSubview(button18)
        self.view.addSubview(button19)
        
        
    }
    
    func makebutton(y:CGFloat, x:CGFloat, title:String)-> UIButton
    {
        
        let button3 = UIButton()
        
        //表示されるテキスト
        button3.setTitle(title, forState: .Normal)
        
        //テキストの色
        button3.setTitleColor(UIColor.blueColor(), forState: .Normal)
        
        //フォントの変更
        button3.titleLabel?.font = UIFont(name: "Baskerville-BoldItalic", size: 20)
        
        //タップした状態のテキスト
        //button3.setTitle("Tapped!", forState: .Highlighted)
        
        //タップした状態の色
        button3.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        
        //サイズ
        button3.frame = CGRectMake(0, 0, 94, 94)
        
        //配置場所
        button3.layer.position = CGPoint(x:x, y:y)
        
        //背景色
        button3.backgroundColor = UIColor(red: 0.7, green: 0.2, blue: 0.2, alpha: 0.2)
        
        //角丸
        button3.layer.cornerRadius = 5
        
        //ボーダー幅
        button3.layer.borderWidth = 1
        
        //ボタンをタップした時に実行するメソッドを指定
        button3.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
        
        //viewにボタンを追加する
        return button3
    }
    
    func tapped(button3:UIButton){
        
        
        
        
        // ACボタンが押された場合の処理
        if (button3.titleLabel!.text! == "AC") {
            
            // ラベルの文字を消す
            myLabel?.text? = ""
            
            // +ボタンが押された場合の処理
        } else if (button3.titleLabel!.text! == "+"){
            
            // ラベルの文字列を数値に変換
            number = (myLabel!.text! as NSString).doubleValue
            
            // ラベルの文字を消す
            myLabel?.text? = ""
           
            //どの四則演算を行うのか？の指示
            operate = "+"
            
            // -ボタンが押された場合の処理
        } else if (button3.titleLabel!.text! == "-"){
            
            // ラベルの文字列を数値に変換
            number = (myLabel!.text! as NSString).doubleValue
            
            // ラベルの文字を消す
            myLabel?.text? = ""
            
            //どの四則演算を行うのか？の指示
            operate = "-"
        
            
            // ×ボタンが押された場合の処理
        }else if (button3.titleLabel!.text! == "×"){
            
            // ラベルの文字列を数値に変換
            number = (myLabel!.text! as NSString).doubleValue
            
            // ラベルの文字を消す
            myLabel?.text? = ""
            
            //どの四則演算を行うのか？の指示
            operate = "×"
            
            //÷ボタンが押された場合の処理
        } else if (button3.titleLabel!.text! == "÷"){
            
            // ラベルの文字列を数値に変換
            number = (myLabel!.text! as NSString).doubleValue
            
            // ラベルの文字を消す
            myLabel?.text? = ""
            
            //どの四則演算を行うのか？の指示
            operate = "÷"
            


        
            //イコールが押された場合の処理
       }else if (button3.titleLabel!.text! == "="){
            
            // +ボタンが押された場合は
            if (operate == "+"){
                
            let number2 = (myLabel!.text! as NSString).doubleValue
            let result = number + number2
                
            myLabel?.text? = String(format: "%g",result)
                
            // -ボタンが押された場合は
            }else if(operate == "-"){
                
            let number2 = (myLabel!.text! as NSString).doubleValue
            let result = number - number2
                
            myLabel?.text? = String(format: "%g",result)
                
            // ×ボタンが押された場合は
            }else if(operate == "×"){
            
             let number2 = (myLabel!.text! as NSString).doubleValue
             let result = number * number2

             myLabel?.text? = String(format: "%g",result)
                
            // ÷ボタンが押された場合は
            }else if(operate == "÷"){
                
             let number2 = (myLabel!.text! as NSString).doubleValue
             let result = number / number2
             
             myLabel?.text? = String(format: "%g",result)
                
            

                
    
            //小数点ボタンが押された場合は
        }else if (button3.titleLabel!.text! == ".") {
            // ラベルのテキストにコンマが含まれていなかったら
            if (myLabel?.text?.rangeOfString(".") == nil) {
                    
                    myLabel?.text? += "."
                    
                //%が押された場合は
                }else if (button3.titleLabel!.text! == "%"){
              
                let result = number/100.0
                
                
                }
                }
            
            }
        
            // それ以外のボタンが押された場合の処理
         else {
            
            // ボタンのタイトルをラベルの文字列に追加
            myLabel?.text? += button3.titleLabel!.text!
            
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
}





