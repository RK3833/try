require 'open-uri'
require 'nokogiri'

# スクレイピング先のURL
url = 'http://www.yahoo.co.jp/'

charset = nil
html = open(url) do |f|
  charset = f.charset # 文字種別を取得
  f.read # htmlを読み込んで変数htmlに渡す
end

# htmlをパース(解析)してオブジェクトを作成
doc = Nokogiri::HTML.parse(html, nil, charset)

# タイトルを表示
p doc.title #=> "Yahoo! JAPAN"と返す