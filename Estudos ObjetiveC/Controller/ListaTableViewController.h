//
//  ListaTableViewController.h
//  Estudos ObjetiveC
//
//  Created by Alexandre Robaert on 28/05/21.
//

#import <UIKit/UIKit.h>
#import "FormularioViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ListaTableViewController : UITableViewController<ManipuladorContatoDelegate>

@property NSMutableArray *contatos;

@end

NS_ASSUME_NONNULL_END
