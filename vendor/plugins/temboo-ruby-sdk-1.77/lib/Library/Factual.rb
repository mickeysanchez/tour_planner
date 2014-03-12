require "temboo"

module Factual



  ##############################################################################
  #
  # FilterPlacesByCategories
  #
  # Filter queries by category.
  #
  ##############################################################################

  class FilterPlacesByCategories < Choreography

    ####
    #  Create a new instance of the FilterPlacesByCategories Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Factual/FilterPlacesByCategories")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FilterPlacesByCategoriesInputSet
    ####
    def new_input_set()
      return FilterPlacesByCategoriesInputSet.new()
    end

    def make_result_set()
      return FilterPlacesByCategoriesResultSet.new()
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
      results = FilterPlacesByCategoriesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FilterPlacesByCategories
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FilterPlacesByCategoriesInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (optional, string) The API Key provided by Factual (AKA the OAuth Consumer Key).
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the APISecret input for this Choreo. 
      # 
      # @param String - (optional, string) The API Secret provided by Factual (AKA the OAuth Consumer Secret).
      ###

      def set_APISecret(value)
        set_input("APISecret", value)
      end
      #### 
      # Set the value of the Category input for this Choreo. 
      # 
      # @param String - (required, string) Enter a Factual category to narrow the search results.
      ###

      def set_Category(value)
        set_input("Category", value)
      end
      #### 
      # Set the value of the City input for this Choreo. 
      # 
      # @param String - (required, string) Enter a city to narrow results to.
      ###

      def set_City(value)
        set_input("City", value)
      end
      #### 
      # Set the value of the Query input for this Choreo. 
      # 
      # @param String - (optional, string) A search string (i.e. Starbucks)
      ###

      def set_Query(value)
        set_input("Query", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FilterPlacesByCategories Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FilterPlacesByCategoriesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Factual.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class FilterPlacesByCategories



  ##############################################################################
  #
  # FilterPlacesByCity
  #
  # Restrict a query to a specified city.
  #
  ##############################################################################

  class FilterPlacesByCity < Choreography

    ####
    #  Create a new instance of the FilterPlacesByCity Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Factual/FilterPlacesByCity")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FilterPlacesByCityInputSet
    ####
    def new_input_set()
      return FilterPlacesByCityInputSet.new()
    end

    def make_result_set()
      return FilterPlacesByCityResultSet.new()
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
      results = FilterPlacesByCityResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FilterPlacesByCity
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FilterPlacesByCityInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (optional, string) The API Key provided by Factual (AKA the OAuth Consumer Key).
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the APISecret input for this Choreo. 
      # 
      # @param String - (optional, string) The API Secret provided by Factual (AKA the OAuth Consumer Secret).
      ###

      def set_APISecret(value)
        set_input("APISecret", value)
      end
      #### 
      # Set the value of the City input for this Choreo. 
      # 
      # @param String - (required, string) Enter a city to narrow results to.
      ###

      def set_City(value)
        set_input("City", value)
      end
      #### 
      # Set the value of the Query input for this Choreo. 
      # 
      # @param String - (optional, string) A search string (i.e. Starbucks)
      ###

      def set_Query(value)
        set_input("Query", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FilterPlacesByCity Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FilterPlacesByCityResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Factual.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class FilterPlacesByCity



  ##############################################################################
  #
  # FilterPlacesByMultipleCities
  #
  # Restrict a query to a specified city.
  #
  ##############################################################################

  class FilterPlacesByMultipleCities < Choreography

    ####
    #  Create a new instance of the FilterPlacesByMultipleCities Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Factual/FilterPlacesByMultipleCities")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FilterPlacesByMultipleCitiesInputSet
    ####
    def new_input_set()
      return FilterPlacesByMultipleCitiesInputSet.new()
    end

    def make_result_set()
      return FilterPlacesByMultipleCitiesResultSet.new()
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
      results = FilterPlacesByMultipleCitiesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FilterPlacesByMultipleCities
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FilterPlacesByMultipleCitiesInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (optional, string) The API Key provided by Factual (AKA the OAuth Consumer Key).
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the APISecret input for this Choreo. 
      # 
      # @param String - (optional, string) The API Secret provided by Factual (AKA the OAuth Consumer Secret).
      ###

      def set_APISecret(value)
        set_input("APISecret", value)
      end
      #### 
      # Set the value of the Cities input for this Choreo. 
      # 
      # @param String - (required, string) Enter a list of cities to filter results. Use the following comma-separated format: "New York", "Ithaca", "Albany"
      ###

      def set_Cities(value)
        set_input("Cities", value)
      end
      #### 
      # Set the value of the Query input for this Choreo. 
      # 
      # @param String - (optional, string) A search string (i.e. Starbucks).
      ###

      def set_Query(value)
        set_input("Query", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FilterPlacesByMultipleCities Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FilterPlacesByMultipleCitiesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Factual.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class FilterPlacesByMultipleCities



  ##############################################################################
  #
  # FilterPlacesByTopLevelCategory
  #
  # Find places by top-level category and near specified latitude, longitude coordinates.
  #
  ##############################################################################

  class FilterPlacesByTopLevelCategory < Choreography

    ####
    #  Create a new instance of the FilterPlacesByTopLevelCategory Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Factual/FilterPlacesByTopLevelCategory")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FilterPlacesByTopLevelCategoryInputSet
    ####
    def new_input_set()
      return FilterPlacesByTopLevelCategoryInputSet.new()
    end

    def make_result_set()
      return FilterPlacesByTopLevelCategoryResultSet.new()
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
      results = FilterPlacesByTopLevelCategoryResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FilterPlacesByTopLevelCategory
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FilterPlacesByTopLevelCategoryInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (optional, string) The API Key provided by Factual (AKA the OAuth Consumer Key).
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the APISecret input for this Choreo. 
      # 
      # @param String - (optional, string) The API Secret provided by Factual (AKA the OAuth Consumer Secret).
      ###

      def set_APISecret(value)
        set_input("APISecret", value)
      end
      #### 
      # Set the value of the Category input for this Choreo. 
      # 
      # @param String - (required, string) Enter a Factual top-level category to narrow the search results. See Choreo doc for a list of Factual top-level categories.
      ###

      def set_Category(value)
        set_input("Category", value)
      end
      #### 
      # Set the value of the Latitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) Enter latitude coordinates of the location defining the center of the search radius.
      ###

      def set_Latitude(value)
        set_input("Latitude", value)
      end
      #### 
      # Set the value of the Longitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) Enter longitude coordinates of the location defining the center of the search radius.
      ###

      def set_Longitude(value)
        set_input("Longitude", value)
      end
      #### 
      # Set the value of the Query input for this Choreo. 
      # 
      # @param String - (optional, string) A search string (i.e. Starbucks)
      ###

      def set_Query(value)
        set_input("Query", value)
      end
      #### 
      # Set the value of the Radius input for this Choreo. 
      # 
      # @param Integer - (required, integer) Provide the radius (in meters, and centered on the latitude-longitude coordinates specified) for which search results will be returned.
      ###

      def set_Radius(value)
        set_input("Radius", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FilterPlacesByTopLevelCategory Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FilterPlacesByTopLevelCategoryResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Factual.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class FilterPlacesByTopLevelCategory



  ##############################################################################
  #
  # FilterRestaurantsByCuisineAndCoordinates
  #
  # Find restaurants by cuisine and near specified latitude, longitude coordinates.
  #
  ##############################################################################

  class FilterRestaurantsByCuisineAndCoordinates < Choreography

    ####
    #  Create a new instance of the FilterRestaurantsByCuisineAndCoordinates Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Factual/FilterRestaurantsByCuisineAndCoordinates")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FilterRestaurantsByCuisineAndCoordinatesInputSet
    ####
    def new_input_set()
      return FilterRestaurantsByCuisineAndCoordinatesInputSet.new()
    end

    def make_result_set()
      return FilterRestaurantsByCuisineAndCoordinatesResultSet.new()
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
      results = FilterRestaurantsByCuisineAndCoordinatesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FilterRestaurantsByCuisineAndCoordinates
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FilterRestaurantsByCuisineAndCoordinatesInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (optional, string) The API Key provided by Factual (AKA the OAuth Consumer Key).
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the APISecret input for this Choreo. 
      # 
      # @param String - (optional, string) The API Secret provided by Factual (AKA the OAuth Consumer Secret).
      ###

      def set_APISecret(value)
        set_input("APISecret", value)
      end
      #### 
      # Set the value of the Cuisine input for this Choreo. 
      # 
      # @param String - (required, string) Enter a desired cuisine to narrow the search results. See Choreo doc for a list of available cuisine parameters.
      ###

      def set_Cuisine(value)
        set_input("Cuisine", value)
      end
      #### 
      # Set the value of the Latitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) Enter latitude coordinates of the location defining the center of the search radius.
      ###

      def set_Latitude(value)
        set_input("Latitude", value)
      end
      #### 
      # Set the value of the Longitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) Enter longitude coordinates of the location defining the center of the search radius.
      ###

      def set_Longitude(value)
        set_input("Longitude", value)
      end
      #### 
      # Set the value of the Radius input for this Choreo. 
      # 
      # @param Integer - (required, integer) Provide the radius (in meters, and centered on the latitude-longitude coordinates specified) for which search results will be returned.
      ###

      def set_Radius(value)
        set_input("Radius", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FilterRestaurantsByCuisineAndCoordinates Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FilterRestaurantsByCuisineAndCoordinatesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Factual.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class FilterRestaurantsByCuisineAndCoordinates



  ##############################################################################
  #
  # FindPlacesByName
  #
  # Search for places by name.
  #
  ##############################################################################

  class FindPlacesByName < Choreography

    ####
    #  Create a new instance of the FindPlacesByName Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Factual/FindPlacesByName")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FindPlacesByNameInputSet
    ####
    def new_input_set()
      return FindPlacesByNameInputSet.new()
    end

    def make_result_set()
      return FindPlacesByNameResultSet.new()
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
      results = FindPlacesByNameResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FindPlacesByName
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FindPlacesByNameInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (optional, string) The API Key provided by Factual (AKA the OAuth Consumer Key).
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the APISecret input for this Choreo. 
      # 
      # @param String - (optional, string) The API Secret provided by Factual (AKA the OAuth Consumer Secret).
      ###

      def set_APISecret(value)
        set_input("APISecret", value)
      end
      #### 
      # Set the value of the Query input for this Choreo. 
      # 
      # @param String - (required, string) A search string (i.e. Starbucks)
      ###

      def set_Query(value)
        set_input("Query", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FindPlacesByName Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FindPlacesByNameResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Factual.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class FindPlacesByName



  ##############################################################################
  #
  # FindPlacesNearCoordinates
  #
  # Find places near specified latitude, longitude coordinates.
  #
  ##############################################################################

  class FindPlacesNearCoordinates < Choreography

    ####
    #  Create a new instance of the FindPlacesNearCoordinates Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Factual/FindPlacesNearCoordinates")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FindPlacesNearCoordinatesInputSet
    ####
    def new_input_set()
      return FindPlacesNearCoordinatesInputSet.new()
    end

    def make_result_set()
      return FindPlacesNearCoordinatesResultSet.new()
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
      results = FindPlacesNearCoordinatesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FindPlacesNearCoordinates
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FindPlacesNearCoordinatesInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (optional, string) The API Key provided by Factual (AKA the OAuth Consumer Key).
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the APISecret input for this Choreo. 
      # 
      # @param String - (optional, string) The API Secret provided by Factual (AKA the OAuth Consumer Secret).
      ###

      def set_APISecret(value)
        set_input("APISecret", value)
      end
      #### 
      # Set the value of the Latitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) Enter latitude coordinates of the location defining the center of the search radius.
      ###

      def set_Latitude(value)
        set_input("Latitude", value)
      end
      #### 
      # Set the value of the Longitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) Enter longitude coordinates of the location defining the center of the search radius.
      ###

      def set_Longitude(value)
        set_input("Longitude", value)
      end
      #### 
      # Set the value of the Query input for this Choreo. 
      # 
      # @param String - (optional, string) A search string (i.e. Starbucks)
      ###

      def set_Query(value)
        set_input("Query", value)
      end
      #### 
      # Set the value of the Radius input for this Choreo. 
      # 
      # @param Integer - (required, integer) Provide the radius (in meters, and centered on the latitude-longitude coordinates specified) for which search results will be returned.
      ###

      def set_Radius(value)
        set_input("Radius", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FindPlacesNearCoordinates Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FindPlacesNearCoordinatesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Factual.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class FindPlacesNearCoordinates



  ##############################################################################
  #
  # FindRestaurantsByName
  #
  # Search for restaurants by name. 
  #
  ##############################################################################

  class FindRestaurantsByName < Choreography

    ####
    #  Create a new instance of the FindRestaurantsByName Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Factual/FindRestaurantsByName")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FindRestaurantsByNameInputSet
    ####
    def new_input_set()
      return FindRestaurantsByNameInputSet.new()
    end

    def make_result_set()
      return FindRestaurantsByNameResultSet.new()
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
      results = FindRestaurantsByNameResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FindRestaurantsByName
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FindRestaurantsByNameInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (optional, string) The API Key provided by Factual (AKA the OAuth Consumer Key).
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the APISecret input for this Choreo. 
      # 
      # @param String - (optional, string) The API Secret provided by Factual (AKA the OAuth Consumer Secret).
      ###

      def set_APISecret(value)
        set_input("APISecret", value)
      end
      #### 
      # Set the value of the Query input for this Choreo. 
      # 
      # @param String - (required, string) A search string (i.e. Starbucks)
      ###

      def set_Query(value)
        set_input("Query", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FindRestaurantsByName Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FindRestaurantsByNameResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Factual.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class FindRestaurantsByName




end # module Factual