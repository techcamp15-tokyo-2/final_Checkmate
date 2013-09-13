//
//  area02_checkmate_tenkiViewController.m
//  Checkmate_tenki
//
//  Created by Seiya Hoshi on 2013/09/06.
//  Copyright (c) 2013年 Seiya Hoshi. All rights reserved.
//

#import "area02_checkmate_tenkiViewController.h"
#import "area03_checkmate_tenkiViewController.h"
#import "area04_checkmate_tenkiViewController.h"
#import "Set_ViewController.h"

@interface area02_checkmate_tenkiViewController ()

@end

@implementation area02_checkmate_tenkiViewController
@synthesize msgValue2;

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
    self.tableView2.delegate = self;
    self.tableView2.dataSource = self;
    self.title = msgValue2;
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
    if([msgValue2 hasPrefix:@"北海道"]){
        i = 4;
    }else if ([msgValue2 hasPrefix:@"東北"]){
        i = 6;
    }else if ([msgValue2 hasPrefix:@"関東"]){
        i = 7;
    }else if ([msgValue2 hasPrefix:@"中部"]){
        i = 9;
    }else if ([msgValue2 hasPrefix:@"近畿"]){
        i = 7;
    }else if([msgValue2 hasPrefix:@"中国"]){
        i = 5;
    }else if ([msgValue2 hasPrefix:@"四国"]){
        i = 4;
    }else if ([msgValue2 hasPrefix:@"九州"]){
        i = 8;
    }
    return i;
}

//セルの内容を返す
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //IB上のCellのidentifireと一致させること！
    UITableViewCell *cell;
    if([msgValue2 hasPrefix:@"北海道"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"b_90_hokkaido_800p.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView2];
        
        
        self.tableView2.backgroundColor = [UIColor clearColor];
        self.tableView2.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"道北",@"道東",@"道央",@"道南",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
    }else if ([msgValue2 hasPrefix:@"東北"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"b_91_tohoku_800p.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView2];
        
        
        self.tableView2.backgroundColor = [UIColor clearColor];
        self.tableView2.backgroundView = nil;
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"青森県",@"岩手県",@"宮城県",@"秋田県",@"山形県",@"福島県",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
    }else if ([msgValue2 hasPrefix:@"関東"]){
        
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"b_92_kanto_800p.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView2];
        
        
        self.tableView2.backgroundColor = [UIColor clearColor];
        self.tableView2.backgroundView = nil;
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"茨城県",@"栃木県",@"群馬県",@"埼玉県",@"千葉県",@"東京都",@"神奈川県",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
    }else if ([msgValue2 hasPrefix:@"中部"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"b_93_hokuriku_800p.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView2];
        
        
        self.tableView2.backgroundColor = [UIColor clearColor];
        self.tableView2.backgroundView = nil;
        
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"新潟県",@"富山県",@"石川県",@"福井県",@"山梨県",@"長野県",@"岐阜県",@"静岡県",@"愛知県",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
    }else if ([msgValue2 hasPrefix:@"近畿"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"b_95_kinki_800p.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView2];
        
        
        self.tableView2.backgroundColor = [UIColor clearColor];
        self.tableView2.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"三重県",@"滋賀県",@"京都府",@"大阪府",@"兵庫県",@"奈良県",@"和歌山県",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
    }else if([msgValue2 hasPrefix:@"中国"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"b_96_chugoku_500p.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView2];
        
        
        self.tableView2.backgroundColor = [UIColor clearColor];
        self.tableView2.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"鳥取県",@"島根県",@"岡山県",@"広島県",@"山口県",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
    }else if ([msgValue2 hasPrefix:@"四国"]){
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"b_96_chugoku_500p.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView2];
        
        
        self.tableView2.backgroundColor = [UIColor clearColor];
        self.tableView2.backgroundView = nil;
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"徳島県",@"香川県",@"愛媛県",@"高知県",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
    }else if ([msgValue2 hasPrefix:@"九州"]){
        
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"b_97_kyushu_500p.gif"] ];
        
        backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        [self.view insertSubview:backgroundImage belowSubview:_tableView2];
        
        
        self.tableView2.backgroundColor = [UIColor clearColor];
        self.tableView2.backgroundView = nil;
        
        
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"福岡県",@"佐賀県",@"長崎県",@"熊本県",@"大分県",@"宮崎県",@"鹿児島県",@"沖縄県",nil];
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
                                @"area03_checkmate_tenkiViewController",
                                nil];
    //押されたセルの番地が０だったら実行
    if([msgValue2 hasPrefix:@"北海道"]){
        if(indexPath.row == 0) 
        {
            area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area03_checkmate_tenkiViewController.msgValue3 = @"道北";
            [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
            area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area03_checkmate_tenkiViewController.msgValue3 = @"道東";
            [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];

        }else if (indexPath.row == 2)
        {
            area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area03_checkmate_tenkiViewController.msgValue3 = @"道央";
            [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 3)
        {
            area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area03_checkmate_tenkiViewController.msgValue3 = @"道南";
            [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
        }
    }else if([msgValue2 hasPrefix:@"東北"])
        {
            if(indexPath.row == 0)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"青森県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            }else if (indexPath.row == 1)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"岩手県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
                
            }else if (indexPath.row == 2)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"宮城県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
                
            }else if (indexPath.row == 3)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"秋田県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            }else if (indexPath.row == 4)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"山形県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
                
            }else if (indexPath.row == 5)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"福島県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            }
        }else if([msgValue2 hasPrefix:@"関東"])
        {
            if(indexPath.row == 0)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"茨城県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            }else if (indexPath.row == 1)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"栃木県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
                
            }else if (indexPath.row == 2)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"群馬県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
                
            }else if (indexPath.row == 3)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"埼玉県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            }else if (indexPath.row == 4)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"千葉県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
                
            }else if (indexPath.row == 5)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"東京都";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            }else if (indexPath.row == 6)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"神奈川県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            }
        }else if ([msgValue2 hasPrefix:@"中部"]){
            if(indexPath.row == 0)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"新潟県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            }else if (indexPath.row == 1)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"富山県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
                
            }else if (indexPath.row == 2)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"石川県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
                
            }else if (indexPath.row == 3)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"福井県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            }else if (indexPath.row == 4)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"山梨県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
                
            }else if (indexPath.row == 5)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"長野県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            }else if (indexPath.row == 6)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"岐阜県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            }else if (indexPath.row == 7)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"静岡県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
                
            }else if (indexPath.row == 8)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"愛知県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
                
            }
        }else if ([msgValue2 hasPrefix:@"近畿"]){
            if(indexPath.row == 0)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 =  @"三重県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            }else if (indexPath.row == 1)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 =  @"滋賀県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
                
            }else if (indexPath.row == 2)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 =  @"京都府";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
                
            }else if (indexPath.row == 3)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 =  @"大阪府";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            }else if (indexPath.row == 4)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 =  @"兵庫県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
                
            }else if (indexPath.row == 5)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 =  @"奈良県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            }else if (indexPath.row == 6)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"和歌山県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            }
            
        }else if([msgValue2 hasPrefix:@"中国"]){
            if(indexPath.row == 0)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 =  @"鳥取県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            }else if (indexPath.row == 1)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 =  @"島根県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
                
            }else if (indexPath.row == 2)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 =  @"岡山県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
                
            }else if (indexPath.row == 3)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 =  @"広島県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            }else if (indexPath.row == 4)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 =  @"山口県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
                
            }
        }else if ([msgValue2 hasPrefix:@"四国"]){
            if(indexPath.row == 0)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 =  @"徳島県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            }else if (indexPath.row == 1)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 =  @"香川県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
                
            }else if (indexPath.row == 2)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 =  @"愛媛県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
                
            }else if (indexPath.row == 3)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 =  @"高知県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            }
            
        }else if ([msgValue2 hasPrefix:@"九州"]){
            if(indexPath.row == 0)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"福岡県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            }else if (indexPath.row == 1)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"佐賀県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
                
            }else if (indexPath.row == 2)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"長崎県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
                
            }else if (indexPath.row == 3)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"熊本県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            }else if (indexPath.row == 4)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"大分県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
                
            }else if (indexPath.row == 5)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"宮崎県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            }else if (indexPath.row == 6)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"鹿児島県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
            }else if (indexPath.row == 7)
            {
                area03_checkmate_tenkiViewController *area03_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
                
                area03_checkmate_tenkiViewController.msgValue3 = @"沖縄県";
                [self.navigationController pushViewController:area03_checkmate_tenkiViewController animated:YES];
                
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
