//
//  BookViewController.h
//  iTextbooks
//
//  Created by Pierce Wetter on 2/16/15.
//  Copyright (c) 2015 Pierce Wetter. All rights reserved.
//

#import "ViewController.h"
#import "BranchCollectionViewController.h"

@interface BookViewController : ViewController <UIScrollViewDelegate>

{   BranchCollectionViewController *detailViewController;
    IBOutlet UIWebView *webView;
    IBOutlet UIScrollView *scrollView;
    
}

@property (nonatomic, retain) IBOutlet BranchCollectionViewController *branchViewController;
@property (nonatomic, retain) IBOutlet UIWebView *webView;
@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;

@end
