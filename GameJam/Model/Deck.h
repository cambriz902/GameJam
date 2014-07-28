//
//  Deck.h
//  GameJam
//
//  Created by Christian Ambriz on 7/24/14.
//  Copyright (c) 2014 Kabam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

-(Card *)drawRandomCard;




























@end
