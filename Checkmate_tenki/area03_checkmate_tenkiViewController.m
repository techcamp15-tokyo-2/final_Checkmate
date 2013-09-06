//
//  area03_checkmate_tenkiViewController.m
//  Checkmate_tenki
//
//  Created by Seiya Hoshi on 2013/09/06.
//  Copyright (c) 2013年 Seiya Hoshi. All rights reserved.
//

#import "area03_checkmate_tenkiViewController.h"
#import "area04_checkmate_tenkiViewController.h"

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
    }
    return i;
}


//セルの内容を返す
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //IB上のCellのidentifireと一致させること！
    UITableViewCell *cell;
    if([msgValue3 hasPrefix:@"道北"]){
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"稚内",@"旭川",@"留萌",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
    }else if ([msgValue3 hasPrefix:@"道東"]){
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"稚内",@"旭川",@"留萌",@"稚内",@"旭川",@"留萌",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
    }else if ([msgValue3 hasPrefix:@"道央"]){
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"稚内",@"旭川",@"留萌",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
    }else if ([msgValue3 hasPrefix:@"道南"]){
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"稚内",@"旭川",@"留萌",@"稚内",nil];
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
    //押されたセルの番地が０だったら実行
    if([msgValue3 hasPrefix:@"道北"]){
        if(indexPath.row == 0)
        {
            area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"稚内";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }else if (indexPath.row == 1)
        {
            area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"旭川";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
            
        }else if (indexPath.row == 2)
        {
            area04_checkmate_tenkiViewController *area04_checkmate_tenkiViewController = [self.storyboard   instantiateViewControllerWithIdentifier:transitionArray[0]];
            
            area04_checkmate_tenkiViewController.msgValue4 = @"留萌";
            [self.navigationController pushViewController:area04_checkmate_tenkiViewController animated:YES];
        }        
    }
}
@end
