#!/usr/bin/perl

# stats.pl - returns CPU and RAM usage


# CPU stuff

my $cpuusage = `top -bn 2 -d 0.2 | grep '^%Cpu' | tail -n 1 | gawk '{print \$2+\$4+\$6}'`;
chomp $cpuusage;
$cpuusage =~ s/^([0-9][0-9]*)(\.[0-9][0-9]*)$/$1/;
printf "CPU: %02d%% ","$cpuusage";