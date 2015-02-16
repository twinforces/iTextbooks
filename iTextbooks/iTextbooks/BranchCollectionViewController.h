//
//  BranchCollectionViewController.h
//  iTextbooks
//
//  Created by Pierce Wetter on 2/16/15.
//  Copyright (c) 2015 Pierce Wetter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BranchCollectionViewController : UICollectionViewController <UICollectionViewDelegate, UICollectionViewDataSource>
{
    NSMutableArray *imageNameList;
}

@property (nonatomic, retain) IBOutlet NSMutableArray *imageNameList;


@end
