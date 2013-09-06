//
//  area02_checkmate_tenkiViewController.m
//  Checkmate_tenki
//
//  Created by Seiya Hoshi on 2013/09/06.
//  Copyright (c) 2013年 Seiya Hoshi. All rights reserved.
//

#import "area02_checkmate_tenkiViewController.h"
#import "area03_checkmate_tenkiViewController.h"

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
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"道北",@"道東",@"道央",@"道南",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
    }else if ([msgValue2 hasPrefix:@"東北"]){
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"青森県",@"岩手県",@"宮城県",@"秋田県",@"山形県",@"福島県",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
    }else if ([msgValue2 hasPrefix:@"関東"]){
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"茨城県",@"栃木県",@"群馬県",@"埼玉県",@"千葉県",@"東京都",@"神奈川県",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
    }else if ([msgValue2 hasPrefix:@"中部"]){
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"新潟県",@"富山県",@"石川県",@"福井県",@"山梨県",@"長野県",@"岐阜県",@"静岡県",@"愛知県",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
    }else if ([msgValue2 hasPrefix:@"近畿"]){
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"三重県",@"滋賀県",@"京都府",@"大阪府",@"兵庫県",@"奈良県",@"和歌山県",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
    }else if([msgValue2 hasPrefix:@"中国"]){
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"鳥取県",@"島根県",@"岡山県",@"広島県",@"山口県",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
    }else if ([msgValue2 hasPrefix:@"四国"]){
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
        
        NSArray *array = [NSArray arrayWithObjects:
                          @"徳島県",@"香川県",@"愛媛県",@"高知県",nil];
        //標準のセル（UITableViewCell)のテキストラベルに文字を指定
        cell.textLabel.text = array[indexPath.row];
    }else if ([msgValue2 hasPrefix:@"九州"]){
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

    }
    /*
      else if(indexPath.row == 1)
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
        
        area02_checkmate_tenkiViewController.msgValue2 = @"中部地方";
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
        
    }else if(indexPath.row == 8)
    {
        area02_checkmate_tenkiViewController *area02_checkmate_tenkiViewController = [self.storyboard instantiateViewControllerWithIdentifier:transitionArray[indexPath.row]];
        
        area02_checkmate_tenkiViewController.msgValue2 = @"沖縄地方";
        [self.navigationController pushViewController:area02_checkmate_tenkiViewController animated:YES];
        
    }
     */
}


@end
