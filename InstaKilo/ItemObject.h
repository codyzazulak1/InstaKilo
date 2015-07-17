//
//  ItemObject.h
//  InstaKilo
//
//  Created by Cody Zazulak on 2015-07-16.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ItemObject : NSObject

@property (nonatomic, strong) UIImage *image;
@property (nonatomic, assign) NSString *type;
@property (nonatomic, assign) NSString *location;

- (instancetype)initWithImage:(UIImage*)image andType:(NSString*)type andLocation:(NSString*)location;


@end
