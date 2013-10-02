//
//  ViewController.m
//  IAmRich
//
//  Created by Nguyen Bao on 10/1/13.
//  Copyright (c) 2013 nguyenquocbao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *ruby;
@property (weak, nonatomic) IBOutlet UILabel *iamrich;

@end

@implementation ViewController
@synthesize StartStopSound , player;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.ruby.alpha = 0;
    self.iamrich.alpha = 0;
    player = [[AVAudioPlayer alloc]
              initWithContentsOfURL:[NSURL fileURLWithPath:
                                     [[NSBundle mainBundle] pathForResource:@"music" ofType:@"mp3"]]
              error:nil];
    
    
    [player prepareToPlay];
}


- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //NSLog(@"ruby's alpha = %1.0f", self.ruby.alpha);
    [UIView animateWithDuration:4 animations:^{
        self.ruby.alpha = 1;
        //NSLog(@"ruby's alpha = %1.0f", self.ruby.alpha);
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:3 animations:^{
            self.iamrich.center = CGPointMake(self.iamrich.center.x, 308);
            self.iamrich.alpha = 1;
           
            [player play];
        } completion:nil];
        
        
    }];
    
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
