//
//  Creature.h
//  GameOfLife
//
//  Created by Bert on 26/06/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCSprite.h"

@interface Creature : CCSprite

// Note: We are using assign because property is Bool, so no pointer and no worries about ARC
// Property represent and stores the state of the object of the class Creature
@property (nonatomic,assign) BOOL isAlive;

//Property to count and store the count of the living neighbhors
@property (nonatomic, assign) NSInteger livingNeighbors;


//Init method
-(id)initCreature;




@end
