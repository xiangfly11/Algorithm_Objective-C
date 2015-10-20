//
//  HeapSort.h
//  HeapSort
//
//  Created by Jiaxiang Li on 10/19/15.
//  Copyright © 2015 Jiaxiang Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HeapSort : NSObject

-(void) maxHeapifyWithArray:(NSMutableArray *) array forIndex:(NSInteger) index;
-(void) buildHeapFromArray:(NSMutableArray *) array;
-(NSMutableArray *) heapSortWithArray:(NSMutableArray *) array;

@end
