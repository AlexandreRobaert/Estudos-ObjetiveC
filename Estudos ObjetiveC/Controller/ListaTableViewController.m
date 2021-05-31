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
        kFIRParameterItemID:@"Tela_Lista",
        kFIRParameterItemName:@"Tela_Lista_Name",
        kFIRParameterContentType:@"Tela_Lista_ContentType",
    }];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

-(void)exibeNovaTela {
    FormularioViewController *form = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"formcontato"];
    form.delegate = self;
    [self.navigationController pushViewController:form animated:YES];
}

-(void)adicionarContato:(Contato *)contato {
    [self.contatos addObject:contato];
    [self.tableView reloadData];
}

- (void)alteraContato:(Contato *)contato indexOfContato:(NSInteger *)indexOfContato {
    NSLog(@"INDEX %U", indexOfContato);
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.contatos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if(!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = [self.contatos[indexPath.row] nome];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell * cell = [tableView cellForRowAtIndexPath:indexPath];
    [self.tableView deselectRowAtIndexPath:indexPath animated:true];
    NSLog(@"%@", [[cell textLabel] text]);
    FormularioViewController *form = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"formcontato"];
    form.delegate = self;
    form.contato = [self.contatos objectAtIndex:indexPath.row];
    form.indexOfContato = indexPath.row;
    
    [self.navigationController pushViewController:form animated:true];
    
//    [FIRAnalytics logEventWithName:kFIREventViewItemList parameters:@{
//        kFIRParameterItemName: [NSString stringWithFormat:@"item %@", [[cell textLabel] text]],
//        kFIRParameterItemListID: [NSString stringWithFormat:@"Index %U", indexPath.row]
//    }];
}

@end
