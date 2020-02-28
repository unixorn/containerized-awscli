task :default => [:usage]
task :help => [:usage]
task :clean => [:purge]
task :build => [:build_container]
task :b => [:build_container]

CONTAINER_NAME = 'unixorn/containerized-awscli'
PROCESSOR=`uname -m`.strip()
TIMESTAMP=`date +%Y-%m-%d-%H-%M-%S`.strip()

task :usage do
  puts 'Usage:'
  puts
  puts 'rake build:      Create the container for docker-compose'
  puts 'rake clean:      Clean up after building'
  puts
end

# Tasks

desc 'build container'
task :build_container do
  puts "Building #{CONTAINER_NAME} for #{PROCESSOR}"
  sh %{ docker-compose build }
  sh %{ docker tag containerized-awscli_c-awscli #{CONTAINER_NAME}:#{PROCESSOR} }
  sh %{ docker tag containerized-awscli_c-awscli #{CONTAINER_NAME}:#{PROCESSOR}-#{TIMESTAMP} }
  sh %{ docker push #{CONTAINER_NAME}:#{PROCESSOR} }
  sh %{ docker push #{CONTAINER_NAME}:#{PROCESSOR}-#{TIMESTAMP} }
end

desc 'Use buildx to make a multi-arch container'
task :multiarch_build do
  puts "Building #{CONTAINER_NAME}"
  sh %{ docker buildx build --platform linux/amd64,linux/arm/v7,linux/arm64 --push -t #{CONTAINER_NAME} .}
  sh %{ docker pull #{CONTAINER_NAME} }
end
