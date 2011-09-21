/*
 *  Card.h
 *  Cards
 *
 *  Created by Paige Ponzeka on 2/12/11.
 *  Copyright 2011 NYU. All rights reserved.
 *
 */

/*
 Each Card Has a 
	int Suit 1-4
		1= Spade
		2= Heart
		3= Club
		4= Diamond
	NSString CardName:
		i.e. Nine, Jack, Queen ETC
	int Rank(2=A)
		i.e. 2-14
	int value (such as in blackJack)
		i.e. 2-11
 */
#import "Cards.h"
#import <Foundation/Foundation.h>
@interface Cards:NSObject
{
	int suit; //number based on suit
	NSString* card_name; //card description
	int rank; //in card to card comparisons for winning hands
	int value; //such as in Scat
	int card_number;
}

/*setter*/
-(void) setCard: (int) s: (int) r : (int) cardNum; 

/*Getter*/
-(NSString*) getCard;

// gets the card defailts
-(NSString*) getFullCard;

// gets suit number
-(int) getSuit;

//returns the string representation of a suit
-(NSString*) getSuitString; 

// get the card rank
-(int) getCardNumber;


@end