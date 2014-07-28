//
//  Deck.m
//  GameJam
//
//  Created by Christian Ambriz on 7/24/14.
//  Copyright (c) 2014 Kabam. All rights reserved.
//

#import "Deck.h"

@interface Deck()

@property (strong, nonatomic) NSMutableArray *cards; // of card

@end

@implementation Deck

- (NSMutableArray *)cards
{
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

-(void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop)
    {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
        
}

-(void) addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}

- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    
    if ([self.cards count]){
        unsigned index = arc4random() % [self.cards count];
        if ([self.cards count] < 46) {
            randomCard = self.cards[1];
            [self.cards removeObjectAtIndex:30];
        } else if ([self.cards count] < 47) {
            randomCard = self.cards[2];
            [self.cards removeObjectAtIndex:30];
        } else if ([self.cards count] < 48) {
            randomCard = self.cards[3];
            [self.cards removeObjectAtIndex:30];
        } else if ([self.cards count] < 49) {
            randomCard = self.cards[4];
            [self.cards removeObjectAtIndex:30];
        } else if ([self.cards count] < 50) {
            randomCard = self.cards[16];
            [self.cards removeObjectAtIndex:30];
        } else if ([self.cards count] < 51) {
            randomCard = self.cards[6];
            [self.cards removeObjectAtIndex:30];
        } else if ([self.cards count] < 52) {
            randomCard = self.cards[7];
            [self.cards removeObjectAtIndex:30];
        } else if ([self.cards count] < 53) {
            randomCard = self.cards[15];
            [self.cards removeObjectAtIndex:30];
        } else if ([self.cards count] < 54) {
            randomCard = self.cards[21];
            [self.cards removeObjectAtIndex:30];
        } else if ([self.cards count] < 55) {
            randomCard = self.cards[17];
            [self.cards removeObjectAtIndex:30];
        } else if ([self.cards count] < 56) {
            randomCard = self.cards[20];
            [self.cards removeObjectAtIndex:30];
        } else if ([self.cards count] < 57) {
            randomCard = self.cards[18];
            [self.cards removeObjectAtIndex:30];

        }
    }
    return randomCard;
}

@end
