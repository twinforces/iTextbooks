//
//  BranchCollectionViewController.h
//  iTextbooks
//
//  Created by Pierce Wetter on 2/16/15.
//  Copyright (c) 2015 Pierce Wetter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BranchCollectionViewController : UICollectionViewController <UICollectionViewDelegate, UICollectionViewDataSource>


@property (nonatomic, strong) IBOutlet NSMutableArray *imageNameList;
@property (nonatomic,strong) IBOutlet UICollectionView *collectionView;


@end
