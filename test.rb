require 'nokogiri'
require 'open-uri'

doc = Nokogiri::XML(open("http://api.childcare.go.kr/mediate/rest/cpmsapi020/cpmsapi020/request?key=20f62935a253418bb0ed6c8601934b7d&arname=%EC%9D%B8%EC%B2%9C%EA%B4%91%EC%97%AD%EC%8B%9C"))
item = doc.xpath("//item")[0]  # first group parsing

members = item.xpath("//sidoname")[0]

puts members.inner_text

members = item.xpath("//sigunname")[0]

puts members.inner_text

members = item.xpath("//arcode")[0]

puts members.inner_text