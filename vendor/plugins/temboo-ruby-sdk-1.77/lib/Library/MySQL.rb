require "temboo"

module MySQL



  ##############################################################################
  #
  # JSONToDB
  #
  # Performs a batch operation in MySQL with a set of records in JSON format.
  #
  ##############################################################################

  class JSONToDB < Choreography

    ####
    #  Create a new instance of the JSONToDB Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/MySQL/JSONToDB")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return JSONToDBInputSet
    ####
    def new_input_set()
      return JSONToDBInputSet.new()
    end

    def make_result_set()
      return JSONToDBResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = JSONToDBResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the JSONToDB
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class JSONToDBInputSet < Choreography::InputSet

      #### 
      # Set the value of the BatchFile input for this Choreo. 
      # 
      # @param String - (required, json) The records to send to the database for the batch operation.
      ###

      def set_BatchFile(value)
        set_input("BatchFile", value)
      end
      #### 
      # Set the value of the BatchMode input for this Choreo. 
      # 
      # @param String - (optional, string) The type of batch operation to perform. Accepted values are: insert, update, or upsert.
      ###

      def set_BatchMode(value)
        set_input("BatchMode", value)
      end
      #### 
      # Set the value of the DatabaseName input for this Choreo. 
      # 
      # @param String - (required, string) The name of the database to connect to.
      ###

      def set_DatabaseName(value)
        set_input("DatabaseName", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The password for the database user.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Port input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The database port. Defaults to 3306.
      ###

      def set_Port(value)
        set_input("Port", value)
      end
      #### 
      # Set the value of the RollbackOnError input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Rollback if error occurs. Set to 1 to enable. Defaults to 0 (false).
      ###

      def set_RollbackOnError(value)
        set_input("RollbackOnError", value)
      end
      #### 
      # Set the value of the Server input for this Choreo. 
      # 
      # @param String - (required, string) The name or IP address of the database server.
      ###

      def set_Server(value)
        set_input("Server", value)
      end
      #### 
      # Set the value of the TableName input for this Choreo. 
      # 
      # @param String - (required, string) The database table that the batch operation is to be performed on.
      ###

      def set_TableName(value)
        set_input("TableName", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) The database username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the JSONToDB Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class JSONToDBResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Success" output from this Choreo execution
    	#
    	# @return String - (boolean) Indicates the result of the batch operation. The value will be "true" when the SQL transaction executes successfully.
    	####
    	def get_Success()
    	  return @outputs["Success"]
    	end
    end

  end # class JSONToDB



  ##############################################################################
  #
  # RunCommand
  #
  # Executes a SQL command for a MySQL database.
  #
  ##############################################################################

  class RunCommand < Choreography

    ####
    #  Create a new instance of the RunCommand Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/MySQL/RunCommand")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RunCommandInputSet
    ####
    def new_input_set()
      return RunCommandInputSet.new()
    end

    def make_result_set()
      return RunCommandResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = RunCommandResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RunCommand
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RunCommandInputSet < Choreography::InputSet

      #### 
      # Set the value of the DatabaseName input for this Choreo. 
      # 
      # @param String - (required, string) The name of the database to connect to.
      ###

      def set_DatabaseName(value)
        set_input("DatabaseName", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The password for the database user.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Port input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The database port. Defaults to 3306.
      ###

      def set_Port(value)
        set_input("Port", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The preferred format for the database results. Accepted formats are json (the default) and xml. This input only applies when providing a SELECT, SHOW, or DESCRIBE statement for the SQL input.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the SQL input for this Choreo. 
      # 
      # @param String - (required, multiline) A SQL statement to execute.
      ###

      def set_SQL(value)
        set_input("SQL", value)
      end
      #### 
      # Set the value of the Server input for this Choreo. 
      # 
      # @param String - (required, string) The name or IP address of the database server.
      ###

      def set_Server(value)
        set_input("Server", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) The database username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RunCommand Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RunCommandResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "ResultData" output from this Choreo execution
    	#
    	# @return String - The data returned from the database. This output will only contain a value when a SELECT, SHOW, or DESCRIBE statement is provided. Results are returned as JSON or XML depending on the ResponseFormat.
    	####
    	def get_ResultData()
    	  return @outputs["ResultData"]
    	end
    	####
    	# Retrieve the value for the "Success" output from this Choreo execution
    	#
    	# @return String - (boolean) Indicates the result of the database command. The value will be "true" when the SQL statement executes successfully.
    	####
    	def get_Success()
    	  return @outputs["Success"]
    	end
    end

  end # class RunCommand



  ##############################################################################
  #
  # XMLToDB
  #
  # Performs a batch operation in MySQL with a set of records in XML format.
  #
  ##############################################################################

  class XMLToDB < Choreography

    ####
    #  Create a new instance of the XMLToDB Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/MySQL/XMLToDB")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return XMLToDBInputSet
    ####
    def new_input_set()
      return XMLToDBInputSet.new()
    end

    def make_result_set()
      return XMLToDBResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = XMLToDBResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the XMLToDB
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class XMLToDBInputSet < Choreography::InputSet

      #### 
      # Set the value of the BatchFile input for this Choreo. 
      # 
      # @param String - (required, xml) The records to send to the database for the batch operation.
      ###

      def set_BatchFile(value)
        set_input("BatchFile", value)
      end
      #### 
      # Set the value of the BatchMode input for this Choreo. 
      # 
      # @param String - (optional, string) The type of batch operation to perform. Accepted values are: insert, update, or upsert.
      ###

      def set_BatchMode(value)
        set_input("BatchMode", value)
      end
      #### 
      # Set the value of the DatabaseName input for this Choreo. 
      # 
      # @param String - (required, string) The name of the database to connect to.
      ###

      def set_DatabaseName(value)
        set_input("DatabaseName", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The password for the database user.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Port input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The database port. Defaults to 3306.
      ###

      def set_Port(value)
        set_input("Port", value)
      end
      #### 
      # Set the value of the RollbackOnError input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Rollback if error occurs. Set to 1 to enable. Defaults to 0 (false).
      ###

      def set_RollbackOnError(value)
        set_input("RollbackOnError", value)
      end
      #### 
      # Set the value of the Server input for this Choreo. 
      # 
      # @param String - (required, string) The name or IP address of the database server.
      ###

      def set_Server(value)
        set_input("Server", value)
      end
      #### 
      # Set the value of the TableName input for this Choreo. 
      # 
      # @param String - (required, string) The database table that the batch operation is to be performed on.
      ###

      def set_TableName(value)
        set_input("TableName", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) The database username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the XMLToDB Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class XMLToDBResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Success" output from this Choreo execution
    	#
    	# @return String - (boolean) Indicates the result of the batch operation. The value will be "true" when the SQL transaction executes successfully.
    	####
    	def get_Success()
    	  return @outputs["Success"]
    	end
    end

  end # class XMLToDB




end # module MySQL