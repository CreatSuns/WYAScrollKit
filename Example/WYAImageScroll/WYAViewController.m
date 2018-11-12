//
//  WYAViewController.m
//  WYAImageScroll
//
//  Created by 1228506851@qq.com on 11/12/2018.
//  Copyright (c) 2018 1228506851@qq.com. All rights reserved.
//

#import "WYAViewController.h"
#import <WYAImageScroll/WYAImageScrollViewController.h>

@interface WYAViewController ()

@end

@implementation WYAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"照片" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor redColor]];
    [button addTarget:self action:@selector(aaa) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    button.center = self.view.center;
    button.bounds = CGRectMake(0, 0, 50, 50);
}

-(void)aaa{
    UIImage * image = [UIImage imageNamed:@"0"];
    UIImage * image1 = [UIImage imageNamed:@"1"];
    UIImage * image2 = [UIImage imageNamed:@"2"];
    
    WYAImageScrollViewController * imageV = [[WYAImageScrollViewController alloc]init];
    imageV.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    
    imageV.images = @[image,image1,image2];
    [self presentViewController:imageV animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
