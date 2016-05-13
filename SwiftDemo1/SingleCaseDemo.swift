//
//  singleCaseDemo.swift
//  SwiftDemo1
//
//  Created by fenglongteng on 16/5/13.
//  Copyright © 2016年 fenglongteng. All rights reserved.
//

import UIKit

class SingleCaseDemo: NSObject {
    var me: String?
    var you: String?
    var  numbr = 1
    init(me:String, you:String){
        self.me? = me
        self.you? = you
        numbr++
    }
    static let singleCaseDemo: SingleCaseDemo = SingleCaseDemo(me: "me", you: "you")
    //静态方法 类似于oc中的类方法 不能直接访问类成员变量（属性）
    static func staticFunc() {
    //self.number  这里的self代表SingleCaseDemo类
}
}