//
//  RootViewController.m
//  @rigoneri
//  
//  Copyright 2010 Rodrigo Neri
//  Copyright 2011 David Jarrett
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "RootViewController.h"
#import "MyLauncherItem.h"
#import "ItemViewController.h"


@implementation RootViewController

-(void)loadView
{    
	[super loadView];
    self.title = @"myLauncher";
    
    [[self appControllers] setObject:[ItemViewController class] forKey:@"ItemViewController"];
    
    //Add your view controllers here to be picked up by the launcher; remember to import them above
	//[[self appControllers] setObject:[MyCustomViewController class] forKey:@"MyCustomViewController"];
	//[[self appControllers] setObject:[MyOtherCustomViewController class] forKey:@"MyOtherCustomViewController"];
	
	if(!savedItems)
	{
		[self.launcherView setPages:[NSMutableArray arrayWithObjects: 
                                     [NSMutableArray arrayWithObjects: 
                                      [[[MyLauncherItem alloc] initWithTitle:@"Item 1 Icon"
                                                                 iPhoneImage:@"itemImage" 
                                                                   iPadImage:@"itemImage-iPad"
                                                                      target:@"ItemViewController" 
                                                                 targetTitle:@"Item 1 View"
                                                                   deletable:NO] autorelease],
                                      [[[MyLauncherItem alloc] initWithTitle:@"Item 2"
                                                                 iPhoneImage:@"itemImage" 
                                                                   iPadImage:@"itemImage-iPad"
                                                                      target:@"ItemViewController" 
                                                                 targetTitle:@"Item 2 View" 
                                                                   deletable:NO] autorelease],
                                      [[[MyLauncherItem alloc] initWithTitle:@"Item 3"
                                                                 iPhoneImage:@"itemImage" 
                                                                   iPadImage:@"itemImage-iPad"
                                                                      target:@"ItemViewController" 
                                                                 targetTitle:@"Item 3 View"
                                                                   deletable:YES] autorelease],
                                      [[[MyLauncherItem alloc] initWithTitle:@"Item 4"
                                                                 iPhoneImage:@"itemImage" 
                                                                   iPadImage:@"itemImage-iPad"
                                                                      target:@"ItemViewController" 
                                                                 targetTitle:@"Item 4 View"
                                                                   deletable:NO] autorelease],
                                      [[[MyLauncherItem alloc] initWithTitle:@"Item 5"
                                                                 iPhoneImage:@"itemImage" 
                                                                   iPadImage:@"itemImage-iPad"
                                                                      target:@"ItemViewController" 
                                                                 targetTitle:@"Item 5 View"
                                                                   deletable:YES] autorelease],
                                      [[[MyLauncherItem alloc] initWithTitle:@"Item 6"
                                                                 iPhoneImage:@"itemImage" 
                                                                   iPadImage:@"itemImage-iPad"
                                                                      target:@"ItemViewController" 
                                                                 targetTitle:@"Item 6 View"
                                                                   deletable:NO] autorelease],
                                      [[[MyLauncherItem alloc] initWithTitle:@"Item 7"
                                                                 iPhoneImage:@"itemImage" 
                                                                   iPadImage:@"itemImage-iPad"
                                                                      target:@"ItemViewController" 
                                                                 targetTitle:@"Item 7 View"
                                                                   deletable:NO] autorelease],
                                      nil], 
                                     [NSMutableArray arrayWithObjects: 
                                      [[[MyLauncherItem alloc] initWithTitle:@"Item 8"
                                                                 iPhoneImage:@"itemImage" 
                                                                   iPadImage:@"itemImage-iPad"
                                                                      target:@"ItemViewController" 
                                                                 targetTitle:@"Item 8 View"
                                                                   deletable:NO] autorelease],
                                      [[[MyLauncherItem alloc] initWithTitle:@"Item 9"
                                                                 iPhoneImage:@"itemImage" 
                                                                   iPadImage:@"itemImage-iPad"
                                                                      target:@"ItemViewController" 
                                                                 targetTitle:@"Item 9 View"
                                                                   deletable:YES] autorelease],
                                      [[[MyLauncherItem alloc] initWithTitle:@"Item 10"
                                                                 iPhoneImage:@"itemImage" 
                                                                   iPadImage:@"itemImage-iPad"
                                                                      target:@"ItemViewController" 
                                                                 targetTitle:@"Item 10 View"
                                                                   deletable:NO] autorelease],
                                      nil],
                                     nil]];
        
        // Set number of immovable items below; only set it when you are setting the pages as the 
        // user may still be able to delete these items and setting this then will cause movable 
        // items to become immovable.
        // [self.launcherView setNumberOfImmovableItems:1];
        
        // Or uncomment the line below to disable editing (moving/deleting) completely!
        // [self.launcherView setEditingAllowed:NO];
	}
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
	//If you don't want to support multiple orientations uncomment the line below
	//return NO;
	return [super shouldAutorotateToInterfaceOrientation:toInterfaceOrientation];
}

- (void)didReceiveMemoryWarning 
{
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload 
{
    [super viewDidUnload];
}

- (void)dealloc 
{
    [super dealloc];
}

@end
