//
//  Contato.h
//  Estudos ObjetiveC
//
//  Created by Alexandre Robaert on 28/05/21.
//

//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    // Override point for customization after application launch.
//    [FIRApp configure];
//    return YES;
//}

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contato : NSObject

@property NSString *nome;
@property NSString *endereco;
@property NSString *email;
@property NSString *telefone;
@property NSString *site;
@end

NS_ASSUME_NONNULL_END
