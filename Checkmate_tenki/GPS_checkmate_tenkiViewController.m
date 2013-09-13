//
//  GPS_checkmate_tenkiViewController.m
//  Checkmate_tenki
//
//  Created by Seiya Hoshi on 2013/09/12.
//  Copyright (c) 2013年 Seiya Hoshi. All rights reserved.
//

#import "GPS_checkmate_tenkiViewController.h"
#import "area04_checkmate_tenkiViewController.h"
#import "area03_checkmate_tenkiViewController.h"
#import "area02_checkmate_tenkiViewController.h"

@interface GPS_checkmate_tenkiViewController ()

@end

@implementation GPS_checkmate_tenkiViewController{
    UIView *loadingView;
    UIActivityIndicatorView *indicator;
    NSString *place;
    
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

@synthesize locationManager;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    doneFirstLoad = NO;
    
    // ロケーションマネージャーを作成
	self.locationManager = [[CLLocationManager alloc] init];
    if ([CLLocationManager locationServicesEnabled]) {
		self.locationManager.delegate = self;
		// 位置情報取得開始
		[self.locationManager startUpdatingLocation];
	}else{
        NSLog(@"位置情報使えないよ><");
    }
}



- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    
    NSLog(@"現在のlongitude:%f", newLocation.coordinate.longitude);
    NSLog(@"現在のlatitude:%f",  newLocation.coordinate.latitude);
    if (!doneFirstLoad) {
        doneFirstLoad = YES;
        
        loadingView = [[UIView alloc] initWithFrame:self.view.bounds];
        // 雰囲気出すために背景を黒く半透明する
        loadingView.backgroundColor = [UIColor blackColor];
        loadingView.alpha = 0.5f;
        indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
        // でっかいグルグル
        indicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
        // 画面の中心に配置
        [indicator setCenter:CGPointMake(loadingView.bounds.size.width / 2, loadingView.bounds.size.height / 2)];
        // 画面に追加
        [loadingView addSubview:indicator];
        [self.view addSubview:loadingView];
        // ぐるぐる開始
        [indicator startAnimating];
        
        NSURL *theURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://reversegeojpn.appspot.com/search?n=%f&e=%f", newLocation.coordinate.latitude, newLocation.coordinate.longitude]];
        NSURLRequest *theRequest=[NSURLRequest requestWithURL:theURL];
        NSURLConnection *theConnection=[[NSURLConnection alloc]
                                        initWithRequest:theRequest delegate:self];
        
        if (theConnection) {
            
            NSLog(@"start loading");
            receivedData = [NSMutableData data];
            NSLog(@"%@", receivedData);
        }
    }
    
}

// 位置情報が取得失敗した場合にコールされる。
- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
	if (error) {
		NSString* message = nil;
		switch ([error code]) {
                // アプリでの位置情報サービスが許可されていない場合
			case kCLErrorDenied:
				// 位置情報取得停止
				[self.locationManager stopUpdatingLocation];
				message = [NSString stringWithFormat:@"このアプリは位置情報サービスが許可されていません。"];
				break;
			default:
				message = [NSString stringWithFormat:@"位置情報の取得に失敗しました。"];
				break;
		}
		if (message) {
			// アラートを表示
			UIAlertView* alert= [[UIAlertView alloc] initWithTitle:@"" message:message delegate:nil
                                                 cancelButtonTitle:@"OK" otherButtonTitles:nil];
			[alert show];
		}
	}
}


- (void)connection:(NSURLConnection *)connection
didReceiveResponse:(NSURLResponse *)response
{
    NSLog(@"receive response");
    [receivedData setLength:0];
}

- (void)connection:(NSURLConnection *)connection
    didReceiveData:(NSData *)data
{
    NSLog(@"receive data");
    [receivedData appendData:data];
}

- (void)connection:(NSURLConnection *)connection
  didFailWithError:(NSError *)error
{
    
    NSLog(@"Connection failed! Error - %@ %@",
          [error localizedDescription],
          [[error userInfo] objectForKey:NSURLErrorFailingURLStringErrorKey]);
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    
    // ぐるぐる停止
    [indicator stopAnimating];
    NSLog(@"%d",[indicator isAnimating]);
    
    // 画面から除去して黒い半透明を消す
    [loadingView removeFromSuperview];
    
    
    NSLog(@"%@", receivedData);
    place = [[NSString alloc] initWithData:receivedData encoding:NSUTF8StringEncoding];
    
    
    _label_iti.text = place;
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([place hasPrefix:@"東京"]){
        area04_checkmate_tenkiViewController *a04vc = (area04_checkmate_tenkiViewController *)[segue destinationViewController];
        a04vc.msgValue4 = place;
    }else if([place hasPrefix:@"北海道" ]){
        area02_checkmate_tenkiViewController *a02vc = (area02_checkmate_tenkiViewController *)[segue destinationViewController];
        a02vc.msgValue2 = place;
    }else{
        area03_checkmate_tenkiViewController *a03vc = (area03_checkmate_tenkiViewController *)[segue destinationViewController];
        a03vc.msgValue3 = place;
    }
    NSLog(@"%@", place);
    //_Label.text = place;
    
}

- (IBAction)Go:(id)sender {
    if([place hasPrefix:@"東京"]){
        [self performSegueWithIdentifier:@"idou4" sender:self];
    }else if([place hasPrefix:@"北海道" ]){
        [self performSegueWithIdentifier:@"idou2" sender:self];
    }else{
        [self performSegueWithIdentifier:@"idou3" sender:self];
    }
}

@end
