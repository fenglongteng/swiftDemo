//
//  CarShare.h
//  SwiftProduct1
//
//  Created by fenglongteng on 16/5/11.
//  Copyright © 2016年 fenglongteng. All rights reserved.
//

#import <Foundation/Foundation.h>
//Swift中调用oc代码类时 直接创建oc类 会自动生成连接桥头文件 在头文件中导入类头文件就ok了
@interface CarShare : NSObject
@property (nonatomic, strong) NSString *me;
//注意这里的命名 如果单纯用share那么在swift中就无法识别调用 所以再次强调方法和类命名的时候要加前缀，要么用自己的名字，要么用公司的名字，
+(instancetype)shareMe;
@end
