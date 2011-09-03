
#import "Cards.h"
@implementation Cards
//sets the card description based on the cards rank Called from setCard
-(void) setDescription{
}

-(void) setCard: (int) cardSuit: (int) cardRank: (int)cardNum
{
	suit=cardSuit;
	rank=cardRank;
	cardNumber= cardNum;
	//set the card description and value based on the rank
	switch (cardRank)
	{
		case 2:
		   cardName=(@"2");
			value=2;
			break;
		case 3:
			cardName=(@"3");
			value=3;
			break;
		case 4:
			cardName=(@"4");
			value=4;
			break;
		case 5:
			cardName=(@"5");
			value=5;
			break;
		case 6:
			cardName=(@"6");
			value=6;
			break;
		case 7:
			cardName=(@"7");
			value=7;
			break;
		case 8:
			cardName=(@"8");
			value=8;
			break;
		case 9:
			cardName=(@"9");
			value=9;
			break;
		case 10:
			cardName=(@"10");
			value=10;
			break;
		case 11:
			cardName=(@"J");
			value=10;
			break;
		case 12:
			cardName=(@"Q");
			value=10;
			break;
		case 13:
			cardName=(@"K");
			value=10;
			break;
		case 14:
			cardName=(@"A");
			value=10;
			break;
	default:
        NSLog (@"ERROR: IMPROPER CARD RANK SET");
        break;
	}
}
/*Getter*/
-(NSString*) getCard
{
	return cardName;
}
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
	return [NSString stringWithFormat:@"%@ of %@ ",cardName, s];

	
}
- (int) getCardNumber
{
	return cardNumber;
}
-(int) getSuit
{
	return suit;
}
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