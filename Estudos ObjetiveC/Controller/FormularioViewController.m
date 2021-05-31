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
    
    if(self.contato == nil){
        self.title = @"Novo Contato";
        self.contato = [Contato new];
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Adicionar" style:UIBarButtonItemStylePlain target:self action:@selector(salvarContato)];
    }else{
        self.title = @"Alterar Contato";
        self.nome.text = self.contato.nome;
        self.telefone.text = self.contato.telefone;
        self.endereco.text = self.contato.endereco;
        self.site.text = self.contato.site;
        self.email.text = self.contato.email;
        
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Salvar" style:UIBarButtonItemStylePlain target:self action:@selector(salvarContato)];
    }
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
//    
//    [FIRAnalytics logEventWithName:kFIREventScreenView parameters:@{
//        kFIRParameterScreenName: @"Tela_Adiciona_Contato",
//        kFIRParameterSuccess: @1,
//        kFIRParameterCampaign: @"Claro_FLEX_Promocao"
//    }];
}

-(void) salvarContato {
    self.contato.nome = self.nome.text;
    self.contato.endereco = self.endereco.text;
    self.contato.email = self.email.text;
    self.contato.telefone = self.telefone.text;
    self.contato.site = self.site.text;
    
//    if (!self.indexOfContato >= 0) {
//        [self.delegate adicionarContato:self.contato];
//    }else{
//        [self.delegate alteraContato:self.contato indexOfContato:self.indexOfContato];
//    }
    
    [self.navigationController popViewControllerAnimated:TRUE];
}

@end
