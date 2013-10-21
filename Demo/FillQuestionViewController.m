//
//  FillQuestionViewController.m
//  GHSidebarNav
//
//  Created by zz cienet on 10/21/13.
//
//

#import "FillQuestionViewController.h"

@interface FillQuestionViewController ()

@end

@implementation FillQuestionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

- (id)initWithTitle:(NSString *)title {
	if (self = [super initWithNibName:nil bundle:nil]) {
		self.title = title;
	}
	return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //To make the border look very close to a UITextField
    [self.questionFeild.layer setBorderColor:[[[UIColor grayColor] colorWithAlphaComponent:0.5] CGColor]];
    [self.questionFeild.layer setBorderWidth:2.0];
    
    //The rounded corner part, where you specify your view's corner radius:
    self.questionFeild.layer.cornerRadius = 5;
    self.questionFeild.clipsToBounds = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
