require 'spec_helper'

describe LintTrap::Language::CSS do
  subject(:language){described_class}

  its(:name){is_expected.to eq('CSS')}
  its(:linters){is_expected.to eq([LintTrap::Linter::CSSLint])}
end
