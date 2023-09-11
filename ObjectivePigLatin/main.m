//
//  main.m
//  ObjectivePigLatin
//
//  Created by Ion Sebastian Rodriguez Lara on 10/09/23.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatinization.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *test = @"Kale Chips are the best to throw";
        NSLog([test stringByPigLatinization]);
    }
    return 0;
}
