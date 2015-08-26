//
//  main.m
//  Palindrome
//
//  Created by Jiaxiang Li on 15/8/26.
//  Copyright (c) 2015年 Jiaxiang Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Palindrome.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *testStr = @"aa";
        
        
        Palindrome *test = [[Palindrome alloc] init];
        
        [test testPalindrome:testStr];
        
    }
    return 0;
}
