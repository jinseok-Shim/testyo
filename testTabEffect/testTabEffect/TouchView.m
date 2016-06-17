//
//  TouchView.m
//  testTabEffect
//
//  Created by JinseokShim on 2016. 6. 17..
//  Copyright © 2016년 JinseokShim. All rights reserved.
//

#import "TouchView.h"

@interface TabEffectHolder : NSObject
@property CGImageRef img;
@property CGFloat x, y;
@property NSString* idStr;
@end

@implementation TabEffectHolder
@end

@implementation TouchView
- (void)drawRect:(CGRect)rect{
    CGContextRef ref = UIGraphicsGetCurrentContext();
    
    
    NSLog(@"drawRect w=%f, h=%f", rect.size.width, rect.size.height);
    
    for(TabEffectHolder *holder in [mHolderMap allValues]){
        CGRect exRect = CGRectMake(holder.x - 50, holder.y - 50, 100, 100);
        CGContextDrawImage(ref, exRect, holder.img);
    }
}

-(void)addTapEffect:(CGFloat)x setY:(CGFloat)y
{
    mID++;
    
    NSLog(@"x is %f y is %f", x, y);
    
    TabEffectHolder *effectHolder = [TabEffectHolder alloc];
    effectHolder.img = [UIImage imageNamed:@"touch_tab1.png"].CGImage;
    effectHolder.x = x;
    effectHolder.y = y;
    effectHolder.idStr = [NSString stringWithFormat:@"%d", mID];
    
    if(mHolderMap == NULL){
        mHolderMap = [[NSMutableDictionary alloc] init];
    }
    
    [mHolderMap setValue:effectHolder forKey:effectHolder.idStr];
    [self setNeedsDisplay];
}


@end
