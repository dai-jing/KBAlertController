//
//  KBAlertController.h
//  KBAlertController
//
//  Created by Kobe Dai on 8/7/16.
//  Copyright © 2016 daijing. All rights reserved.
//

#import <UIKit/UIKit.h>

/************ KBAlertAction ************/

typedef NS_ENUM(NSInteger, KBAlertActionType) {
    KBAlertActionTypeDefault,
    KBAlertActionTypeDestructive
};

@interface KBAlertActionStyle : NSObject

/**
 *  @property type
 *
 *  @brief action button type
 */
@property (nonatomic, assign) KBAlertActionType type;

/**
 *  @property font
 *
 *  @brief action button font
 */
@property (nonatomic, strong) UIFont *font;

/**
 *  @property color
 *
 *  @brief action button title color
 */
@property (nonatomic, strong) UIColor *color;

/**
 *  @property highlightedColor
 *
 *  @brief action button pressed background color
 */
@property (nonatomic, strong) UIColor *highlightedColor;

@end

typedef void(^KBAlertActionHandler)();

@interface KBAlertAction : NSObject

/**
 *  Create an KBAlertAction object using a specified title, style, and handler.
 *
 *  @param title       action button's title.
 *  @param styleConfig a block config the action's style.
 *  @param handler     a block that is called when the user selects action button.
 *
 *  @return A newly-created KBAlertAction object.
 */
+ (KBAlertAction *)actionWithTitle:(NSString *)title style:(void(^)(KBAlertActionStyle *style))styleConfig handler:(KBAlertActionHandler)handler;

@end

/************  KBAlertController ************/

typedef NS_ENUM(NSInteger, KBAlertControllerType) {
    KBAlertControllerTypeAlert,
    KBAlertControllerTypeActionSheet
};

@interface KBAlertControllerStyle : NSObject

/**
 *  @property type
 *
 *  @brief alert controller type
 */
@property (nonatomic, assign) KBAlertControllerType type;

/**
 *  @property titleFont
 *
 *  @brief alert title font
 */
@property (nonatomic, strong) UIFont *titleFont;

/**
 *  @property messageFont
 *
 *  @brief alert message font
 */
@property (nonatomic, strong) UIFont *messageFont;

/**
 *  @property backgroundColor
 *
 *  @brief alert view background color
 */
@property (nonatomic, strong) UIColor *backgroundColor;

/**
 *  @property borderColor
 *
 *  @brief alert view border color
 */
@property (nonatomic, strong) UIColor *borderColor;

/**
 *  @property cornerRadius
 *
 *  @brief alert view border corner radius
 */
@property (nonatomic, assign) CGFloat cornerRadius;

@end

@interface KBAlertController : UIViewController

/**
 *  Creates and returns a view controller for displaying an alert to the user.
 *
 *  @param title       the title of the alert.
 *  @param message     descriptive text that provides additional details about the reason for the alert.
 *  @param styleConfig a block config the alert controller's style.
 *
 *  @return An initialized alert controller object.
 */
+ (KBAlertController *)alertControllerWithTitle:(NSString *)title message:(NSString *)message style:(void(^)(KBAlertControllerStyle *style))styleConfig;

/**
 *  Attaches an array of action objects to the alert or action sheet.
 *
 *  @param actions array of KBAlertAction objects
 */
- (void)addActions:(NSArray *)actions;

@end
