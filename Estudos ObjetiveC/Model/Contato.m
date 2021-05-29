//
//  Contato.m
//  Estudos ObjetiveC
//
//  Created by Alexandre Robaert on 28/05/21.
//

#import "Contato.h"

@implementation Contato

-(NSString *)description {
    
    return [NSString stringWithFormat:@"%@ %@ %@ %@ %@", self.nome, self.endereco, self.telefone, self.email, self.site];
}

@end
