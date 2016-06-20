//
//  ViewController.m
//  testTabEffect
//
//  Created by JinseokShim on 2016. 6. 17..
//  Copyright © 2016년 JinseokShim. All rights reserved.
//

#import "ViewController.h"
#import "TouchView.h"
#import "CustomSlider.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tabRecognizer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[self.view viewWithTag:1] addGestureRecognizer:self.tabRecognizer];
    
    [[UISlider appearance] setThumbImage:[UIImage imageNamed:@"bar_handle_n.png"] forState:UIControlStateNormal];
    [[UISlider appearance] setThumbImage:[UIImage imageNamed:@"bar_handle_d.png"] forState:UIControlStateDisabled];
    [[UISlider appearance] setMinimumTrackImage:[[UIImage imageNamed:@"bar_progress.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(10.0, 10.0, 10.0, 10.0) resizingMode:UIImageResizingModeStretch] forState:UIControlStateNormal];
    [[UISlider appearance] setMaximumTrackImage:[[UIImage imageNamed:@"bar_bg_n.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(10.0, 10.0, 10.0, 10.0) resizingMode:UIImageResizingModeStretch] forState:UIControlStateNormal];
    [[UISlider appearance] setMinimumTrackImage:[[UIImage imageNamed:@"bar_bg_d.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(10.0, 10.0, 10.0, 10.0) resizingMode:UIImageResizingModeStretch] forState:UIControlStateDisabled];
    [[UISlider appearance] setMaximumTrackImage:[[UIImage imageNamed:@"bar_bg_d.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(10.0, 10.0, 10.0, 10.0) resizingMode:UIImageResizingModeStretch] forState:UIControlStateDisabled];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)slider_value_changed:(CustomSlider *)sender {
    int discreateValue = roundl([sender value]);
    [sender setValue:(float) discreateValue];
    NSLog(@"value is %f", (float)discreateValue);
    [sender setNeedsDisplay];
}


- (IBAction)addTapEvent:(UITapGestureRecognizer *)sender {
    CGPoint point = [sender locationInView:self.view];
    [(TouchView *) [self.view viewWithTag:1] addTapEffect:point.x setY:point.y];
    
//    NSLog(@"touch x:%f, x:%f", point.x, point.y);
}
@end
