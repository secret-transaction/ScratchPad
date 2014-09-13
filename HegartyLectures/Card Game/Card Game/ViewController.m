//
//  ViewController.m
//  Card Game
//
//  Created by Lyndon Michael Bibera on 9/3/14.
//  Copyright (c) 2014 Secret Transaction Inc. All rights reserved.
//

#import "ViewController.h"
#import "CardMatchingGame.h"
#import "Deck.h"

@interface ViewController ()

//views are held by the ViewController using a weak
//pointer, because the view is held strongly by the root view

@property (strong, nonatomic) CardMatchingGame *game;
@property (strong, nonatomic) Deck *deck;

@end

@implementation ViewController

- (CardMatchingGame *)game
{
    if (_game) {
        _game = [[CardMatchingGame alloc] initWithCardCount:1 usingDeck:nil];
    }
    
    return _game;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

@end
