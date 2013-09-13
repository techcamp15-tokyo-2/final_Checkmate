//
//  area01_checkmate_tenkiViewController.m
//  Checkmate_tenki
//
//  Created by Seiya Hoshi on 2013/09/06.
//  Copyright (c) 2013年 Seiya Hoshi. All rights reserved.
//

#import "area01_checkmate_tenkiViewController.h"
#import "area02_checkmate_tenkiViewController.h"
#import "area04_checkmate_tenkiViewController.h"
#import "GPS_checkmate_tenkiViewController.h"
#import "Set_ViewController.h"

@interface area01_checkmate_tenkiViewController ()

@end

@implementation area01_checkmate_tenkiViewController

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
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    
    UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"japan_800.gif"] ];
    backgroundImage.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    [self.view insertSubview:backgroundImage belowSubview:_tableView];
    
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundView = nil;

    
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
    return 8;
}

//セルの内容を返す
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //IB上のCellのidentifireと一致させること！
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSArray *array = [NSArray arrayWithObjects:
                      @"北海道地方",@"東北地方",@"関東地方",@"中部地方",@"近畿地方",@"中国地方",@"四国地方",@"九州地方",nil];
    //標準のセル（UITableViewCell)のテキストラベルに文字を指定
    cell.textLabel.text = array[indexPath.row];
    return cell;
}

//セルがクリックされたら呼び出されるメソッド
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"押されたセル：%d",indexPath.row);
    //遷移先のStoryboard IDを記述
    NSArray *transitionArray = [NSArray arrayWithObjects:
                                @"area02_checkmate_tenkiViewController",
                                @"area02_checkmate_tenkiViewController",
                                @"area02_checkmate_tenkiViewController",
                                @"area02_checkmate_tenkiViewController",
                                @"area02_checkmate_tenkiViewController",
                                @"area02_checkmate_tenkiViewController",
                                @"area02_checkmate_tenkiViewController",
                                @"area02_checkmate_tenkiViewController",
                                @"area02_checkmate_tenkiViewController",
                                nil];
    //押されたセルの番地が０だったら実行
    if(indexPath.row == 0)
    {
        area02_checkmate_tenkiViewController *area02_checkmate_tenkiViewController = [self.storyboard instantiateViewControllerWithIdentifier:transitionArray[indexPath.row]];

        area02_checkmate_tenkiViewController.msgValue2 = @"北海道地方";
        [self.navigationController pushViewController:area02_checkmate_tenkiViewController animated:YES];
    }else if(indexPath.row == 1)
    {
        area02_checkmate_tenkiViewController *area02_checkmate_tenkiViewController = [self.storyboard instantiateViewControllerWithIdentifier:transitionArray[indexPath.row]];
        
        area02_checkmate_tenkiViewController.msgValue2 = @"東北地方";
        [self.navigationController pushViewController:area02_checkmate_tenkiViewController animated:YES];
        
    }else if(indexPath.row == 2)
    {
        area02_checkmate_tenkiViewController *area02_checkmate_tenkiViewController = [self.storyboard instantiateViewControllerWithIdentifier:transitionArray[indexPath.row]];
        
        area02_checkmate_tenkiViewController.msgValue2 = @"関東地方";
        [self.navigationController pushViewController:area02_checkmate_tenkiViewController animated:YES];
        
    }else if(indexPath.row == 3)
    {
        area02_checkmate_tenkiViewController *area02_checkmate_tenkiViewController = [self.storyboard instantiateViewControllerWithIdentifier:transitionArray[indexPath.row]];
        
        area02_checkmate_tenkiViewController.msgValue2 = @"中部地方";
        [self.navigationController pushViewController:area02_checkmate_tenkiViewController animated:YES];
    
    }else if(indexPath.row == 4)
    {
        area02_checkmate_tenkiViewController *area02_checkmate_tenkiViewController = [self.storyboard instantiateViewControllerWithIdentifier:transitionArray[indexPath.row]];
        
        area02_checkmate_tenkiViewController.msgValue2 = @"近畿地方";
        [self.navigationController pushViewController:area02_checkmate_tenkiViewController animated:YES];
    
    }else if(indexPath.row == 5)
    {
        area02_checkmate_tenkiViewController *area02_checkmate_tenkiViewController = [self.storyboard instantiateViewControllerWithIdentifier:transitionArray[indexPath.row]];
        
        area02_checkmate_tenkiViewController.msgValue2 = @"中国地方";
        [self.navigationController pushViewController:area02_checkmate_tenkiViewController animated:YES];
        
    }else if(indexPath.row == 6)
    {
        area02_checkmate_tenkiViewController *area02_checkmate_tenkiViewController = [self.storyboard instantiateViewControllerWithIdentifier:transitionArray[indexPath.row]];
        
        area02_checkmate_tenkiViewController.msgValue2 = @"四国地方";
        [self.navigationController pushViewController:area02_checkmate_tenkiViewController animated:YES];
        
    }else if(indexPath.row == 7)
    {
        area02_checkmate_tenkiViewController *area02_checkmate_tenkiViewController = [self.storyboard instantiateViewControllerWithIdentifier:transitionArray[indexPath.row]];
        
        area02_checkmate_tenkiViewController.msgValue2 = @"九州地方";
        [self.navigationController pushViewController:area02_checkmate_tenkiViewController animated:YES];
        
    }
    /*
     else if(indexPath.row == 8)
    {
        area02_checkmate_tenkiViewController *area02_checkmate_tenkiViewController = [self.storyboard instantiateViewControllerWithIdentifier:transitionArray[indexPath.row]];
        
        area02_checkmate_tenkiViewController.msgValue2 = @"沖縄地方";
        [self.navigationController pushViewController:area02_checkmate_tenkiViewController animated:YES];
        
    }
     */
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
