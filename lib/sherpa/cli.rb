module Sherpa
  module CommandLineInterface
    # TODO(mtwilliams): Look into using Thor?
    require 'gli'
    include GLI::App
    extend self

  # program_name      "Sherpa.gem.name"
    version           Sherpa::Gem.version.to_s
    program_desc      Sherpa::Gem.summary
    program_long_desc Sherpa::Gem.description

  # TODO(mtwilliams): Use a proper logger.
  # switch :verbose, :default => false,
  #                  :negatable => false
  end
end
