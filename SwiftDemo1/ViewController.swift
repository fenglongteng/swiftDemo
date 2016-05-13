//
//  ViewController.swift
//  SwiftDemo1
//
//  Created by fenglongteng on 16/5/13.
//  Copyright © 2016年 fenglongteng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   // let myDelegate: FLTProtocal?
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let   singlecaseDemo = SingleCaseDemo.singleCaseDemo
        let   singlecaseDemo1 = SingleCaseDemo.singleCaseDemo
        //numer 输出结果两次都是二 证明singleCaseDemo方法只执行了一次
        print(singlecaseDemo.numbr, singlecaseDemo1.numbr)
        let myButton = UIButton(type: UIButtonType.Custom)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

