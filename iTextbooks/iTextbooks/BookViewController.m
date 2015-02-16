//
//  BookViewController.m
//  iTextbooks
//
//  Created by Pierce Wetter on 2/16/15.
//  Copyright (c) 2015 Pierce Wetter. All rights reserved.
//

#import "BookViewController.h"

@interface BookViewController ()

@end

@implementation BookViewController

@synthesize branchViewController,webView,scrollView;

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSString *path = [[NSBundle mainBundle] pathForResource:@"lorem" ofType: @"html"];
    
    NSURL *url=[NSURL fileURLWithPath:path] ;
    
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];
    webView.scrollView.delegate = self;
    //scrollView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"tile-paper-background.png"]];
    if (branchViewController == nil)
    {
        UISplitViewController *splitView=(UISplitViewController *) self.parentViewController;
        splitView.preferredDisplayMode=UISplitViewControllerDisplayModeAllVisible;
        branchViewController=splitView.viewControllers[0]; //"master" is always the first
        
    }
    
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

- (void) setOptimumImage:(int)optimumImage
{
    if (_optimumImage != optimumImage)
    {
        NSIndexPath *path = [NSIndexPath indexPathForRow: optimumImage inSection:0];
    [branchViewController.collectionView scrollToItemAtIndexPath:path
                                                atScrollPosition:UICollectionViewScrollPositionCenteredVertically | UICollectionViewScrollPositionCenteredHorizontally animated:true];
        _optimumImage=optimumImage;
    }
}

#define RATIO 200.0
- (void)scrollViewDidScroll:(UIScrollView *)scrollViewL;                                               // any offset changes
{
    int image=scrollViewL.contentOffset.y / RATIO;
    if (image >= branchViewController.imageNameList.count )
    {
        image = branchViewController.imageNameList.count-1;
    }
    self.optimumImage=image;
    
}


@end
