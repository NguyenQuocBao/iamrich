//
//  ViewController.h
//  IAmRich
//
//  Created by Nguyen Bao on 10/1/13.
//  Copyright (c) 2013 nguyenquocbao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController
<AVAudioPlayerDelegate>
{
	SystemSoundID systemSoundID;
	AVAudioPlayer *player;
	UIButton *StartStopSound;
	
}

@property (nonatomic, retain) IBOutlet AVAudioPlayer *player;
@property (nonatomic, retain) IBOutlet UIButton *StartStopSound;


@end