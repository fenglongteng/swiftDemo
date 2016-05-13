//
//  CarShare.m
//  SwiftProduct1
//
//  Created by fenglongteng on 16/5/11.
//  Copyright © 2016年 fenglongteng. All rights reserved.
//

#import "CarShare.h"

@implementation CarShare
+(instancetype)shareMe{
    static CarShare  *carShare = nil;
    dispatch_once_t once;
    dispatch_once(&once, ^{
        if (!carShare) {
            carShare = [[self alloc]initPrivate];
        }
    });
    
    return carShare;
}


- (instancetype)initPrivate{
    if(self = [super init]){
        self.me = @"me";
    }
    return self;
}
-(instancetype)init{
    NSAssert(NO, @"该初始化方法以及废除");
    return nil;
}
@end