//
//  ViewController.m
//  machigai
//
//  Created by 五十嵐友輔 on 2015/05/08.
//  Copyright (c) 2015年 五十嵐友輔. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSInteger count;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
  
  
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextView:(id)sender {
      [self performSegueWithIdentifier:@"startView" sender:self];
}
@end
