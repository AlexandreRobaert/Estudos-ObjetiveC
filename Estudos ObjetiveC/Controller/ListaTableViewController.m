//
//  ListaTableViewController.m
//  Estudos ObjetiveC
//
//  Created by Alexandre Robaert on 28/05/21.
//

#import "ListaTableViewController.h"
#import "FormularioViewController.h"
#import "Contato.h"

@interface ListaTableViewController ()

@end

@import FirebaseAnalytics;

@implementation ListaTableViewController

- (void)loadView {
    [super loadView];
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(exibeNovaTela)];
    self.navigationItem.rightBarButtonItem = buttonItem;
    self.title = @"Lista Contatos";
    self.contatos = [NSMutableArray new];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [FIRAnalytics logEventWithName:kFIREventLogin parameters:@{
        kFIRParameterItemID:[NSString stringWithFormat:@"TelaHome %@", self.title],
        kFIRParameterItemName:self.title,
        kFIRParameterContentType:@"TelaHomeLista",
    }];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

-(void)exibeNovaTela {
    FormularioViewController *form = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"formcontato"];
    form.contatos = self.contatos;
    [self.navigationController pushViewController:form animated:YES];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.contatos.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    
    cell.textLabel.text = [self.contatos[indexPath.row] nome];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell * cell = [tableView cellForRowAtIndexPath:indexPath];
    [self.tableView deselectRowAtIndexPath:indexPath animated:true];
    NSLog(@"%@", [[cell textLabel] text]);
}

@end
