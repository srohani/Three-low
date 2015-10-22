//
//  GameController.m
//  ThreelowFINAL
//
//  Created by Samer Rohani on 2015-10-21.
//  Copyright © 2015 Samer Rohani. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@interface GameController()

@property (nonatomic, strong) Dice *die1;
@property (nonatomic, strong) Dice *die2;
@property (nonatomic, strong) Dice *die3;
@property (nonatomic, strong) Dice *die4;
@property (nonatomic, strong) Dice *die5;

@end

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.die1 = [Dice new];
        self.die2 = [Dice new];
        self.die3 = [Dice new];
        self.die4 = [Dice new];
        self.die5 = [Dice new];

        self.unheldDice = [NSMutableArray new];
        self.heldDice = [NSMutableArray new];
        [self.unheldDice addObject:self.die1];
        [self.unheldDice addObject:self.die2];
        [self.unheldDice addObject:self.die3];
        [self.unheldDice addObject:self.die4];
        [self.unheldDice addObject:self.die5];
    }
    return self;
}


- (void) rollDice {
    for (Dice *die in self.unheldDice) {
        if (!die.isHeld) {
            [die randomValue];
            NSLog(@"%i", die.currentValue);
        }
        else {
            NSLog(@"[%i]", die.currentValue);
        }
    }
    
}

- (void) holdDieAtPosition:(int)position {
    Dice *die = [self.unheldDice objectAtIndex:position];
    [self.heldDice addObject:die];
    die.isHeld = YES;
   
}

- (void) reset {
    
    [self.heldDice removeAllObjects];
}



@end
