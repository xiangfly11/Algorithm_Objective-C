//
//  BubbleSort.m
//  BubbleSort
//
//  Created by Jiaxiang Li on 15/8/31.
//  Copyright © 2015年 Jiaxiang Li. All rights reserved.
//

#import "BubbleSort.h"

@implementation BubbleSort

-(void) sortForArray:(NSArray *) arr {
    
    NSMutableArray *tempArr = [NSMutableArray arrayWithArray:arr];
    
    for (NSInteger i = 0; i < tempArr.count; i++) {
        for (NSInteger j = 1; j < tempArr.count-i; j++) {
            if (tempArr[j] < tempArr[j-1]) {
                NSNumber *temNum = tempArr[j];
                [tempArr replaceObjectAtIndex:j withObject:tempArr[j-1]];
                [tempArr replaceObjectAtIndex:j-1 withObject:temNum];
            }
        }
    }
    
    
    NSLog(@"%@",tempArr);
    
    
    
}


@end
