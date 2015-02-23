# Public: Install Erlang from a dmg file.
#
# Examples
#
#   include erlang
class erlang($version = '17.0-1')
{
  case $::macosx_productversion_major {
    '10.10': {
      if versioncmp($version, '17.3-2') > 0 {
        $_osx_version = '10.10'
      }
      else {
        $_osx_version = '10.9'
      }
    }
    '10.9': { $_osx_version = '10.9' }
    default: { $_osx_version = '10.6.8' }
  }

  package { 'Erlang':
    provider => 'pkgdmg',
    source   => "http://packages.erlang-solutions.com/site/esl/esl-erlang/FLAVOUR_3_general/esl-erlang_${version}~osx~${_osx_version}_amd64.dmg"
  }
}
