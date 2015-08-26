//
//  main.m
//  Fibonacci
//
//  Created by Jiaxiang Li on 15/8/26.
//  Copyright (c) 2015年 Jiaxiang Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fibonacci.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fibonacci *result = [[Fibonacci alloc] init];
        
        NSInteger myFib = [result fib:10];
        
        NSLog(@"%ld",(long)myFib);
        
    }
    return 0;
}
