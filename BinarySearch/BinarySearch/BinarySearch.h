//
//  BinarySearch.h
//  BinarySearch
//
//  Created by Jiaxiang Li on 15/8/28.
//  Copyright (c) 2015年 Jiaxiang Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinarySearch : NSObject

//-(NSInteger) findIndexOfnum:(NSInteger) num beginIndex:(NSInteger) index1 endIndex:(NSInteger) index2 forArray:(NSArray *)array;

-(void) searchArr:(NSArray *) arr forNum:(NSNumber *) num fromFirst:(NSInteger) first toLast:(NSInteger) last ;


@end
