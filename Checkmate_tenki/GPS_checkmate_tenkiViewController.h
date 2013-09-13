//
//  GPS_checkmate_tenkiViewController.h
//  Checkmate_tenki
//
//  Created by Seiya Hoshi on 2013/09/12.
//  Copyright (c) 2013年 Seiya Hoshi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface GPS_checkmate_tenkiViewController : UIViewController<CLLocationManagerDelegate>{
    NSMutableData *receivedData;
    BOOL doneFirstLoad;
}
@property(nonatomic, strong) CLLocationManager *locationManager;
@property (weak, nonatomic) IBOutlet UILabel *label_iti;
- (IBAction)Go:(id)sender;

@end
