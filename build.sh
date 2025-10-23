#!/bin/bash

# Copyright (C) 2023, Automated Quality Assurance Group,
# TU Dortmund University, Germany. All rights reserved.
#
# build.sh is licensed under the Apache License,
# Version 2.0 (the "License"); you may not use this file except in compliance
# with the License. You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0.
#
# Unless required by applicable law or agreed to in writing, software distributed
# under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied. See the License for the
# specific language governing permissions and limitations under the License.

set -e

git submodule update --init

# SPouT
#
yes | ./mx/mx fetch-jdk --jdk-id labsjdk-ce-17 --strip-contents-home --to .
pushd SPouT/espresso;
  ../../mx/mx --env native-ce --java-home ../../labsjdk-ce-17-jvmci-23.0-b01 build
popd
GVM=`find SPouT/sdk/mxbuild -name "GRAALVM_ESPRESSO_NATIVE_CE_JAVA17" -type d`
GVM_BIN=`find $GVM -name "bin" -type d`
echo "#!/bin/bash" > config
echo "GRAALVM_HOME=$GVM_BIN" >> ./config

# DSE
#
pushd dse
  rm -Rf jconstraints
  ./compile-jconstraints.sh
  mvn package
popd

# Verifier Stub
#
pushd verifier-stub
  mvn package
popd
