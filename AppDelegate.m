//
//  AppDelegate.m
//  FibApp
//  Created by Logan Moore on 28/11/13.
//  Copyright (c) 2013 ThoseGrapefruits. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
}

- (double)fibonacci:(int)number
{
	if (number == 1 || number == 2)
	{
		return 1;
	}
	else
	{
		double current = 1, previous = 1, tempInt;
		for (int i = 3; i <= number ; i++ )
		{
			tempInt = current;
			current += previous;
			previous = tempInt;
		}
		return current;
	}
}



- (IBAction)fromTextField:(id)sender {
	int recievedFibNumber = [sender intValue];
	if (recievedFibNumber > 0) {
		[self.textField setDoubleValue:[self fibonacci:recievedFibNumber]];
	}
	else
	{
		[self.textField setStringValue:@"Positive numbers only."];
	}
}
@end
