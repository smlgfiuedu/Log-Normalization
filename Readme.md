NAME

log_norm.pl - Log normalization perl script

SYNOPSIS

log_norm.pl

AVAILABILITY

Git repository (public)

DESCRIPTION

This scripts calculates log scores provided in a text file log_scores.txt in the same directory.

EXAMPLES

If you run the script with the text file log_scores.txt in the same directory with the following content:

2.972013412
1.557986984
4.648754528
3.506570268
-0.434294482
-2.694955206
-3.643825586
-0.508617802

You will get the following results:

Total score 5.09627312309116
Log score 2.972013412 is 11.952141590284 % of total score
Total score 5.09627312309116
Log score 1.557986984 is 2.90630945243736 % of total score
Total score 5.09627312309116
Log score 4.648754528 is 63.9212329928271 % of total score
Total score 5.09627312309116
Log score 3.506570268 is 20.398621619523 % of total score
Total score 5.09627312309116
Log score -0.434294482 is 0.396373861224409 % of total score
Total score 5.09627312309116
Log score -2.694955206 is 0.0413344848523151 % of total score
Total score 5.09627312309116
Log score -3.643825586 is 0.0160038089915447 % of total score
Total score 5.09627312309116
Log score -0.508617802 is 0.367982189860324 % of total score

The results show that log score of 3.506570268 is about 20.3986% of the sum of all log scores provided in log_scores.txt

FILES

log_scores.txt: a text file that has log score per line. The file should be in the same directory.

SEE ALSO

Log likelihood score, BDe score, Log score
