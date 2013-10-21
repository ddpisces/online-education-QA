//
//  HomeViewController.m
//  GHSidebarNav
//
//  Created by zz cienet on 10/21/13.
//
//

#import "HomeViewController.h"
#import "FillQuestionViewController.h"

@interface HomeViewController ()
- (void)revealSidebar;
@end

@implementation HomeViewController{
@private
	RevealBlock _revealBlock;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithTitle:(NSString *)title withRevealBlock:(RevealBlock)revealBlock {
    if (self = [super initWithNibName:nil bundle:nil]) {
		self.title = title;
		_revealBlock = [revealBlock copy];
		self.navigationItem.leftBarButtonItem =
        [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction
                                                      target:self
                                                      action:@selector(revealSidebar)];
	}
	return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)revealSidebar {
	_revealBlock();
}

- (IBAction)raisingQuestion:(id)sender {
    UIViewController *vc = [[FillQuestionViewController alloc] initWithTitle:@"填写问题"];
	[self.navigationController pushViewController:vc animated:YES];
}

@end
