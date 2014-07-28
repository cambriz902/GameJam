//
//  CardGameViewController.m
//  GameJam
//
//  Created by Christian Ambriz on 7/24/14.
//  Copyright (c) 2014 Kabam. All rights reserved.
//

#import "CardGameViewController.h"
#import "Deck.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface CardGameViewController ()
@property (strong, nonatomic) CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@end

@implementation CardGameViewController 

- (CardMatchingGame *)game
{
    if (!_game) _game = [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count] usingDeck:[self createDeck]];
    return _game;
}


- (Deck *)createDeck
{
    return [[PlayingCardDeck alloc] init];
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    int chosenButtonIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:chosenButtonIndex];
    [self updateUI];
}

- (void)updateUI
{
    for (UIButton *cardButton in self.cardButtons){
        NSInteger cardButtonIndex = [self.cardButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardButtonIndex];
        [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageForCard:card:cardButtonIndex] forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
        self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d", self.game.score];
    }
}

- (NSString *)titleForCard:(Card *)card
{
    return card.isChosen ? card.contents : @"";
}

- (UIImage *)backgroundImageForCard:(Card *)card:(NSInteger *)cardLocation
{
    if (cardLocation == 1) {
        return [UIImage imageNamed:card.isChosen ? @"Water_Outpost" : @"CardBack"];
    } else if (cardLocation == 2) {
        return [UIImage imageNamed:card.isChosen ? @"Ice_Dragon" : @"CardBack"];
    } else if (cardLocation == 3) {
        return [UIImage imageNamed:card.isChosen ? @"Fire_Outpost" : @"CardBack"];
    } else if (cardLocation == 4) {
        return [UIImage imageNamed:card.isChosen ? @"Wind_Outpost" : @"CardBack"];
    } else if (cardLocation == 5) {
        return [UIImage imageNamed:card.isChosen ? @"Fire_Dragon" : @"CardBack"];
    } else if (cardLocation == 6) {
        return [UIImage imageNamed:card.isChosen ? @"Water_Dragon" : @"CardBack"];
    } else if (cardLocation == 7) {
        return [UIImage imageNamed:card.isChosen ? @"Stone_Outpost" : @"CardBack"];
    } else if (cardLocation == 8) {
        return [UIImage imageNamed:card.isChosen ? @"Spectral_Dragon" : @"CardBack"];
    } else if (cardLocation == 9) {
        return [UIImage imageNamed:card.isChosen ? @"Ice_Outpost" : @"CardBack"];
    } else if (cardLocation == 10) {
        return [UIImage imageNamed:card.isChosen ? @"Stone_Dragon" : @"CardBack"];
    } else if (cardLocation == 11) {
        return [UIImage imageNamed:card.isChosen ? @"Wind_Dragon" : @"CardBack"];
    } else if (cardLocation == 12) {
        return [UIImage imageNamed:card.isChosen ? @"Water_Outpost" : @"CardBack"];
    } else if (cardLocation == 0) {
        return [UIImage imageNamed:card.isChosen ? @"Spectral_Ruins" : @"CardBack"];
    }
    return [UIImage imageNamed:card.isChosen ? @"CardFront" : @"CardBack"];
}


@end
