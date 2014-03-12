require "temboo"

module Patch



  ##############################################################################
  #
  # FindLocationByName
  #
  # Return Patch location information for a specified U.S. region.
  #
  ##############################################################################

  class FindLocationByName < Choreography

    ####
    #  Create a new instance of the FindLocationByName Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Patch/FindLocationByName")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FindLocationByNameInputSet
    ####
    def new_input_set()
      return FindLocationByNameInputSet.new()
    end

    def make_result_set()
      return FindLocationByNameResultSet.new()
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
      results = FindLocationByNameResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FindLocationByName
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FindLocationByNameInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) A valid API key provided by Patch.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the APISecret input for this Choreo. 
      # 
      # @param String - (required, string) The API shared secret provided by Patch.
      ###

      def set_APISecret(value)
        set_input("APISecret", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify a maximum number of locations to return, between 1 and 100. The default is 10.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the RegionName input for this Choreo. 
      # 
      # @param String - (required, string) Enter a state, city, neighborhood, district (county), locality (borough), or metro area name; a place name, such as a business, landmark, or park; or a ZIP code. Separate multiple names with commas.
      ###

      def set_RegionName(value)
        set_input("RegionName", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Specify "xml" to convert the Patch JSON response to XML, or "json" (the default) to not convert.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FindLocationByName Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FindLocationByNameResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Coordinates" output from this Choreo execution
    	#
    	# @return String - (string) The concatenated location latitude and longitude returned by Patch.
    	####
    	def get_Coordinates()
    	  return @outputs["Coordinates"]
    	end
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response returned from Patch.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    	####
    	# Retrieve the value for the "Longitude" output from this Choreo execution
    	#
    	# @return String - (decimal) The longitude for the location returned by Patch.
    	####
    	def get_Longitude()
    	  return @outputs["Longitude"]
    	end
    	####
    	# Retrieve the value for the "LocationID" output from this Choreo execution
    	#
    	# @return String - (string) 
    	####
    	def get_LocationID()
    	  return @outputs["LocationID"]
    	end
    	####
    	# Retrieve the value for the "Latitude" output from this Choreo execution
    	#
    	# @return String - (decimal) The latitude for the location returned by Patch.
    	####
    	def get_Latitude()
    	  return @outputs["Latitude"]
    	end
    end

  end # class FindLocationByName



  ##############################################################################
  #
  # FindStoriesByCity
  #
  # Return the most recent stories from a specified U.S. city.
  #
  ##############################################################################

  class FindStoriesByCity < Choreography

    ####
    #  Create a new instance of the FindStoriesByCity Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Patch/FindStoriesByCity")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FindStoriesByCityInputSet
    ####
    def new_input_set()
      return FindStoriesByCityInputSet.new()
    end

    def make_result_set()
      return FindStoriesByCityResultSet.new()
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
      results = FindStoriesByCityResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FindStoriesByCity
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FindStoriesByCityInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) A valid API key provided by Patch.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the APISecret input for this Choreo. 
      # 
      # @param String - (required, string) The API shared secret provided by Patch.
      ###

      def set_APISecret(value)
        set_input("APISecret", value)
      end
      #### 
      # Set the value of the City input for this Choreo. 
      # 
      # @param String - (required, string) The name of the city to return stories for.
      ###

      def set_City(value)
        set_input("City", value)
      end
      #### 
      # Set the value of the Keyword input for this Choreo. 
      # 
      # @param String - (optional, string) Specify one or more words or phrases to find in the story title, story summary, and topic tags of the stories to return.
      ###

      def set_Keyword(value)
        set_input("Keyword", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify how many stories to return, between 1 and 100. The default is 10.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the MaximumAge input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the maximum age in days of the stories to return, between 1 and 30. The default is 10.
      ###

      def set_MaximumAge(value)
        set_input("MaximumAge", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Specify "xml" to convert the Patch JSON response to XML. The default is "json".
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (required, string) The U.S. state name or abbreviation corresponding to the city to return stories for.
      ###

      def set_State(value)
        set_input("State", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FindStoriesByCity Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FindStoriesByCityResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response returned from Patch.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class FindStoriesByCity



  ##############################################################################
  #
  # FindStoriesByCoordinates
  #
  # Return the most recent stories from a specified U.S. latitude and longitude.
  #
  ##############################################################################

  class FindStoriesByCoordinates < Choreography

    ####
    #  Create a new instance of the FindStoriesByCoordinates Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Patch/FindStoriesByCoordinates")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FindStoriesByCoordinatesInputSet
    ####
    def new_input_set()
      return FindStoriesByCoordinatesInputSet.new()
    end

    def make_result_set()
      return FindStoriesByCoordinatesResultSet.new()
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
      results = FindStoriesByCoordinatesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FindStoriesByCoordinates
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FindStoriesByCoordinatesInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) A valid API key provided by Patch.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the APISecret input for this Choreo. 
      # 
      # @param String - (required, string) The API shared secret provided by Patch.
      ###

      def set_APISecret(value)
        set_input("APISecret", value)
      end
      #### 
      # Set the value of the Keyword input for this Choreo. 
      # 
      # @param String - (optional, string) Specify one or more words or phrases to find in the story title, story summary, and topic tags of the stories to return.
      ###

      def set_Keyword(value)
        set_input("Keyword", value)
      end
      #### 
      # Set the value of the Latitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) The latitiude for the area from which to retrieve stories. For example, "40.740512".
      ###

      def set_Latitude(value)
        set_input("Latitude", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify how many stories to return, between 1 and 100. The default is 10.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the Longitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) The longitude for the area from which to retrieve stories. For example, "-73.991479".
      ###

      def set_Longitude(value)
        set_input("Longitude", value)
      end
      #### 
      # Set the value of the MaximumAge input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the maximum age in days of the stories to return, between 1 and 30. The default is 10.
      ###

      def set_MaximumAge(value)
        set_input("MaximumAge", value)
      end
      #### 
      # Set the value of the Radius input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify a radius in feet in which to search the specified coordinates, between 500 and 26,400. The default is 1,000 feet.
      ###

      def set_Radius(value)
        set_input("Radius", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Specify "xml" to convert the Patch JSON response to XML. The default is "json".
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FindStoriesByCoordinates Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FindStoriesByCoordinatesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response returned from Patch.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class FindStoriesByCoordinates



  ##############################################################################
  #
  # FindStoriesByID
  #
  # Return the most recent stories from a specified U.S. city, state, ZIP code, or neighborhood using its Patch ID.
  #
  ##############################################################################

  class FindStoriesByID < Choreography

    ####
    #  Create a new instance of the FindStoriesByID Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Patch/FindStoriesByID")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FindStoriesByIDInputSet
    ####
    def new_input_set()
      return FindStoriesByIDInputSet.new()
    end

    def make_result_set()
      return FindStoriesByIDResultSet.new()
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
      results = FindStoriesByIDResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FindStoriesByID
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FindStoriesByIDInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) A valid API key provided by Patch.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the APISecret input for this Choreo. 
      # 
      # @param String - (required, string) The API shared secret provided by Patch.
      ###

      def set_APISecret(value)
        set_input("APISecret", value)
      end
      #### 
      # Set the value of the Keyword input for this Choreo. 
      # 
      # @param String - (optional, string) Specify one or more words or phrases to find in the story title, story summary, and topic tags of the stories to return.
      ###

      def set_Keyword(value)
        set_input("Keyword", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify how many stories to return, between 1 and 100. The default is 10.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the LocationID input for this Choreo. 
      # 
      # @param String - (required, string) The UUID for a state, city, ZIP code, or neighborhood, assigned by Patch. Separate multiple IDs with commas but no spaces.
      ###

      def set_LocationID(value)
        set_input("LocationID", value)
      end
      #### 
      # Set the value of the MaximumAge input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the maximum age in days of the stories to return, between 1 and 30. The default is 10.
      ###

      def set_MaximumAge(value)
        set_input("MaximumAge", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Specify "xml" to convert the Patch JSON response to XML. The default is "json".
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FindStoriesByID Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FindStoriesByIDResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response returned from Patch.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class FindStoriesByID



  ##############################################################################
  #
  # FindStoriesByNeighborhood
  #
  # Return the most recent stories from a specified U.S. neighborhood.
  #
  ##############################################################################

  class FindStoriesByNeighborhood < Choreography

    ####
    #  Create a new instance of the FindStoriesByNeighborhood Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Patch/FindStoriesByNeighborhood")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FindStoriesByNeighborhoodInputSet
    ####
    def new_input_set()
      return FindStoriesByNeighborhoodInputSet.new()
    end

    def make_result_set()
      return FindStoriesByNeighborhoodResultSet.new()
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
      results = FindStoriesByNeighborhoodResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FindStoriesByNeighborhood
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FindStoriesByNeighborhoodInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) A valid API key provided by Patch.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the APISecret input for this Choreo. 
      # 
      # @param String - (required, string) The API shared secret provided by Patch.
      ###

      def set_APISecret(value)
        set_input("APISecret", value)
      end
      #### 
      # Set the value of the City input for this Choreo. 
      # 
      # @param String - (required, string) The name of the city to return stories for.
      ###

      def set_City(value)
        set_input("City", value)
      end
      #### 
      # Set the value of the Keyword input for this Choreo. 
      # 
      # @param String - (optional, string) Specify one or more words or phrases to find in the story title, story summary, and topic tags of the stories to return.
      ###

      def set_Keyword(value)
        set_input("Keyword", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify how many stories to return, between 1 and 100. The default is 10.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the MaximumAge input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the maximum age in days of the stories to return, between 1 and 30. The default is 10.
      ###

      def set_MaximumAge(value)
        set_input("MaximumAge", value)
      end
      #### 
      # Set the value of the Neighborhood input for this Choreo. 
      # 
      # @param String - (required, string) The name of the neighborhood in the corresponding city to return stories for. Common values include "downtown", "midtown", etc.
      ###

      def set_Neighborhood(value)
        set_input("Neighborhood", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Specify "xml" to convert the Patch JSON response to XML. The default is "json".
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (required, string) The U.S. state name or abbreviation corresponding to the city to return stories for.
      ###

      def set_State(value)
        set_input("State", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FindStoriesByNeighborhood Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FindStoriesByNeighborhoodResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response returned from Patch.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class FindStoriesByNeighborhood



  ##############################################################################
  #
  # FindStoriesByState
  #
  # Return the most recent stories from a specified U.S. state.
  #
  ##############################################################################

  class FindStoriesByState < Choreography

    ####
    #  Create a new instance of the FindStoriesByState Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Patch/FindStoriesByState")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FindStoriesByStateInputSet
    ####
    def new_input_set()
      return FindStoriesByStateInputSet.new()
    end

    def make_result_set()
      return FindStoriesByStateResultSet.new()
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
      results = FindStoriesByStateResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FindStoriesByState
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FindStoriesByStateInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) A valid API key provided by Patch.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the APISecret input for this Choreo. 
      # 
      # @param String - (required, string) The API shared secret provided by Patch.
      ###

      def set_APISecret(value)
        set_input("APISecret", value)
      end
      #### 
      # Set the value of the Keyword input for this Choreo. 
      # 
      # @param String - (optional, string) Specify one or more words or phrases to find in the story title, story summary, and topic tags of the stories to return.
      ###

      def set_Keyword(value)
        set_input("Keyword", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify how many stories to return, between 1 and 100. The default is 10.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the MaximumAge input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the maximum age in days of the stories to return, between 1 and 30. The default is 10.
      ###

      def set_MaximumAge(value)
        set_input("MaximumAge", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Specify "xml" to convert the Patch JSON response to XML. The default is "json".
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (required, string) The U.S. state name or abbreviation for the stories to return.
      ###

      def set_State(value)
        set_input("State", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FindStoriesByState Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FindStoriesByStateResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response returned from Patch.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class FindStoriesByState



  ##############################################################################
  #
  # FindStoriesByZIPCode
  #
  # Return the most recent stories from a specified U.S. ZIP code.
  #
  ##############################################################################

  class FindStoriesByZIPCode < Choreography

    ####
    #  Create a new instance of the FindStoriesByZIPCode Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Patch/FindStoriesByZIPCode")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FindStoriesByZIPCodeInputSet
    ####
    def new_input_set()
      return FindStoriesByZIPCodeInputSet.new()
    end

    def make_result_set()
      return FindStoriesByZIPCodeResultSet.new()
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
      results = FindStoriesByZIPCodeResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FindStoriesByZIPCode
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FindStoriesByZIPCodeInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) A valid API key provided by Patch.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the APISecret input for this Choreo. 
      # 
      # @param String - (required, string) The API shared secret provided by Patch.
      ###

      def set_APISecret(value)
        set_input("APISecret", value)
      end
      #### 
      # Set the value of the Keyword input for this Choreo. 
      # 
      # @param String - (optional, string) Specify one or more words or phrases to find in the story title, story summary, and topic tags of the stories to return.
      ###

      def set_Keyword(value)
        set_input("Keyword", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify how many stories to return, between 1 and 100. The default is 10.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the MaximumAge input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the maximum age in days of the stories to return, between 1 and 30. The default is 10.
      ###

      def set_MaximumAge(value)
        set_input("MaximumAge", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Specify "xml" to convert the Patch JSON response to XML. The default is "json".
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the ZIPCode input for this Choreo. 
      # 
      # @param String - (required, string) The ZIP code to return stories from.
      ###

      def set_ZIPCode(value)
        set_input("ZIPCode", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FindStoriesByZIPCode Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FindStoriesByZIPCodeResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response returned from Patch.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class FindStoriesByZIPCode




end # module Patch