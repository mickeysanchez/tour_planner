require "temboo"

module Yelp



  ##############################################################################
  #
  # SearchByAddress
  #
  # Retrieve businesses within a specific range of a specified address.
  #
  ##############################################################################

  class SearchByAddress < Choreography

    ####
    #  Create a new instance of the SearchByAddress Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Yelp/SearchByAddress")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchByAddressInputSet
    ####
    def new_input_set()
      return SearchByAddressInputSet.new()
    end

    def make_result_set()
      return SearchByAddressResultSet.new()
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
      results = SearchByAddressResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchByAddress
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchByAddressInputSet < Choreography::InputSet

      #### 
      # Set the value of the Address input for this Choreo. 
      # 
      # @param String - (required, string) The street address of the business to search for.
      ###

      def set_Address(value)
        set_input("Address", value)
      end
      #### 
      # Set the value of the BusinessType input for this Choreo. 
      # 
      # @param String - (optional, string) A term to narrow the search, such as "shoes" or "restaurants". Leave blank to search for all business types.
      ###

      def set_BusinessType(value)
        set_input("BusinessType", value)
      end
      #### 
      # Set the value of the ConsumerKey input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Key provided by Yelp.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Yelp.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Range input for this Choreo. 
      # 
      # @param Integer - (required, integer) Narrow or expand a search by specifying a range in either feet, meters, miles, or kilometers, depending on the value of the Units input. The default is 200 feet, and the maximum is 2,500 square miles.
      ###

      def set_Range(value)
        set_input("Range", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the response from Yelp, either XML or JSON (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the TokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Token Secret provided by Yelp.
      ###

      def set_TokenSecret(value)
        set_input("TokenSecret", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (required, string) The Token provided by Yelp.
      ###

      def set_Token(value)
        set_input("Token", value)
      end
      #### 
      # Set the value of the Units input for this Choreo. 
      # 
      # @param String - (required, string) Specify "feet" (the default), "meters", "miles", or "kilometers". Units apply to the Range input value.
      ###

      def set_Units(value)
        set_input("Units", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchByAddress Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchByAddressResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Yelp. Corresponds to the input value for ResponseFormat (defaults to JSON).
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchByAddress



  ##############################################################################
  #
  # SearchByBoundingBox
  #
  # Retrieve businesses in a geographic bounding box.
  #
  ##############################################################################

  class SearchByBoundingBox < Choreography

    ####
    #  Create a new instance of the SearchByBoundingBox Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Yelp/SearchByBoundingBox")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchByBoundingBoxInputSet
    ####
    def new_input_set()
      return SearchByBoundingBoxInputSet.new()
    end

    def make_result_set()
      return SearchByBoundingBoxResultSet.new()
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
      results = SearchByBoundingBoxResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchByBoundingBox
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchByBoundingBoxInputSet < Choreography::InputSet

      #### 
      # Set the value of the BusinessType input for this Choreo. 
      # 
      # @param String - (optional, string) A term to narrow the search, such as "comic books" or "restaurants". Leave blank to search for all business types.
      ###

      def set_BusinessType(value)
        set_input("BusinessType", value)
      end
      #### 
      # Set the value of the ConsumerKey input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Key provided by Yelp.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Yelp.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the NortheastLatitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) The northeastern latitude of the bounding box to search, such as "37.788022".
      ###

      def set_NortheastLatitude(value)
        set_input("NortheastLatitude", value)
      end
      #### 
      # Set the value of the NortheastLongitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) The northeastern longitude of the bounding box to search, such as "-122.399797".
      ###

      def set_NortheastLongitude(value)
        set_input("NortheastLongitude", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the response from Yelp, either XML or JSON (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the SouthwestLatitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) The southwestern latitude of the bounding box to search, such as "37.900000".
      ###

      def set_SouthwestLatitude(value)
        set_input("SouthwestLatitude", value)
      end
      #### 
      # Set the value of the SouthwestLongitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) The southwestern longitude of the bounding box to search, such as "-122.500000".
      ###

      def set_SouthwestLongitude(value)
        set_input("SouthwestLongitude", value)
      end
      #### 
      # Set the value of the TokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Token Secret provided by Yelp.
      ###

      def set_TokenSecret(value)
        set_input("TokenSecret", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (required, string) The Token provided by Yelp.
      ###

      def set_Token(value)
        set_input("Token", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchByBoundingBox Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchByBoundingBoxResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Yelp. Corresponds to the input value for ResponseFormat (defaults to JSON).
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchByBoundingBox



  ##############################################################################
  #
  # SearchByCategory
  #
  # Retrieve businesses in a specific location by business category.
  #
  ##############################################################################

  class SearchByCategory < Choreography

    ####
    #  Create a new instance of the SearchByCategory Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Yelp/SearchByCategory")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchByCategoryInputSet
    ####
    def new_input_set()
      return SearchByCategoryInputSet.new()
    end

    def make_result_set()
      return SearchByCategoryResultSet.new()
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
      results = SearchByCategoryResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchByCategory
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchByCategoryInputSet < Choreography::InputSet

      #### 
      # Set the value of the Category input for this Choreo. 
      # 
      # @param String - (required, string) Yelp categories to search in, separated by commas but no spaces, such as "hiking,climbing". See the Yelp API docimentation for a list of categories.
      ###

      def set_Category(value)
        set_input("Category", value)
      end
      #### 
      # Set the value of the ConsumerKey input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Key provided by Yelp.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Yelp.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Count input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of businesses to return. The default is 15.
      ###

      def set_Count(value)
        set_input("Count", value)
      end
      #### 
      # Set the value of the Location input for this Choreo. 
      # 
      # @param String - (required, string) An address, neighborhood, city, state, or ZIP code in which to search for the category.
      ###

      def set_Location(value)
        set_input("Location", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the response from Yelp, either XML or JSON (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the TokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Token Secret provided by Yelp.
      ###

      def set_TokenSecret(value)
        set_input("TokenSecret", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (required, string) The Token provided by Yelp.
      ###

      def set_Token(value)
        set_input("Token", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchByCategory Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchByCategoryResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Yelp. Corresponds to the input value for ResponseFormat (defaults to JSON).
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchByCategory



  ##############################################################################
  #
  # SearchByCity
  #
  # Retrieve businesses by city.
  #
  ##############################################################################

  class SearchByCity < Choreography

    ####
    #  Create a new instance of the SearchByCity Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Yelp/SearchByCity")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchByCityInputSet
    ####
    def new_input_set()
      return SearchByCityInputSet.new()
    end

    def make_result_set()
      return SearchByCityResultSet.new()
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
      results = SearchByCityResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchByCity
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchByCityInputSet < Choreography::InputSet

      #### 
      # Set the value of the BusinessType input for this Choreo. 
      # 
      # @param String - (optional, string) A term to narrow the search, such as "wine" or "restaurants". Leave blank to search for all business types.
      ###

      def set_BusinessType(value)
        set_input("BusinessType", value)
      end
      #### 
      # Set the value of the City input for this Choreo. 
      # 
      # @param String - (required, string) The name of the city in which to search for businesses.
      ###

      def set_City(value)
        set_input("City", value)
      end
      #### 
      # Set the value of the ConsumerKey input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Key provided by Yelp.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Yelp.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Count input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of businesses to return. The default is 15.
      ###

      def set_Count(value)
        set_input("Count", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, multiline) The format of the response from Yelp, either XML or JSON (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the TokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Token Secret provided by Yelp.
      ###

      def set_TokenSecret(value)
        set_input("TokenSecret", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (required, string) The Token provided by Yelp.
      ###

      def set_Token(value)
        set_input("Token", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchByCity Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchByCityResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Yelp. Corresponds to the input value for ResponseFormat (defaults to JSON).
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchByCity



  ##############################################################################
  #
  # SearchByCoordinates
  #
  # Retrieve businesses near a specified latitude and longitude.
  #
  ##############################################################################

  class SearchByCoordinates < Choreography

    ####
    #  Create a new instance of the SearchByCoordinates Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Yelp/SearchByCoordinates")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchByCoordinatesInputSet
    ####
    def new_input_set()
      return SearchByCoordinatesInputSet.new()
    end

    def make_result_set()
      return SearchByCoordinatesResultSet.new()
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
      results = SearchByCoordinatesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchByCoordinates
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchByCoordinatesInputSet < Choreography::InputSet

      #### 
      # Set the value of the Accuracy input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Narrow or widen the search range in relation to the coordinates, such as "2" for state or "8" for street address.
      ###

      def set_Accuracy(value)
        set_input("Accuracy", value)
      end
      #### 
      # Set the value of the BusinessType input for this Choreo. 
      # 
      # @param String - (optional, string) A term to narrow the search, such as "comic books" or "restaurants". Leave blank to search for all business types.
      ###

      def set_BusinessType(value)
        set_input("BusinessType", value)
      end
      #### 
      # Set the value of the ConsumerKey input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Key provided by Yelp.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Yelp.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Latitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) The latitude to search near, such as "37.788022".
      ###

      def set_Latitude(value)
        set_input("Latitude", value)
      end
      #### 
      # Set the value of the Longitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) The longitude to search near, such as "-122.399797".
      ###

      def set_Longitude(value)
        set_input("Longitude", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the response from Yelp, either XML or JSON (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the TokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Token Secret provided by Yelp.
      ###

      def set_TokenSecret(value)
        set_input("TokenSecret", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (required, string) The Token provided by Yelp.
      ###

      def set_Token(value)
        set_input("Token", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchByCoordinates Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchByCoordinatesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Yelp. Corresponds to the input value for ResponseFormat (defaults to JSON).
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchByCoordinates



  ##############################################################################
  #
  # SearchByNeighborhood
  #
  # Retrieve businesses by neighborhood.
  #
  ##############################################################################

  class SearchByNeighborhood < Choreography

    ####
    #  Create a new instance of the SearchByNeighborhood Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Yelp/SearchByNeighborhood")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchByNeighborhoodInputSet
    ####
    def new_input_set()
      return SearchByNeighborhoodInputSet.new()
    end

    def make_result_set()
      return SearchByNeighborhoodResultSet.new()
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
      results = SearchByNeighborhoodResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchByNeighborhood
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchByNeighborhoodInputSet < Choreography::InputSet

      #### 
      # Set the value of the BusinessType input for this Choreo. 
      # 
      # @param String - (optional, string) A term to narrow the search, such as "wine" or "restaurants". Leave blank to search for all business types.
      ###

      def set_BusinessType(value)
        set_input("BusinessType", value)
      end
      #### 
      # Set the value of the ConsumerKey input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Key provided by Yelp.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Yelp.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Count input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of businesses to return. The default is 15.
      ###

      def set_Count(value)
        set_input("Count", value)
      end
      #### 
      # Set the value of the Neighborhood input for this Choreo. 
      # 
      # @param String - (required, string) The neighborhood in which to search for businesses. See the Yelp API documentation for a list of supported neighborhoods.
      ###

      def set_Neighborhood(value)
        set_input("Neighborhood", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the response from Yelp, either XML or JSON (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the TokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Token Secret provided by Yelp.
      ###

      def set_TokenSecret(value)
        set_input("TokenSecret", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (required, string) The Token provided by Yelp.
      ###

      def set_Token(value)
        set_input("Token", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchByNeighborhood Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchByNeighborhoodResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Yelp. Corresponds to the input value for ResponseFormat (defaults to JSON).
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchByNeighborhood



  ##############################################################################
  #
  # SearchForBusiness
  #
  # Retrieves information for a given business id or name.
  #
  ##############################################################################

  class SearchForBusiness < Choreography

    ####
    #  Create a new instance of the SearchForBusiness Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Yelp/SearchForBusiness")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchForBusinessInputSet
    ####
    def new_input_set()
      return SearchForBusinessInputSet.new()
    end

    def make_result_set()
      return SearchForBusinessResultSet.new()
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
      results = SearchForBusinessResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchForBusiness
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchForBusinessInputSet < Choreography::InputSet

      #### 
      # Set the value of the BusinessId input for this Choreo. 
      # 
      # @param String - (conditional, string) The business id to return results for. This can be found in the URL when you're on the business page on yelp.com (i.e. "yelp-san-francisco"). This is required unless using the BusinessName input.
      ###

      def set_BusinessId(value)
        set_input("BusinessId", value)
      end
      #### 
      # Set the value of the BusinessName input for this Choreo. 
      # 
      # @param String - (conditional, string) A term to narrow the search, such as business name. This is required unless using the BusinessId input.
      ###

      def set_BusinessName(value)
        set_input("BusinessName", value)
      end
      #### 
      # Set the value of the City input for this Choreo. 
      # 
      # @param String - (conditional, string) The name of the city in which to search for businesses. This is required unless providing the BusinessId.
      ###

      def set_City(value)
        set_input("City", value)
      end
      #### 
      # Set the value of the ConsumerKey input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Key provided by Yelp.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Yelp.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, multiline) The format of the response from Yelp, either XML or JSON (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the TokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Token Secret provided by Yelp.
      ###

      def set_TokenSecret(value)
        set_input("TokenSecret", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (required, string) The Token provided by Yelp.
      ###

      def set_Token(value)
        set_input("Token", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchForBusiness Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchForBusinessResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Yelp. Corresponds to the input value for ResponseFormat (defaults to JSON).
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchForBusiness



  ##############################################################################
  #
  # SearchForBusinessesWithDeals
  #
  # Only returns information for businesses with deals.
  #
  ##############################################################################

  class SearchForBusinessesWithDeals < Choreography

    ####
    #  Create a new instance of the SearchForBusinessesWithDeals Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Yelp/SearchForBusinessesWithDeals")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchForBusinessesWithDealsInputSet
    ####
    def new_input_set()
      return SearchForBusinessesWithDealsInputSet.new()
    end

    def make_result_set()
      return SearchForBusinessesWithDealsResultSet.new()
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
      results = SearchForBusinessesWithDealsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchForBusinessesWithDeals
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchForBusinessesWithDealsInputSet < Choreography::InputSet

      #### 
      # Set the value of the Accuracy input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Narrow or widen the search range in relation to the coordinates, such as "2" for state or "8" for street address.
      ###

      def set_Accuracy(value)
        set_input("Accuracy", value)
      end
      #### 
      # Set the value of the BusinessType input for this Choreo. 
      # 
      # @param String - (optional, string) A term to narrow the search, such as "comic books" or "restaurants". Leave blank to search for all business types.
      ###

      def set_BusinessType(value)
        set_input("BusinessType", value)
      end
      #### 
      # Set the value of the Category input for this Choreo. 
      # 
      # @param String - (optional, string) Yelp categories to search in, separated by commas but no spaces, such as "hiking,climbing". See the Yelp API docimentation for a list of categories.
      ###

      def set_Category(value)
        set_input("Category", value)
      end
      #### 
      # Set the value of the ConsumerKey input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Key provided by Yelp.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Yelp.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Latitude input for this Choreo. 
      # 
      # @param BigDecimal - (conditional, decimal) The latitude to search near, such as "37.788022". Searching with either Location or Coordinates is required.
      ###

      def set_Latitude(value)
        set_input("Latitude", value)
      end
      #### 
      # Set the value of the Location input for this Choreo. 
      # 
      # @param String - (conditional, string) An address, neighborhood, city, state, or ZIP code in which to search for the category. Searching with either Location or Coordinates is required.
      ###

      def set_Location(value)
        set_input("Location", value)
      end
      #### 
      # Set the value of the Longitude input for this Choreo. 
      # 
      # @param BigDecimal - (conditional, decimal) The longitude to search near, such as "-122.399797". Searching with either Location or Coordinates is required.
      ###

      def set_Longitude(value)
        set_input("Longitude", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the response from Yelp, either XML or JSON (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the TokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Token Secret provided by Yelp.
      ###

      def set_TokenSecret(value)
        set_input("TokenSecret", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (required, string) The Token provided by Yelp.
      ###

      def set_Token(value)
        set_input("Token", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchForBusinessesWithDeals Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchForBusinessesWithDealsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Yelp. Corresponds to the input value for ResponseFormat (defaults to JSON).
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchForBusinessesWithDeals




end # module Yelp