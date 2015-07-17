//
//  ViewController.h
//  InstaKilo
//
//  Created by Cody Zazulak on 2015-07-16.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *itemView;

@end

