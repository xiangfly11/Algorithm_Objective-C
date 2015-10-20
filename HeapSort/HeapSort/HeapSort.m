//
//  HeapSort.m
//  HeapSort
//
//  Created by Jiaxiang Li on 10/19/15.
//  Copyright © 2015 Jiaxiang Li. All rights reserved.
//

#import "HeapSort.h"

@implementation HeapSort

-(void )buildHeapFromArray:(NSMutableArray *)array {
    NSUInteger length = array.count;
    NSUInteger lastIndex = length-1;
    
    NSUInteger lastParentIndex = (NSUInteger)(lastIndex-1)/2;
    
    for (NSInteger index = lastParentIndex; index >= 0; index --) {
        [self maxHeapifyWithArray:array forIndex:index];
    }
    
    for (NSInteger index = 0; index < length; index++) {
        NSLog(@"%ld",(long)[array[index] integerValue]);
    }
    
    
}

-(void)maxHeapifyWithArray:(NSMutableArray *)array forIndex:(NSInteger)index {
    
    NSUInteger rightChildIndex = 2*(index+1);
    NSUInteger leftChildIndex  = 2*index+1;
    if (rightChildIndex >= array.count && leftChildIndex >= array.count) {
        return;
    }
    
    NSInteger largest = index;
    if (leftChildIndex < array.count && [array[index] integerValue] < [array[leftChildIndex] integerValue]) {
        NSLog(@"leftChildIndex:%ld",[array[leftChildIndex] integerValue]);
        largest = leftChildIndex;
    }
    
    if (rightChildIndex < array.count && [array[largest] integerValue] < [array[rightChildIndex] integerValue]) {
        
        NSLog(@"=====%ld",rightChildIndex);
        largest = rightChildIndex;
    }

    
    if (largest == index) {
        return;
    }
    
    
    
    
    NSInteger temp = [array[largest] integerValue];
    NSLog(@"laegestNumber:%ld",temp);
    
    NSLog(@"largestIndex:%ld",largest);
    [array replaceObjectAtIndex:largest withObject:[NSNumber numberWithInt:(int)[array [index] integerValue]]];
    [array replaceObjectAtIndex:index withObject:[NSNumber numberWithInt:(int)temp]];
    
    [self maxHeapifyWithArray:array forIndex:largest];
    
    
    
}

-(NSMutableArray *)heapSortWithArray:(NSMutableArray *)array {
    [self buildHeapFromArray:array];
    
    NSMutableArray *resultArray = [[NSMutableArray alloc] initWithCapacity:array.count];
    for (NSInteger index = array.count-1; index >= 0; index --) {
        [resultArray addObject:array[0]];
        [array replaceObjectAtIndex:0 withObject:[NSNumber numberWithInt:(int)[[array lastObject] integerValue] ]];
        [array removeLastObject];
        
        [self maxHeapifyWithArray:array forIndex:0];
    }
    //[resultArray addObject:array[0]];
    
    return resultArray;
    
}



@end
