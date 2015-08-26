//
//  Factorial.m
//  Factorial
//
//  Created by Jiaxiang Li on 15/8/26.
//  Copyright (c) 2015年 Jiaxiang Li. All rights reserved.
//

#import "Factorial.h"

@implementation Factorial


-(NSInteger) fac:(NSInteger)num {
    
    
    if (num < 2) {
        return num;
    }
    
    return num * [self fac:num - 1];
}

@end
