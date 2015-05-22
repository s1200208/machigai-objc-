//
//  NextViewController.m
//  machigai
//
//  Created by 五十嵐友輔 on 2015/05/08.
//  Copyright (c) 2015年 五十嵐友輔. All rights reserved.
//

#import "NextViewController.h"

@implementation NextViewController
//@synthesize myState = _myState;
@synthesize label1;
@synthesize image1;
@synthesize state;
@synthesize count;
- (void)viewDidLoad {
   // static NSInteger cc;
    //cc++;
    //NSLog(@"%ld",(long)cc);
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

        srand((unsigned)time(NULL));
    state = random()%4+1;
    switch (state) {
        case 1:
            label1.text = @"問題1";
            image1.image = [UIImage imageNamed:@"k_01_1.jpg"];
            //next_state = state;
           // NSLog(@"%d",next_state);
            break;
        case 2:
            label1.text = @"問題2";
            image1.image = [UIImage imageNamed:@"k_02_1.JPG"];
            //next_state = state;
            //NSLog(@"%d",next_state);
            break;
        case 3:
            label1.text = @"問題3";
            image1.image = [UIImage imageNamed:@"k_03_1.JPG"];
            //next_state = state;
            //NSLog(@"%d",next_state);
            break;
        case 4:
            label1.text = @"問題4";
            image1.image = [UIImage imageNamed:@"k_04_1.JPG"];
            //next_state = state;
          //  NSLog(@"%d",state);
            break;
            
        default:
            break;
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushView:(id)sender {
    //count++;
    //NSLog(@"%ld",(long)count);

    [self performSegueWithIdentifier:@"pushBtn" sender:self];
}
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NextViewAnotherController *viewCon = segue.destinationViewController;
   // viewCon.myState = &(state);
    viewCon.myState = state;
}
@end
