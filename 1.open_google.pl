#/usr/bin/perl

use strict;
use warnings;
use Selenium::Chrome;

my $driver_path = 'C:\Users\jumpi\Documents\ChromeDriver\chromedriver78.exe';
my $driver = Selenium::Chrome->new(binary => $driver_path);
$driver->get('http://www.google.com');

sleep(3);

$driver->shutdown_binary;

