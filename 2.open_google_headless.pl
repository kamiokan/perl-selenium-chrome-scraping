#/usr/bin/perl

use strict;
use warnings;
use Selenium::Chrome;

my $driver_path = 'C:\Users\jumpi\Documents\ChromeDriver\chromedriver78.exe';
my $driver = Selenium::Chrome->new(
    binary => $driver_path,
    # ヘッドレス(GUI非表示)で立ち上げるために設定
    extra_capabilities => {chromeOptions => {args => ['headless', 'disable-gpu', 'window-size=1920,1080', 'no-sandbox' ]}},
);

use Data::Dumper;
print Dumper $driver;

$driver->get('http://www.google.com');

# スクリーンショットの取得
$driver->capture_screenshot("google_top.png");
sleep(3);

$driver->quit();


=pod
        "--disable-gpu",
        "--disable-extensions",
        "--proxy-server='direct://'",
        "--proxy-bypass-list=*",
        "--start-maximized",
        "--headless",
=cut
