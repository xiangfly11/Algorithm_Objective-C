//
//  main.m
//  Factorial
//
//  Created by Jiaxiang Li on 15/8/26.
//  Copyright (c) 2015年 Jiaxiang Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Factorial.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Factorial *factorialObject = [[Factorial alloc] init];
        
        NSInteger result = [factorialObject fac:5];
        
        NSLog(@"%ld",(long)result);
    }
    return 0;
}
