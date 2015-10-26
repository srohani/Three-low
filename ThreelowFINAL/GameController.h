//
//  GameController.h
//  ThreelowFINAL
//
//  Created by Samer Rohani on 2015-10-21.
//  Copyright © 2015 Samer Rohani. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property (nonatomic, strong) NSMutableArray *unheldDice;
@property (nonatomic, strong) NSMutableArray *heldDice;

-(void) holdDieAt:(int)position;
-(BOOL) dieIsHeld:(Dice *)die;
-(void) rollDice;
-(void) reset;

@end
