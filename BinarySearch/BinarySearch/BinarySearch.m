//
//  BinarySearch.m
//  BinarySearch
//
//  Created by Jiaxiang Li on 15/8/28.
//  Copyright (c) 2015年 Jiaxiang Li. All rights reserved.
//

#import "BinarySearch.h"

@implementation BinarySearch

-(void) searchArr:(NSArray *) arr forNum:(NSNumber *) num fromFirst:(NSInteger) first toLast:(NSInteger) last {
    
    NSInteger mid = (first+last)/2;
    
    if (arr[mid] == num) {
        NSLog(@"%ld",mid);
    }else if (num < arr[mid]){
        [self searchArr:arr forNum:num fromFirst:first toLast:mid-1];
    }else if (num > arr[mid]){
        [self searchArr:arr forNum:num fromFirst:first toLast:last];
    }
    
    
    
    
}

@end
