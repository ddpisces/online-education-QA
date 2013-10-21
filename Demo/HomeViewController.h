//
//  HomeViewController.h
//  GHSidebarNav
//
//  Created by zz cienet on 10/21/13.
//
//

#import <UIKit/UIKit.h>

typedef void (^RevealBlock)();

@interface HomeViewController : UIViewController

- (id)initWithTitle:(NSString *)title withRevealBlock:(RevealBlock)revealBlock;

- (IBAction)raisingQuestion:(id)sender;

@end
