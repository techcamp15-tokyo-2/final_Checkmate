//
//  area02_checkmate_tenkiViewController.h
//  Checkmate_tenki
//
//  Created by Seiya Hoshi on 2013/09/06.
//  Copyright (c) 2013年 Seiya Hoshi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface area02_checkmate_tenkiViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (copy, nonatomic) NSString *msgValue2;
@property (weak, nonatomic) IBOutlet UITableView *tableView2;


@end
