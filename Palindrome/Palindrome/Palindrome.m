//
//  Palindrome.m
//  Palindrome
//
//  Created by Jiaxiang Li on 15/8/26.
//  Copyright (c) 2015年 Jiaxiang Li. All rights reserved.
//

#import "Palindrome.h"

@implementation Palindrome


-(void) testPalindrome:(NSString *)str {
    NSInteger length = str.length;
    
    if (length <= 1) {
        NSLog(@"It is palindrome.");
    }
    
    BOOL isParlindrome = YES;
    
    for (NSInteger index = 0; index < length/2; index ++) {
        if ([str characterAtIndex:index] != [str characterAtIndex:length-1-index])
        {
            isParlindrome = NO;
        }
            
    
    }
            
    if (isParlindrome == YES) {
        NSLog(@"It is palindrome.");
    }else {
        NSLog(@"It is not palindrome.");
    }


}
            
            
            





@end
