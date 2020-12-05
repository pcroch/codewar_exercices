# frozen_string_literal: true

# Write a function that when given a URL as a string, parses out just the
#  domain name and returns it as a string. For example:

# domain_name("http://github.com/carbonfive/raygun") == "github"
# domain_name("http://www.zombie-bites.com") == "zombie-bites"
# domain_name("https://www.cnet.com") == "cnet"

# solution from regex come from: https://www.regextester.com/97066
#--------------------------------------
# regex = /(?![\.]|[\/]|(w{1}))(?:[a-zA-Z0-9-]{0,61})?\./

# ................................
require 'pry'

def domain_name(url)
  # return just the domain name

  # regex
  regex = %r{(?!\.|/|(w{1}))(?:[a-zA-Z0-9-]{0,61})?\.}

  # match the domain with the dots
  url_match = url.match(regex)

  # remove the dots at the end of the string
  url_match[0][0...-1]

  # binding.pry
end

# url="http://github.com/carbonfive/raygun"
# url=" www.xakep.ru"
# url=" http://google.co.jp"
# url=" https://youtube.com"
# url=" https://rubular.com"
url = 'http://el9xnxr.name/'
# url = 'www.wp9l0xyhiv4wde09.org'
# url= "icann.org"

p domain_name(url)

# others examples

# def domain_name(url)
#   url.match(%r{//[^/]*?([^/.]+)\.[^/.]+(/|$)})[1]
#   binding.pry
# end
