//
//  Singleton.m
//  machigai
//
//  Created by  Yusuke Igarashi on 2015/06/12.
//  Copyright (c) 2015年 五十嵐友輔. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

static id theSharedManager = nil;
@synthesize managedParam;
@synthesize correctParam;
@synthesize checkParam;
@synthesize incorrectParam;
@synthesize arr;

+ (id)sharedManager {
    @synchronized(self){
    if(theSharedManager == nil){
        theSharedManager = [[self alloc] init];
    }
    }
    return theSharedManager;
}

- (id)init
{
    self.managedParam=0;
    self.correctParam=0;
    self.incorrectParam=0;
    self.checkParam=0;
    self.arr = 0;
    return self;
}


@end