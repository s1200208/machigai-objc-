//
//  correctView.m
//  machigai
//
//  Created by 五十嵐友輔 on 2015/05/15.
//  Copyright (c) 2015年 五十嵐友輔. All rights reserved.
//

#import "correctView.h"

@implementation correctView
-(void)viewDidLoad{
    static NSInteger c_correct;
    c_correct++;
    NSLog(@"%ld",(long)c_correct);
    [super viewDidLoad];

    c_count++;
    NSLog(@"%ld",(long)c_count);
}



- (IBAction)returnView:(id)sender {
    [self performSegueWithIdentifier:@"returnPush" sender:self];
}

@end
