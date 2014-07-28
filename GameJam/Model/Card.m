//
//  Card.m
//  GameJam
//
//  Created by Christian Ambriz on 7/24/14.
//  Copyright (c) 2014 Kabam. All rights reserved.
//

#import "Card.h"
#import "PlayingCard.h"

@interface Card()

@end

@implementation Card


- (int)match:(NSArray *)otherCards
{
    int score = 0;
    PlayingCard *otherCard = [otherCards firstObject];
    for(Card *card in otherCards){
        NSRange range = [card.contents rangeOfString:[NSString stringWithFormat:@"%i", otherCard.rank]];
      if(range.location != NSNotFound){
        score = 1;
      }
    }
    
    return score;
}


@end
