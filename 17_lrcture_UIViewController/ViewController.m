//
//  ViewController.m
//  17_lrcture_UIViewController
//
//  Created by Slava on 24.03.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) loadView {
    [super loadView];   // важно делать
    NSLog(@"loadView is was created");
}

- (void)viewDidLoad {
    [super viewDidLoad];    // важно делать
    NSLog(@"viewDidLoad was created");
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];    // важно делать
    NSLog(@"viewWillAppear was crated");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated]; // важно делать
    NSLog(@"viewDidAppear was created");
}

- (void) viewWillLayoutSubviews {
    [super viewWillLayoutSubviews]; // важно делать
    NSLog(@"viewWillLayoutSubviews was created");
}

- (void) viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];  // важно делать
    NSLog(@"viewDidLayoutSubviews was created");
}

#pragma mark - Rotation

- (BOOL)shouldAutorotate {
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskPortrait;
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    NSLog(@"willRotateToInterfaceOrientation from %d to %d", self.interfaceOrientation, toInterfaceOrientation);
}


- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    NSLog(@"didRotateFromInterfaceOrientation from %d to %d", fromInterfaceOrientation, self.interfaceOrientation);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];    // важно делать
    // Dispose of any resources that can be recreated.
}


//- (void)viewWillAppear:(BOOL)animated;    // Called when the view is about to made visible. Default does nothing
//- (void)viewDidAppear:(BOOL)animated;     // Called when the view has been fully transitioned onto the screen. Default does nothing
//- (void)viewWillDisappear:(BOOL)animated; // Called when the view is dismissed, covered or otherwise hidden. Default does nothing
//- (void)viewDidDisappear:(BOOL)animated;  // Called after the view was dismissed, covered or otherwise hidden. Default does nothing


//// Called just before the view controller's view's layoutSubviews method is invoked. Subclasses can implement as necessary. The default is a nop.
//- (void)viewWillLayoutSubviews NS_AVAILABLE_IOS(5_0);
//// Called just after the view controller's view's layoutSubviews method is invoked. Subclasses can implement as necessary. The default is a nop.
//- (void)viewDidLayoutSubviews NS_AVAILABLE_IOS(5_0);

@end
