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

-(StoryPartViewController *)pageViewController:(StoryPageViewController *)pageViewController viewControllerAfterViewController:(StoryPartViewController *)viewController {
    
    NSInteger index = [self.pageArray indexOfObject:viewController.storyPage];
    
    index++;
    
    if (index >= self.pageArray.count) {
        return nil;
    }
    
    StoryPartViewController *part = [self.storyboard instantiateViewControllerWithIdentifier:@"part1"];
    part.storyPage = self.pageArray[index];

    return part;
}

-(StoryPartViewController *)pageViewController:(StoryPageViewController *)pageViewController viewControllerBeforeViewController:(StoryPartViewController *)viewController {
    
    NSInteger index = [self.pageArray indexOfObject:viewController.storyPage];
    
    index--;
    
    if (index < 0) {
        return nil;
    }
    
    StoryPartViewController *part = [self.storyboard instantiateViewControllerWithIdentifier:@"part1"];
    part.storyPage = self.pageArray[index];

    return part;

}


@end
