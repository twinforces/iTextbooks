//
//  BookViewController.h
//  iTextbooks
//
//  Created by Pierce Wetter on 2/16/15.
//  Copyright (c) 2015 Pierce Wetter. All rights reserved.
//

#import "ViewController.h"
#import "BranchCollectionViewController.h"

@interface BookViewController : UIViewController <UIScrollViewDelegate>


@property (nonatomic, weak) IBOutlet BranchCollectionViewController *branchViewController;
@property (nonatomic, weak) IBOutlet UIWebView *webView;
@property (nonatomic, weak) IBOutlet UIScrollView *scrollView;
@property (nonatomic) int optimumImage;

@end
