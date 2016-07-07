//
//  ViewController.m
//  XZCategory
//
//  Created by 徐章 on 16/4/9.
//  Copyright © 2016年 徐章. All rights reserved.
//

#import "ViewController.h"
#import "XZCategory.h"


@interface ViewController ()<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textView.delegate = self;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button_Pressed:(id)sender {
    
    NSLog(@"%@",self.textView.text);
}


- (void)textViewDidChange:(UITextView *)textView{

    NSLog(@"%@",textView.text);
    
    textView.text = [self disable_emoji:textView.text];
    
    NSLog(@"%@",textView.text);
}

- (void)textViewDidEndEditing:(UITextView *)textView{
    

}

/**
 *  将text中的emoji表情替换为""
 */


@end
