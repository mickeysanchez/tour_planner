require "temboo"

module Labs




  module GetPlaces



    ##############################################################################
    #
    # ByAddress
    #
    # Retrieves information from multiple APIs about places near a specified street address.
    #
    ##############################################################################

    class ByAddress < Choreography

      ####
      #  Create a new instance of the ByAddress Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Labs/GetPlaces/ByAddress")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ByAddressInputSet
      ####
      def new_input_set()
        return ByAddressInputSet.new()
      end

      def make_result_set()
        return ByAddressResultSet.new()
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
        results = ByAddressResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ByAddress
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ByAddressInputSet < Choreography::InputSet

        #### 
        # Set the value of the APICredentials input for this Choreo. 
        # 
        # @param String - (conditional, json) 
        ###

        def set_APICredentials(value)
          set_input("APICredentials", value)
        end
        #### 
        # Set the value of the Address input for this Choreo. 
        # 
        # @param String - (required, string) The street address to use in the search. This can be a single address, or an array of addresses. See documentation for formatting examples.
        ###

        def set_Address(value)
          set_input("Address", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the number of Foursquare venues results.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (optional, string) This keyword input can be used to narrow search results for Google Places and Foursquare.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Type input for this Choreo. 
        # 
        # @param String - (optional, string) Filters results by type of place, such as: bar, dentist, etc. This is used to filter results for Google Places and Yelp.
        ###

        def set_Type(value)
          set_input("Type", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ByAddress Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ByAddressResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - Contains the merged results for search.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ByAddress



    ##############################################################################
    #
    # ByAddressHelper
    #
    # Retrieves information from multiple APIs about places near a specified street address.
    #
    ##############################################################################

    class ByAddressHelper < Choreography

      ####
      #  Create a new instance of the ByAddressHelper Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Labs/GetPlaces/ByAddressHelper")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ByAddressHelperInputSet
      ####
      def new_input_set()
        return ByAddressHelperInputSet.new()
      end

      def make_result_set()
        return ByAddressHelperResultSet.new()
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
        results = ByAddressHelperResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ByAddressHelper
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ByAddressHelperInputSet < Choreography::InputSet

        #### 
        # Set the value of the APICredentials input for this Choreo. 
        # 
        # @param String - (required, json) A JSON dictionary of credentials for the APIs you wish to access. See Choreo documentation for formatting examples.
        ###

        def set_APICredentials(value)
          set_input("APICredentials", value)
        end
        #### 
        # Set the value of the Address input for this Choreo. 
        # 
        # @param String - (required, string) The street address of the user's location.
        ###

        def set_Address(value)
          set_input("Address", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the number of Foursquare venues results.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (optional, string) This keyword input can be used to narrow search results for Google Places and Foursquare.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Type input for this Choreo. 
        # 
        # @param String - (optional, string) Filters results by type of place, such as: bar, dentist, etc. This is used to filter results for Google Places and Yelp.
        ###

        def set_Type(value)
          set_input("Type", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ByAddressHelper Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ByAddressHelperResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) Contains combined weather data from Yahoo Weather, NOAA, and EnviroFacts.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ByAddressHelper



    ##############################################################################
    #
    # ByCoordinates
    #
    # Retrieves information about places near a set of coordinates from multiple sources in one API call.
    #
    ##############################################################################

    class ByCoordinates < Choreography

      ####
      #  Create a new instance of the ByCoordinates Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Labs/GetPlaces/ByCoordinates")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ByCoordinatesInputSet
      ####
      def new_input_set()
        return ByCoordinatesInputSet.new()
      end

      def make_result_set()
        return ByCoordinatesResultSet.new()
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
        results = ByCoordinatesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ByCoordinates
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ByCoordinatesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APICredentials input for this Choreo. 
        # 
        # @param String - (required, json) A JSON dictionary of credentials for the APIs you wish to access. See Choreo documentation for formatting examples.
        ###

        def set_APICredentials(value)
          set_input("APICredentials", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The latitude of the user's location.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the number of Foursquare venue results.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The longitude of the user's location.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (optional, string) This keyword input can be used to narrow search results for Google Places and Foursquare.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Type input for this Choreo. 
        # 
        # @param String - (optional, string) Filters results by type of place, such as: bar, dentist, etc. This is used to filter results for Google Places and Yelp.
        ###

        def set_Type(value)
          set_input("Type", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ByCoordinates Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ByCoordinatesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - Contains the merged results from the API responses.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ByCoordinates



    ##############################################################################
    #
    # ByFoursquare
    #
    # Retrieves information from multiple APIs about places near a set of coordinates retrieved from Foursquare.
    #
    ##############################################################################

    class ByFoursquare < Choreography

      ####
      #  Create a new instance of the ByFoursquare Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Labs/GetPlaces/ByFoursquare")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ByFoursquareInputSet
      ####
      def new_input_set()
        return ByFoursquareInputSet.new()
      end

      def make_result_set()
        return ByFoursquareResultSet.new()
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
        results = ByFoursquareResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ByFoursquare
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ByFoursquareInputSet < Choreography::InputSet

        #### 
        # Set the value of the APICredentials input for this Choreo. 
        # 
        # @param String - (required, json) A JSON dictionary of credentials for the APIs you wish to access. See Choreo documentation for formatting examples.
        ###

        def set_APICredentials(value)
          set_input("APICredentials", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the number of Foursquare venues returned.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (optional, string) This keyword input can be used to narrow search results for Google Places and Foursquare.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Shout input for this Choreo. 
        # 
        # @param String - (optional, string) A message about your check-in. The maximum length of this field is 140 characters.
        ###

        def set_Shout(value)
          set_input("Shout", value)
        end
        #### 
        # Set the value of the Type input for this Choreo. 
        # 
        # @param String - (optional, string) Filters results by type of place, such as: bar, dentist, etc. This is used to filter results for Google Places and Yelp.
        ###

        def set_Type(value)
          set_input("Type", value)
        end
        #### 
        # Set the value of the VenueID input for this Choreo. 
        # 
        # @param String - (optional, string) The venue where the user is checking in. Required if creating a Foursquare checkin.
        ###

        def set_VenueID(value)
          set_input("VenueID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ByFoursquare Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ByFoursquareResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) Contains weather information based on the coordinates returned from the Foursquare checkin.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ByFoursquare



    ##############################################################################
    #
    # MergePlaces
    #
    # 
    #
    ##############################################################################

    class MergePlaces < Choreography

      ####
      #  Create a new instance of the MergePlaces Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Labs/GetPlaces/MergePlaces")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return MergePlacesInputSet
      ####
      def new_input_set()
        return MergePlacesInputSet.new()
      end

      def make_result_set()
        return MergePlacesResultSet.new()
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
        results = MergePlacesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the MergePlaces
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class MergePlacesInputSet < Choreography::InputSet

        #### 
        # Set the value of the FoursquareResponse input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_FoursquareResponse(value)
          set_alias("FoursquareResponse", value)
        end
        #### 
        # Set the value of the GooglePlacesResponse input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_GooglePlacesResponse(value)
          set_alias("GooglePlacesResponse", value)
        end
        #### 
        # Set the value of the YelpResponse input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_YelpResponse(value)
          set_alias("YelpResponse", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the MergePlaces Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class MergePlacesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) 
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class MergePlaces




  end # module GetPlaces

  module GetWeather



    ##############################################################################
    #
    # ByAddress
    #
    # Retrieves weather and UV index data for a given Geo point using the Yahoo Weather and EnviroFacts APIs.
    #
    ##############################################################################

    class ByAddress < Choreography

      ####
      #  Create a new instance of the ByAddress Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Labs/GetWeather/ByAddress")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ByAddressInputSet
      ####
      def new_input_set()
        return ByAddressInputSet.new()
      end

      def make_result_set()
        return ByAddressResultSet.new()
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
        results = ByAddressResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ByAddress
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ByAddressInputSet < Choreography::InputSet

        #### 
        # Set the value of the APICredentials input for this Choreo. 
        # 
        # @param String - (optional, json) A JSON dictionary containing a Yahoo App ID. See Choreo documentation for formatting examples.
        ###

        def set_APICredentials(value)
          set_input("APICredentials", value)
        end
        #### 
        # Set the value of the Address input for this Choreo. 
        # 
        # @param String - (required, string) The street address of the location to get weather for.
        ###

        def set_Address(value)
          set_input("Address", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ByAddress Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ByAddressResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) Contains combined weather data from Yahoo Weather and EnviroFacts.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ByAddress



    ##############################################################################
    #
    # ByCoordinates
    #
    # Retrieves weather and UV index data for a given Geo point using the Yahoo Weather and EnviroFacts APIs.
    #
    ##############################################################################

    class ByCoordinates < Choreography

      ####
      #  Create a new instance of the ByCoordinates Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Labs/GetWeather/ByCoordinates")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ByCoordinatesInputSet
      ####
      def new_input_set()
        return ByCoordinatesInputSet.new()
      end

      def make_result_set()
        return ByCoordinatesResultSet.new()
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
        results = ByCoordinatesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ByCoordinates
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ByCoordinatesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APICredentials input for this Choreo. 
        # 
        # @param String - (optional, json) A JSON dictionary containing a Yahoo App ID. See Choreo documentation for formatting examples.
        ###

        def set_APICredentials(value)
          set_input("APICredentials", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The latitude coordinate to use when looking up weather information.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The longitude coordinate to use when looking up weather information.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ByCoordinates Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ByCoordinatesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) Contains combined weather data from Yahoo Weather and EnviroFacts.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ByCoordinates



    ##############################################################################
    #
    # ByFoursquare
    #
    # Retrieves weather and UV index data based on coordinates returned from a Foursquare recent check-in.
    #
    ##############################################################################

    class ByFoursquare < Choreography

      ####
      #  Create a new instance of the ByFoursquare Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Labs/GetWeather/ByFoursquare")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ByFoursquareInputSet
      ####
      def new_input_set()
        return ByFoursquareInputSet.new()
      end

      def make_result_set()
        return ByFoursquareResultSet.new()
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
        results = ByFoursquareResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ByFoursquare
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ByFoursquareInputSet < Choreography::InputSet

        #### 
        # Set the value of the APICredentials input for this Choreo. 
        # 
        # @param String - (required, json) A JSON dictionary containing your Foursquare and Yahoo credentials. See Choreo documentation for formatting examples.
        ###

        def set_APICredentials(value)
          set_input("APICredentials", value)
        end
        #### 
        # Set the value of the Shout input for this Choreo. 
        # 
        # @param String - (optional, string) A message about your check-in. The maximum length of this field is 140 characters.
        ###

        def set_Shout(value)
          set_input("Shout", value)
        end
        #### 
        # Set the value of the VenueID input for this Choreo. 
        # 
        # @param String - (optional, string) The venue where the user is checking in. Required if creating a Foursquare checkin.
        ###

        def set_VenueID(value)
          set_input("VenueID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ByFoursquare Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ByFoursquareResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) Contains weather information based on the coordinates returned from the Foursquare checkin.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ByFoursquare



    ##############################################################################
    #
    # GetWeatherSources
    #
    # 
    #
    ##############################################################################

    class GetWeatherSources < Choreography

      ####
      #  Create a new instance of the GetWeatherSources Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Labs/GetWeather/GetWeatherSources")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetWeatherSourcesInputSet
      ####
      def new_input_set()
        return GetWeatherSourcesInputSet.new()
      end

      def make_result_set()
        return GetWeatherSourcesResultSet.new()
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
        results = GetWeatherSourcesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetWeatherSources
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetWeatherSourcesInputSet < Choreography::InputSet

        #### 
        # Set the value of the Credentials input for this Choreo. 
        # 
        # @param String - (optional, any) 
        ###

        def set_Credentials(value)
          set_input("Credentials", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The latitude coordinate used to lookup weather results.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The longitude coordinate used to lookup weather results.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetWeatherSources Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetWeatherSourcesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) 
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetWeatherSources



    ##############################################################################
    #
    # UVIndexDailyForecastByCityState
    #
    # Looksup UV index forecasts with a given zip code.
    #
    ##############################################################################

    class UVIndexDailyForecastByCityState < Choreography

      ####
      #  Create a new instance of the UVIndexDailyForecastByCityState Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Labs/GetWeather/UVIndexDailyForecastByCityState")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UVIndexDailyForecastByCityStateInputSet
      ####
      def new_input_set()
        return UVIndexDailyForecastByCityStateInputSet.new()
      end

      def make_result_set()
        return UVIndexDailyForecastByCityStateResultSet.new()
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
        results = UVIndexDailyForecastByCityStateResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UVIndexDailyForecastByCityState
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UVIndexDailyForecastByCityStateInputSet < Choreography::InputSet

        #### 
        # Set the value of the City input for this Choreo. 
        # 
        # @param String - (required, string) The city to retireve UV index information for.
        ###

        def set_City(value)
          set_input("City", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are JSON, EXCEL, and CSV. Note that by default this is null which indicates that XML is returned.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (required, string) The state code to retireve UV index information for.
        ###

        def set_State(value)
          set_input("State", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UVIndexDailyForecastByCityState Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UVIndexDailyForecastByCityStateResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from EnviroFacts.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UVIndexDailyForecastByCityState



    ##############################################################################
    #
    # UVIndexDailyForecastByZip
    #
    # Looksup UV index forecasts with a given zip code.
    #
    ##############################################################################

    class UVIndexDailyForecastByZip < Choreography

      ####
      #  Create a new instance of the UVIndexDailyForecastByZip Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Labs/GetWeather/UVIndexDailyForecastByZip")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UVIndexDailyForecastByZipInputSet
      ####
      def new_input_set()
        return UVIndexDailyForecastByZipInputSet.new()
      end

      def make_result_set()
        return UVIndexDailyForecastByZipResultSet.new()
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
        results = UVIndexDailyForecastByZipResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UVIndexDailyForecastByZip
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UVIndexDailyForecastByZipInputSet < Choreography::InputSet

        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are JSON, EXCEL, and CSV. Note that by default this is null which indicates that XML is returned.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Zip input for this Choreo. 
        # 
        # @param Integer - (required, integer) The zip code used to lookup UV index forecast results.
        ###

        def set_Zip(value)
          set_input("Zip", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UVIndexDailyForecastByZip Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UVIndexDailyForecastByZipResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from EnviroFacts.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UVIndexDailyForecastByZip




  end # module GetWeather

  module GoodCitizen



    ##############################################################################
    #
    # Civic
    #
    # Retrieves a host of information about the district and representatives of a specified location.
    #
    ##############################################################################

    class Civic < Choreography

      ####
      #  Create a new instance of the Civic Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Labs/GoodCitizen/Civic")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CivicInputSet
      ####
      def new_input_set()
        return CivicInputSet.new()
      end

      def make_result_set()
        return CivicResultSet.new()
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
        results = CivicResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Civic
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CivicInputSet < Choreography::InputSet

        #### 
        # Set the value of the APICredentials input for this Choreo. 
        # 
        # @param String - (optional, json) The JSON dictionary for the Sulight Labs credentials required to operate this choreo. LittleSis credentials are optional. See docs for the format of this input.
        ###

        def set_APICredentials(value)
          set_input("APICredentials", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The latitude coordinate of your location.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set the number of records to return for the bills, votes, and relationships of each legislator. Defaults to 5.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The longitude coordinate of your locaion.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Civic Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CivicResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (string) The response from the Civic Choreo.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Civic



    ##############################################################################
    #
    # EcoByCoordinates
    #
    # Returns a host of eco-conscious environmental information for a specified location based on Lattitude and Longitude inputs.
    #
    ##############################################################################

    class EcoByCoordinates < Choreography

      ####
      #  Create a new instance of the EcoByCoordinates Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Labs/GoodCitizen/EcoByCoordinates")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return EcoByCoordinatesInputSet
      ####
      def new_input_set()
        return EcoByCoordinatesInputSet.new()
      end

      def make_result_set()
        return EcoByCoordinatesResultSet.new()
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
        results = EcoByCoordinatesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the EcoByCoordinates
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class EcoByCoordinatesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APICredentials input for this Choreo. 
        # 
        # @param String - (optional, string) A JSON dictionary containing credentials for Genability. See Choreo documentation for formatting examples.
        ###

        def set_APICredentials(value)
          set_input("APICredentials", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The latitude coordinate for the user's current location.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of facility records to search for in the Envirofacts database.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The longitude coordinate for the user's current location.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the EcoByCoordinates Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class EcoByCoordinatesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from the Eco Choreo.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class EcoByCoordinates



    ##############################################################################
    #
    # EcoByZip
    #
    # Returns a host of eco-conscious environmental information for a specified location based on zip code.
    #
    ##############################################################################

    class EcoByZip < Choreography

      ####
      #  Create a new instance of the EcoByZip Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Labs/GoodCitizen/EcoByZip")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return EcoByZipInputSet
      ####
      def new_input_set()
        return EcoByZipInputSet.new()
      end

      def make_result_set()
        return EcoByZipResultSet.new()
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
        results = EcoByZipResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the EcoByZip
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class EcoByZipInputSet < Choreography::InputSet

        #### 
        # Set the value of the APICredentials input for this Choreo. 
        # 
        # @param String - (optional, string) A JSON dictionary containing credentials for Genability. See Choreo documentation for formatting examples.
        ###

        def set_APICredentials(value)
          set_input("APICredentials", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of facility records to search for in the Envirofacts database.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Zip input for this Choreo. 
        # 
        # @param Integer - (required, integer) The zip code for the user's current location.
        ###

        def set_Zip(value)
          set_input("Zip", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the EcoByZip Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class EcoByZipResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from the Eco Choreo.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class EcoByZip



    ##############################################################################
    #
    # GenabilityHelper
    #
    # 
    #
    ##############################################################################

    class GenabilityHelper < Choreography

      ####
      #  Create a new instance of the GenabilityHelper Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Labs/GoodCitizen/GenabilityHelper")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GenabilityHelperInputSet
      ####
      def new_input_set()
        return GenabilityHelperInputSet.new()
      end

      def make_result_set()
        return GenabilityHelperResultSet.new()
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
        results = GenabilityHelperResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GenabilityHelper
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GenabilityHelperInputSet < Choreography::InputSet

        #### 
        # Set the value of the GenabilityResponse input for this Choreo. 
        # 
        # @param String - (conditional, json) Genability JSON response.
        ###

        def set_GenabilityResponse(value)
          set_input("GenabilityResponse", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GenabilityHelper Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GenabilityHelperResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) 
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GenabilityHelper




  end # module GoodCitizen

  module Social



    ##############################################################################
    #
    # FoursquareFriendsList
    #
    # 
    #
    ##############################################################################

    class FoursquareFriendsList < Choreography

      ####
      #  Create a new instance of the FoursquareFriendsList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Labs/Social/FoursquareFriendsList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FoursquareFriendsListInputSet
      ####
      def new_input_set()
        return FoursquareFriendsListInputSet.new()
      end

      def make_result_set()
        return FoursquareFriendsListResultSet.new()
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
        results = FoursquareFriendsListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FoursquareFriendsList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FoursquareFriendsListInputSet < Choreography::InputSet

        #### 
        # Set the value of the FoursquareResponse input for this Choreo. 
        # 
        # @param String - (conditional, any) 
        ###

        def set_FoursquareResponse(value)
          set_input("FoursquareResponse", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FoursquareFriendsList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FoursquareFriendsListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - 
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FoursquareFriendsList



    ##############################################################################
    #
    # GetContacts
    #
    # Retrieves your social contacts from multiple APIs in one API call.
    #
    ##############################################################################

    class GetContacts < Choreography

      ####
      #  Create a new instance of the GetContacts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Labs/Social/GetContacts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetContactsInputSet
      ####
      def new_input_set()
        return GetContactsInputSet.new()
      end

      def make_result_set()
        return GetContactsResultSet.new()
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
        results = GetContactsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetContacts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetContactsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APICredentials input for this Choreo. 
        # 
        # @param String - (conditional, json) A list of credentials for the APIs you wish to access. See Choreo documentation for formatting examples.
        ###

        def set_APICredentials(value)
          set_input("APICredentials", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (conditional, string) The Twitter screen name to retrieve followers for.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetContacts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetContactsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) Contains the merged results from the API responses.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetContacts



    ##############################################################################
    #
    # GetNearbyContacts
    #
    # Searches Foursquare recent check-ins and the Facebook social graph with a given set of Geo coordinates
    #
    ##############################################################################

    class GetNearbyContacts < Choreography

      ####
      #  Create a new instance of the GetNearbyContacts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Labs/Social/GetNearbyContacts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetNearbyContactsInputSet
      ####
      def new_input_set()
        return GetNearbyContactsInputSet.new()
      end

      def make_result_set()
        return GetNearbyContactsResultSet.new()
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
        results = GetNearbyContactsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetNearbyContacts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetNearbyContactsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APICredentials input for this Choreo. 
        # 
        # @param String - (required, json) A JSON dictionary containing Facebook and Foursquare credentials.
        ###

        def set_APICredentials(value)
          set_input("APICredentials", value)
        end
        #### 
        # Set the value of the AfterTimestamp input for this Choreo. 
        # 
        # @param String - (optional, date) Seconds after which to look for checkins, e.g. for looking for new checkins since the last fetch.
        ###

        def set_AfterTimestamp(value)
          set_input("AfterTimestamp", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The latitude coordinate of the location to search for.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the API responses.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The longitude coordinate of the location to search for.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through Facebook results. Returns results starting from the specified number.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetNearbyContacts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetNearbyContactsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) A merged result of Foursquare and Facebook location based searches.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetNearbyContacts



    ##############################################################################
    #
    # GetTwitterFollowerDetails
    #
    # 
    #
    ##############################################################################

    class GetTwitterFollowerDetails < Choreography

      ####
      #  Create a new instance of the GetTwitterFollowerDetails Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Labs/Social/GetTwitterFollowerDetails")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTwitterFollowerDetailsInputSet
      ####
      def new_input_set()
        return GetTwitterFollowerDetailsInputSet.new()
      end

      def make_result_set()
        return GetTwitterFollowerDetailsResultSet.new()
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
        results = GetTwitterFollowerDetailsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTwitterFollowerDetails
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTwitterFollowerDetailsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Credentials input for this Choreo. 
        # 
        # @param String - (conditional, any) 
        ###

        def set_Credentials(value)
          set_input("Credentials", value)
        end
        #### 
        # Set the value of the TwitterFollowers input for this Choreo. 
        # 
        # @param String - (required, any) 
        ###

        def set_TwitterFollowers(value)
          set_input("TwitterFollowers", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTwitterFollowerDetails Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTwitterFollowerDetailsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Result" output from this Choreo execution
      	#
      	# @return String - (xml) 
      	####
      	def get_Result()
      	  return @outputs["Result"]
      	end
      	####
      	# Retrieve the value for the "MappedResult" output from this Choreo execution
      	#
      	# @return String - (xml) 
      	####
      	def get_MappedResult()
      	  return @outputs["MappedResult"]
      	end
      end

    end # class GetTwitterFollowerDetails



    ##############################################################################
    #
    # MergeSocial
    #
    # 
    #
    ##############################################################################

    class MergeSocial < Choreography

      ####
      #  Create a new instance of the MergeSocial Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Labs/Social/MergeSocial")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return MergeSocialInputSet
      ####
      def new_input_set()
        return MergeSocialInputSet.new()
      end

      def make_result_set()
        return MergeSocialResultSet.new()
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
        results = MergeSocialResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the MergeSocial
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class MergeSocialInputSet < Choreography::InputSet

        #### 
        # Set the value of the FacebookResponse input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_FacebookResponse(value)
          set_alias("FacebookResponse", value)
        end
        #### 
        # Set the value of the FoursquareResponse input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_FoursquareResponse(value)
          set_alias("FoursquareResponse", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the MergeSocial Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class MergeSocialResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) 
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class MergeSocial



    ##############################################################################
    #
    # UpdateAllStatuses
    #
    # Shares a post across multiple social networks such as Facebook, Tumblr, and Twitter.
    #
    ##############################################################################

    class UpdateAllStatuses < Choreography

      ####
      #  Create a new instance of the UpdateAllStatuses Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Labs/Social/UpdateAllStatuses")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateAllStatusesInputSet
      ####
      def new_input_set()
        return UpdateAllStatusesInputSet.new()
      end

      def make_result_set()
        return UpdateAllStatusesResultSet.new()
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
        results = UpdateAllStatusesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateAllStatuses
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateAllStatusesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APICredentials input for this Choreo. 
        # 
        # @param String - (required, json) A list of credentials for the APIs you wish to access. See Choreo documentation for formatting examples.
        ###

        def set_APICredentials(value)
          set_input("APICredentials", value)
        end
        #### 
        # Set the value of the Message input for this Choreo. 
        # 
        # @param String - (required, string) The message to be posted across social networks.
        ###

        def set_Message(value)
          set_input("Message", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateAllStatuses Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateAllStatusesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) A list of results for each API.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateAllStatuses




  end # module Social

end # module Labs