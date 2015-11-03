//
//  DetailViewController.h
//  Vinli API Explorer
//
//  Created by Jeffrey Younger on 11/3/15.
//  Copyright © 2015 Vinli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

