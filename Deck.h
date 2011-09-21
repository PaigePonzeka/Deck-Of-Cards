//
//  Deck.h
//  Cards
//
//  Created by Paige Ponzeka on 2/13/11.
//  Copyright 2011. All rights reserved.
//

#import "Deck.h"
#import "Cards.h"

/*
 Has a function that initializes a deck of cards
 ahs a function that shuffles the cards 
 each deck is an array of card objects
 */
@interface Deck : NSObject {
	NSMutableArray* deck; 
	int current_position;
	NSString* selected_card;
	NSString* selected_suit;

}

//creates a default deck and shuffle it
-(void) createDeck;

//shuffles the deck a few times
-(void) shuffleDeck;

// uses knuth algorithm to rearrange the cards
- (void) KnuthShuffle;

// prints the cards to the console (really just for debugging)
-(void) printCards;

// return the suit of the currently selected card (Diamonds, Hearts, Spades, Clubs)
-(NSString*) getSelectedSuit;

// return the Card (A, 2, 3, 4, 5, 6, 7, 8, 9, J, Q, K)
-(NSString*) getSelectedCard;

// set the selected card
-(void) setSelectedCard: (NSString*) suit: (NSString*) card; 

//get the current deck of cards
-(NSMutableArray*) getDeck;

//get the next card from the top of the deck
-(Cards*) getNextCard;

// memory clean up
-(void) dealloc;
@end
