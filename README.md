## About these class

This class is based on a `UISegmentedControl` in order to create a stepper control for iOS < 5.0.

You can specify the minimum, maximum, start and step values.

## Example

    SLStepper *myStepper = [[SLStepper alloc] initWithFrame:CGRectMake(185.0, 6.0, 110.0, 30.0)
                                                    withMin:1 
                                                    withMax:15
                                                  withValue:1 
                                                   withStep:1];

![SLStepper screenshot](https://github.com/spin0us/SLStepper/example.png)
