//
//  BranchCellViewCollectionViewCell.h
//  iTextbooks
//
//  Created by Pierce Wetter on 2/16/15.
//  Copyright (c) 2015 Pierce Wetter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BranchCollectionViewCell : UICollectionViewCell

@property (nonatomic,weak) IBOutlet UIImageView *imageView;
@property (nonatomic,strong) NSString *photoName;
@end
