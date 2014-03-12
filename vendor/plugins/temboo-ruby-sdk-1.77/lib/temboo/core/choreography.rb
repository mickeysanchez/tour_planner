##############################################################################
#
# temboo.core.choreography.Choreography
# temboo.core.choreography.InputSet
# temboo.coreo.choreography.ResultSet
#
# Interface classes for calling and manipulating choreographies. 
#
# Ruby version 1.9
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
require "time"

require "temboo/core/temboo_resource"
require "temboo/core/choreography_execution"

class Choreography < TembooResource
  # Initialize new choreography object.
  # * *params*  :
  #   - +session+ ->  Currently active Temboo session object.
  #   - +uri+ ->  String of path to choreography.
  def initialize(session, uri)
    super(session, uri)
  end

  # Execute choreo synchronously and return results.
  # * *params*  :
  #   - +input_set+ ->  Optional Temboo input set containing input options for
  #     this run. Note that many choreographies will require inputs in order
  #     to run correctly.
  # * *returns* :
  #   - +results+ -> Temboo result set built from the response to this choreo
  #     execution.
  def execute(input_set = nil)
    # If the inputs are not configured, create a blank set.
    if input_set == nil
      input_set = InputSet.new()
    end
    param_map = {"source_id" => TembooSession.get_identifier()}
    body = input_set.format_inputs()
    results = @session.post_request(get_path(), body, param_map)
    return results.body()
  end

  # Execute choreo, without storing or retrieving results from the execution. 
  # * *params*  :
  #   - +input_set+ -> Optional Temboo input set containing input options for
  #     this run. Note that many choreographies will require inputs in order
  #     to run correctly.
  # * *returns* :
  #   - +execution+ ->  Choreography execution object for this run.
  def execute_no_results(input_set = nil)
    if input_set == nil
      input_set = InputSet.new()
    end
    param_map = {"source_id" => TembooSession.get_identifier(),
                 "mode" => "async"}
    body = input_set.format_inputs()
    results = @session.post_request(get_path(), body, param_map)
    id = JSON.load(results.body())["id"]
    execution = ChoreographyExecution.new(@session, id)
    return execution
  end

  # Execute choreo asynchronously and store results for retrieval upon choreo completion.
  # * *params*  :
  #   - +input_set+ -> Optional Temboo input set containing input options for
  #     this run. Note that many choreographies will require inputs in order
  #     to run correctly.
  # * *returns* :
  #   - +execution+ ->  Choreography execution object for this run.
  def execute_async(input_set = nil)
    if input_set == nil
      input_set = InputSet.new()
    end
    param_map = {"source_id" => TembooSession.get_identifier(),
                 "mode" => "async",
                 "store_results" => "true"}
    body = input_set.format_inputs()
    results = @session.post_request(get_path(), body, param_map)
    id = JSON.load(results.body())["id"]
    execution = ChoreographyExecution.new(@session, id)
    return execution
  end

  # Return the session class's base path and the name of the collection.
  # * *returns* :
  #   - +base_path+ -> Path to choreos resource.
  def get_base_path()
    return TembooSession.get_base_path + "/choreos"
  end

  # Class used to define the inputs to send to a choreography execution.
  class InputSet

    # Create a new input set.
    def initialize()
      @inputs = Hash.new()
      # Place holder for aliases.
      # @aliases = Hash.new()
      @credential_name = nil
    end


    # Set the value of an input.
    # * *params*  :
    #   - +name+  -> String of the name of the input you wish to define.
    #   - +value+ -> String of value you wish to set for named input.
    def set_input(name, value)
      @inputs[name] = value
    end

    # Specify a credential object to use with the choreography execution.
    # * *params*  :
    #   - +target_credential+ ->  The URI of the credential object that you
    #                             you wish to use.
    def set_credential(target_credential)
      @credential_name = target_credential 
    end

    # Format inputs and aliases as JSON for use in API requests.
    # * *returns* :
    #   - +formatted_inputs+  ->  JSON-formatted string representing inputs to
    #     be used in the current run.
    def format_inputs()
      full_inputs = Hash.new()
      
      if @inputs.any?
        input_array = Array.new()
        @inputs.keys.each do |input|
          input_props = {"name" => input, "value" => @inputs[input]}
          input_array.push(input_props)
        end
        full_inputs["inputs"] = input_array
      end

      if @credential_name
        full_inputs["preset"] = @credential_name
      end
      
      formatted_inputs = full_inputs.to_json()
      return formatted_inputs
    end
  end

  # Class for interacting with results of completed choreography runs.
  class ResultSet

    # Create a new result set.
    # * *params*  :
    #   - +result_stream+ -> JSON string containing information about the
    #     completed execution.
    def initialize(result_stream)
      result_hash = JSON.load(result_stream)
      @id = result_hash["execution"]["id"]
      @status = result_hash["execution"]["status"]

      if @status == "ERROR"
        @error_time = result_hash["execution"]["endtime"]
      else
        @error_time = nil
      end
      @last_error = result_hash["execution"]["lasterror"]

      @start_time = result_hash["execution"]["starttime"]
      @end_time = result_hash["execution"]["endtime"]

      @outputs = result_hash["output"]
    end

    # Get the final status of the execution (typically one of success or error).
    # * *returns* :
    #   - +status+  -> String of status value.
    def get_completion_status()
      return @status
    end

    # Convert timestamp returned from server (as a string) to a Ruby datetime
    # object.
    # * *params*  :
    #   - +stamp_string+  ->  String representation of the timestamp returned
    #                         from the Arcturus server.
    # * *returns* :
    #   - +utc_time+  ->  Ruby datetime object.
    def process_stamp(stamp_string)
      # Server gives us miliseconds, which we drop before converting.
      stamp_val = stamp_string.to_i() / 1000
      utc_time = Time.at(stamp_val).utc().to_datetime()
      return utc_time
    end

    # Get the start time of this choreography execution. 
    # * *returns* :
    #   - +utc_time+  ->  Ruby datetime object representation of choreo's
    #                     start time.
    def get_start_time()
      return process_stamp(@start_time)
    end

    # Get the completion time of this choreography execution.
    # * *returns* :
    #   - +utc_time+  ->  Ruby datetime object representation of choreo's
    #                     completion time. 
    def get_completion_time()
      return process_stamp(@end_time)
    end

    def get_error_time()
      return @error_time
    end

    # Get the execution id for the run associated with this result set.
    # * *returns* :
    #   - +id+  -> String representation of the execution ID number.
    def get_id()
      return @id
    end

    # Get the value of a particular output.
    # * *params*  :
    #   - +key+ ->  String of the name of the ouput in whose value you are
    #               expressing interest.
    # * *returns* :
    #   - +value+ ->  String of the value of the output you specified.
    def get_result(key)
      return @outputs[key]
    end

    # Get the names of the outputs in this result set.
    # * *returns* :
    #   - +keys+  ->  Array of the names of the outputs in this result set.
    def key_set()
      return @outputs.keys()
    end

    # Get all the outputs for this result set.
    # * *returns* :
    #   - +outputs+ ->  Hash of the names and values of all outputs in this
    #                   result set.
    def get_outputs()
      return @outputs
    end

    # Return the last error associated with these results.
    # * *returns*
    #   - +error_message+ -> String of error message.
    def get_last_error()
      return @last_error
    end

  end
end

class TembooOutput

	def initialize(data)
		@base = data
	end

	def getBase()
		return @base
	end

	####
	# Utility function, to retrieve the array-type sub-item specified by the key from the parent (hash) specified by the item.
 	# Returns an empty array of hashes if key is not present.
	####
	def self.getSubArrayByKey(hash, key)
		if hash.kind_of?(Hash)
			return hash[key]
		else
			return Array.new()
		end
	end
end