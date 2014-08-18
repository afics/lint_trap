require_relative 'line_parser'

module LintTrap
  module Parsers
    # Handles parsing LintCI standard format
    class StandardParser < LineParser

    private

      def violation_regex
        /
          (?<file>[^:]+):
          (?<line>[^:]*):
          (?<column>[^:]*):
          (?<length>[^:]*):
          (?<rule>[^:]*):
          (?<severity>[^:]*):
          (?<message>.+)
        /x
      end
    end
  end
end
