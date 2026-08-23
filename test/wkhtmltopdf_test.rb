require 'minitest/autorun'
load File.expand_path('../bin/wkhtmltopdf', __dir__)

class WkhtmltopdfTest < Minitest::Test
  def test_normalize_linux_os_maps_omarchy_to_ubuntu_22_04
    assert_equal 'ubuntu_22.04', normalize_linux_os('omarchy_rolling')
  end

  def test_normalize_linux_os_preserves_archlinux
    assert_equal 'archlinux', normalize_linux_os('arch_rolling')
  end
end
