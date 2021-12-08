#!/usr/bin/perl
use strict;

open(FL, "log_scores.txt");

my @logScores = <FL>;

chomp @logScores;

close FL;

my $total = 0.0;

$total = lnXpluslnY($logScores[0], $logScores[1]);

for(my $i=2;$i<@logScores;$i++) {
	$total = lnXpluslnY($total, $logScores[$i]);
}

for(my $i=0;$i<@logScores;$i++) {

	my $percent = exp($logScores[$i] - $total)*100.0;
	print "Total score $total\n";
	print "Log score $logScores[$i] is $percent % of total score\n";
}

sub lnXpluslnY {

	my ($first, $second) = @_;
        my $MAXEXP = -310;

        my $x = $first;
        my $y = $second;
        my $temp; 
	my $ln_yMINUSln_x; 
	my $plus;


        if ($y > $x) {
                $temp = $x;
                $x = $y;
                $y = $temp;
        }

        $ln_yMINUSln_x = $y - $x;
        if ($ln_yMINUSln_x < $MAXEXP) {
                $plus = $x;
        }
        else {
                $plus = log(1 + exp($ln_yMINUSln_x)) + $x;
        }

        return $plus;
}

