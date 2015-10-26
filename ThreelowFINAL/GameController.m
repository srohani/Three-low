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

        self.heldDice = [NSMutableArray new];
        
        self.unheldDice = [NSMutableArray new];
        [self.unheldDice addObjectsFromArray:@[self.die1,self.die2,self.die3,self.die4,self.die5]];
    }
    return self;
}


- (void) rollDice
{

    
    for (int i = 0; i < self.unheldDice.count; i++) {
        
        Dice *selectDie = self.unheldDice[i] ;
        
        if ([self.heldDice containsObject:self.unheldDice[i]]) {
           NSLog(@"[%i]", selectDie.currentValue);
            
        } else {
            
            [selectDie randomValue];
            NSLog(@"%i", selectDie.currentValue);
        }
        
        
        
    }

    
//    //if the dice gets rolled it will check if its held
//    for (Dice *die in self.unheldDice) {
//        if ([self.heldDice containsObject:self.die1]) {
//            [die randomValue]; //if its not held it will roll a random value for it
//            NSLog(@"%i", die.currentValue);
//        }
//        else { //if its held then it will display the die with brackets
//            NSLog(@"[%i]", die.currentValue);
//        }
//    }
    
}

-(void) holdDieAt:(int)position {
    //you are making single DICE = to the DICE in the ARRAY of UNHELD dice
    //you are doing this because you are taking from unheld and moving it to the held array
    Dice *singleDice = self.unheldDice[position];
    
    if ([self.heldDice containsObject:singleDice]) {
        //if the dice they choose is held already tell them they are dumb
        NSLog(@"You are already holding that die");
        
    }
    if ([self.unheldDice containsObject:singleDice]) {
        //if the dice they pick is with unheld then REMOVE it from unheld and move it to held
        
        return [self.heldDice addObject:singleDice];
        
    }
    
}


-(BOOL) dieIsHeld:(Dice *)die {
    die.isHeld = YES;
    return [self.heldDice containsObject:die];
   
}

- (void) reset {
    
    [self.heldDice removeAllObjects];
}




@end
