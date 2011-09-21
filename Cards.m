
#import "Cards.h"
@implementation Cards

//sets the card description based on the cards rank Called from setCard
-(void) setDescription{
}

-(void) setCard: (int) card_suit: (int) card_rank: (int)card_num
{
	suit = card_suit;
	rank = card_rank;
	card_number = card_num;
	
    //set the card description and value based on the rank
    /*
     Ranks are set with the assumption that A is always a high card, if you
     play poker you know that, sometimes that isn't the case, 
     the best fix for that would to put in some soft of boolean to check which 
     game you are in and to set the ace high or low based on that
     */
	switch (card_rank)
	{
		case 2:
		    card_name=(@"2");
			value=2;
			break;
		case 3:
			card_name=(@"3");
			value=3;
			break;
		case 4:
			card_name=(@"4");
			value=4;
			break;
		case 5:
			card_name=(@"5");
			value=5;
			break;
		case 6:
			card_name=(@"6");
			value=6;
			break;
		case 7:
			card_name=(@"7");
			value=7;
			break;
		case 8:
			card_name=(@"8");
			value=8;
			break;
		case 9:
			card_name=(@"9");
			value=9;
			break;
		case 10:
			card_name=(@"10");
			value=10;
			break;
		case 11:
			card_name=(@"J");
			value=10;
			break;
		case 12:
			card_name=(@"Q");
			value=10;
			break;
		case 13:
			card_name=(@"K");
			value=10;
			break;
		case 14:
			card_name=(@"A");
			value=10;
			break;
	default:
        NSLog (@"ERROR: IMPROPER CARD RANK SET");
        break;
	}
}
/*Get the name of the card*/
-(NSString*) getCard
{
	return card_name;
}

// get the full string name
-(NSString*) getFullCard
{
	NSString* s;
	if(suit ==1)
	{
		s=@"Spades";
	}
	else if(suit==2)
	{
		s=@"Hearts";
	}
	else if (suit==3)
	{
		s=@"Clubs";
	}
	else if (suit==4)
	{
		s= @"Diamonds";
	}
	return [NSString stringWithFormat:@"%@ of %@ ",card_name, s];	
}

// get the card number in the deck
- (int) getCardNumber
{
	return card_number;
}

// get the card suit
-(int) getSuit
{
	return suit;
}

// get the suit converted to a string
-(NSString*) getSuitString
{
	if(suit == 1)
		return @"Spade";
	else if (suit ==2)
		return @"Heart";
	else if (suit ==3)
		return @"Club";
	else if (suit == 4)
		return @"Diamond";
	else
		NSLog(@"ERROR WRONG SUIT VALUE FOR CARD!");
	
	return @"error";
}

@end