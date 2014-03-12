require "temboo"

module DailyMed



  ##############################################################################
  #
  # GetComponents
  #
  # Returns imprint data associated with a given National Drug Code (NDC) in the DailyMed database.
  #
  ##############################################################################

  class GetComponents < Choreography

    ####
    #  Create a new instance of the GetComponents Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/DailyMed/GetComponents")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetComponentsInputSet
    ####
    def new_input_set()
      return GetComponentsInputSet.new()
    end

    def make_result_set()
      return GetComponentsResultSet.new()
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
      results = GetComponentsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetComponents
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetComponentsInputSet < Choreography::InputSet

      #### 
      # Set the value of the SetID input for this Choreo. 
      # 
      # @param String - (required, string) The unique ID assigned by DailyMed to each drug. You can find the SetID of a drug by first running the SearchByName or SearchByNDC Choreos.
      ###

      def set_SetID(value)
        set_input("SetID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetComponents Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetComponentsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from DailyMed.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetComponents



  ##############################################################################
  #
  # Query
  #
  # Returns the records available in the DailyMed database associated with a given drug.
  #
  ##############################################################################

  class Query < Choreography

    ####
    #  Create a new instance of the Query Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/DailyMed/Query")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return QueryInputSet
    ####
    def new_input_set()
      return QueryInputSet.new()
    end

    def make_result_set()
      return QueryResultSet.new()
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
      results = QueryResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Query
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class QueryInputSet < Choreography::InputSet

      #### 
      # Set the value of the Components input for this Choreo. 
      # 
      # @param String - (optional, string) Enter the DailyMed components you want returned as a comma delimited string. When left blank, the full DailyMed record is returned. See documentation for more information on components.
      ###

      def set_Components(value)
        set_input("Components", value)
      end
      #### 
      # Set the value of the SetID input for this Choreo. 
      # 
      # @param String - (required, string) The unique ID assigned by DailyMed to each drug. You can find the SetID of a drug by first running the SearchByName or SearchByNDC Choreos.
      ###

      def set_SetID(value)
        set_input("SetID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Query Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class QueryResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from DailyMed.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Query



  ##############################################################################
  #
  # SearchByNDC
  #
  # Returns a list of drugs in the DailyMed database associated with a given National Drug Code (NDC).
  #
  ##############################################################################

  class SearchByNDC < Choreography

    ####
    #  Create a new instance of the SearchByNDC Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/DailyMed/SearchByNDC")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchByNDCInputSet
    ####
    def new_input_set()
      return SearchByNDCInputSet.new()
    end

    def make_result_set()
      return SearchByNDCResultSet.new()
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
      results = SearchByNDCResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchByNDC
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchByNDCInputSet < Choreography::InputSet

      #### 
      # Set the value of the NDC input for this Choreo. 
      # 
      # @param String - (required, string) National Drug Code. This is a unique 10-digit numeric identifier assigned to each medication by the Food and Drug Administration (FDA).
      ###

      def set_NDC(value)
        set_input("NDC", value)
      end
      #### 
      # Set the value of the OutputFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Defaults to XML format when nothing is specified. Acceptable values: xml or json.
      ###

      def set_OutputFormat(value)
        set_input("OutputFormat", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchByNDC Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchByNDCResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from DailyMed.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchByNDC



  ##############################################################################
  #
  # SearchByName
  #
  # Returns a list of drugs in the DailyMed database associated with a given drug name.
  #
  ##############################################################################

  class SearchByName < Choreography

    ####
    #  Create a new instance of the SearchByName Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/DailyMed/SearchByName")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchByNameInputSet
    ####
    def new_input_set()
      return SearchByNameInputSet.new()
    end

    def make_result_set()
      return SearchByNameResultSet.new()
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
      results = SearchByNameResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchByName
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchByNameInputSet < Choreography::InputSet

      #### 
      # Set the value of the DrugName input for this Choreo. 
      # 
      # @param String - (required, string) The name of the drug you want to find.
      ###

      def set_DrugName(value)
        set_input("DrugName", value)
      end
      #### 
      # Set the value of the LabelType input for this Choreo. 
      # 
      # @param String - (optional, string) Filter results by a specified type. Acceptable values: rxonly, otc, human, human/rxonly, human/otc, animal. See documentation for more information.
      ###

      def set_LabelType(value)
        set_input("LabelType", value)
      end
      #### 
      # Set the value of the OutputFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Defaults to XML format when nothing is specified. Acceptable values: xml or json.
      ###

      def set_OutputFormat(value)
        set_input("OutputFormat", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchByName Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchByNameResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from DailyMed.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchByName




end # module DailyMed