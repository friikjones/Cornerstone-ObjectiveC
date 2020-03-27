//
//  PigLatinization.m
//  ObjC
//
//  Created by user169155 on 3/27/20.
//  Copyright © 2020 Daniel. All rights reserved.
//

#import "PigLatilization.h"

@implementation NSString (PigLatin)

- (NSString *) addPigLatin {
    NSString *output = @"";
    NSString *test = [self substringToIndex:1];
    if ([test isEqual:@"A"] || [test isEqual:@"E"] || [test isEqual:@"I"] || [test isEqual:@"O"] || [test isEqual:@"U"]){
        output = [self stringByAppendingFormat:@"w"];
    }else{
        test = [self substringToIndex:2];
        if([test isEqual:@"Ch"] || [test isEqual:@"Sh"] || [test isEqual:@"Sm"] || [test isEqual:@"St"] || [test isEqual:@"Th"] || [test isEqual:@"Ps"] || [test isEqual:@"Ph"] || [test isEqual:@"Pl"] || [test isEqual:@"Gl"]){
            output = [[self substringFromIndex:2] stringByAppendingFormat:[self substringWithRange:NSMakeRange(0,2)]];
        }else{
            output = [[self substringFromIndex:1] stringByAppendingFormat:[self substringWithRange:NSMakeRange(0,1)]];
        }
    }
    return [[output capitalizedString] stringByAppendingString:@"ay"];
}

@end
