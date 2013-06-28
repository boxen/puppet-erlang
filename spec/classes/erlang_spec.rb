require 'spec_helper'

describe 'erlang' do
  it do
    should contain_package('Erlang').with({
      :provider => 'pkgdmg',
      :source   => 'https://elearning.erlang-solutions.com/couchdb/rbingen_adapter/package_erlang_R16B01-1_kgadek_2013.06.18_14:30:24/Erlang_R16B01_x64.dmg'
    })
  end
end
