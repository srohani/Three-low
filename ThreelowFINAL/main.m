//
//  main.m
//  ThreelowFINAL
//
//  Created by Samer Rohani on 2015-10-21.
//  Copyright © 2015 Samer Rohani. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        GameController *game = [[GameController alloc] init];
        
        
        do {
            NSArray *dices = [[NSArray alloc] init];
            
            
            
            Dice *menu = [[Dice alloc] init];
            NSString *firstMenuChoice = [menu inputPrompt:@"Would you like to roll, reset, or hold?"];
            
            if ([firstMenuChoice isEqual: @"roll"]) {
                [game rollDice];
            }
            if ([firstMenuChoice isEqual:@"reset"]) {
                [game reset];
            }
            if ([firstMenuChoice isEqual:@"hold"]) {
                NSString *holdPosition = [menu inputPrompt:@"Which die do you want to keep?"];
                int index = holdPosition.intValue;
                [game holdDieAtPosition:index];
            }
            
            
            
        } while (1);
        
        
        
        
        
        
    }
    return 0;
}
