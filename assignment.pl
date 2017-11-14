%Definitions for isElementInList(El, List)

	member(El,[El|_]).
	member(El,[_|List]) :- member(El,List).
	isElementInList(El,List):- member(El,List).

%Definitions for reverseList(List, ReversedList)

	reverseList([],[]).
	reverseList([H|T],ReversedList):-  reverseList(T,RevT),  append(RevT,[H],ReversedList).
	
%insertElementIntoListEnd(El, List, NewList)

	insertElementIntoListEnd(El,[ ],[El]).
	insertElementIntoListEnd(El,[H|T],[H|X]) :- insertElementIntoListEnd(El,T,X).

%Definitions for mergeLists(List1, List2, Merged)

	mergeLists([], List2, List2).
	mergeLists([H|T],List2,[H|M]) :- mergeLists(T,List2,M).