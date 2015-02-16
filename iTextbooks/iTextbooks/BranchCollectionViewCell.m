//
//  BranchCellViewCollectionViewCell.m
//  iTextbooks
//
//  Created by Pierce Wetter on 2/16/15.
//  Copyright (c) 2015 Pierce Wetter. All rights reserved.
//

#import "BranchCollectionViewCell.h"

@implementation BranchCollectionViewCell


- (void) setPhotoName:(NSString *)photoName
{
    if (_photoName != photoName)
    {
        _photoName = photoName;
    }
    self.imageView.image = [UIImage imageWithContentsOfFile: photoName];
}
@end
