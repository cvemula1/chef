#
# Author:: Daniel DeLeo (<dan@kallistec.com>)
# Copyright:: Copyright 2008-2016, Chef Software Inc.
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
#

require "chef/resource/scm"

class Chef
  class Resource
    class Git < Chef::Resource::Scm

      def initialize(name, run_context = nil)
        super
        @additional_remotes = Hash[]
      end

      def additional_remotes(arg = nil)
        set_or_return(
          :additional_remotes,
          arg,
          :kind_of => Hash
        )
      end

      alias :branch :revision
      alias :reference :revision

      alias :repo :repository
    end
  end
end
