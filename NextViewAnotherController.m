//
//  NextViewAnotherController.m
//  machigai
//
//  Created by 五十嵐友輔 on 2015/05/08.
//  Copyright (c) 2015年 五十嵐友輔. All rights reserved.
//

#import "NextViewAnotherController.h"

@implementation NextViewAnotherController
@synthesize  myState = _myState;
@synthesize image2;
@synthesize labelA;
@synthesize labelB;
@synthesize labelC;
@synthesize judge;

- (void)viewDidLoad {
    NSInteger state;
    //state = *(_myState);
    state = _myState;
          [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
switch (state) {
    case 1:
        labelA.text = @"写真右に居たおじさんが居ない。"; //
        labelB.text = @"手前に居た人が1人少ない。";
        labelC.text = @"ボードが1つ少ない。";
        image2.image = [UIImage imageNamed:@"k_01_2.jpg"];
        //next_state = state;
        // NSLog(@"%d",next_state);
        break;
    case 2:
        labelA.text = @"写真右に居た鴨がいない。";
        labelB.text = @"写真右奥に鴨が1羽増えている。";
        labelC.text = @"写真奥にあったパイロンがない。";//
        image2.image = [UIImage imageNamed:@"k_02_2.JPG"];
        //next_state = state;
        //NSLog(@"%d",next_state);
        break;
    case 3:
        labelA.text = @"写真上の雲がない。";
        labelB.text = @"写真中央のあった花がない。"; //
        labelC.text = @"写真左下にあった花がない。";
        image2.image = [UIImage imageNamed:@"k_03_2.JPG"];
        //next_state = state;
        //NSLog(@"%d",next_state);
        break;
    case 4:
        labelA.text = @"写真右下にあったボートがない。"; //
        labelB.text = @"写真左のあったボートが1つ少ない。";
        labelC.text = @"対岸にあった大きな木がない。";
        image2.image = [UIImage imageNamed:@"k_04_2.JPG"];
        //next_state = state;
        //  NSLog(@"%d",state);
        break;
        
    default:
        break;
}
}

- (IBAction)buttonA:(id)sender {
    NSInteger state2;
    state2 = _myState;
    switch (state2) {
        case 1:
            judge = 1;
            break;
        case 2:
            judge = 0;
            break;
        case 3:
            judge = 0;
            break;
        case 4:
            judge = 1;
            break;
        default:
            break;
    }
    if(judge)[self performSegueWithIdentifier:@"correctBtn" sender:self];
   else if(!judge) [self performSegueWithIdentifier:@"incorrectBtn" sender:self];
}

- (IBAction)buttonB:(id)sender {
    NSInteger state2;
    state2 = _myState;
    switch (state2) {
        case 1:
            judge = 0;
            break;
        case 2:
            judge = 0;
            break;
        case 3:
            judge = 1;
            break;
        case 4:
            judge = 0;
            break;
        default:
            break;
    }
    if(judge) [self performSegueWithIdentifier:@"correctBtn" sender:self];
    else if(!judge) [self performSegueWithIdentifier:@"incorrectBtn" sender:self];
}

- (IBAction)buttonC:(id)sender {
    
    NSInteger state2;
    state2 = _myState;
    switch (state2) {
        case 1:
            judge = 0;
            break;
        case 2:
            judge = 1;
            break;
        case 3:
            judge = 0;
            break;
        case 4:
            judge = 0;
            break;
        default:
            break;
    }
    
   if(judge)  [self performSegueWithIdentifier:@"correctBtn" sender:self];
    else if(!judge)[self performSegueWithIdentifier:@"incorrectBtn" sender:self];
}
 
@end
