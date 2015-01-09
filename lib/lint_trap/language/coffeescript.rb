require_relative 'base'
require_relative '../linter/coffeelint'

module LintTrap
  module Language
    # CoffeeScript
    class CoffeeScript < Base
      def linters
        super(Linter::CoffeeLint)
      end
    end
  end
end
