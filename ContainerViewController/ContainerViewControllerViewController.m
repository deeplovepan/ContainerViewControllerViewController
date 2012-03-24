//
//  ContainerViewControllerViewController.m
//  ContainerViewController
//
//  Created by  on 12/3/24.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ContainerViewControllerViewController.h"
#import "LeftViewController.h"
#import "RightViewController.h"

@interface ContainerViewControllerViewController ()

@end

@implementation ContainerViewControllerViewController
@synthesize contentView;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    LeftViewController *leftController = [[LeftViewController alloc] init];
    [self addChildViewController:leftController];
    

    RightViewController *rightController = [[RightViewController
                                             alloc] init];
    [self addChildViewController:rightController];
    
    
    [contentView addSubview:leftController.view];
    
    
}

- (void)viewDidUnload
{
    [self setContentView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)leftButPressed:(id)sender {
    
    
    RightViewController *leftController = [self.childViewControllers objectAtIndex:0];  
    LeftViewController *rightController = [self.childViewControllers objectAtIndex:1]; 
    
    [self transitionFromViewController:rightController toViewController:leftController duration:2.0 options:UIViewAnimationOptionTransitionFlipFromLeft animations:nil completion:nil];
}

- (IBAction)rightButPressed:(id)sender {
    RightViewController *leftController = [self.childViewControllers objectAtIndex:0];  

    LeftViewController *rightController = [self.childViewControllers objectAtIndex:1]; 

    [self transitionFromViewController:leftController toViewController:rightController duration:2.0 options:UIViewAnimationOptionTransitionFlipFromLeft animations:nil completion:nil];
}
@end
