//
//  Set_ViewController.h
//  Checkmate_tenki
//
//  Created by techcamp on 13/09/11.
//  Copyright (c) 2013年 Seiya Hoshi. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol Set_ViewController_Delegate;
@interface Set_ViewController : UIViewController<UIPickerViewDelegate>


@property (weak, nonatomic) IBOutlet UIPickerView *Hot;
@property (copy, nonatomic) NSString *msgValue5;
@property (strong, nonatomic) id<Set_ViewController_Delegate> delagete;

- (IBAction)buttonPush:(id)sender;
- (IBAction)SET:(id)sender;

@end

@protocol Set_ViewController_Delegate
- (void)backFromSet_ViewController:(NSArray *)array;
@end
