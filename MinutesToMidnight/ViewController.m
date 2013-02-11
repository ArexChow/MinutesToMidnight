//
//  ViewController.m
//  MinutesToMidnight
//
//  Created by chow on 13-2-7.
//  Copyright (c) 2013年 edu.self. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize timeLabel = _timeLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSTimeInterval interval = 1.0;
    NSTimer *timer;
    timer = [NSTimer scheduledTimerWithTimeInterval:interval target:self selector:@selector(updateTime) userInfo:nil repeats:YES];//一开始把repeats设置成了NO导致无法连续CD
}

- (void)updateTime {
    //以下是提取日期中时分秒的方法
    NSDate *now = [NSDate date];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:(NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit) fromDate:now];
    
    int hour = 24 - [components hour];
    int minute = 60 - [components minute];
    int second = 60 - [components second];
    
    [self updateLabel:hour :minute :second];
}

- (void)updateLabel:(int)hour:(int)minute:(int)second {
    
    self.timeLabel.text = [NSString stringWithFormat:@"%d:%d:%d", hour, minute, second];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
