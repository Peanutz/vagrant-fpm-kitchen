task :build, [:recipe] do |t, args|
  recipe = args[:recipe] || '*'
  Dir.glob("recipes/#{recipe}/{recipe,[0-9]*}.rb") do |file|
    system "fpm-cook clean #{file} && " \
           "sudo fpm-cook install-deps #{file} && " \
           "fpm-cook package #{file} && " \
           "fpm-cook clean #{file}"
  end
end
