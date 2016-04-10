//
//  ViewController.m
//  XZCategory
//
//  Created by 徐章 on 16/4/9.
//  Copyright © 2016年 徐章. All rights reserved.
//

#import "ViewController.h"
#import "XZCategory.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *string = [NSString stringFromFloat:4.34253 format:@"%.3f"];
    NSLog(@"%@",string.md5.uppercaseString);
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button_Pressed:(id)sender {
    
    NSLog(@"%@",self.textView.text);
}

@end
