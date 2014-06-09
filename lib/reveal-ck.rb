require_relative 'reveal-ck/version'
require_relative 'reveal-ck/config'
require_relative 'reveal-ck/retrieve'
require_relative 'reveal-ck/render'
require_relative 'reveal-ck/slide'
require_relative 'reveal-ck/presentation'
require_relative 'reveal-ck/presentation_dsl'
require_relative 'reveal-ck/templates'
require_relative 'reveal-ck/builders'
require_relative 'reveal-ck/markdown'
require_relative 'reveal-ck/tilt/config'

# RevealCK::path_to provides the path where files within the reveal-ck
# gem are located on your system.
module RevealCK
  def self.path_to(*args)
    lib = File.dirname(__FILE__)
    gem_root = File.join(lib, '..')
    location = File.expand_path(gem_root)
    File.join(location, *args)
  end
end

# RevealCK::REVEALJS_FILES is a list of files that compromise
# reveal.js bundled into this gem.
module RevealCK
  revealjs = path_to('reveal.js')
  REVEALJS_FILES = Dir.glob("#{revealjs}/**/*")
end