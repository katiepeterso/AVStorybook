//
//  StoryPageViewController.m
//  AVStorybook
//
//  Created by Katherine Peterson on 2015-09-11.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "StoryPageViewController.h"
#import "Page.h"
#import "StoryPartViewController.h"

@interface StoryPageViewController () <UIPageViewControllerDataSource, UIPageViewControllerDelegate>

@property (nonatomic,strong) NSArray *pageArray;

@end

@implementation StoryPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataSource = self;
    self.delegate = self;
    
    Page *page1 = [Page new];
    Page *page2 = [Page new];
    Page *page3 = [Page new];
    Page *page4 = [Page new];
    Page *page5 = [Page new];
    
    self.pageArray = @[page1, page2, page3, page4, page5];
    
    StoryPartViewController *part1 = [self.storyboard instantiateViewControllerWithIdentifier:@"part1"];
    part1.storyPage = page1;
    
    [self setViewControllers:@[part1] direction:(UIPageViewControllerNavigationDirectionForward) animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    
    return nil;
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
    return nil;
}


@end
