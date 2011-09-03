//
//  Deck.m
//  Cards
//
//  Created by Paige Ponzeka on 2/13/11.
//  Copyright 2011 NYU. All rights reserved.
//

#import "Deck.h"


@implementation Deck
//creates a default deck and shuffle it
-(void) createNewDeck{
	//intialize newDeck array
	newDeck= [NSMutableArray arrayWithCapacity:53]; 
	newDeck = [[NSMutableArray alloc] init]; 
	int set=0;
	//use  loop to create new cards and fill the array
	for(int s=1; s<=4; s++)
	{
		for(int r=2; r<=14;r++)
		{
			Cards* newCard=[[Cards alloc] init];
			
			[newCard setCard: s:r:set];
			NSString* suit;
			if(s ==1)
			{
				suit=@"Spades";
			}
			else if(s==2)
			{
				suit=@"Hearts";
			}
			else if (s==3)
			{
				suit=@"Clubs";
			}
			else if (s==4)
			{
				suit= @"Diamonds";
			}
			//NSLog(@"%@ Of %@, Value: %d",[newCard getFullCard],suit, [newCard getCardNumber] );
			[newDeck addObject:newCard]; 
			set++;
		}
		
	}
	[self KnuthShuffle];
	[self KnuthShuffle];
	[self KnuthShuffle];
	//shuffle the deck
}
//shuffles the newdeck
-(void) shuffle{
	currentPosition=0;
	//use a shuffle algorithm to rearrange the deck
}
- (void) KnuthShuffle
{
	//Deck* tempDeck=[[Deck alloc] init];
	currentPosition=0;
    int rand;
	int size= ([newDeck count]-1);
	//NSLog(@"Shuffling Cards...");
    for(int i=size;i>0;i--)
    {
		Cards *temp=[[Cards alloc] init];
        rand=arc4random() % size;
		[newDeck addObject:[newDeck objectAtIndex: rand]];
		[newDeck removeObjectAtIndex: rand];
		[temp release];
		

    }
	
	//[self printCards];
}
-(void) printCards
{
	NSLog(@"Printing Cards \n");
	int size=[newDeck count];
	for(int i=0;i<size;i++)
    {
		NSLog(@"%d %@ Card Value: %d",i,[[newDeck objectAtIndex: i] getFullCard], [[newDeck objectAtIndex: i] getCardNumber]);
    }
	

}

//get hand
-(NSMutableArray*) getNewDeck
{
	return newDeck;
}
//get the next card in the deck
-(Cards*) getNextCard{
	//get the card at currentPosition from the deck
	Cards* card;
	card = [newDeck objectAtIndex:currentPosition];
	//increase current position
	currentPosition++;
	//return the card
	return card;
}

-(NSString*) getSelectedSuit{
	return selectedSuit;
}
-(NSString*) getSelectedCard{
	return selectedCard;
}
-(void) setSelected: (NSString*) suit: (NSString*) card
{
	selectedCard=card;
	selectedSuit=suit;
}
-(void) dealloc {
	[newDeck release];
    [super dealloc];
}
@end
