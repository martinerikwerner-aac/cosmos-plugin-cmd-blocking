# encoding: ascii-8bit

# Create the overall gemspec
spec = Gem::Specification.new do |s|
  s.name = 'cosmos-test'
  s.summary = 'Ball Aerospace COSMOS cosmos-test plugin'
  s.description = <<-EOF
    cosmos-test plugin for deployment to COSMOS
  EOF
  s.license = 'AGPL-3.0-only'
  s.authors = ['Anonymous']
  s.email = ['name@domain.com']
  s.homepage = 'https://github.com/BallAerospace/COSMOS'
  s.platform = Gem::Platform::RUBY

  time = Time.now.strftime("%Y%m%d%H%M%S")
  if ENV['VERSION']
    s.version = ENV['VERSION'].dup + ".#{time}"
  else
    s.version = '0.0.0' + ".#{time}"
  end
  s.files = Dir.glob("{targets,lib,procedures,tools,microservices}/**/*") + %w(Rakefile README.md plugin.txt)
end
