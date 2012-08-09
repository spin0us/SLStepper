//
//  SLStepper.m
//  SegmentedControl_To_Counter
//
//  Created by Laurent Spinelli on 09/08/12.
//  Copyright (c) 2012 Laurent Spinelli. All rights reserved.
//

#import "SLStepper.h"

@interface SLStepper()

@property (nonatomic) NSInteger min;
@property (nonatomic) NSInteger max;
@property (nonatomic) NSInteger step;

- (IBAction)action:(id)sender;

@end

@implementation SLStepper
@synthesize min, max, step;

- (id)initWithFrame:(CGRect)_frame
            withMin:(NSInteger)_min
            withMax:(NSInteger)_max
          withValue:(NSInteger)_start
           withStep:(NSInteger)_step
{
    self = [super initWithFrame:_frame];
    if (self) {
        
        // Init values
        self.min = _min;
        self.max = _max;
        self.step = _step;
        self.value = [[NSNumber numberWithInt:_start] stringValue];

        // Init control
        [self initWithFrame:_frame];
        [self insertSegmentWithTitle:@"-" atIndex:0 animated:NO];
        [self insertSegmentWithTitle:self.value atIndex:1 animated:NO];
        [self insertSegmentWithTitle:@"+" atIndex:2 animated:NO];
        [self setSelectedSegmentIndex:1];
        [self addTarget:self
                action:@selector(action:)
        forControlEvents:UIControlEventValueChanged];

    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
    self.value = nil;
}

- (IBAction)action:(id)sender
{
    UISegmentedControl* segControl = (UISegmentedControl*) sender;
    NSInteger counter = [self.value intValue];
    if ([segControl selectedSegmentIndex] == 0 && counter > self.min) {
        counter = counter - self.step;
        self.value = [[NSNumber numberWithInt:counter] stringValue];
    }
    if ([segControl selectedSegmentIndex] == 2 && counter < self.max) {
        counter = counter + self.step;
        self.value = [[NSNumber numberWithInt:counter] stringValue];
    }
    [segControl setTitle:self.value forSegmentAtIndex:1];
    [segControl setSelectedSegmentIndex:1];
}

@end
