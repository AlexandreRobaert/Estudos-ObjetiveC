//
//  ViewController.m
//  Estudos ObjetiveC
//
//  Created by Alexandre Robaert on 27/05/21.
//

#import "FormularioViewController.h"
#import "Contato.h"

@interface FormularioViewController ()

@end
@import FirebaseAnalytics;

@implementation FormularioViewController

- (IBAction) confirmarButton:(id)sender {
    
    Contato *contato = [Contato new];
    contato.nome = self.nome.text;
    contato.endereco = self.endereco.text;
    contato.email = self.email.text;
    contato.telefone = self.telefone.text;
    contato.site = self.site.text;
    
    [self.navigationController popViewControllerAnimated:TRUE];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Teste";

//    [FIRAnalytics logEventWithName:kFIREventSelectContent parameters:@{
//        kFIRParameterItemID:[NSString stringWithFormat:@"id-%@", self.title],
//        kFIRParameterItemName:self.title,
//        kFIRParameterContentType:@"image"
//
//    }];
}

@end
