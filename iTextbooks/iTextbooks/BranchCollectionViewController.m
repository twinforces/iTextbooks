//
//  BranchCollectionViewController.m
//  iTextbooks
//
//  Created by Pierce Wetter on 2/16/15.
//  Copyright (c) 2015 Pierce Wetter. All rights reserved.
//

#import "BranchCollectionViewController.h"
#import "BranchCollectionViewCell.h"

@interface BranchCollectionViewController ()

@end

@implementation BranchCollectionViewController

static NSString * const reuseIdentifier = @"BranchCell";

@synthesize imageNameList;


#pragma mark -
#pragma mark Managing the detail item

- (void) buildImageNameList
{
    if (!imageNameList)
    {
        /*self.urlList = [NSMutableArray arrayWithObjects: @"http://www.apple.com",
         @"http://www.cnn.com",
         @"http://www.youtube.com",
         @"https://www.voltstats.net/Stats/Details/1191",
         @"http://www.tuaw.com",nil ];*/
        int imageCount=10;
        self.imageNameList=[NSMutableArray arrayWithCapacity:imageCount];
        for (int i=1;i<=imageCount;i++)
        {
            [self.imageNameList addObject: [NSString stringWithFormat:@"img%d.jpg",i]];
        }
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    [self buildImageNameList];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [imageNameList count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    BranchCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];

    // Configure the cell
    cell.photoName = imageNameList[indexPath.row];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/


// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void) collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath
{
    // TODO: Deal with Items selection
}

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
