//
//  endView.m
//  machigai
//
//  Created by 五十嵐友輔 on 2015/05/15.
//  Copyright (c) 2015年 五十嵐友輔. All rights reserved.
//

#import "endView.h"
#import "Singleton.h"


@implementation endView
@synthesize end_label;
@synthesize correct_num;//
-(void)viewDidLoad
{
    [super viewDidLoad];
    Singleton *single = [Singleton sharedManager];
    end_label.text = [NSString stringWithFormat:@"%ld",(long)single.correctParam];
    
}



- (IBAction)restartBtn:(id)sender {
    
    //ビューに関係ない。
    Singleton *single = [Singleton sharedManager];
    single.managedParam = 0;
    single.correctParam = 0;
    single.incorrectParam = 0;
    single.checkParam = 0;
//ここでカウンタの初期化もしくはスタートのページ
    
    
    [self performSegueWithIdentifier:@"restartPush" sender:self];
}
@end
