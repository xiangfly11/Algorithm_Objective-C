//
//  main.m
//  Stack_Palindrome
//
//  Created by Jiaxiang Li on 11/19/15.
//  Copyright © 2015 Jiaxiang Li. All rights reserved.
//

#import <Foundation/Foundation.h>

bool stack_Palindrome (){
    bool isPalindrome;
    char a[100];
    char s[100];
    int top = 0;
    NSLog( @"Pleanse enter characters:");
    gets(a);
    
    int length = (int)strlen(a);
    int mid = (int)length/2 - 1;
    
    for (int i = 0; i <= mid; i++) {
        s[++top] = a[i];
    }
    
    int next;
    if (length % 2 == 0) {
        next = mid + 1;
    }else {
        next = mid + 2;
    }
    
    for (int i = next; i <= length -1; i++) {
        if (a[i] != s[top]) {
            break;
        }
        
        top--;
    }
    
    if (top == 0) {
        isPalindrome = true;
        return isPalindrome;
    }
    
    return false;
    
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        if(stack_Palindrome()){
            NSLog(@"Your input is palindrom string.");
        }else {
            NSLog(@"Your input is not palindrom string");
        }
        
    }
    return 0;
}
