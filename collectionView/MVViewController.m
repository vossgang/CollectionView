//
//  MVViewController.m
//  collectionView
//
//  Created by Matthew Voss on 3/6/14.
//  Copyright (c) 2014 Matthew Voss. All rights reserved.
//

#import "MVViewController.h"
#import "MVPhotoCell.h"

@interface MVViewController () <UICollectionViewDelegate, UICollectionViewDataSource>


@property (nonatomic, strong) NSMutableArray *photos;


@end

@implementation MVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSMutableArray *photoArray = [NSMutableArray new];
    
    for (int i = 1; i < 29; i++) {
        UIImage *image = [UIImage new];
        image = [UIImage imageNamed:[NSString stringWithFormat:@"r%d", i]];
        if (image) {
            [photoArray addObject:image];
        } else {
            NSLog(@"error %d", i);
        }
    }
    self.photos = photoArray;
}


- (IBAction)longPress:(id)sender
{
    NSLog(@"hi");
    
    for (int i = 0; i < self.photos.count; i++) {
        UIImageView *photo = [self.photos objectAtIndex:i];
        if (photo.image == sender){
            NSLog(@"%d", i);

        }
    }
    
    

    
}



-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    MVPhotoCell *newCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PhotoCell"
                                                                    forIndexPath:indexPath];
    newCell.photoView.image = _photos[indexPath.row];
    return newCell;
    
}

-(void)handLongPress:(UILongPressGestureRecognizer *)longPress
{

}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
   return self.photos.count;
}



- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    NSLog(@"2");
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}




@end
