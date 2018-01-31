require 'json'
require 'net/http'
require 'nokogiri'
require 'uri'

# Resources
# - https://stackoverflow.com/questions/27457977/searching-wikipedia-using-api

module Wikio

  WIKIPEDIA_API_URL = 'https://en.wikipedia.org/w/api.php'
  WIKIPEDIA_DOMAIN = 'https://en.wikipedia.org'
  def self.get_wiki_url(term)
    params = {
      action: 'opensearch',
      search: term,
      limit: 1,
      namespace: 0,
      format: 'json'
    }
    uri = URI(WIKIPEDIA_API_URL)
    uri.query = URI.encode_www_form(params)
    res = Net::HTTP.get(uri)
    return JSON.parse(res)[3][0]
  end

  def self.get_first_link(wiki_url)
    uri = URI(wiki_url)
    body = Net::HTTP.get(uri)
    doc = Nokogiri::HTML(body)
    subdoc = doc.xpath(
      "//div[contains(@class, 'mw-parser-output')]/p/a"\
      " | //div[contains(@class, 'mw-parser-output')]/p/i/a"
    ).each do |node|
      href = node.attr('href')
      if href =~ /\A\/wiki/
        return WIKIPEDIA_DOMAIN + href
      end
    end
  end
end
