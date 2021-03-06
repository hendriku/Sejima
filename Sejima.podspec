Pod::Spec.new do |s|
  s.name = 'Sejima'
  s.version = '1.5.0'
  s.license = 'MIT'
  s.summary = 'Sejima is a framework that expose reusable components.'
  s.description  = <<-DESC
    As we always use the same or a really close object, we made severals components that we want to share with you.
                   DESC
  s.homepage = 'https://github.com/MoveUpwards/Sejima.git'
  s.authors = { 'Damien NOËL DUBUISSON' => 'damien@slide-r.com', 'Loïc GRIFFIÉ' => 'loic@slide-r.com' }
  s.source = { :git => 'https://github.com/MoveUpwards/Sejima.git', :tag => s.version }
  s.swift_version   = '5.0'

  s.ios.deployment_target = '10.0'

  s.source_files = 'Sejima/Sources/**/*.{swift,xib}'

  s.frameworks = 'Foundation'

  s.dependency 'Neumann'
end
