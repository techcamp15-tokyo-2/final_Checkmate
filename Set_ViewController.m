//
//  Set_ViewController.m
//  Checkmate_tenki
//
//  Created by techcamp on 13/09/11.
//  Copyright (c) 2013年 Seiya Hoshi. All rights reserved.
//

#import "Set_ViewController.h"

@interface Set_ViewController ()
//@interface area04_checkmate_tenkiViewController ()

@end

@implementation Set_ViewController

@synthesize msgValue5;

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

    //アプリ自身をデリゲート登録
    self.Hot.delegate = self;
    
    self.view.backgroundColor=[UIColor underPageBackgroundColor];
    
   /* // UIPickerのインスタンス化
    self.Hot.delegate = self;
    //_Hot = [[UIPickerView alloc]init];
    
    // デリゲートを設定
    _Hot.delegate = self;
    
    // データソースを設定
    _Hot.dataSource = self;
    
    // 選択インジケータを表示
    _Hot.showsSelectionIndicator = YES;
    
    // UIPickerのインスタンスをビューに追加
    [self.view addSubview:_Hot];*/
}

- (IBAction)buttonPush:(id)sender
{
    NSArray *array = @[[NSNumber numberWithInt:35-[_Hot selectedRowInComponent:0]],
                       [NSNumber numberWithInt:30-[_Hot selectedRowInComponent:1]],
                       [NSNumber numberWithInt:25-[_Hot selectedRowInComponent:2]],
                       [NSNumber numberWithInt:20-[_Hot selectedRowInComponent:3]]
                       ];
    
    [_delagete backFromSet_ViewController:array];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    //ViewPickerの列(横方向)数を指定
    return 4;
}

- (NSInteger) pickerView: (UIPickerView*)pView numberOfRowsInComponent:(NSInteger) component {
    //ViewPickerの行(縦方向)数を指定
    switch (component) {
            //1列目の行数
        case 0: return 20;
            //2列目の行数
        case 1: return 20;
            //3列目の行数
        case 2: return 20;
        case 3: return 20;
    }
    return 0;
}

- (NSString*)pickerView: (UIPickerView*) pView titleForRow:(NSInteger) row forComponent:(NSInteger)component {
    
    switch (component) {
            //1列目の行タイトルを作成(2012～2021年)
        case 0: return [NSString stringWithFormat:@" %d ℃", 35-row];
            //2列目の行タイトルを作成(1～12月)
        case 1: return [NSString stringWithFormat:@" %d ℃", 30-row];
            //3列目の行タイトルを作成(1～31日)
        case 2: return [NSString stringWithFormat:@" %d ℃", 25-row];
        case 3: return [NSString stringWithFormat:@" %d ℃", 20-row];
    }
    return @"";
}


/*- (void) pickerView: (UIPickerView*)pView didSelectRow:(NSInteger) row  inComponent:(NSInteger)component {
    
    //PickerViewを操作したら1列目の選択行番号を変数「value1」に入れる
    //userParam1 = [_Hot selectedRowInComponent:0];
    NSInteger value1 = [_Hot selectedRowInComponent:0];
    //PickerViewを操作したら2列目の選択行番号を変数「value2」に入れる
    NSInteger value2 = [_Hot selectedRowInComponent:1];
    //PickerViewを操作したら3列目の選択行番号を変数「value3」に入れる
    NSInteger value3 = [_Hot selectedRowInComponent:2];
    NSInteger value4 = [_Hot selectedRowInComponent:3];
    
    //ラベル「setPickerLabel」に変数「value1」「value2」「value3」の値を代入
    //[_setPickerLabel setText:[NSString stringWithFormat:@"%d %d %d", value1, value2, value3]];
    
}*/





- (IBAction)SET:(id)sender {
    [self performSegueWithIdentifier:@"Done" sender:self];
}



@end
