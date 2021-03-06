//
//  ViewController.h
//  Estudos ObjetiveC
//
//  Created by Alexandre Robaert on 27/05/21.
//

#import <UIKit/UIKit.h>
#import "Contato.h"

@protocol ManipuladorContatoDelegate <NSObject>

@required
-(void) adicionarContato: (Contato *)contato;

@optional
-(void) removeContato: (Contato *)contato;

@optional
-(void) alteraContato: (Contato *)contato indexOfContato: (NSInteger *) indexOfContato;

@end

@interface FormularioViewController : UIViewController

@property IBOutlet UITextField *nome;
@property IBOutlet UITextField *endereco;
@property IBOutlet UITextField *email;
@property IBOutlet UITextField *telefone;
@property (weak, nonatomic) IBOutlet UITextField *site;

@property id<ManipuladorContatoDelegate> delegate;
@property Contato *contato;
@property NSInteger indexOfContato;

@end
