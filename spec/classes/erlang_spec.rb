require 'spec_helper'

describe 'erlang' do
  context 'Mac OS < 10.9' do
    let(:facts) do
      {
        :macosx_productversion_major => '10.8'
      }
    end

    it do
      should contain_package('Erlang').with({
        :provider => 'pkgdmg',
        :source   => 'http://packages.erlang-solutions.com/site/esl/esl-erlang/FLAVOUR_1_general/esl-erlang_17.0-1~osx~10.6.8_amd64.dmg'
      })
    end
  end

  context 'Mac OS 10.9' do
    let(:facts) do
      {
        :macosx_productversion_major => '10.9'
      }
    end

    it do
      should contain_package('Erlang').with({
        :provider => 'pkgdmg',
        :source   => 'http://packages.erlang-solutions.com/site/esl/esl-erlang/FLAVOUR_1_general/esl-erlang_17.0-1~osx~10.9_amd64.dmg'
      })
    end
  end
end
