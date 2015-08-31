//
//  MergeSort.m
//  MergeSort
//
//  Created by Jiaxiang Li on 15/8/31.
//  Copyright © 2015年 Jiaxiang Li. All rights reserved.
//

#import "MergeSort.h"

@implementation MergeSort

-(void) combinFirstArr:(NSMutableArray *) arr1 withFirstIndex:(NSInteger) first andLastIndex:(NSInteger) last andMid:(NSInteger) mid  toFinalArr:(NSMutableArray *) finalArr {
    
    NSInteger i,j,k,m,n;
    
    i = first;
    m = mid;
    j = mid+1;
    n = last;
    k = 0;
    
    
    
    while (i <= m && j <= n) {
        if (arr1[i] < arr1[j]) {
            finalArr[k++] = arr1[i++];
        }else{
            finalArr[k++] = arr1[j++];
        }
    }
    
    
    while (i <= m) {
        finalArr[k++] = arr1[i++];
    }
    
    while (j <= n) {
        finalArr[k++] = arr1[j++];
    }
    
    
    for (NSInteger index =0 ; index < k; index++) {
        //NSNumber *num = finalArr[index];
        //NSString *temIndex = [NSString stringWithFormat:@"%ld",first+index];
        //NSLog(@"%@",temIndex);
        arr1[index+first] = finalArr[index];
    }
}



-(void) mergeSortArr:(NSMutableArray *) arr fromFirstIndex:(NSInteger) first toLastIndex:(NSInteger) last toFinalArr:(NSMutableArray *) finalArr {
    
    if (first < last) {
        
        NSInteger mid = (first+last)/2;
        
        [self mergeSortArr:arr fromFirstIndex:first toLastIndex:mid toFinalArr:finalArr];
        
        [self mergeSortArr:arr fromFirstIndex:mid+1 toLastIndex:last toFinalArr:finalArr];
        
        [self combinFirstArr:arr withFirstIndex:first andLastIndex:last andMid:mid toFinalArr:finalArr];
        
    }
    
    
    
}



@end
