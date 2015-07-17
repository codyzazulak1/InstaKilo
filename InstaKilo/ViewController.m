//
//  ViewController.m
//  InstaKilo
//
//  Created by Cody Zazulak on 2015-07-16.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import "ViewController.h"
#import "ItemCollectionViewCell.h"
#import "ItemImages.h"
#import "ItemObject.h"

@interface ViewController () {
    NSMutableArray *picsArray;
    NSMutableDictionary *picsDict;
    
    NSMutableArray *naArray;
    NSMutableArray *bcArray;
    NSMutableArray *shopArray;
    NSMutableArray *caliArray;
    
}
- (IBAction)organizeButtonPressed:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    picsArray = [[NSMutableArray alloc] init];
    picsArray = [[ItemImages listOfImages] mutableCopy];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section{
    return [picsArray count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    ItemObject *eachImage = [picsArray objectAtIndex:indexPath.row];
    ItemCollectionViewCell *cell = [self.itemView dequeueReusableCellWithReuseIdentifier:@"itemCell" forIndexPath:indexPath];
    
    [cell.itemImageView setImage:eachImage.image];
    
    return cell;
    
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView
           viewForSupplementaryElementOfKind:(NSString *)kind
                                 atIndexPath:(NSIndexPath *)indexPath{
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]){
        UICollectionReusableView *headerView = [self.itemView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"SectionHeader" forIndexPath:indexPath];
        return headerView;
    }
    return nil;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    ItemObject *eachImage = [picsArray objectAtIndex:indexPath.row];
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"clicked" message:eachImage.location delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil];
    
    [alertView show];
    
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (IBAction)organizeButtonPressed:(UIButton *)sender {
    [self.itemView reloadData];
}

@end
