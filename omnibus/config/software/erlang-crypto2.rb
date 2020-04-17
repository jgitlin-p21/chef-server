#
# Copyright 2012-2017 Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

name "erlang-crypto2"
default_version "master"

source git: "https://github.com/chef/erlang-crypto2.git"

license "BSD-3-Clause"
license_file "LICENSE"
# https://github.com/chef/license_scout/issues/61
skip_transitive_dependency_licensing true

dependency "erlang"

build do
  env = with_standard_compiler_flags(with_embedded_path)

  # All of the apps include a rebar3 executable. Just use one of them to build
  # this application. We do not want to include rebar in the final package
  # so don't use a software dependency
  rebar3_path = "#{project.files_path}/../../src/bookshelf/rebar3"

  command "#{rebar3_path} compile", env: env

  crypto2_dir = "#{install_dir}/embedded/lib/erlang-crypto2"
  mkdir crypto2_dir
  copy "#{project_dir}/_build/default/lib/fips_crypto/ebin", "#{crypto2_dir}/ebin"
  copy "#{project_dir}/priv", "#{crypto2_dir}/priv"
end
