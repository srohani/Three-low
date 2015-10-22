//
//  Dice.h
//  ThreelowFINAL
//
//  Created by Samer Rohani on 2015-10-21.
//  Copyright © 2015 Samer Rohani. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic) int currentValue;
@property (nonatomic) BOOL isHeld;

-(int) randomValue;
-(NSString *)inputPrompt: (NSString *)displayPrompt;

@end
