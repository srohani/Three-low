//
//  GameController.h
//  ThreelowFINAL
//
//  Created by Samer Rohani on 2015-10-21.
//  Copyright © 2015 Samer Rohani. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface GameController : NSObject

@property (nonatomic, strong) NSMutableArray *unheldDice;
@property (nonatomic, strong) NSMutableArray *heldDice;

-(void) holdDieAtPosition:(int)position;
-(void) rollDice;
-(void) reset;


@end
