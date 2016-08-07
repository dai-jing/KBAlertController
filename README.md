KBAlertController
==================================
![License](http://img.shields.io/badge/license-MIT-green.svg?style=flat)

A user custom `UIAlertController` class.

## Introduction
You can custom your own alert and actionsheet view's style and action's style. It uses `UIAlertController` similar API methods which you can simply use it.

![demo](https://github.com/dai-jing/KBAlertController/blob/master/KBAlertController/Screenshots/IMG_8891.jpg)
![demo](https://github.com/dai-jing/KBAlertController/blob/master/KBAlertController/Screenshots/IMG_8893.jpg)

Installation
============
The preferred way of installation is via [CocoaPods](http://cocoapods.org). Just add

```ruby
pod 'KBAlertController'
```

Usage
===============
you can customize styles with a simplified, chainable and expressive syntax. 

```
// Alert
KBAlertController *alertController = [KBAlertController alertControllerWithTitle:@"Alert" message:@"Are you sure to cancel?" style:^(KBAlertControllerStyle *style) {
    style.type = KBAlertControllerTypeAlert;
}];
    
KBAlertAction *doneAction = [KBAlertAction actionWithTitle:@"Done"
                                                     style:^(KBAlertActionStyle *style) {
                                                         style.font = [UIFont systemFontOfSize:15.f];
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
```

```
// ActionSheet
KBAlertController *alertController = [KBAlertController alertControllerWithTitle:@"Alert" message:@"Are you sure to cancel?" style:^(KBAlertControllerStyle *style) {
    style.type = KBAlertControllerTypeActionSheet;
}];
    
KBAlertAction *doneAction = [KBAlertAction actionWithTitle:@"Done"
                                                     style:^(KBAlertActionStyle *style) {
                                                         style.font = [UIFont systemFontOfSize:15.f];
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
```
