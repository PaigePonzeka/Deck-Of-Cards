//
//  Test.m
//  Cards
//
//  Created by Paige Ponzeka on 2/13/11.
//  Copyright 2011 NYU. All rights reserved.
//

#import "Cards.h"
#import "Deck.h"
#import <Foundation/Foundation.h>
int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    /*
     Just some sample code to see it in action
     */
	//intialize the Deck
	Deck *newDeck=[[Deck alloc] init];
	[newDeck createDeck];
    // put out a card
    [newDeck printCards];
    Cards *card = [newDeck getNextCard];
    NSLog(@"Pulling Card: %@ Card Value: %d", [card getFullCard], [card getCardNumber] );
    // print the deck
    [newDeck printCards];


    [pool drain];
    return 0;
}
