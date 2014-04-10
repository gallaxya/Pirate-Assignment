//
//  PACharacter.h
//  PirateAssignment
//
//  Created by Gallaxya on 09/04/14.
//  Copyright (c) 2014 Gallaxya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PAWeapon.h"
#import "PAArmour.h"

@interface PACharacter : NSObject

@property (strong, nonatomic) PAArmour *armor;
@property (strong, nonatomic) PAWeapon *weapon;
@property (nonatomic) int damage;
@property (nonatomic) int health;
@end
