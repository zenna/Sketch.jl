version = "1.7.4"
file_name = "sketch-$version.tar.gz"
file_url = "https://people.csail.mit.edu/asolar/sketch-1.7.4.tar.gz/$file_name"
deps_dir = dirname(@__FILE__)
prefix = joinpath(deps_dir, "usr")

println("Cleanup old build files")

try
  run(`rm  -r $(joinpath(deps_dir,"dReal*"))`)
catch end
try
  run(`rm -r $(joinpath(deps_dir,"usr"))`)
catch end

download(file_url,joinpath(deps_dir, file_name))
run(`tar -xvf $file_name`)
