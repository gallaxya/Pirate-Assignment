//
//  PATile.h
//  PirateAssignment
//
//  Created by Gallaxya on 06/04/14.
//  Copyright (c) 2014 Gallaxya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PAWeapon.h"
#import "PAArmour.h"
@interface PATile : NSObject
@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *actionButtonName;

@property (strong, nonatomic) PAWeapon *weapon;
@property (strong, nonatomic) PAArmour *armor;
@property (nonatomic) int healthEffect;

@end
