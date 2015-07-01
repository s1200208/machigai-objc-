//
//  incorrectView.m
//  machigai
//
//  Created by 五十嵐友輔 on 2015/05/15.
//  Copyright (c) 2015年 五十嵐友輔. All rights reserved.
//

#import "incorrectView.h"
#import "correctView.h"
#import "AppDelegate.h"
#import "Singleton.h"
/*
@interface incorrectView () <correctDelegate>

@end
*/
@implementation incorrectView

-(void)viewDidLoad{
    //static NSInteger c_incorrect;
    //c_incorrect++;
  //  NSLog(@"%ld",(long)c_incorrect);
    [super viewDidLoad];
    /*
    AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    appDelegate.num_p++;
    NSLog(@"%ld",(long)appDelegate.num_p);
    */
    //シングルトンクラスを呼び出して出題した問題数をカウントしている。
    Singleton *single = [Singleton sharedManager];
    single.managedParam++;
    single.incorrectParam++;
    NSLog(@"Problem counts is %ld",single.managedParam);
    NSLog(@"Incollect counts is %ld",single.correctParam);
}

/*
- (void)countProblem{
  
}
 */

- (IBAction)returnView:(id)sender {
    Singleton *single = [Singleton sharedManager];
    /*
    AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    appDelegate.num_p++;
    if (appDelegate.num_p > 4) {
        appDelegate.num_p = 1;
     
    }
     */
    //NSLog(@"%ld",(long)appDelegate.num_p);
   // if(appDelegate.num_p == 4) [self performSegueWithIdentifier:@"endPush" sender:self];
    if(single.managedParam % 4 == 0) [self performSegueWithIdentifier:@"endPush" sender:self];
            [self   performSegueWithIdentifier:@"returnPush"  sender:self];
    }
@end
