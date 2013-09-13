//
//  area04_checkmate_tenkiViewController.h
//  Checkmate_tenki
//
//  Created by Seiya Hoshi on 2013/09/06.
//  Copyright (c) 2013年 Seiya Hoshi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import<AVFoundation/AVFoundation.h>
#import "Set_ViewController.h"

@interface area04_checkmate_tenkiViewController : UIViewController<Set_ViewController_Delegate>{
    NSMutableData *receivedData;
    
    AVAudioPlayer *sound;//音楽用クラス
    //アイコン表示のため
    IBOutlet UIImageView *icon;
    __weak IBOutlet UIImageView *Tops;
    
    __weak IBOutlet UIImageView *Bot;
    
    __weak IBOutlet UIImageView *item;
    //データ引き継ぎ
    //int userParam;
}
@property (copy, nonatomic) NSString *msgValue4;
//@property (copy, nonatomic) int *userParam1;
@property (weak, nonatomic) IBOutlet UILabel *tenki;
@property (weak, nonatomic) IBOutlet UILabel *max;
@property (weak, nonatomic) IBOutlet UILabel *mini;
@property (weak, nonatomic) IBOutlet UILabel *fukusou;
@property (weak, nonatomic) IBOutlet UILabel *Advice;
@property (nonatomic) BOOL isLoaded;
//@property (weak, nonatomic) IBOutlet UIImageView *icon;
- (IBAction)Play:(id)sender;
- (IBAction)pushBtn:(id)sender;
- (void)backFromSet_ViewController:(NSArray *)array;
- (IBAction)goToSet_ViewController:(id)sender;

//データ引き継ぎ
@property (copy, nonatomic) NSString *userParam1;

@end
