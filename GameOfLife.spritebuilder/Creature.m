//
//  Creature.m
//  GameOfLife
//
//  Created by Bert on 26/06/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Creature.h"

@implementation Creature


-(instancetype)initCreature{
    /* 
     First we are calling the super init method of the class we inherit from. 
     In this case CCSprite. looking at the CCSprite Calss reference you will find 
     initWithImageNamed as one of the first instance method. Initializes a sprite 
     with the name of an image. The name can be either a name in a sprite sheet 
     or the name of a file.
     
     - (id)initWithImageNamed:(NSString *)imageName
     
     Parameters imageName
     name of the image to load.
     
     Return Value
     A newly initialized CCSprite object.
     */
    
    self = [super initWithImageNamed:@"GameOfLifeAssets/Assets/bubble.png"];
    
    //Now Apple wants us to check is there is an instance created: if(self)
    if (self) {
        self.isAlive = NO;
            }
    
    return self;  //A newly initialized CCSprite object.

}

- (void)setIsAlive:(BOOL)newState {
    /* 
     -->> Please note: that we are dealing with the public declared setter method because of the @property we made in .h file.
     -->> when you create an @property as we did in the .h, an instance variable with a leading underscore is automatically created for you
     */
    

    _isAlive = newState;
    
    // 'visible' is a property of any class that inherits from CCNode. CCSprite is a subclass of CCNode, and Creature is a subclass of CCSprite, so Creatures have a visible property
    
    self.visible = _isAlive;
}
    



@end
