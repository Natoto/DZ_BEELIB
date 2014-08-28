//
//  ViewController.m
//  DZ_BEE
//
//  Created by Nonato on 14-8-28.
//  Copyright (c) 2014年 Nonato. All rights reserved.
//

#import "ViewController.h"
#import "Bee.h"
@interface ViewController ()

@end

@implementation ViewController

ON_SIGNAL2(BeeUIBoard, signal)
{
    if ([signal is:BeeUIBoard.CREATE_VIEWS]) {
        BeeUIButton *button =[BeeUIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"NEXT"];
        [button addTarget:self action:@selector(btnTap:) forControlEvents:UIControlEventTouchUpInside];
        [button setTintColor:[UIColor orangeColor]];
        button.frame = CGRectMake(200, 100, 60, 40);
        [self.view addSubview:button];
        
        int red = rand()%255;
        int green = rand()%255;
        int blue = rand()%255;
        self.view.backgroundColor =[UIColor colorWithRed:red/255. green:green/255. blue:blue/255. alpha:1];
    }
    else if([signal is:BeeUIBoard.LAYOUT_VIEWS])
    {
        
    }
        
}

-(IBAction)btnTap:(id)sender
{
    ViewController *ctr=[ViewController board];
    [self.navigationController pushViewController:ctr animated:YES];
}
@end
