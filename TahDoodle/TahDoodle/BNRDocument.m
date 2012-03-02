//
//  BNRDocument.m
//  TahDoodle
//
//  Created by Nestor Pestelos on 3/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BNRDocument.h"

@implementation BNRDocument

#pragma mark - Actions

- (IBAction)createNewItem:(id)sender
{
    NSLog(@"create new item");
    
    // If there's no array yet, go ahead and create one to store our new task
    if (!todoItems) {
        todoItems = [NSMutableArray array];
    }
    
    [todoItems addObject:@"New Item"];
    
    // -reloadData tells the table view to refresh and ask its dataSource for new data to display
    [itemTableView reloadData];
    
    // -updateChangeCount: tells the application whether or not the document has unsaved changes
    [self updateChangeCount:NSChangeDone];
}

#pragma mark - Data Source Methods
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    // This table view is meant to display the todoItems,
    // so the number of entries in the table view will be the same
    // as the number of objects in the array
    return [todoItems count];
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    // Return the item from todoItems that corresponds to the cell
    // that the table view wants to display
    return [todoItems objectAtIndex:row];
}

- (void)tableView:(NSTableView *)tableView setObjectValue:(id)object forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    // When the user changes a to-do item on the table view,
    // update the todoItems array
    [todoItems replaceObjectAtIndex:row withObject:object];
    
    // And then flag the document as having unsaved changes
    [self updateChangeCount:NSChangeDone];
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError *__autoreleasing *)outError
{
    // This method is called when our document is being saved
    // We are expected to hand the caller an NSData object wrapping our data
    
    if (!todoItems) {
        todoItems = [NSMutableArray array];
    }
    
    // Pack our todoItems
    NSData *data = [NSPropertyListSerialization dataWithPropertyList:todoItems format:NSPropertyListXMLFormat_v1_0 options:0 error:outError];
    
    return data;
}

- (BOOL) readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError *__autoreleasing *)outError
{
    // This method is being called when a document is being loaded
    
    todoItems = [NSPropertyListSerialization propertyListWithData:data options:NSPropertyListMutableContainers format:NULL error:outError];
    
    return (todoItems != nil);
}

- (id)init
{
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
        // If an error occurs here, return nil.
    }
    return self;
}

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"BNRDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

@end
