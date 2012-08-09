//
//  SLStepper.h
//  SegmentedControl_To_Counter
//
//  Created by Laurent Spinelli on 09/08/12.
//  Copyright (c) 2012 Laurent Spinelli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SLStepper : UISegmentedControl

@property (nonatomic, retain) NSString* value;

- (id)initWithFrame:(CGRect)frame
            withMin:(NSInteger)min
            withMax:(NSInteger)max
          withValue:(NSInteger)start
           withStep:(NSInteger)step;

@end
