//
//  ViewController.m
//  LED_Flashlight
//
//  Created by User on 10/1/12.
//  Copyright (c) 2012 User. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

<<<<<<< HEAD

-(void)updateTimer{
  
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"hh:mm:ss a"];
    label.text = [formatter stringFromDate:[NSDate date]];

 
    
}

@synthesize offButton, onView, onButton, offView, label, brightLabel, ledbrightnessLabel;


-(IBAction)changeScreenBrightness:(UISlider *)sender
{
    brightLabel.text = [NSString stringWithFormat:@"%f", sender.value];
    [[UIScreen mainScreen] setBrightness:sender.value];
}

-(IBAction)changeLEDBrightness:(UISlider *)sender
{
    AVCaptureDevice *flashlight =[AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    [flashlight lockForConfiguration:nil];
    ledbrightnessLabel.text = [NSString stringWithFormat:@"%f", sender.value];
    [flashlight setTorchModeOnWithLevel:sender.value error:nil];//changed from NULL to nil
    [flashlight unlockForConfiguration];
}


=======
-(void)updateTimer{
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"hh:mm:ss a"];
    label.text = [formatter stringFromDate:[NSDate date]];
}

@synthesize offButton, onView, onButton, offView;
>>>>>>> 8c940472c240e5b3a2ee4ab75525b887a5f7c8a3

-(IBAction)torchOn:(id)sender
{
    onButton.hidden = YES;
    offButton.hidden = NO;
    onView.hidden = NO;
    offView.hidden = YES;
    
<<<<<<< HEAD
    
    
    
=======
>>>>>>> 8c940472c240e5b3a2ee4ab75525b887a5f7c8a3
    AVCaptureDevice *flashlight =[AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    if([flashlight isTorchAvailable] && [flashlight isTorchModeSupported:AVCaptureTorchModeOn])
    {
        BOOL success = [flashlight lockForConfiguration:nil];
        if(success)
        {
            [flashlight setTorchMode: AVCaptureTorchModeOn];
            [flashlight unlockForConfiguration];
        }
    }
}

-(IBAction)torchOff:(id)sender
{
    onButton.hidden = NO;
    offButton.hidden = YES;
    onView.hidden = YES;
    offView.hidden = NO;

    
    
    AVCaptureDevice *flashlight =[AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    if([flashlight isTorchAvailable] && [flashlight isTorchModeSupported:AVCaptureTorchModeOn])
    {
        BOOL success = [flashlight lockForConfiguration:nil];
        if(success)
        {
<<<<<<< HEAD
            [flashlight setTorchMode: AVCaptureTorchModeOff];
=======
            [flashlight setTorchMode: AVCaptureTorchModeOn];
>>>>>>> 8c940472c240e5b3a2ee4ab75525b887a5f7c8a3
            [flashlight unlockForConfiguration];
        }
    }
}

<<<<<<< HEAD


- (void)viewDidLoad

{


=======
- (void)viewDidLoad
{
>>>>>>> 8c940472c240e5b3a2ee4ab75525b887a5f7c8a3
    onButton.hidden = YES;
    offButton.hidden = NO;
    onView.hidden = NO;
    offView.hidden = YES;
    
    AVCaptureDevice *flashlight =[AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    if([flashlight isTorchAvailable] && [flashlight isTorchModeSupported:AVCaptureTorchModeOn])
    {
        BOOL success = [flashlight lockForConfiguration:nil];
        if(success)
        {
            [flashlight setTorchMode: AVCaptureTorchModeOn];
            [flashlight unlockForConfiguration];
<<<<<<< HEAD
        
         }
    
    }
    
    

  
    [super viewDidLoad];
   
    
    [label setFont:[UIFont fontWithName:@"Let's go Digital" size:65]];
    
    
    timer = [NSTimer scheduledTimerWithTimeInterval:0.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
	// Do any additional setup after loading the view, typically from a nib.
}



=======
        }
    }
    [super viewDidLoad];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
	// Do any additional setup after loading the view, typically from a nib.
}

>>>>>>> 8c940472c240e5b3a2ee4ab75525b887a5f7c8a3
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

<<<<<<< HEAD


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation


=======
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
>>>>>>> 8c940472c240e5b3a2ee4ab75525b887a5f7c8a3
{
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}


@end
