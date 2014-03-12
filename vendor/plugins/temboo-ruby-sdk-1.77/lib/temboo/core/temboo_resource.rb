##############################################################################
#
# temboo.core.temboo_resource.TembooResource
#
# Parent class for any resource that lives in the vault.
#
# Ruby version 1.9
#
#
# Copyright 2012, Temboo Inc.
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
# http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
# either express or implied. See the License for the specific
# language governing permissions and limitations under the License.
#
##############################################################################

class TembooResource
  # Initialize new TembooResource object.
  # * *params*  :
  #   - +session+ ->  Currently active Temboo session object.
  #   - +uri+ ->  String of path to choreography.
  def initialize(session, uri)
    @session = session
    @uri = uri
  end

  # Return full path of resource (api base + collection + resource path)
  # Note that all resources must include the get_base_path method.
  # * *returns* :
  #   - +base_path+ ->  String of path to this resource.
  def get_path()
    get_base_path() + @uri
  end
end