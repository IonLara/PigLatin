//
//  NSString+PigLatinization.m
//  Pointers
//
//  Created by Derrick Park on 2023-09-06.
//

#import "NSString+PigLatinization.h"

@implementation NSString (PigLatinization)

- (NSString *)stringByPigLatinization {
    NSMutableString *result = [NSMutableString stringWithString:@""];
    NSArray *words = [self componentsSeparatedByString:@" "];
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"AEIOUaeiou"];
    for(NSString *word in words)
    {
        unichar firstChar = [word characterAtIndex:0];
        if([vowels characterIsMember:firstChar])
        {
            [result appendFormat:@"%@ay ", word];
            continue;
        } else
        {
            unichar secondChar = [word characterAtIndex:1];
            if([vowels characterIsMember:secondChar])
            {
                NSString *start = [word substringToIndex:1];
                NSString *rest = [word substringFromIndex:1];
                [result appendFormat:@"%@%@ay ", rest, start];
                continue;
            } else
            {
                unichar thirdChar = [word characterAtIndex:2];
                if([vowels characterIsMember:thirdChar])
                {
                    NSString *start = [word substringToIndex:2];
                    NSString *rest = [word substringFromIndex:2];
                    [result appendFormat:@"%@%@ay ", rest, start];
                    continue;
                } else
                {
                    NSString *start = [word substringToIndex:3];
                    NSString *rest = [word substringFromIndex:3];
                    [result appendFormat:@"%@%@ay ", rest, start];
                    continue;
                }
            }
        }
    }
    return result;
}

@end
