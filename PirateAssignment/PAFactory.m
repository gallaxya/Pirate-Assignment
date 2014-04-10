//
//  PAFactory.m
//  PirateAssignment
//
//  Created by Gallaxya on 06/04/14.
//  Copyright (c) 2014 Gallaxya. All rights reserved.
//

#import "PAFactory.h"
#import "PATile.h"
@implementation PAFactory

-(NSArray *)tiles {
    PATile *tile1 = [[PATile alloc]init];
    tile1.story = @"1. Captain, we need a fearless leader to undertake a voyage. You have to stop the evil pirate Hook! Would you like a blunted sword?";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    PAWeapon *bluntedSword = [[PAWeapon alloc] init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage = 7;
    tile1.weapon = bluntedSword;
    tile1.actionButtonName = @"Take the sword!";
    
    PATile *tile2 = [[PATile alloc]init];
    tile2.story = @"2 You have come across an armory. Would you like to upgrade your armor to steel armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    PAArmour *steelArmor = [[PAArmour alloc] init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 7;
    tile2.armor = steelArmor;
    tile2.actionButtonName = @"Take Armor!";
    
    PATile *tile3 = [[PATile alloc]init];
    tile3.story = @"3 A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect = 17;
    tile3.actionButtonName = @"Stop at the Dock!";

    //grupam pe coordonate 4 coloane a cate 3 linii
    NSMutableArray *firstColumn = [[NSMutableArray alloc]init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    
    PATile *tile4 = [[PATile alloc]init];
    tile4.story = @"4 You have found a parrot can be used in your armor slot! Parrots are a great defender and are fiercly loyal to their captain.";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    PAArmour *parrotArmor = [[PAArmour alloc]init];
    parrotArmor.health = 20;
    parrotArmor.name = @"Parrot";
    tile4.actionButtonName = @"Adopt Parrot!";
    PATile *tile5 = [[PATile alloc]init];
    tile5.story = @"5 You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    PAWeapon *pistolWeapon = [[PAWeapon alloc]init];
    pistolWeapon.name = @"Pistol";
    pistolWeapon.damage = 17;
    tile5.actionButtonName = @"Use Pistol!";
    PATile *tile6 = [[PATile alloc]init];
    tile6.story = @"6 You have been captured by pirates and are ordered to walk the plank";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -22;
    tile6.actionButtonName = @"Walk the Plank!";
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc]init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    PATile *tile7 = [[PATile alloc]init];
    tile7.story = @"7 You sight a pirate battle off the coast";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.healthEffect = 8;
    tile7.actionButtonName = @"Blast them to Smithereens!";
    
    PATile *tile8 = [[PATile alloc]init];
    tile8.story = @"8 The legend of the deep, the mighty kraken appears";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect = -46;
    tile8.actionButtonName = @"Abandon Ship!";
    
    PATile *tile9 = [[PATile alloc]init];
    tile9.story = @"9 You stumble upon a hidden cave of pirate treasurer";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.healthEffect = 20;
    tile9.actionButtonName = @"Take Treasure!";
    NSMutableArray *thirdColumn = [[NSMutableArray alloc]init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    PATile *tile10 = [[PATile alloc]init];
    tile10.story = @"10 A group of pirates attempts to board your ship";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.healthEffect = -12;
    tile10.actionButtonName = @"Repel the invaders!";
    
    PATile *tile11 = [[PATile alloc]init];
    tile11.story = @"11 In the deep of the sea many things live and many things can be found. Will the fortune bring help or ruin?";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Sleep withe them fishes!";
    PATile *tile12 = [[PATile alloc]init];
    tile12.story = @"12 Your final faceoff with the fearsome pirate boss";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Fight!";
    NSMutableArray *fourthColumn = [[NSMutableArray alloc]init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    NSArray *tiles = [[NSArray alloc]initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;

}


-(PACharacter *)character {
    PACharacter *character = [[PACharacter alloc]init];
    character.health = 100;
    
    PAArmour *armor = [[PAArmour alloc]init];
    armor.name = @"Cloack";
    armor.health = 5;
    character.armor = armor;
    
    PAWeapon *weapon = [[PAWeapon alloc]init];
    weapon.damage= 10;
    weapon.name = @"Fists";
    character.weapon = weapon;
    
    return  character;
}

-(PABoss *)boss {
    PABoss *boss = [[PABoss alloc]init];
    boss.health = 65;
    return boss;
}


@end
