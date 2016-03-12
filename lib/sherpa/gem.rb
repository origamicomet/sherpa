require 'ostruct'

module Sherpa
  module Gem
    # The name of this Gem.
    def self.name
      "sherpa"
    end

    # The name and email address of the primary author.
    def self.author
      self.authors.first
    end

    # The name and email addresses of all authors.
    def self.authors
      [["Michael Williams", "m.t.williams@live.com"]].map do |author|
        name, email = author
        OpenStruct.new(name: name, email: email)
      end
    end

    # This Gem's homepage URL.
    def self.homepage
      "https://sherpa.origamicomet.com/"
    end

    # This Gem's URL.
    def self.url
      "https://rubygems.org/gems/#{self.name}"
    end

    # A short summary of this Gem.
    def self.summary
      "Meta tool for conducting journeys with Yeti."
    end

    # A full description of this Gem.
    def self.description
      "Sherpa is a package manager for Yeti and friends."
    end

    module VERSION #:nodoc:
      MAJOR, MINOR, PATCH, PRE = [0, 0, 0, 0]
      STRING = [MAJOR, MINOR, PATCH, PRE].compact.join('.')
    end

    # The semantic version of the this Gem.
    def self.version
      Gem::VERSION::STRING
    end

    # The license covering this Gem.
    def self.license
      "Public Domain"
    end
  end
end
