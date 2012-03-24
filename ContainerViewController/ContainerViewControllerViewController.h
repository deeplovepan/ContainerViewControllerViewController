//
//  ContainerViewControllerViewController.h
//  ContainerViewController
//
//  Created by  on 12/3/24.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContainerViewControllerViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *contentView;

- (IBAction)leftButPressed:(id)sender;
- (IBAction)rightButPressed:(id)sender;


@end
