//
//  Dice.m
//  ThreelowFINAL
//
//  Created by Samer Rohani on 2015-10-21.
//  Copyright © 2015 Samer Rohani. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self randomValue];
    }
    return self;
}


-(int) randomValue{

    return self.currentValue = arc4random_uniform(6) + 1;
    
}

-(NSString *)inputPrompt: (NSString *)displayPrompt {
    
    NSLog(@"%@",displayPrompt);
    
    char choice[255];
    fgets(choice, 255, stdin);
    
    NSString *inputChoice = [NSString stringWithUTF8String:choice];
    
    inputChoice = [inputChoice stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    
    
    
    return inputChoice;
}



@end
