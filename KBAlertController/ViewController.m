//
//  ViewController.m
//  KBAlertController
//
//  Created by Jing Dai on 8/7/16.
//  Copyright © 2016 daijing. All rights reserved.
//

#import "ViewController.h"
#import "KBAlertController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *alert1Button = [[UIButton alloc] initWithFrame:CGRectMake(20, 100, 80, 30)];
    [alert1Button setTitle:@"Alert 1" forState:UIControlStateNormal];
    [alert1Button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [alert1Button addTarget:self action:@selector(alert1ButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:alert1Button];
    
    UIButton *alert2Button = [[UIButton alloc] initWithFrame:CGRectMake(120, 100, 80, 30)];
    [alert2Button setTitle:@"Alert 2" forState:UIControlStateNormal];
    [alert2Button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [alert2Button addTarget:self action:@selector(alert2ButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:alert2Button];
    
    UIButton *actionSheetButton = [[UIButton alloc] initWithFrame:CGRectMake(220, 100, 100, 30)];
    [actionSheetButton setTitle:@"ActionSheet" forState:UIControlStateNormal];
    [actionSheetButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [actionSheetButton addTarget:self action:@selector(actionSheetButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:actionSheetButton];
}

- (void)alert1ButtonClicked
{
    KBAlertController *alertController = [KBAlertController alertControllerWithTitle:@"Alert" message:@"Are you sure to cancel?" style:^(KBAlertControllerStyle *style) {
        style.type = KBAlertControllerTypeAlert;
    }];
    
    KBAlertAction *doneAction = [KBAlertAction actionWithTitle:@"Done"
                                                         style:^(KBAlertActionStyle *style) {
                                                             
                                                         } handler:^{
                                                             NSLog(@"done button clicked");
                                                         }];
    KBAlertAction *cancelAction = [KBAlertAction actionWithTitle:@"Cancel"
                                                           style:^(KBAlertActionStyle *style) {
                                                               style.type = KBAlertActionTypeDestructive;
                                                           } handler:^{
                                                               NSLog(@"cancel button clicked");
                                                           }];
    [alertController addActions:@[cancelAction, doneAction]];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)alert2ButtonClicked
{
    KBAlertController *alertController = [KBAlertController alertControllerWithTitle:@"Alert" message:@"Are you sure to cancel?" style:^(KBAlertControllerStyle *style) {
        style.type = KBAlertControllerTypeAlert;
    }];
    
    KBAlertAction *doneAction = [KBAlertAction actionWithTitle:@"Done"
                                                         style:^(KBAlertActionStyle *style) {
                                                             
                                                         } handler:^{
                                                             NSLog(@"done button clicked");
                                                         }];
    KBAlertAction *confirmAction = [KBAlertAction actionWithTitle:@"Confirm"
                                                            style:^(KBAlertActionStyle *style) {
                                                                
                                                            } handler:^{
                                                                NSLog(@"confirm button clicked");
                                                            }];
    KBAlertAction *cancelAction = [KBAlertAction actionWithTitle:@"Cancel"
                                                           style:^(KBAlertActionStyle *style) {
                                                               style.type = KBAlertActionTypeDestructive;
                                                           } handler:^{
                                                               NSLog(@"cancel button clicked");
                                                           }];
    [alertController addActions:@[cancelAction, doneAction, confirmAction]];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)actionSheetButtonClicked
{
    KBAlertController *alertController = [KBAlertController alertControllerWithTitle:@"ActionSheet" message:@"Are you sure to cancel?" style:^(KBAlertControllerStyle *style) {
        style.type = KBAlertControllerTypeActionSheet;
    }];
    
    KBAlertAction *doneAction = [KBAlertAction actionWithTitle:@"Done"
                                                         style:^(KBAlertActionStyle *style) {
                                                             
                                                         } handler:^{
                                                             NSLog(@"done button clicked");
                                                         }];
    KBAlertAction *confirmAction = [KBAlertAction actionWithTitle:@"Confirm"
                                                            style:^(KBAlertActionStyle *style) {
                                                                style.type = KBAlertActionTypeDestructive;
                                                            } handler:^{
                                                                NSLog(@"confirm button clicked");
                                                            }];
    [alertController addActions:@[doneAction, confirmAction]];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
