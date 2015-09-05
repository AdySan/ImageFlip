//
//  ViewController.h
//  ImageFlip
//
//  Created by Aditya Tannu on 10/11/14.
//  Copyright (c) 2014 Aditya Tannu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@property (strong, nonatomic) IBOutlet UIView *vw;
- (IBAction)flipView:(id)sender;
@end

