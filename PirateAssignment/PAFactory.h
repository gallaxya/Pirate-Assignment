//
//  PAFactory.h
//  PirateAssignment
//
//  Created by Gallaxya on 06/04/14.
//  Copyright (c) 2014 Gallaxya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PACharacter.h"
#import "PABoss.h"
@interface PAFactory : NSObject


-(NSArray *)tiles;
-(PACharacter *)character;
-(PABoss *)boss;
@end
