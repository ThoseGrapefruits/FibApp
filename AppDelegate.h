//
//  AppDelegate.h
//  FibApp
//
//  Created by Logan Moore on 28/11/13.
//  Copyright (c) 2013 ThoseGrapefruits. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
- (IBAction)fromTextField:(id)sender;

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *textField;

@end
