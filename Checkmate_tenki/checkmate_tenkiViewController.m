//
//  checkmate_tenkiViewController.m
//  Checkmate_tenki
//
//  Created by Seiya Hoshi on 2013/09/06.
//  Copyright (c) 2013年 Seiya Hoshi. All rights reserved.
//

#import "checkmate_tenkiViewController.h"
#import "area01_checkmate_tenkiViewController.h"
#import "GPS_checkmate_tenkiViewController.h"

@interface checkmate_tenkiViewController ()

@end

@implementation checkmate_tenkiViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Title02.png"]];
    [self.view addSubview:backgroundImage];
    [self.view sendSubviewToBack:backgroundImage];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)idou:(id)sender {
    [self performSegueWithIdentifier:@"idou" sender:self];
}

- (IBAction)GPS:(id)sender {
    [self performSegueWithIdentifier:@"idouGPS" sender:self];
}

@end
