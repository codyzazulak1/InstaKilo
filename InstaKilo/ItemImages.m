//
//  ItemImages.m
//  InstaKilo
//
//  Created by Cody Zazulak on 2015-07-16.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import "ItemImages.h"
#import "ItemObject.h"

@implementation ItemImages

+(NSArray*) listOfImages{
    return @[
             [[ItemObject alloc] initWithImage:[UIImage imageNamed:@"image0"] andType:@"media" andLocation:@"NA"],
             [[ItemObject alloc] initWithImage:[UIImage imageNamed:@"image7"] andType:@"media" andLocation:@"NA"],
             [[ItemObject alloc] initWithImage:[UIImage imageNamed:@"image1"] andType:@"clothing" andLocation:@"BC"],
             [[ItemObject alloc] initWithImage:[UIImage imageNamed:@"image3"] andType:@"clothing" andLocation:@"BC"],
             [[ItemObject alloc] initWithImage:[UIImage imageNamed:@"image5"] andType:@"car" andLocation:@"BC"],
             [[ItemObject alloc] initWithImage:[UIImage imageNamed:@"image6"] andType:@"car" andLocation:@"CA"],
             [[ItemObject alloc] initWithImage:[UIImage imageNamed:@"image8"] andType:@"car" andLocation:@"CA"],
             [[ItemObject alloc] initWithImage:[UIImage imageNamed:@"image4"] andType:@"girl" andLocation:@"BC"],
             [[ItemObject alloc] initWithImage:[UIImage imageNamed:@"image9"] andType:@"girl" andLocation:@"CA"],
             [[ItemObject alloc] initWithImage:[UIImage imageNamed:@"image2"] andType:@"dog" andLocation:@"BC"]
             ];
}

@end