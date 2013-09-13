//
//  area03_checkmate_tenkiViewController.m
//  Checkmate_tenki
//
//  Created by Seiya Hoshi on 2013/09/06.
//  Copyright (c) 2013年 Seiya Hoshi. All rights reserved.
//

#import "area03_checkmate_tenkiViewController.h"
#import "area04_checkmate_tenkiViewController.h"
#import "Set_ViewController.h"

@interface area03_checkmate_tenkiViewController ()

@end

@implementation area03_checkmate_tenkiViewController
@synthesize msgValue3;

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
    self.tableView3.delegate = self;
    self.tableView3.dataSource = self;
    self.title = msgValue3;
    [self setBarButtonItems1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - tableView datasource

//セクション毎の行数を指定
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger i = 0;
    if([msgValue3 hasPrefix:@"道北"]){
        i = 3;
    }else if ([msgValue3 hasPrefix:@"道東"]){
        i = 6;
    }else if ([msgValue3 hasPrefix:@"道央"]){
        i = 3;
    }else if ([msgValue3 hasPrefix:@"道南"]){
        i = 4;
    }else if ([msgValue3 hasPrefix:@"青森"]){
        i = 3;
    }else if ([msgValue3 hasPrefix:@"岩手"]){
        i = 3;
    }else if ([msgValue3 hasPrefix:@"宮城"]){
        i = 2;
    }else if ([msgValue3 hasPrefix:@"秋田"]){
        i = 2;
    }else if ([msgValue3 hasPrefix:@"山形"]){
        i = 4;
    }else if ([msgValue3 hasPrefix:@"福島"]){
        i = 3;
    }else if ([msgValue3 hasPrefix:@"茨城"]){
        i = 2;
    }else if ([msgValue3 hasPrefix:@"栃木"]){
        i = 2;
    }else if ([msgValue3 hasPrefix:@"群馬"]){
        i = 2;
    }else if ([msgValue3 hasPrefix:@"埼玉"]){
        i = 3;
    }else if ([msgValue3 hasPrefix:@"千葉"]){
        i = 3;
    }else if ([msgValue3 hasPrefix:@"東京"]){
        i = 4;
    }else if ([msgValue3 hasPrefix:@"神奈川"]){
        i = 2;
    }else if ([msgValue3 hasPrefix:@"新潟"]){
        i = 4;
    }else if ([msgValue3 hasPrefix:@"富山"]){
        i = 2;
    }else if ([msgValue3 hasPrefix:@"石川"]){
        i = 2;
    }
    else if ([msgValue3 hasPrefix:@"福井"]){
        i = 2;
    }else if ([msgValue3 hasPrefix:@"山梨"]){
        i = 2;
    }else if ([msgValue3 hasPrefix:@"長野"]){
        i = 3;
    }else if ([msgValue3 hasPrefix:@"岐阜"]){
        i = 2;
    }else if ([msgValue3 hasPrefix:@"静岡"]){
        i = 4;
    }else if ([msgValue3 hasPrefix:@"愛知"]){
        i = 2;
    }else if ([msgValue3 hasPrefix:@"三重"]){
        i = 2;
    }else if ([msgValue3 hasPrefix:@"滋賀"]){
        i = 2;
    }else if ([msgValue3 hasPrefix:@"京都"]){
        i = 2;
    }else if ([msgValue3 hasPrefix:@"大阪"]){
        i = 1;
    }else if ([msgValue3 hasPrefix:@"兵庫"]){
        i = 2;
    }else if ([msgValue3 hasPrefix:@"奈良"]){
        i = 2;
    }else if ([msgValue3 hasPrefix:@"和歌山"]){
        i = 2;
    }else if ([msgValue3 hasPrefix:@"鳥取"]){
        i = 2;
    }else if ([msgValue3 hasPrefix:@"島根"]){
        i = 3;
    }else if ([msgValue3 hasPrefix:@"岡山"]){
        i = 2;
    }else if ([msgValue3 hasPrefix:@"広島"]){
        i = 2;
    }else if ([msgValue3 hasPrefix:@"山口"]){
        i = 4;
    }else if ([msgValue3 hasPrefix:@"徳島"]){
        i = 2;
    }else if ([msgValue3 hasPrefix:@"香川"]){
        i = 1;
    }else if ([msgValue3 hasPrefix:@"愛媛"]){
        i = 3;
    }else if ([msgValue3 hasPrefix:@"高知"]){
        i = 3;
    }else if ([msgValue3 hasPrefix:@"福岡"]){
        i = 4;
    }else if ([msgValue3 hasPrefix:@"佐賀"]){
        i = 2;
    }else if ([msgValue3 hasPrefix:@"長崎"]){
        i = 4;
    }else if ([msgValue3 hasPrefix:@"熊本"]){
        i = 4;
    }else if ([msgValue3 hasPrefix:@"大分"]){
        i = 4;
    }else if ([msgValue3 hasPrefix:@"宮崎"]){
        i = 4;
    }else if ([msgValue3 hasPrefix:@"鹿児島"]){
        i = 4;
    }else if ([msgValue3 hasPrefix:@"沖縄"]){
        i = 7;
    }

    return i;
}


//セルの内容を返す
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //IB上のCellのidentifireと一致させること！
    UITableViewCell *cell;
    if([msgValue3 hasPrefix:@"道北"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_hokaido480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"稚内",@"旭川",@"留萌",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
    }else if ([msgValue3 hasPrefix:@"道東"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_hokaido480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"網走",@"北見",@"紋別",@"根室",@"釧路",@"帯広",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
    }else if ([msgValue3 hasPrefix:@"道央"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_hokaido480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"札幌",@"岩見沢",@"倶知安",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
    }else if ([msgValue3 hasPrefix:@"道南"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_hokaido480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"室蘭",@"浦河",@"函館",@"江差",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
    }else if ([msgValue3 hasPrefix:@"青森"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_aomori480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"青森",@"むつ",@"八戸",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"岩手"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_iwate480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"盛岡",@"宮古",@"大船渡",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"宮城"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_miyagi480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"仙台",@"白石",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"秋田"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_akita480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"秋田",@"横手",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"山形"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_yamagata480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"山形",@"米沢",@"酒田",@"新庄",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"福島"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_fukusima480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"福島",@"小名浜",@"若松",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"茨城"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_ibaragi480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"水戸",@"土浦",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"栃木"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_tochigi480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"宇都宮",@"大田原",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"群馬"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_gunma480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"前橋",@"みなかみ",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"埼玉"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_saitama480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"さいたま",@"熊谷",@"秩父",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"千葉"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_chiba480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"千葉",@"銚子",@"館山",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"東京"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_tokyo480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"東京",@"大島",@"八丈島",@"父島",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"神奈川"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_kanagawa480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"横浜",@"小田原",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"新潟"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_niigata480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"新潟",@"長岡",@"高田",@"相川",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"富山"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_toyama480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"富山",@"伏木",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"石川"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_isikawa480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"金沢",@"輪島",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }
    else if ([msgValue3 hasPrefix:@"福井"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_fukui480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"福井",@"敦賀",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"山梨"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_yamanasi480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"甲府",@"河口湖",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"長野"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_nagano480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"長野",@"松本",@"飯田",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"岐阜"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_gifu480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"岐阜",@"高山",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"静岡"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_sizuoka480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"静岡",@"綱代",@"三島",@"浜松",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"愛知"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_aichi480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"名古屋",@"豊橋",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"三重"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_mie480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"津",@"尾鷲",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"滋賀"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_siga480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"大津",@"彦根",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"京都"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_kyoto480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"京都",@"舞鶴",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"大阪"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_osaka480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"大阪",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"兵庫"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_hyogo480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"神戸",@"豊岡",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"奈良"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_nara480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"奈良",@"風屋",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"和歌山"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_wakayama480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"和歌山",@"潮岬",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"鳥取"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_tottori480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"鳥取",@"米子",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"島根"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_simane480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"松江",@"浜田",@"西郷",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"岡山"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_okayama480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"岡山",@"津山",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"広島"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_hirosima480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"広島",@"庄原",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"山口"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_yamaguchi480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"下関",@"山口",@"柳井",@"荻",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"徳島"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_tokusima480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"徳島",@"日和佐",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"香川"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_kagawa480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"高松",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"愛媛"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_ehime480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"松山",@"新居浜",@"宇和島",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"高知"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_kouchi480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"高知",@"室戸岬",@"清水",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"福岡"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_fukuoka480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        NSArray *array = [NSArray arrayWithObjects:
                          @"福岡",@"八幡",@"飯塚",@"久留米",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"佐賀"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_saga480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"佐賀",@"伊万里",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"長崎"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_nagasaki480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"長崎",@"佐世保",@"厳原",@"福江",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"熊本"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_kumamoto480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"熊本",@"阿蘇乙姫",@"牛深",@"人吉",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"大分"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_ooita480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"大分",@"中津",@"日田",@"佐伯",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"宮崎"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_miyazaki480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"宮崎",@"延岡",@"都城",@"高千穂",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"鹿児島"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_kagosima480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"鹿児島",@"鹿屋",@"種子島",@"名瀬",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }else if ([msgValue3 hasPrefix:@"沖縄"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"map_okinawa480.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView3];
        
        
        self.tableView3.backgroundColor = [UIColor clearColor];
        self.tableView3.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"那覇",@"名護",@"久米島",@"南大東",@"宮古島",@"石垣島",@"与那国島",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
        
    }
    return cell;
    
}




//セルがクリックされたら呼び出されるメソッド
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"押されたセル：%d",indexPath.row);
    //遷移先のStoryboard IDを記述
    NSArray *transitionArray = [NSArray arrayWithObjects:
                                @"area04_checkmate_tenkiViewController",
                                nil];
    
    //これ付け加えるやつーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
    area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];    
    area04_checkmate_tenkiViewController.isLoaded = NO;
    //ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
    
    //押されたセルの番地が０だったら実行
    if([msgValue3 hasPrefix:@"道北"]){
        if(indexPath.row == 0)
        {
           // area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            //area04_checkmate_tenkiViewController.isLoaded = NO;
            area04_checkmate_tenkiViewController.msgValue4 = @"稚内";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
           // area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"旭川";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
            //area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"留萌";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
    }else if ([msgValue3 hasPrefix:@"道東"]){
        if(indexPath.row == 0)
        {
          //  area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"網走";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
          //  area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"北見";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
            //area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"紋別";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 3)
        {
            //area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"根室";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 4)
        {
            //area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"釧路";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 5)
        {
           // area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"帯広";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"道央"]){
        if(indexPath.row == 0)
        {
            //area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"札幌";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
            //area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"岩見沢";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
         //   area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"倶知安";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    }else if ([msgValue3 hasPrefix:@"道南"]){
        if(indexPath.row == 0)
        {
           // area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"室蘭";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
       //     area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"浦河";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
         //   area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"函館";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 3)
        {
           // area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"江差";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    }else if ([msgValue3 hasPrefix:@"青森"]){
        if(indexPath.row == 0)
        {
    //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"青森";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
      //      area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"むつ";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
        //    area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"八戸";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    }else if ([msgValue3 hasPrefix:@"岩手"]){
        if(indexPath.row == 0)
        {
          //  area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"盛岡";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
            //area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"宮古";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
//            area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"大船渡";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    }else if ([msgValue3 hasPrefix:@"宮城"]){
        if(indexPath.row == 0)
        {
  //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"仙台";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
    //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"白石";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"秋田"]){
        if(indexPath.row == 0)
        {
      //      area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"秋田";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
        //    area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"横手";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"山形"]){
        if(indexPath.row == 0)
        {
          //  area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"山形";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
            //area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"米沢";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
//            area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"酒田";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 3)
        {
//            area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"新庄";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    }else if ([msgValue3 hasPrefix:@"福島"]){
        if(indexPath.row == 0)
        {
  //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"福島";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
    //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"小名浜";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
      //      area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"若松";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    }else if ([msgValue3 hasPrefix:@"茨城"]){
        if(indexPath.row == 0)
        {
        //    area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"水戸";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
          //  area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"土浦";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"栃木"]){
        if(indexPath.row == 0)
        {
            //area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"宇都宮";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
//            area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"大田原";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"群馬"]){
        if(indexPath.row == 0)
        {
  //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"前橋";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
    //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"みなかみ";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"埼玉"]){
        if(indexPath.row == 0)
        {
      //      area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"さいたま";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
        //    area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"熊谷";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
          //  area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"秩父";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"千葉"]){
        if(indexPath.row == 0)
        {
//            area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"千葉";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
  //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"銚子";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
    //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"館山";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    }else if ([msgValue3 hasPrefix:@"東京"]){
        if(indexPath.row == 0)
        {
      //      area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"東京";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
        //    area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"大島";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
          //  area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"八丈島";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 3)
        {
            //area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"秩父";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    }else if ([msgValue3 hasPrefix:@"神奈川"]){
        if(indexPath.row == 0)
        {
//            area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"横浜";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
  //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"小田原";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"新潟"]){
        if(indexPath.row == 0)
        {
    //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"新潟";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
      //      area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"長岡";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
        //    area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"高田";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 3)
        {
          //  area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"相川";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    }else if ([msgValue3 hasPrefix:@"富山"]){
        if(indexPath.row == 0)
        {
            //area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"富山";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
//            area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"伏木";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"石川"]){
        if(indexPath.row == 0)
        {
  //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"金沢";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
   //         area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"輪島";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }
    else if ([msgValue3 hasPrefix:@"福井"]){
        if(indexPath.row == 0)
        {
    //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"福井";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
      //      area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"敦賀";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"山梨"]){
        if(indexPath.row == 0)
        {
        //    area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"甲府";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
          //  area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"河口湖";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"長野"]){
        if(indexPath.row == 0)
        {
            //area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"長野";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
//            area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"松本";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
  //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"飯田";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    }else if ([msgValue3 hasPrefix:@"岐阜"]){
        if(indexPath.row == 0)
        {
    //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"岐阜";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
      //      area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"高山";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"静岡"]){
        if(indexPath.row == 0)
        {
        //    area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"静岡";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
          //  area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"綱代";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
            //area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"三島";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 3)
        {
//            area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"浜松";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    }else if ([msgValue3 hasPrefix:@"愛知"]){
        if(indexPath.row == 0)
        {
  //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"名古屋";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
    //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"豊橋";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"三重"]){
        if(indexPath.row == 0)
        {
      //      area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"津";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
        //    area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"尾鷲";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"滋賀"]){
        if(indexPath.row == 0)
        {
          //  area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"大津";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
            //area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"彦根";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"京都"]){
        if(indexPath.row == 0)
        {
//            area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"京都";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
  //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"舞鶴";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"大阪"]){
        if(indexPath.row == 0)
        {
    //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"大阪";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    }else if ([msgValue3 hasPrefix:@"兵庫"]){
        if(indexPath.row == 0)
        {
      //      area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"神戸";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
        //    area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"豊岡";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"奈良"]){
        if(indexPath.row == 0)
        {
          //  area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"奈良";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
            //area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"風屋";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"和歌山"]){
        if(indexPath.row == 0)
        {
           // area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"和歌山";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
//            area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"潮岬";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"鳥取"]){
        if(indexPath.row == 0)
        {
  //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"鳥取";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
   //         area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"米子";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"島根"]){
        if(indexPath.row == 0)
        {
    //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"松江";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
    //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"浜田";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
    //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"西郷";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    }else if ([msgValue3 hasPrefix:@"岡山"]){
        if(indexPath.row == 0)
        {
    //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"岡山";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
     //         area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"津山";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"広島"]){
        if(indexPath.row == 0)
        {
     //         area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"広島";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
      //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"庄原";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"山口"]){
        if(indexPath.row == 0)
        {
      //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"下関";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
      //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"山口";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
      //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"柳井";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 3)
        {
       //       area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"荻";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    }else if ([msgValue3 hasPrefix:@"徳島"]){
        if(indexPath.row == 0)
        {
      //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"徳島";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
      //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"日和佐";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"香川"]){
        if(indexPath.row == 0)
        {
      //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"高松";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    }else if ([msgValue3 hasPrefix:@"愛媛"]){
        if(indexPath.row == 0)
        {
      //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"松山";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
       //       area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"新居浜";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
       //       area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"宇和島";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    }else if ([msgValue3 hasPrefix:@"高知"]){
        if(indexPath.row == 0)
        {
      //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"高知";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
    //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"室戸岬";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
    //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"清水";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    }else if ([msgValue3 hasPrefix:@"福岡"]){
        if(indexPath.row == 0)
        {
    //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"福岡";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
    //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"八幡";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
    //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"飯塚";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 3)
        {
    //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"久留米";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    }else if ([msgValue3 hasPrefix:@"佐賀"]){
        if(indexPath.row == 0)
        {
    //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"佐賀";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
     //         area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"伊万里";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }
        
    }else if ([msgValue3 hasPrefix:@"長崎"]){
        if(indexPath.row == 0)
        {
   //           area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"長崎";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
   //           area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"佐世保";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
   //           area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"厳原";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 3)
        {
    //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"福江";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    }else if ([msgValue3 hasPrefix:@"熊本"]){
        if(indexPath.row == 0)
        {
     //         area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"熊本";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
     //         area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"阿蘇乙姫";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
     //         area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"牛深";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 3)
        {
     //         area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"人吉";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    }else if ([msgValue3 hasPrefix:@"大分"]){
        if(indexPath.row == 0)
        {
     //         area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"大分";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
      //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"中津";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
      //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"日田";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 3)
        {
      //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"佐伯";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    }else if ([msgValue3 hasPrefix:@"宮崎"]){
        if(indexPath.row == 0)
        {
      //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"宮崎";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
      //        area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"延岡";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
        //      area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"都城";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 3)
        {
        //      area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"高千穂";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    }else if ([msgValue3 hasPrefix:@"鹿児島"]){
        if(indexPath.row == 0)
        {
    //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"鹿児島";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
    //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"鹿屋";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
     //         area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"種子島";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 3)
        {
     //         area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"名瀬";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    }else if ([msgValue3 hasPrefix:@"沖縄"]){
        if(indexPath.row == 0)
        {
      //      area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"那覇";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
   //           area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"名護";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
   //           area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"久米島";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 3)
        {
    //          area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"南大東";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 4)
        {
   //           area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"宮古島";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 5)
        {
  //            area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"石垣島";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 6)
        {
 //           area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"与那国島";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }
        
    
    }
}




- (void) setBarButtonItems1
{
    UIBarButtonItem *barButtonItem1 = [[UIBarButtonItem alloc] initWithTitle:@"個人設定" style:UIBarButtonItemStyleBordered target:self action:@selector(buttonEvent1:)];
    //initWithBarButtonSystemItem:UIBarButtonSystemItemAction
    //target:self action:@selector(buttonEvent1:)];
    
    // animated:YESでItemを設定する
    [self.navigationController.toolbar setItems:[NSArray arrayWithObjects:barButtonItem1, nil] animated:YES];    // (1)
    self.navigationItem.rightBarButtonItem = barButtonItem1;
}



- (void) buttonEvent1:(id)sender
{
    
    Set_ViewController *svc = [self.storyboard instantiateViewControllerWithIdentifier:@"Set_ViewController"];
    [self.navigationController pushViewController:svc animated:YES];
    
}







@end
