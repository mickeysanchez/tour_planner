require "temboo"

module DataGov



  ##############################################################################
  #
  # GetCensusIDByCoordinates
  #
  # Retrieve the U.S. census block geography ID for a specified latitude and longitude. 
  #
  ##############################################################################

  class GetCensusIDByCoordinates < Choreography

    ####
    #  Create a new instance of the GetCensusIDByCoordinates Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/DataGov/GetCensusIDByCoordinates")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetCensusIDByCoordinatesInputSet
    ####
    def new_input_set()
      return GetCensusIDByCoordinatesInputSet.new()
    end

    def make_result_set()
      return GetCensusIDByCoordinatesResultSet.new()
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
      results = GetCensusIDByCoordinatesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetCensusIDByCoordinates
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetCensusIDByCoordinatesInputSet < Choreography::InputSet

      #### 
      # Set the value of the GeographyType input for this Choreo. 
      # 
      # @param String - (required, string) Specify one of the following geography type values: "state", "county", "tract", "block", "congdistrict", "statehouse", "statesenate", "censusplace", or "msa" (metropolitan statistical area).
      ###

      def set_GeographyType(value)
        set_input("GeographyType", value)
      end
      #### 
      # Set the value of the Latitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) Specify a latitude to search for, such as "41.486857".
      ###

      def set_Latitude(value)
        set_input("Latitude", value)
      end
      #### 
      # Set the value of the Longitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) Specify a longitude to search for, such as "-71.294392".
      ###

      def set_Longitude(value)
        set_input("Longitude", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetCensusIDByCoordinates Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetCensusIDByCoordinatesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response returned from the API.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    	####
    	# Retrieve the value for the "CensusID" output from this Choreo execution
    	#
    	# @return String - (integer) The ID retrieved from the API call.
    	####
    	def get_CensusID()
    	  return @outputs["CensusID"]
    	end
    end

  end # class GetCensusIDByCoordinates



  ##############################################################################
  #
  # GetCensusIDByTypeAndName
  #
  # Retrieve the U.S. census ID for a specified geography type and name.
  #
  ##############################################################################

  class GetCensusIDByTypeAndName < Choreography

    ####
    #  Create a new instance of the GetCensusIDByTypeAndName Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/DataGov/GetCensusIDByTypeAndName")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetCensusIDByTypeAndNameInputSet
    ####
    def new_input_set()
      return GetCensusIDByTypeAndNameInputSet.new()
    end

    def make_result_set()
      return GetCensusIDByTypeAndNameResultSet.new()
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
      results = GetCensusIDByTypeAndNameResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetCensusIDByTypeAndName
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetCensusIDByTypeAndNameInputSet < Choreography::InputSet

      #### 
      # Set the value of the GeographyName input for this Choreo. 
      # 
      # @param String - (required, string) Specify the geography name for the correspnding type, with at least three leading characters. For example, for the geography type "state" you could enter "ore" for Oregon.
      ###

      def set_GeographyName(value)
        set_input("GeographyName", value)
      end
      #### 
      # Set the value of the GeographyType input for this Choreo. 
      # 
      # @param String - (required, string) Specify one of the following geography type values: "state", "county", "tract", "block", "congdistrict", "statehouse", "statesenate", "censusplace", or "msa" (metropolitan statistical area).
      ###

      def set_GeographyType(value)
        set_input("GeographyType", value)
      end
      #### 
      # Set the value of the MaxResults input for this Choreo. 
      # 
      # @param Integer - (required, integer) Specify the maximum number of results to return. Defaults to 50.
      ###

      def set_MaxResults(value)
        set_input("MaxResults", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetCensusIDByTypeAndName Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetCensusIDByTypeAndNameResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "CensusID" output from this Choreo execution
    	#
    	# @return String - (integer) The ID retrieved from the API call.
    	####
    	def get_CensusID()
    	  return @outputs["CensusID"]
    	end
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response returned from the API.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetCensusIDByTypeAndName



  ##############################################################################
  #
  # GetDemographicsByCoordinates
  #
  # Retrieve demographic information for specified geographical coordinates.
  #
  ##############################################################################

  class GetDemographicsByCoordinates < Choreography

    ####
    #  Create a new instance of the GetDemographicsByCoordinates Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/DataGov/GetDemographicsByCoordinates")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetDemographicsByCoordinatesInputSet
    ####
    def new_input_set()
      return GetDemographicsByCoordinatesInputSet.new()
    end

    def make_result_set()
      return GetDemographicsByCoordinatesResultSet.new()
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
      results = GetDemographicsByCoordinatesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetDemographicsByCoordinates
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetDemographicsByCoordinatesInputSet < Choreography::InputSet

      #### 
      # Set the value of the DataVersion input for this Choreo. 
      # 
      # @param String - (optional, string) Specify the data version to search. Valid values are 2011 or 2012 (the default).
      ###

      def set_DataVersion(value)
        set_input("DataVersion", value)
      end
      #### 
      # Set the value of the Latitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) Specify a latitude to search for, such as "41.486857".
      ###

      def set_Latitude(value)
        set_input("Latitude", value)
      end
      #### 
      # Set the value of the Longitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) Specify a longitude to search for, such as "-71.294392".
      ###

      def set_Longitude(value)
        set_input("Longitude", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetDemographicsByCoordinates Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetDemographicsByCoordinatesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response returned from the API.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetDemographicsByCoordinates



  ##############################################################################
  #
  # GetDemographicsByTypeAndID
  #
  # Retrieve demographic data for a specified geography type and geography ID.
  #
  ##############################################################################

  class GetDemographicsByTypeAndID < Choreography

    ####
    #  Create a new instance of the GetDemographicsByTypeAndID Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/DataGov/GetDemographicsByTypeAndID")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetDemographicsByTypeAndIDInputSet
    ####
    def new_input_set()
      return GetDemographicsByTypeAndIDInputSet.new()
    end

    def make_result_set()
      return GetDemographicsByTypeAndIDResultSet.new()
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
      results = GetDemographicsByTypeAndIDResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetDemographicsByTypeAndID
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetDemographicsByTypeAndIDInputSet < Choreography::InputSet

      #### 
      # Set the value of the DataVersion input for this Choreo. 
      # 
      # @param String - (optional, string) Specify the census data version to search. Valid values are: jun2011, dec2011, jun2012, and dec2012.
      ###

      def set_DataVersion(value)
        set_input("DataVersion", value)
      end
      #### 
      # Set the value of the GeographyIDs input for this Choreo. 
      # 
      # @param Integer - (conditional, integer) The geography IDs to search for. Separate multiple IDs by commas; a maximum of 10 IDs are allowed.
      ###

      def set_GeographyIDs(value)
        set_input("GeographyIDs", value)
      end
      #### 
      # Set the value of the GeographyType input for this Choreo. 
      # 
      # @param String - (required, string) Specify one of the following geography type values: "state", "county", "tract", "block", "congdistrict", "statehouse", "statesenate", "censusplace", or "msa" (metropolitan statistical area).
      ###

      def set_GeographyType(value)
        set_input("GeographyType", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetDemographicsByTypeAndID Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetDemographicsByTypeAndIDResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response returned from the API.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetDemographicsByTypeAndID



  ##############################################################################
  #
  # GetDemographicsForNation
  #
  # Retrieve demographic information for the entire nation.
  #
  ##############################################################################

  class GetDemographicsForNation < Choreography

    ####
    #  Create a new instance of the GetDemographicsForNation Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/DataGov/GetDemographicsForNation")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetDemographicsForNationInputSet
    ####
    def new_input_set()
      return GetDemographicsForNationInputSet.new()
    end

    def make_result_set()
      return GetDemographicsForNationResultSet.new()
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
      results = GetDemographicsForNationResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetDemographicsForNation
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetDemographicsForNationInputSet < Choreography::InputSet

      #### 
      # Set the value of the DataVersion input for this Choreo. 
      # 
      # @param String - (optional, string) Specify the census data version to search. Valid values are: jun2011, dec2011, jun2012, and dec2012.
      ###

      def set_DataVersion(value)
        set_input("DataVersion", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetDemographicsForNation Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetDemographicsForNationResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response returned from the API.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetDemographicsForNation




end # module DataGov