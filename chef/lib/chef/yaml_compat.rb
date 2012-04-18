#
# Author:: Joseph Anthony Pasquale Holsten <joseph@josephholsten.com>
# Copyright:: Copyright (c) 2010 Joseph Holsten
# License:: Apache License, Version 2.0
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

# Wrapper class for interacting with YAML.

require 'yaml'

class Chef
  class YAMLCompat
    class <<self
      def from_yaml(source)
        ::YAML.load(source)
      end

      def to_json(obj, opts = nil)
        ::YAML.dump(obj, opts)
      end

      def to_json_pretty(obj, opts = nil)
        ::YAML.dump(obj, opts)
      end
    end
  end
end
