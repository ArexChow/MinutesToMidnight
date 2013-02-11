//
//  ViewController.h
//  MinutesToMidnight
//
//  Created by chow on 13-2-7.
//  Copyright (c) 2013年 edu.self. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *timeLabel;

- (void)updateLabel:(int)hour:(int)minute:(int)second;

@end
