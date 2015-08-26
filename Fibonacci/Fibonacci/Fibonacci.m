//
//  Fibonacci.m
//  Fibonacci
//
//  Created by Jiaxiang Li on 15/8/26.
//  Copyright (c) 2015年 Jiaxiang Li. All rights reserved.
//

#import "Fibonacci.h"

@implementation Fibonacci

-(NSInteger) fib:(NSInteger)num{
    if (num < 2) {
        return num;
    }
    
    return  [self fib:num-1] + [self fib:num-2];
}


@end
