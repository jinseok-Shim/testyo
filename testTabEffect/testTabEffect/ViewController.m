//
//  ViewController.m
//  testTabEffect
//
//  Created by JinseokShim on 2016. 6. 17..
//  Copyright © 2016년 JinseokShim. All rights reserved.
//

#import "ViewController.h"
#import "TouchView.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tabRecognizer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[self.view viewWithTag:1] addGestureRecognizer:self.tabRecognizer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addTapEvent:(UITapGestureRecognizer *)sender {
    CGPoint point = [sender locationInView:self.view];
    [(TouchView *) [self.view viewWithTag:1] addTapEffect:point.x setY:point.y];
    
//    NSLog(@"touch x:%f, x:%f", point.x, point.y);
}
@end
