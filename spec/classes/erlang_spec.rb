require 'spec_helper'

describe 'erlang' do
  it { should include_class('autoconf') }
  it { should include_class('libtool') }

  it do
    should contain_package('erlang').with({
      :require => ['Package[automake]', 'Package[libtool]'],
    })
  end

  it { should contain_package('automake').with_require('Package[autoconf]') }
end
