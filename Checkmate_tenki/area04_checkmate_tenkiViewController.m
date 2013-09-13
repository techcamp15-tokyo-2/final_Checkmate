//
//  area04_checkmate_tenkiViewController.m
//  Checkmate_tenki
//
//  Created by Seiya Hoshi on 2013/09/06.
//  Copyright (c) 2013年 Seiya Hoshi. All rights reserved.
//

#import"area04_checkmate_tenkiViewController.h"

@interface area04_checkmate_tenkiViewController ()

@end

@implementation area04_checkmate_tenkiViewController{
    UIView *loadingView;
    UIActivityIndicatorView *indicator;
    NSString *telop;
}

@synthesize userParam1;
@synthesize msgValue4;

int AA;
int BB;
int CC;
int DD;
int A;

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
//    self.title = msgValue4;
//    NSURL *theURL;
//    if([msgValue4 hasPrefix:@"稚内"]){
//        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=400040"];
//    }
//        NSURLRequest *theRequest=[NSURLRequest requestWithURL:theURL];
//        NSURLConnection *theConnection=[[NSURLConnection alloc]
//        initWithRequest:theRequest delegate:self];
//    if (theConnection) {
//        NSLog(@"start loading");
//        receivedData = [NSMutableData data];
//    }

    if (!_isLoaded) {
        _isLoaded = YES;
        
        AA=25;
        BB=20;
        CC=15;
        DD=5;
    }
    
    [self createConnection];
    
    NSLog(@"viewdidload");
    
    //背景set
    /*self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"rain-sun.png"]];*/
    
  //画像情報読み込みたい
    //icon.image = [UIImage imageNamed:@"01.png"];
   
    /* - (void)setImage
    {
        NSURL *myURL = [NSURL URLWithString:@"01.png"];
        NSData * myData = [NSData dataWithContentsOfURL:myURL];
        UIImage *myImage = [UIImage imageWithData:myData];
        self.myImageView.image = myImage;
    }*/
}

- (void)createConnection
{
    
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
    

    self.title = msgValue4;
    NSURL *theURL;
    if([msgValue4 hasPrefix:@"稚内"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=400040"];
    }else if([msgValue4 hasPrefix:@"旭川"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=012010"];
    }else if([msgValue4 hasPrefix:@"留萌"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=012020"];
    }else if([msgValue4 hasPrefix:@"網走"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=013010"];
    }else if([msgValue4 hasPrefix:@"北見"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=013020"];
    }else if([msgValue4 hasPrefix:@"紋別"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=013030"];
    }else if([msgValue4 hasPrefix:@"根室"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=014010"];
    }else if([msgValue4 hasPrefix:@"釧路"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=014020"];
    }else if([msgValue4 hasPrefix:@"帯広"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=014030"];
    }else if([msgValue4 hasPrefix:@"室蘭"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=015010"];
    }else if([msgValue4 hasPrefix:@"浦河"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=015020"];
    }else if([msgValue4 hasPrefix:@"札幌"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=016010"];
    }else if([msgValue4 hasPrefix:@"岩見沢"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=016020"];
    }else if([msgValue4 hasPrefix:@"倶知安"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=016030"];
    }else if([msgValue4 hasPrefix:@"函館"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=017010"];
    }else if([msgValue4 hasPrefix:@"江差"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=017020"];
    }else if([msgValue4 hasPrefix:@"青森"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=020010"];
    }else if([msgValue4 hasPrefix:@"むつ"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=020020"];
    }else if([msgValue4 hasPrefix:@"八戸"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=020030"];
    }else if([msgValue4 hasPrefix:@"盛岡"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=030010"];
    }else if([msgValue4 hasPrefix:@"宮古"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=030020"];
    }else if([msgValue4 hasPrefix:@"大船渡"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=030030"];
    }else if([msgValue4 hasPrefix:@"仙台"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=040010"];
    }else if([msgValue4 hasPrefix:@"白石"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=040020"];
    }else if([msgValue4 hasPrefix:@"秋田"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=050010"];
    }else if([msgValue4 hasPrefix:@"横手"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=050020"];
    }else if([msgValue4 hasPrefix:@"山形"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=060010"];
    }else if([msgValue4 hasPrefix:@"米沢"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=060020"];
    }else if([msgValue4 hasPrefix:@"酒田"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=060030"];
    }else if([msgValue4 hasPrefix:@"新庄"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=060040"];
    }else if([msgValue4 hasPrefix:@"福島"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=070010"];
    }else if([msgValue4 hasPrefix:@"小名浜"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=070020"];
    }else if([msgValue4 hasPrefix:@"若松"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=070030"];
    }else if([msgValue4 hasPrefix:@"水戸"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=080010"];
    }else if([msgValue4 hasPrefix:@"土浦"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=080020"];
    }else if([msgValue4 hasPrefix:@"宇都宮"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=090010"];
    }else if([msgValue4 hasPrefix:@"大田原"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=090020"];
    }else if([msgValue4 hasPrefix:@"前橋"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=100010"];
    }else if([msgValue4 hasPrefix:@"みなかみ"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=100020"];
    }else if([msgValue4 hasPrefix:@"さいたま"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=110010"];
    }else if([msgValue4 hasPrefix:@"熊谷"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=110020"];
    }else if([msgValue4 hasPrefix:@"秩父"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=110030"];
    }else if([msgValue4 hasPrefix:@"千葉"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=120010"];
    }else if([msgValue4 hasPrefix:@"銚子"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=120020"];
    }else if([msgValue4 hasPrefix:@"館山"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=120030"];
    }else if([msgValue4 hasPrefix:@"東京"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=130010"];
    }else if([msgValue4 hasPrefix:@"大島"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=130020"];
    }else if([msgValue4 hasPrefix:@"八丈島"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=130030"];
    }else if([msgValue4 hasPrefix:@"父島"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=130040"];
    }else if([msgValue4 hasPrefix:@"横浜"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=140010"];
    }else if([msgValue4 hasPrefix:@"小田原"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=140020"];
    }else if([msgValue4 hasPrefix:@"新潟"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=150010"];
    }else if([msgValue4 hasPrefix:@"長岡"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=150020"];
    }else if([msgValue4 hasPrefix:@"高田"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=150030"];
    }else if([msgValue4 hasPrefix:@"相川"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=150040"];
    }else if([msgValue4 hasPrefix:@"富山"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=160010"];
    }else if([msgValue4 hasPrefix:@"伏木"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=160020"];
    }else if([msgValue4 hasPrefix:@"金沢"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=170010"];
    }else if([msgValue4 hasPrefix:@"輪島"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=170020"];
    }else if([msgValue4 hasPrefix:@"福井"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=180010"];
    }else if([msgValue4 hasPrefix:@"敦賀"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=180020"];
    }else if([msgValue4 hasPrefix:@"甲府"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=190010"];
    }else if([msgValue4 hasPrefix:@"河口湖"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=190020"];
    }else if([msgValue4 hasPrefix:@"長野"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=200010"];
    }else if([msgValue4 hasPrefix:@"松本"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=200020"];
    }else if([msgValue4 hasPrefix:@"飯田"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=200030"];
    }else if([msgValue4 hasPrefix:@"岐阜"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=210010"];
    }else if([msgValue4 hasPrefix:@"高山"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=210020"];
    }else if([msgValue4 hasPrefix:@"静岡"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=220010"];
    }else if([msgValue4 hasPrefix:@"網代"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=220020"];
    }else if([msgValue4 hasPrefix:@"三島"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=220030"];
    }else if([msgValue4 hasPrefix:@"浜松"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=220040"];
    }else if([msgValue4 hasPrefix:@"津"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=240010"];
    }else if([msgValue4 hasPrefix:@"尾鷲"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=240020"];
    }else if([msgValue4 hasPrefix:@"大津"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=250010"];
    }else if([msgValue4 hasPrefix:@"彦根"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=250020"];
    }else if([msgValue4 hasPrefix:@"京都"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=260010"];
    }else if([msgValue4 hasPrefix:@"舞鶴"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=260020"];
    }else if([msgValue4 hasPrefix:@"大阪"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=270000"];
    }else if([msgValue4 hasPrefix:@"神戸"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=280010"];
    }else if([msgValue4 hasPrefix:@"豊岡"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=280020"];
    }else if([msgValue4 hasPrefix:@"奈良"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=290010"];
    }else if([msgValue4 hasPrefix:@"風屋"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=290020"];
    }else if([msgValue4 hasPrefix:@"和歌山"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=300010"];
    }else if([msgValue4 hasPrefix:@"潮岬"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=300020"];
    }else if([msgValue4 hasPrefix:@"鳥取"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=310010"];
    }else if([msgValue4 hasPrefix:@"米子"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=310020"];
    }else if([msgValue4 hasPrefix:@"松江"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=320010"];
    }else if([msgValue4 hasPrefix:@"浜田"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=320020"];
    }else if([msgValue4 hasPrefix:@"西郷"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=320030"];
    }else if([msgValue4 hasPrefix:@"岡山"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=330010"];
    }else if([msgValue4 hasPrefix:@"津山"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=330020"];
    }else if([msgValue4 hasPrefix:@"広島"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=340010"];
    }else if([msgValue4 hasPrefix:@"庄原"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=340020"];
    }else if([msgValue4 hasPrefix:@"下関"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=350010"];
    }else if([msgValue4 hasPrefix:@"山口"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=350020"];
    }else if([msgValue4 hasPrefix:@"柳井"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=350030"];
    }else if([msgValue4 hasPrefix:@"萩"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=350040"];
    }else if([msgValue4 hasPrefix:@"徳島"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=360010"];
    }else if([msgValue4 hasPrefix:@"日和佐"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=360020"];
    }else if([msgValue4 hasPrefix:@"高松"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=370000"];
    }else if([msgValue4 hasPrefix:@"松山"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=380010"];
    }else if([msgValue4 hasPrefix:@"新居浜"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=380020"];
    }else if([msgValue4 hasPrefix:@"宇和島"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=380030"];
    }else if([msgValue4 hasPrefix:@"高知"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=390010"];
    }else if([msgValue4 hasPrefix:@"室戸岬"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=390020"];
    }else if([msgValue4 hasPrefix:@"清水"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=390030"];
    }else if([msgValue4 hasPrefix:@"福岡"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=400010"];
    }else if([msgValue4 hasPrefix:@"八幡"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=400020"];
    }else if([msgValue4 hasPrefix:@"飯塚"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=400030"];
    }else if([msgValue4 hasPrefix:@"久留米"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=400040"];
    }else if([msgValue4 hasPrefix:@"佐賀"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=410010"];
    }else if([msgValue4 hasPrefix:@"伊万里"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=410020"];
    }else if([msgValue4 hasPrefix:@"長崎"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=420010"];
    }else if([msgValue4 hasPrefix:@"佐世保"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=420020"];
    }else if([msgValue4 hasPrefix:@"厳原"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=420030"];
    }else if([msgValue4 hasPrefix:@"福江"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=420040"];
    }else if([msgValue4 hasPrefix:@"熊本"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=430010"];
    }else if([msgValue4 hasPrefix:@"阿蘇乙姫"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=430020"];
    }else if([msgValue4 hasPrefix:@"牛深"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=430030"];
    }else if([msgValue4 hasPrefix:@"人吉"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=430040"];
    }else if([msgValue4 hasPrefix:@"大分"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=440010"];
    }else if([msgValue4 hasPrefix:@"中津"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=440020"];
    }else if([msgValue4 hasPrefix:@"日田"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=440030"];
    }else if([msgValue4 hasPrefix:@"佐伯"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=440040"];
    }else if([msgValue4 hasPrefix:@"宮崎"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=450010"];
    }else if([msgValue4 hasPrefix:@"延岡"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=450020"];
    }else if([msgValue4 hasPrefix:@"都城"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=450030"];
    }else if([msgValue4 hasPrefix:@"高千穂"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=450040"];
    }else if([msgValue4 hasPrefix:@"鹿児島"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=460010"];
    }else if([msgValue4 hasPrefix:@"鹿屋"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=460020"];
    }else if([msgValue4 hasPrefix:@"種子島"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=460030"];
    }else if([msgValue4 hasPrefix:@"名瀬"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=460040"];
    }else if([msgValue4 hasPrefix:@"那覇"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=471010"];
    }else if([msgValue4 hasPrefix:@"名護"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=471020"];
    }else if([msgValue4 hasPrefix:@"久米島"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=471030"];
    }else if([msgValue4 hasPrefix:@"南大東"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=472000"];
    }else if([msgValue4 hasPrefix:@"宮古島"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=473000"];
    }else if([msgValue4 hasPrefix:@"石垣島"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=474010"];
    }else if([msgValue4 hasPrefix:@"与那国島"]){
        theURL = [NSURL URLWithString:@"http://weather.livedoor.com/forecast/webservice/json/v1?city=474020"];
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
    NSString *celsius;
    celsius = @"℃";
    max = [[[[[jsonObject objectForKey:@"forecasts"] objectAtIndex:1] objectForKey:@"temperature"] objectForKey:@"max"] objectForKey:@"celsius"];
    mini = [[[[[jsonObject objectForKey:@"forecasts"] objectAtIndex:1] objectForKey:@"temperature"] objectForKey:@"min"] objectForKey:@"celsius"];
    telop = [[[jsonObject objectForKey:@"forecasts"] objectAtIndex:0] objectForKey:@"telop"];
    NSString *imageURL = [[[[jsonObject objectForKey:@"forecasts"] objectAtIndex:0] objectForKey:@"image"] objectForKey:@"url"];
    NSString *str_max = [NSString stringWithFormat:@"%@ %@",max,celsius];
    NSString *str_mini = [NSString stringWithFormat:@"%@ %@",mini,celsius];
    UIImage *img = [UIImage imageWithData:[NSData dataWithContentsOfURL: [NSURL URLWithString: imageURL]]];
    _max.text = str_max;
    _mini.text = str_mini;
    _tenki.text = telop;
    icon.image = img;

    NSLog(@"max = %@ min = %@ AA = %d BB = %d CC = %d, DD = %d", max, mini, AA, BB, CC, DD);
    
    //あつい
    if([max intValue] >=AA ){
       // _fukusou.text = @"半袖がいいと思う！";
        
        NSLog(@"bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb");
        
        Tops.image = [UIImage imageNamed:@"T-Y.png"];
        Bot.image = [UIImage imageNamed:@"Short-B.png"];
        if([max intValue] - [mini intValue] >= 10 )
        {
            if([telop hasPrefix:@"雨"]){
                item.image = [UIImage imageNamed:@"kasa.png"];
            }
            else
            {
                item.image = [UIImage imageNamed:@"Car-G.png"];
            }
        }
    }
    //暖かい
    else if([max intValue] >= BB){
        
        NSLog(@"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
        
        // _fukusou.text = @"半袖だと肌寒く感じるかも";
        //  _Advice.text = @"一枚羽織るものを持とう";
        Tops.image = [UIImage imageNamed:@"T-Pu.png"];
        Bot.image = [UIImage imageNamed:@"Long-K.png"];
        //item.image = [UIImage imageNamed:@"Car-K.png"];
        if([max intValue] - [mini intValue] >= 10 )
        {
            if([telop hasPrefix:@"雨"]){
                item.image = [UIImage imageNamed:@"kasa.png"];
            }
            else
            {
                item.image = [UIImage imageNamed:@"Car-G.png"];
            }
        }
    }
    //涼しい
    else if([mini intValue] >= CC ){
       // _fukusou.text = @"半袖だと肌寒く感じるかも";
      //  _Advice.text = @"一枚羽織るものを持とう";
        Tops.image = [UIImage imageNamed:@"Sh-B.png"];
        //Tops.image = [UIImage imageNamed:@"T-Y.png"];
        Bot.image = [UIImage imageNamed:@"Long-K.png"];

        if([telop hasPrefix:@"雨"]){
            item.image = [UIImage imageNamed:@"kasa.png"];
        }
        else
        {
            item.image = [UIImage imageNamed:@"Car-G.png"];
        }
    }
    //寒い
    else if([mini intValue] >= DD){
        //_fukusou.text = @"長袖がいいと思うよ！";
        //_Advice.text = @"一枚羽織るものを持とう";
        Tops.image = [UIImage imageNamed:@"Out-Gsoft.png"];
        //Tops.image = [UIImage imageNamed:@"Tops-P.png"];
        Bot.image = [UIImage imageNamed:@"Long-K.png"];
        //上着
        if([max intValue] - [mini intValue] >= 10 )
        {
            if([telop hasPrefix:@"雨"]){
                item.image = [UIImage imageNamed:@"kasa.png"];
            }
            else
            {
                item.image = [UIImage imageNamed:@"Car-B.png"];
            }
        }
    }
    //めちゃ寒い
    else {
       // _fukusou.text = @"セーターなど暖かい服を着てね！";
        Tops.image = [UIImage imageNamed:@"Out-P.png"];
        Bot.image = [UIImage imageNamed:@"Long-K.png"];
        //上着
        if([max intValue] - [mini intValue] >= 10 )
        {
            if([telop hasPrefix:@"雪のち晴"]){
                item.image = [UIImage imageNamed:@"kasa.png"];
            }
            else
            {
                item.image = [UIImage imageNamed:@"Car-B.png"];
            }
        }
    }    
    
    // 文字列strの中に@"AAA"というパターンが存在するかどうか
    //NSRange searchResult = [telop rangeOfString:@"曇"];
    //if(searchResult.location != NSNotFound){
        // みつかった場合  画像を指定して表示
        //icon.image = [UIImage imageNamed:@"10.png"];
    //}
    
   // else if(

  /* Tops.image = [UIImage imageNamed:@"Out-P.png"];
    Bot.image = [UIImage imageNamed:@"Long-K.png"];*/
    
    if([telop hasPrefix:@"曇のち雨"]){
        // みつかった場合  画像を指定して表示
        //icon.image = [UIImage imageNamed:@"10.png"];
        //背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"cloud-rain.png"]];
    }
    else if([telop isEqualToString:@"晴れ"]){
        // icon.image = [UIImage imageNamed:@"01.png"];//背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"sun.png"]];
        
    }
    else if([telop hasPrefix:@"晴のち曇"]){
        //icon.image = [UIImage imageNamed:@"02.png"];
        //背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"sun-cloud.png"]];
    }
    else if([telop hasPrefix:@"晴のち雨"]){
        //icon.image = [UIImage imageNamed:@"03.png"];
        //背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"sun-rain.png"]];
    }
    else if([telop hasPrefix:@"晴のち雪"]){
        //icon.image = [UIImage imageNamed:@"04.png"];
        //背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"sun-snow.png"]];
    }
    else if([telop hasPrefix:@"晴時々曇"]){
       // icon.image = [UIImage imageNamed:@"05.png"];
        //背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"sun^cloud.png"]];
    }
    else if([telop hasPrefix:@"晴時々雨"]){
        //icon.image = [UIImage imageNamed:@"06.png"];
        //背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"sun^rain.png"]];
    }
    else if([telop hasPrefix:@"晴時々雪"]){
        icon.image = [UIImage imageNamed:@"07.png"];
    }
    else if([telop isEqualToString:@"曇り"]){
        //icon.image = [UIImage imageNamed:@"08.png"];
        //背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"cloud.png"]];
    }
    else if([telop hasPrefix:@"曇のち晴"]){
       // icon.image = [UIImage imageNamed:@"09.png"];
        //背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"cloud-sun.png"]];
    }
    else if([telop hasPrefix:@"曇のち雪"]){
       // icon.image = [UIImage imageNamed:@"11.png"];
        //背景set
        //self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"cloud^snow.png"]];
    }
    else if([telop hasPrefix:@"曇時々晴"]){
       // icon.image = [UIImage imageNamed:@"12.png"];
        //背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"sun^cloud.png"]];
    }
    else if([telop hasPrefix:@"曇時々雨"]){
        //icon.image = [UIImage imageNamed:@"13.png"];
        //背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"rain^cloud.png"]];
    }
    else if([telop hasPrefix:@"曇時々雪"]){
        //icon.image = [UIImage imageNamed:@"14.png"];
        //背景set 作ってない
        //self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"cloud^rain.png"]];
    }
    else if([telop isEqualToString:@"雨"]){
       // icon.image = [UIImage imageNamed:@"15.png"];
        //背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"rain.png"]];
    }
    else if([telop hasPrefix:@"雨のち晴"]){
       // icon.image = [UIImage imageNamed:@"16.png"];
        //背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"rain-sun.png"]];
    }
    else if([telop hasPrefix:@"雨のち曇"]){
        //icon.image = [UIImage imageNamed:@"17.png"];
        //背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"rain-cloud.png"]];
    }
    else if([telop hasPrefix:@"雨のち雪"]){
        //icon.image = [UIImage imageNamed:@"18.png"];
        //背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"rain-snow.png"]];
    }
    else if([telop hasPrefix:@"雨時々晴"]){
        //icon.image = [UIImage imageNamed:@"19.png"];
        //背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"sun^rain.png"]];
    }
    else if([telop hasPrefix:@"雨時々曇"]){
        //icon.image = [UIImage imageNamed:@"20.png"];
        //背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"rain^cloud.png"]];
    }
    else if([telop hasPrefix:@"雨時々雪"]){
        //icon.image = [UIImage imageNamed:@"21.png"];
        //背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"rain^snow.png"]];
    }
    else if([telop isEqualToString:@"雪"]){
        //icon.image = [UIImage imageNamed:@"22.png"];
        //背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"snow.png"]];
    }
    else if([telop hasPrefix:@"雪のち晴"]){
        //icon.image = [UIImage imageNamed:@"23.png"];//背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"snow-sun.png"]];
        
    }
    else if([telop hasPrefix:@"雪のち曇"]){
        //icon.image = [UIImage imageNamed:@"24.png"];
        //背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"snow-cloud.png"]];
    }
    else if([telop hasPrefix:@"雪のち晴"]){
        //icon.image = [UIImage imageNamed:@"25.png"];
        //背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"snow-sun.png"]];
    }
    else if([telop hasPrefix:@"雪時々晴"]){
       // icon.image = [UIImage imageNamed:@"26.png"];
        //背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"sun^snowpng.png"]];
    }
    else if([telop hasPrefix:@"雪時々曇"]){
       // icon.image = [UIImage imageNamed:@"27.png"];
        //背景set作ってない
        //self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"snow^cloud.png"]];
    }
    else if([telop hasPrefix:@"雪時々雨"]){
        //icon.image = [UIImage imageNamed:@"28.png"];
        //背景set
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"rain^snow.png"]];
    }
    else if([telop hasPrefix:@"台風"]){
        //icon.image = [UIImage imageNamed:@"29.png"];
        //背景set つくってないよー
        //self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"nofile.png"]];
    }
    
    
    // ぐるぐる停止
    [indicator stopAnimating];
    NSLog(@"%d",[indicator isAnimating]);
    
    // 画面から除去して黒い半透明を消す
    [loadingView removeFromSuperview];




    /*NSRange searchResult = [telop rangeOfString:@"曇"];
    if(searchResult.location != NSNotFound){
        // みつかった場合  画像を指定して表示
        icon.image = [UIImage imageNamed:@"10.png"];
    }
    
    NSRange searchResult = [telop rangeOfString:@"曇のち雨"];
    if(searchResult.location != NSNotFound){
        // みつかった場合  画像を指定して表示
        icon.image = [UIImage imageNamed:@"10.png"];
    }*/
    
    
    
    //_test.frame = CGRectMake(0, 0, 320, 50);
    //_test.center = self.view.center;
}


bool push =0;
- (IBAction)Play:(id)sender {
    NSLog(@"%@", telop);
    if([telop hasPrefix:@"晴"]){
        if(push==0)
        {
            NSString *bgmPath = [[NSBundle mainBundle] pathForResource:@"sun02" ofType:@"m4a"];
            NSURL *bgmUrl = [NSURL fileURLWithPath:bgmPath];
            sound = [[AVAudioPlayer alloc] initWithContentsOfURL:bgmUrl error:nil];
            [sound setNumberOfLoops:0];//0なら１かいだけ、−１ならエンドレス
            [sound play];
           // push ++;
        }
        else
        {
            NSString *bgmPath = [[NSBundle mainBundle] pathForResource:@"sun02" ofType:@"m4a"];
            NSURL *bgmUrl = [NSURL fileURLWithPath:bgmPath];
            sound = [[AVAudioPlayer alloc] initWithContentsOfURL:bgmUrl error:nil];
            [sound setNumberOfLoops:0];//0なら１かいだけ、−１ならエンドレス
            [sound stop];
            push--;
        }
          
    }else if([telop hasPrefix:@"曇"]){
        if(push==0)
        {
            NSString *bgmPath = [[NSBundle mainBundle] pathForResource:@"cloud01" ofType:@"m4a"];
            NSURL *bgmUrl = [NSURL fileURLWithPath:bgmPath];
            sound = [[AVAudioPlayer alloc] initWithContentsOfURL:bgmUrl error:nil];
            [sound setNumberOfLoops:0];//0なら１かいだけ、−１ならエンドレス
            [sound play];
          //  push ++;
        }
        else
        {
            NSString *bgmPath = [[NSBundle mainBundle] pathForResource:@"cloud01" ofType:@"m4a"];
            NSURL *bgmUrl = [NSURL fileURLWithPath:bgmPath];
            sound = [[AVAudioPlayer alloc] initWithContentsOfURL:bgmUrl error:nil];
            [sound setNumberOfLoops:0];//0なら１かいだけ、−１ならエンドレス
            [sound stop];
            push--;
        }
    }else if([telop hasPrefix:@"雨"]){
        if(push==0)
        {
            NSString *bgmPath = [[NSBundle mainBundle] pathForResource:@"rain02" ofType:@"m4a"];
            NSURL *bgmUrl = [NSURL fileURLWithPath:bgmPath];
            sound = [[AVAudioPlayer alloc] initWithContentsOfURL:bgmUrl error:nil];
            [sound setNumberOfLoops:0];//0なら１かいだけ、−１ならエンドレス
            [sound play];
           // push ++;
        }
        else
        {
            NSString *bgmPath = [[NSBundle mainBundle] pathForResource:@"rain02" ofType:@"m4a"];
            NSURL *bgmUrl = [NSURL fileURLWithPath:bgmPath];
            sound = [[AVAudioPlayer alloc] initWithContentsOfURL:bgmUrl error:nil];
            [sound setNumberOfLoops:0];//0なら１かいだけ、−１ならエンドレス
            [sound stop];
            push--;
        }
    }
    
    //[sound stop];
}

- (IBAction)goToSet_ViewController:(id)sender
{
    Set_ViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Set_ViewController"];
    viewController.delagete = self;
    
    [self.navigationController pushViewController:viewController animated:YES];
}

- (void)backFromSet_ViewController:(NSArray *)array
{
    //int i =[[array objectAtIndex:0] intValue];
    
    [self.navigationController popViewControllerAnimated:YES];
    
    for (NSNumber *num in array) {
        NSLog(@"%@度", num);
    }
    AA = [[array objectAtIndex:0] intValue];
    BB = [[array objectAtIndex:1] intValue];
    CC = [[array objectAtIndex:2] intValue];
    DD = [[array objectAtIndex:3] intValue];
    //[self connectionDidFinishLoading:(NSURLConnection *)connection]
   // NSString *str = [self connectionDidFinishLoading:connection];
    
    [self createConnection];
}


- (IBAction)pushBtn:(id)sender {
    //Set_ViewController.msgValue5 = msgValue4;
    //[self performSegueWithIdentifier:@"Set" sender:self];
}

//Set_ViewController.msgValue5 = msgValue4;


@end
