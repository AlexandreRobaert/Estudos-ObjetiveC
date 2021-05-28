//
//  ViewController.h
//  Estudos ObjetiveC
//
//  Created by Alexandre Robaert on 27/05/21.
//

#import <UIKit/UIKit.h>

@interface FormularioViewController : UIViewController

@property IBOutlet UITextField *nome;
@property IBOutlet UITextField *endereco;
@property IBOutlet UITextField *email;
@property IBOutlet UITextField *telefone;
@property (weak, nonatomic) IBOutlet UITextField *site;

@end
