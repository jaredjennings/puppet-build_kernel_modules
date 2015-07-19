require 'spec_helper'
describe 'build_kernel_modules' do

  context 'with defaults for all parameters' do
    it { should contain_class('build_kernel_modules') }
  end
end
