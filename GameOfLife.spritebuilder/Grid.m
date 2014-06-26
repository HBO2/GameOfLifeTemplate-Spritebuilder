//
//  Grid.m
//  GameOfLife
//
//  Created by Bert on 24/06/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Grid.h"
#import "Creature.h"


// defining the Grid with the variables that cannot be changed
// Please note: that the variables are declared before the @implementation!
// And therfor available to all functions methods in this class file

static const int GRID_ROWS = 8;
static const int GRID_COLUMNS = 10;


@implementation Grid {
    NSMutableArray *_gridArray;
    float _cellWidth;
    float _cellHeight;
}

@end
