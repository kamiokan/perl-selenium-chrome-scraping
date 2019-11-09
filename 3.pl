#/usr/bin/perl

use strict;
use warnings;
use Test::More;
use Selenium::Waiter qw(wait_until);
use Test::Selenium::Chrome;

my $driver_path = 'C:\Users\jumpi\Documents\ChromeDriver\chromedriver78.exe';
my $driver = Test::Selenium::Chrome->new(
    # webdriverのパスを指定
    binary => $driver_path,
    # ver.1.27で足りない要素を指定
    webelement_class => 'Test::Selenium::Remote::WebElement',
    # ヘッドレス(GUI非表示)で立ち上げるために設定
    extra_capabilities => {chromeOptions => {args => ['headless', 'disable-gpu', 'window-size=1920,1080', 'no-sandbox' ]}}
    );

$driver->get('http://www.google.com');

# スクリーンショットの取得
#$driver->capture_screenshot("google_top.png");
sleep(3);

$driver->shutdown_binary;

=pod
        "--disable-gpu",
        "--disable-extensions",
        "--proxy-server='direct://'",
        "--proxy-bypass-list=*",
        "--start-maximized",
        "--headless",
=cut
