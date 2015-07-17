//
//  ItemObject.m
//  InstaKilo
//
//  Created by Cody Zazulak on 2015-07-16.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import "ItemObject.h"

@implementation ItemObject

- (instancetype)initWithImage:(UIImage*)image andType:(NSString*)type andLocation:(NSString*)location {
    self = [super init];
    if (self) {
        self.image = image;
        self.type = type;
        self.location = location;
    }
    return self;
}

@end
