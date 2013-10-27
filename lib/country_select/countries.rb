# encoding: utf-8
require 'countries'

module CountrySelect
  COUNTRIES =  ISO3166::Country.all.inject({}) {|r,s| r.merge!({s[1] => s[0]})} unless const_defined?("COUNTRIES")

  ISO_COUNTRIES_FOR_SELECT = COUNTRIES.invert unless const_defined?("ISO_COUNTRIES_FOR_SELECT")
  COUNTRIES_FOR_SELECT = COUNTRIES.values unless const_defined?("COUNTRIES_FOR_SELECT")
end
