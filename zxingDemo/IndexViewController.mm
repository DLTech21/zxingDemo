//
//  IndexViewController.m
//  zxingDemo
//
//  Created by Donal on 13-7-16.
//  Copyright (c) 2013年 Donal. All rights reserved.
//

#import "IndexViewController.h"
#import <ZXingWidgetController.h>
#import "QRCodeReader.h"

@interface IndexViewController () <ZXingDelegate>

@end

@implementation IndexViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)scan:(id)sender {
    ZXingWidgetController *vc = [[ZXingWidgetController alloc] initWithDelegate:self showCancel:YES OneDMode:NO];
    [self presentViewController:vc animated:YES completion:nil];
}

-(void)zxingController:(ZXingWidgetController *)controller didScanResult:(NSString *)result
{
    NSLog(@"%@",result);
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)zxingControllerDidCancel:(ZXingWidgetController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
