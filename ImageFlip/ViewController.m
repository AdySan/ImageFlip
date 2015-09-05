//
//  ViewController.m
//  ImageFlip
//
//  Created by Aditya Tannu on 10/11/14.
//  Copyright (c) 2014 Aditya Tannu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end


@implementation ViewController

@synthesize imageView;
@synthesize vw;

- (void)viewDidLoad {
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIImage *image = [UIImage imageNamed:@"hentaigana.png"];
    imageView = [[UIImageView alloc] initWithImage:image];
    vw = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 200, 200)];
    vw.layer.cornerRadius = vw.frame.size.width / 2;
    imageView.frame = CGRectMake(20, 20, 200, 200);
//    imageView.layer.cornerRadius = imageView.frame.size.width / 2;
    imageView.layer.masksToBounds = YES;
    imageView.layer.borderColor = [[UIColor blackColor] CGColor];
    imageView.layer.borderWidth = 1.0;
    [self.view addSubview: imageView];
    //[self.view addSubview:vw];
    [imageView setUserInteractionEnabled:YES];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(taptap:)];
    [imageView addGestureRecognizer:tap];
 
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)flipView:(id)sender {

//    [UIView animateWithDuration:2.0 delay:0.0 options:UIViewAnimationOptionCurveEaseInOut
//                     animations:^(void) {
//                         imageView.transform = CGAffineTransformMakeScale(-1, 1);
//                         [UIView animateWithDuration:0.5 delay:1.0 options:UIViewAnimationOptionTransitionCrossDissolve
//                                          animations:^(void) {
//                                              imageView.image = [UIImage imageNamed:@"IMG_6341.jpg"];
//                                          } completion:^(BOOL finished) {
//                                              
//                                          }];
//                     }
//                     completion:^(BOOL finished) {
//                     }];


    [UIView transitionWithView:imageView
                      duration:1.4
                       options:UIViewAnimationOptionTransitionFlipFromRight
                    animations:^{
                        //  Set the new image
                        //  Since its done in animation block, the change will be animated
                        imageView.image = [UIImage imageNamed:@"IMG_6341.jpg"];
                    } completion:^(BOOL finished) {
                        //  Do whatever when the animation is finished
                    }];
    
    
}
@end
