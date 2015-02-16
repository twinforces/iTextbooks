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


#define RATIO 200.0
- (void)scrollViewDidScroll:(UIScrollView *)scrollViewL;                                               // any offset changes
{
    int image=scrollViewL.contentOffset.y / RATIO;
    if (image >= branchViewController.imageNameList.count )
    {
        image = branchViewController.imageNameList.count-1;
    }
    //[branchViewController.gridView scrollToObjectAtIndex: image atScrollPosition:GMGridViewScrollPositionMiddle animated:YES];
}


@end
