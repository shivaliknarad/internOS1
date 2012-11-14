//
//  ViewController.h
//  LED_Flashlight
//
//  Created by User on 10/1/12.
//  Copyright (c) 2012 User. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController
{
    //flashlight app
    UIButton *onButton;
    UIButton *offButton;
    UIImageView *onView;
    UIImageView *offView;
    
    //clock app
    IBOutlet UILabel * label;
    NSTimer * timer;
<<<<<<< HEAD
    
    //screen brightness
    UILabel * brightLabel;
    
    //LED brightness
    UILabel * ledbrightnessLabel;
    
    
=======
>>>>>>> 8c940472c240e5b3a2ee4ab75525b887a5f7c8a3
}

//flashlight
@property(nonatomic, strong) IBOutlet UIButton *onButton;
@property(nonatomic, strong) IBOutlet UIButton *offButton;
@property(nonatomic, strong) IBOutlet UIImageView *onView;
@property(nonatomic, strong) IBOutlet UIImageView *offView;
<<<<<<< HEAD
@property(nonatomic,retain) IBOutlet UILabel *label;
@property(nonatomic, retain) IBOutlet UILabel *brightLabel;
@property(nonatomic, retain) IBOutlet UILabel *ledbrightnessLabel;

-(IBAction)changeScreenBrightness:(UISlider *)sender; //Screen brightness
-(IBAction)changeLEDBrightness:(UISlider *)sender; //LED brightness
-(IBAction)torchOn:(id)sender;
-(IBAction)torchOff:(id)sender;


=======

-(IBAction)torchOn:(id)sender;
-(IBAction)torchOff:(id)sender;

>>>>>>> 8c940472c240e5b3a2ee4ab75525b887a5f7c8a3
//clock
-(void)updateTimer;
@end
