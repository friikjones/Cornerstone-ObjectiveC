//
//  main.m
//  Lab 3
//
//  Created by Douglas Gois on 2020-03-26.
//  Copyright © 2020 Douglas Gois. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "core/AdtionQuestion.h"
#import "core/SubtractionQuestion.h"
#import "core/DivisionQuestion.h"
#import "core/MultiplicationQuestion.h"
#import "core/Score.h"

NSString *getUserInput(int maxLength, NSString *prompt) {
  if (maxLength < 1) { maxLength = 255; }
  NSLog(@"%@ ", prompt);
  char inputChars[maxLength];
  char *result = fgets(inputChars, maxLength, stdin);
  if (result != NULL) {
    return [[NSString stringWithUTF8String: inputChars] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
  }
  return NULL;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"New Game Maths!");
        Score *s = [Score new];
        Question *q;
        NSInteger i;
        
        while (YES) {
            i = arc4random_uniform(4) + 1;
            if (i == 1) {
                q = [AdtionQuestion new];
            }else if (i == 2) {
                q = [MultiplicationQuestion new];
            }else if (i == 3) {
                q = [SubtractionQuestion new];
            }else {
                q = [DivisionQuestion new];
            }
            
            NSLog(@"%@", q.problem);
            NSString *strInput = getUserInput(255, @"\nEnter your Answer: ('q' to quit)");
            NSString *targetString = [NSString stringWithFormat:@"%li", q.solution];
            if ([strInput isEqualToString:@"q"]) { break; }
            else if  ([strInput isEqualToString:targetString]) {
                NSLog(@"Right!");
                s.rightCount = s.rightCount + 1;
            }else{
                NSLog(@"Wrong!");
                s.wrongCount = s.wrongCount + 1;
            }
            s.percentage = (float)s.rightCount/(s.rightCount + s.wrongCount);
            
        }
        NSLog(@"Your final score was: %f",s.percentage*100);
        
        
    }
    return 0;
}
