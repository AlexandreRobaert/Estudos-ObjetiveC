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

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Novo Contato";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Adicionar" style:UIBarButtonItemStylePlain target:self action:@selector(salvarContato)];
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [FIRAnalytics logEventWithName:kFIREventScreenView
                        parameters:@{kFIRParameterScreenClass: @"FormularioScreenClass",
                                     kFIRParameterScreenName: @"FormularioScreenName"}];
}

-(void) salvarContato {
    Contato *contato = [Contato new];
    contato = [Contato new];
    contato.nome = self.nome.text;
    contato.endereco = self.endereco.text;
    contato.email = self.email.text;
    contato.telefone = self.telefone.text;
    contato.site = self.site.text;
    [self.contatos addObject:contato];
    NSLog(@"%@", self.contatos);
    [self.navigationController popViewControllerAnimated:TRUE];
}

@end
