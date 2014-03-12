//
//  MVPhotCell.h
//  collectionView
//
//  Created by Matthew Voss on 3/6/14.
//  Copyright (c) 2014 Matthew Voss. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MVPhotoCell : UICollectionViewCell

@property (nonatomic, strong) IBOutlet UIImageView          *photoView;
@property (nonatomic, strong) UILongPressGestureRecognizer  *longPress;

@end
