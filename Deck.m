
//
//  Deck.m
//  Cards
//
//  Created by Paige Ponzeka on 2/13/11.
//  Copyright 2011. All rights reserved.
//

#import "Deck.h"


@implementation Deck

//creates a default deck and shuffles it
-(void) createDeck{
    
	//alloc the deck
	deck= [NSMutableArray arrayWithCapacity:53]; 
	deck = [[NSMutableArray alloc] init]; 
	int set=0;
    /*
     Uses nested for loops to loop through suits
     then loop through cards
     */
	for(int suit=1; suit<=4; suit++)
	{
		for(int card=2; card<=14; card++)
		{   
            //alloc a new card object and set its data
			Cards* new_card=[[Cards alloc] init];
			[new_card setCard: suit :card:set];
            
            // set the string name for each suits
            [deck addObject: new_card]; 
			set++;
		}
		
	}
    //shuffling the deck, algorithm could be better, I find running it a few times to be the most sufficient
	[self KnuthShuffle];
	[self KnuthShuffle];
	[self KnuthShuffle];
}

//shuffles the newdeck
-(void) shuffle{
	current_position=0;
	//use a shuffle algorithm to rearrange the deck
}

- (void) KnuthShuffle
{
	
	current_position=0;
    int random_number;
	int size= ([deck count]-1);
	
    for(int i=size;i>0;i--)
    {
        //generate a random number
        random_number=arc4random() % size;
        // create a temporary card
		Cards *temp=[[Cards alloc] init];
        //switching objects at random number
		[deck addObject:[deck objectAtIndex: random_number]];
		[deck removeObjectAtIndex: random_number];
		[temp release];

    }
	
}
// printing cards, really meant just for debugging
-(void) printCards
{
	NSLog(@"Printing Cards \n");
	int size=[deck count];
	for(int i=0;i<size;i++)
    {
		NSLog(@"%d %@ Card Value: %d",i,[[deck objectAtIndex: i] getFullCard], [[deck objectAtIndex: i] getCardNumber]);
    }
	

}

//get the current deck of cards
-(NSMutableArray*) getNewDeck
{
	return deck;
}

//get the next card in the deck
-(Cards*) getNextCard{
	//get the card at current_position from the deck
	Cards* card;
	card = [deck objectAtIndex:current_position];
	//increase current position
	current_position++;
	//return the card
	return card;
}

-(NSString*) getSelectedSuit{
	return selected_suit;
}

-(NSString*) getSelectedCard{
	return selected_card;
}

-(void) setSelected: (NSString*) suit: (NSString*) card
{
	selected_card = card;
	selected_suit = suit;
}
-(void) dealloc {
	[deck release];
    [super dealloc];
}
@end
