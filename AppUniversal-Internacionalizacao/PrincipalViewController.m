//
//  PrincipalViewController.m
//  AppUniversal-Internacionalizacao
//
//  Created by Rafael Brigagão Paulino on 26/09/12.
//  Copyright (c) 2012 rafapaulino.com. All rights reserved.
//

#import "PrincipalViewController.h"

@interface PrincipalViewController ()

@end

@implementation PrincipalViewController
@synthesize minhaView;
@synthesize lblAnimacao;
@synthesize btnAnimar;

//para careegar uma tela via codigo evitar usar o comando [[UIStoryboard storyboardWithName:@"MainStoryBoard_Iphone]]
//ou [[UIStoryboard storyboardWithName:@"MainStoryBoard_Iphone]]
//fazendo dessa forma, cada vez que tiver que carregar uma tela via codigo, teremos que verificar em qual aparelho estamos
//ao inves disso usar o comeando:
//[self storyboard]
//esse comando ja carrega automaticamente o storyboard que esta sendo usado
//o unico detalhes e que a tela criada nos diferentes storybaords devera ter o mesmo ID para que possa ser carregada corretamente

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    lblAnimacao.text = NSLocalizedString(@"lblTexto", @"");
    
    [btnAnimar setTitle: NSLocalizedString(@"btnTexto", @"") forState:UIControlStateNormal];
    
}

- (void)viewDidUnload
{
    [self setMinhaView:nil];
    [self setLblAnimacao:nil];
    [self setBtnAnimar:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

//para chamar o storyboard vc pode chamar [self storyboard]
//ao inves de UIStoryboard ...

-(IBAction)animar:(id)sender
{
    //se precisamos saber em qual tipo de aparelho estamos no codigo, em tempo da execucao?
    int duracao;
    
    if ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad)
    {
        duracao = 3;
    }
    else
    {
        duracao = 1;
    }
    
    //sempre quando se fria app universal e precisamos mexer com posicionamento, devemos sempre pegar o tammanho da view onde estamos para poder se basear
    [UIView animateWithDuration:duracao animations:^{
        
        minhaView.center  = CGPointMake(self.view.frame.size.width - 50, self.view.frame.size.height - 50);
    }];
}

@end
