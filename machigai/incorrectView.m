//
//  incorrectView.m
//  machigai
//
//  Created by 五十嵐友輔 on 2015/05/15.
//  Copyright (c) 2015年 五十嵐友輔. All rights reserved.
//

#import "incorrectView.h"

@implementation incorrectView
-(void)viewDidLoad{
    static NSInteger c_incorrect;
    c_incorrect++;
    NSLog(@"%ld",(long)c_incorrect);
    [super viewDidLoad];
    
}
- (IBAction)returnView:(id)sender {
            [self   performSegueWithIdentifier:@"returnPush"  sender:self];
    }
@end
