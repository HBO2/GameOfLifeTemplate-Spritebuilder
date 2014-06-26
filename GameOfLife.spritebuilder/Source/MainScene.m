//
//  MainScene.m
//  PROJECTNAME
//
//  Created by Viktor on 10/10/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "MainScene.h"
#import "Grid.h"

@implementation MainScene {
    //In SpriteBuilder we named the grid Graphic _Grid. Her we are craeting the object of the class Grid
    Grid *_grid;
    
    CCTimer *_timer;
    
    //In SpriteBuilder we named the label _generationLabel. Her we are craeting the object of the class CCLabelTTF
    CCLabelTTF *_generationLabel;
    
    //In SpriteBuilder we named the label _populationLabel.  Her we are craeting the object of the class CCLabelTTF
    CCLabelTTF *_populationLabel;
}


- (id)init
{
    self = [super init];
    
    if (self) {
        _timer = [[CCTimer alloc] init];
    }
    
    return self;
}

- (void)play
{
    //this tells the game to call a method called 'step' every half second.
    [self schedule:@selector(step) interval:0.5f];
}

- (void)pauze
{
    [self unschedule:@selector(step)];
}

// this method will get called every half second when you hit the play button and will stop getting called when you hi the pause button
- (void)step
{
    
    
    // Sending the method evolveStep to the above created grid object named _grid
    [_grid evolveStep];
    _generationLabel.string = [NSString stringWithFormat:@"%d", _grid.generation];
    _populationLabel.string = [NSString stringWithFormat:@"%d", _grid.totalAlive];
}



@end
