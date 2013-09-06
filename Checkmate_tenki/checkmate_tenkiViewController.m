//
//  checkmate_tenkiViewController.m
//  Checkmate_tenki
//
//  Created by Seiya Hoshi on 2013/09/06.
//  Copyright (c) 2013年 Seiya Hoshi. All rights reserved.
//

#import "checkmate_tenkiViewController.h"
#import "area01_checkmate_tenkiViewController.h"

@interface checkmate_tenkiViewController ()

@end

@implementation checkmate_tenkiViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)idou:(id)sender {
       [self performSegueWithIdentifier:@"idou" sender:self];
}
@end
