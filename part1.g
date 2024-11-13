grammar RegexTest;

// Lexer rules
// Recognizes strings containing all six vowels in order (a, e, i, o, u, y)
CONTAINS_VOWELS_IN_ORDER : '.*a.*e.*i.*o.*u.*y.*' ;

// Recognizes strings composed of 'a' and 'b' containing at least three 'a's
AT_LEAST_THREE_A : 'b*(a.*a.*a.*)b*|b*(.*a.*a.*a)b*' ;

// Recognizes dates in the format jj/mm/aaaa with basic constraints
DATE_FORMAT : '(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/([0-9]{4})' ;

// Parser rule to match a line with one of these expressions
line
    : CONTAINS_VOWELS_IN_ORDER
    | AT_LEAST_THREE_A
    | DATE_FORMAT
    ;
