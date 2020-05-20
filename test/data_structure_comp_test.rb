require_relative 'test_helper'

# DataStructureCompTest.
# @class_description
#   Tests the DataStructureComp class.
class DataStructureCompTest < Minitest::Test

  # test_conf_doc_f_ex().
  # @description
  #   The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, README.md,
  #   .yardopts, .gitignore, Changelog.md, CODE_OF_CONDUCT.md,
  #   data_structure_comp.gemspec, Gemfile.lock, and Rakefile files exist.
  def test_conf_doc_f_ex()
    
    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')
    assert_path_exists('.yardopts')
    assert_path_exists('.gitignore')
    assert_path_exists('Changelog.md')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('data_structure_comp.gemspec')
    assert_path_exists('Gemfile.lock')
    assert_path_exists('Rakefile')
  
  end

  # test_version_declared().
  # @description
  #   The version was declared.
  def test_version_declared()
    refute_nil(DataStructureComp::VERSION)
  end

  # setup().
  # @description
  #   Set fixtures.
  def setup()
  end
  
  # teardown().
  # @description
  #   Cleanup.
  def teardown()
  end
  
end
