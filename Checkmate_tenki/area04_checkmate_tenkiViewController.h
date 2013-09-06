//
//  area04_checkmate_tenkiViewController.h
//  Checkmate_tenki
//
//  Created by Seiya Hoshi on 2013/09/06.
//  Copyright (c) 2013年 Seiya Hoshi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface area04_checkmate_tenkiViewController : UIViewController{
    NSMutableData *receivedData;
}
@property (copy, nonatomic) NSString *msgValue4;
@property (weak, nonatomic) IBOutlet UILabel *tenki;
@property (weak, nonatomic) IBOutlet UILabel *max;
@property (weak, nonatomic) IBOutlet UILabel *mini;
@property (weak, nonatomic) IBOutlet UILabel *fukusou;
@property (weak, nonatomic) IBOutlet UILabel *Advice;


@end
