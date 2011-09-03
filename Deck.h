//
//  Deck.h
//  Cards
//
//  Created by Paige Ponzeka on 2/13/11.
//  Copyright 2011 NYU. All rights reserved.
//

#import "Deck.h"
#import "Cards.h"

/*
 Has a function that initializes a deck of cards
 ahs a function that shuffles the cards 
 */
@interface Deck : NSObject {
	NSMutableArray* newDeck;
	int currentPosition;
	NSString* selectedCard;
	NSString* selectedSuit;

}
//creates a default deck and shuffle it
-(void) createNewDeck;
//shuffles the newdeck
-(void) shuffle; 
- (void) KnuthShuffle;
-(void) printCards;
-(NSString*) getSelectedSuit;
-(NSString*) getSelectedCard;
-(void) setSelected: (NSString*) suit: (NSString*) card; 
//get hand
-(NSMutableArray*) getNewDeck;

//get the first card from the deck
-(Cards*) getNextCard;
-(void) dealloc;
@end
