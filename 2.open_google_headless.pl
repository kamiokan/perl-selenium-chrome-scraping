#/usr/bin/perl

use strict;
use warnings;
use Selenium::Remote::Driver;

# このスクリプトを実行する前にスタンドアロンサーバーを起動しておく
# java -Dwebdriver.chrome.driver=/Users/kamiokan/Documents/bin/chromedriver78 -jar /Users/kamiokan/Documents/bin/selenium-server-standalone-3.141.59.jar
my $driver = Selenium::Remote::Driver->new(
  browser_name => 'chrome',
  extra_capabilities => { chromeOptions => {args => [
    'window-size=1920,1080',
    'disable-gpu',
    'disable-extensions',
    "proxy-server='direct://'",
    'proxy-bypass-list=*',
    'no-sandbox',
    'headless',
  ]}},
);

use Data::Dumper;
print Dumper $driver;

$driver->get('http://www.google.com');

# スクリーンショットの取得
$driver->capture_screenshot("google_top.png");
sleep(3);

$driver->quit();

__END__
# todo chromeOptions 中身を調べる
        "--disable-gpu",
        "--disable-extensions",
        "--proxy-server='direct://'",
        "--proxy-bypass-list=*",
        "--start-maximized",
        "--headless",
