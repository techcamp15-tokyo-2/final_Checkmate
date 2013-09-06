//
//  area03_checkmate_tenkiViewController.h
//  Checkmate_tenki
//
//  Created by Seiya Hoshi on 2013/09/06.
//  Copyright (c) 2013年 Seiya Hoshi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface area03_checkmate_tenkiViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (copy, nonatomic) NSString *msgValue3;
@property (weak, nonatomic) IBOutlet UITableView *tableView3;

@end
