//
//  TouchView.h
//  testTabEffect
//
//  Created by JinseokShim on 2016. 6. 17..
//  Copyright © 2016년 JinseokShim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TouchView : UIView{
    NSMutableDictionary *mHolderMap;
    unsigned int mID;
}

- (void) addTapEffect:(CGFloat)x setY:(CGFloat)y;
@end
