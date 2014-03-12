# Class for following up on asynch executions.

class ChoreographyExecution < TembooResource

  # Build an object to track executions.
  # * *params*  :
  #   - +session+ ->  Parent session.
  #   - +exec_id+ ->  ID of execution to track.
  def initialize(session, exec_id)
    super(session, ["/", exec_id].join())
    @id = exec_id
    @status = nil
    @completion_status = nil
    @result_set = nil
  end

  # Get the current status of the choreography execution. 
  # * *returns* :
  #   - +status+  -> Status of the execution.
  def get_status()
    # If we know the choreo has completed, simply return its result status.
    if @completion_status
      return @completion_status
    end

    response = JSON.load(@session.get_request(get_path()).body())
    curr_status = response["execution"]["status"]
    @status = curr_status

    # If choreo has completed since last status check, return results.
    if curr_status != "RUNNING"
      result_resp = @session.get_request(get_path(), {"view" => "outputs"})
      @completion_status = curr_status
      @result_set = Choreography::ResultSet.new(result_resp.body())
    end
    return @status
  end

  # Retrieve the result set associated with this execution.
  # * *returns* :
  #   - +results+ ->  The results of this execution.
  def get_results()
    if !@result_set
      get_status()
    end
    return @result_set
  end

  # Return the session class's base path and the name of the collection.
  # * *returns* :
  #   - +base_path+ -> Path to choreos resource.
  def get_base_path()
    return TembooSession.get_base_path + "/choreo-executions"
  end
end