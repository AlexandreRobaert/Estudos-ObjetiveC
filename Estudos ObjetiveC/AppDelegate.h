//
//  AppDelegate.h
//  Estudos ObjetiveC
//
//  Created by Alexandre Robaert on 27/05/21.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

