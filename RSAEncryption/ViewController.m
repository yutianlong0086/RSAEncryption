//
//  ViewController.m
//  RSAEncryption
//
//  Created by YuTianLong on 2017/5/18.
//  Copyright © 2017年 http://blog.csdn.net/yutianlong9306 All rights reserved.
//

#import "ViewController.h"
#import "RSAUtils.h"
#import "RSADefine.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UITextView *textView;

@property (nonatomic, copy) NSString *encryptString;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIButton Click

- (IBAction)encryptClick:(UIButton *)sender {
    [self encryptUpdateTextView];
}

- (IBAction)decryptClick:(UIButton *)sender {
    [self decryptUpdateTextView];
}

#pragma mark - Private methods

- (void)encryptUpdateTextView {
    NSString *encryptString = [RSAUtils encryptString:self.textField.text rsa_Public_Key:RSA_Public_Key];
    _encryptString = encryptString;
    self.textView.text = encryptString;
    NSLog(@"%@", encryptString);
}

- (void)decryptUpdateTextView {
    NSString *decryptString = [RSAUtils decryptString:_encryptString rsa_Private_Key:RSA_Private_Key];
    self.textView.text = decryptString;
    NSLog(@"%@", decryptString);
}

@end
