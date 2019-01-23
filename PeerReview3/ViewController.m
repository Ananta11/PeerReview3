//
//  ViewController.m
//  PeerReview3
//
//  Created by Ananta Shahane on 14/04/17.
//  Copyright © 2017 Ananta Shahane. All rights reserved.
//

#import "ViewController.h"
#import "CurrencyRequest/CRCurrencyRequest.h"
#import "CurrencyRequest/CRCurrencyResults.h"

@interface ViewController () <CRCurrencyRequestDelegate>

@property (nonatomic) CRCurrencyRequest *CurrencyConvert;
@property (weak, nonatomic) IBOutlet UITextField *USDIn;
@property (weak, nonatomic) IBOutlet UIButton *ConvertButton;
@property (weak, nonatomic) IBOutlet UILabel *RupeeOut;
@property (weak, nonatomic) IBOutlet UILabel *EuroOut;
@property (weak, nonatomic) IBOutlet UILabel *YenOut;
@end

@implementation ViewController

- (IBAction)Converting:(id)sender {
    self.ConvertButton.enabled = NO;
    self.CurrencyConvert = [[CRCurrencyRequest alloc] init];
    self.CurrencyConvert.delegate = self;
    [self.CurrencyConvert start];
    
}


- (void)currencyRequest:(CRCurrencyRequest *)req
    retrievedCurrencies:(CRCurrencyResults *)currencies
{
    double input;
    input = [self.USDIn.text floatValue];
    double rupee = input * currencies.INR;
    double yen = input * currencies.JPY;
    double euros = input * currencies.EUR;
    NSString * buffer = [NSString stringWithFormat:@"₹ %.2f",rupee];
    self.RupeeOut.text = buffer;
    buffer = [NSString stringWithFormat:@"¥ %.2f",yen];
    self.YenOut.text = buffer;
    buffer = [NSString stringWithFormat:@"€ %.2f",euros];
    self.EuroOut.text = buffer;
    self.ConvertButton.enabled = YES;
}

@end
