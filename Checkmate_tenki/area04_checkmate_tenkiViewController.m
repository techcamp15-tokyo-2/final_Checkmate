//
//  area04_checkmate_tenkiViewController.m
//  Checkmate_tenki
//
//  Created by Seiya Hoshi on 2013/09/06.
//  Copyright (c) 2013年 Seiya Hoshi. All rights reserved.
//

#import "area04_checkmate_tenkiViewController.h"

@interface area04_checkmate_tenkiViewController ()

@end

@implementation area04_checkmate_tenkiViewController
@synthesize msgValue4;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.title = msgValue4;
    NSURL *theURL;
    if([msgValue4 hasPrefix:@"稚内"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=400040"];
    }
        NSURLRequest *theRequest=[NSURLRequest requestWithURL:theURL];
        NSURLConnection *theConnection=[[NSURLConnection alloc]
        initWithRequest:theRequest delegate:self];
    if (theConnection) {
        NSLog(@"start loading");
        receivedData = [NSMutableData data];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    NSLog(@"Succeeded! Received %d bytes of data",[receivedData length]);
    /* NSLog(@"%@", [[NSString alloc]initWithData:receivedData
     encoding:NSUTF8StringEncoding]);*/
    //NSLog(@"WebAPIのURL：%@",apiUrlJson );
    
    
    NSDictionary *jsonObject = [NSJSONSerialization JSONObjectWithData:receivedData options:NSJSONReadingAllowFragments error:nil];
    NSLog(@"%@", jsonObject);
    
    //NSLog(@"%@", [jsonObject objectForKey:@"forcast"]);
    NSString *max;
    NSString *mini;
    NSString *telop;
    NSString *celsius;
    celsius = @"℃";
    max = [[[[[jsonObject objectForKey:@"forecasts"] objectAtIndex:1] objectForKey:@"temperature"] objectForKey:@"max"] objectForKey:@"celsius"];
    mini = [[[[[jsonObject objectForKey:@"forecasts"] objectAtIndex:1] objectForKey:@"temperature"] objectForKey:@"min"] objectForKey:@"celsius"];
    telop = [[[jsonObject objectForKey:@"forecasts"] objectAtIndex:1] objectForKey:@"telop"];
    NSString *str_max = [NSString stringWithFormat:@"%@ %@",max,celsius];
    NSString *str_mini = [NSString stringWithFormat:@"%@ %@",mini,celsius];
    _max.text = str_max;
    _mini.text = str_mini;
    _tenki.text = telop;
  
    if((int)max >= 25){
        _fukusou.text = @"半袖がいいと思う！";
    }
    
    if((int)mini >= 20){
        _Advice.text = @"一日中あたたかいよ！";
    }
    
    
    
    
    //_test.frame = CGRectMake(0, 0, 320, 50);
    //_test.center = self.view.center;
}



@end
