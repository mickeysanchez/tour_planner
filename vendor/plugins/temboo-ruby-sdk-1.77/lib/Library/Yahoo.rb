require "temboo"

module Yahoo




  module Finance



    ##############################################################################
    #
    # GetNews
    #
    # Retrieves the most recent Yahoo! Finance Company or Industry news items as an RSS feed.
    #
    ##############################################################################

    class GetNews < Choreography

      ####
      #  Create a new instance of the GetNews Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Yahoo/Finance/GetNews")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetNewsInputSet
      ####
      def new_input_set()
        return GetNewsInputSet.new()
      end

      def make_result_set()
        return GetNewsResultSet.new()
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
        results = GetNewsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetNews
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetNewsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Company input for this Choreo. 
        # 
        # @param String - (required, string) Ticker symbol for one or more companies to search, separated by commas (e.g. YHOO,DIS to include news about Yahoo! and Disney).
        ###

        def set_Company(value)
          set_input("Company", value)
        end
        #### 
        # Set the value of the NewsType input for this Choreo. 
        # 
        # @param String - (required, string) Enter the type of news items you want to see in the RSS feed: headline or industry. 
        ###

        def set_NewsType(value)
          set_input("NewsType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetNews Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetNewsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Yahoo! Finance.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetNews




  end # module Finance

  module PlaceFinder



    ##############################################################################
    #
    # FindByAddress
    #
    # Retrieves complete geocoding information for a location by specifying an address or partial address.
    #
    ##############################################################################

    class FindByAddress < Choreography

      ####
      #  Create a new instance of the FindByAddress Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Yahoo/PlaceFinder/FindByAddress")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FindByAddressInputSet
      ####
      def new_input_set()
        return FindByAddressInputSet.new()
      end

      def make_result_set()
        return FindByAddressResultSet.new()
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
        results = FindByAddressResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FindByAddress
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FindByAddressInputSet < Choreography::InputSet

        #### 
        # Set the value of the Address input for this Choreo. 
        # 
        # @param String - (required, string) The address to be searched.
        ###

        def set_Address(value)
          set_input("Address", value)
        end
        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (optional, string) The App ID provided by Yahoo!
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the GeocodeFlags input for this Choreo. 
        # 
        # @param String - (optional, string) Affects how geocoding is performed for the request. Valid value are: A, C, L, Q, or R. See documentation for more details on this parameter.
        ###

        def set_GeocodeFlags(value)
          set_input("GeocodeFlags", value)
        end
        #### 
        # Set the value of the ResponseFlags input for this Choreo. 
        # 
        # @param String - (optional, string) Determines which data elements are returned in the response. Valid values are: B, C, D, E, G, I, J, Q, R, T, U, W, X. See documentation for details on this parameter.
        ###

        def set_ResponseFlags(value)
          set_input("ResponseFlags", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) You can specify json to get this output format in JSON. Otherwise, the default output will be in XML.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FindByAddress Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FindByAddressResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Yahoo! PlaceFinder.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FindByAddress



    ##############################################################################
    #
    # FindByCoordinates
    #
    # Retrieves complete location information from a specified pair of latitude and longitude coordinates.
    #
    ##############################################################################

    class FindByCoordinates < Choreography

      ####
      #  Create a new instance of the FindByCoordinates Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Yahoo/PlaceFinder/FindByCoordinates")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FindByCoordinatesInputSet
      ####
      def new_input_set()
        return FindByCoordinatesInputSet.new()
      end

      def make_result_set()
        return FindByCoordinatesResultSet.new()
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
        results = FindByCoordinatesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FindByCoordinates
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FindByCoordinatesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (optional, string) The App ID provided by Yahoo!
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the GeocodeFlags input for this Choreo. 
        # 
        # @param String - (optional, string) Affects how geocoding is performed for the request. Valid value are: A, C, L, Q, or R. See documentation for more details on this parameter.
        ###

        def set_GeocodeFlags(value)
          set_input("GeocodeFlags", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param String - (required, string) The latitude coordinate of the location you want to find.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param String - (required, string) The longitude coordinate of the location you want to find.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the ResponseFlags input for this Choreo. 
        # 
        # @param String - (optional, string) Determines which data elements are returned in the response. Valid values are: B, C, D, E, G, I, J, Q, R, T, U, W, X. See documentation for details on this parameter.
        ###

        def set_ResponseFlags(value)
          set_input("ResponseFlags", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) You can specify json to get this output format in JSON. Otherwise, the default output will be in XML.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FindByCoordinates Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FindByCoordinatesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Yahoo! PlaceFinder.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FindByCoordinates




  end # module PlaceFinder

  module Weather



    ##############################################################################
    #
    # GetWeather
    #
    # Retrieves the Yahoo! Weather RSS Feed for any specified location.
    #
    ##############################################################################

    class GetWeather < Choreography

      ####
      #  Create a new instance of the GetWeather Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Yahoo/Weather/GetWeather")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetWeatherInputSet
      ####
      def new_input_set()
        return GetWeatherInputSet.new()
      end

      def make_result_set()
        return GetWeatherResultSet.new()
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
        results = GetWeatherResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetWeather
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetWeatherInputSet < Choreography::InputSet

        #### 
        # Set the value of the Units input for this Choreo. 
        # 
        # @param String - (optional, string) The unit of temperature in the response. Acceptable inputs: f for Fahrenheit or c for Celsius. Defaults to f. When c is specified, all units measurements returned are changed to metric.
        ###

        def set_Units(value)
          set_input("Units", value)
        end
        #### 
        # Set the value of the WOEID input for this Choreo. 
        # 
        # @param Integer - (required, integer) Where On Earth ID for the desired location. This unique integer can be found by first running the GetWeatherByCoordinates Choreo.
        ###

        def set_WOEID(value)
          set_input("WOEID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetWeather Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetWeatherResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Yahoo! Weather.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetWeather



    ##############################################################################
    #
    # GetWeatherByAddress
    #
    # Retrieves the Yahoo Weather RSS Feed for any specified location by address.
    #
    ##############################################################################

    class GetWeatherByAddress < Choreography

      ####
      #  Create a new instance of the GetWeatherByAddress Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Yahoo/Weather/GetWeatherByAddress")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetWeatherByAddressInputSet
      ####
      def new_input_set()
        return GetWeatherByAddressInputSet.new()
      end

      def make_result_set()
        return GetWeatherByAddressResultSet.new()
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
        results = GetWeatherByAddressResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetWeatherByAddress
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetWeatherByAddressInputSet < Choreography::InputSet

        #### 
        # Set the value of the Address input for this Choreo. 
        # 
        # @param String - (required, string) The address to be searched.
        ###

        def set_Address(value)
          set_input("Address", value)
        end
        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (optional, string) The App ID provided by Yahoo!
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the Units input for this Choreo. 
        # 
        # @param String - (optional, string) The unit of temperature in the response. Acceptable inputs: f for Fahrenheit or c for Celsius. Defaults to f. When c is specified, all units measurements returned are changed to metric.
        ###

        def set_Units(value)
          set_input("Units", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetWeatherByAddress Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetWeatherByAddressResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Yahoo Weather.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "WOEID" output from this Choreo execution
      	#
      	# @return String - (integer) The unique Where On Earth ID of the location.
      	####
      	def get_WOEID()
      	  return @outputs["WOEID"]
      	end
      end

    end # class GetWeatherByAddress



    ##############################################################################
    #
    # GetWeatherByCoordinates
    #
    # Retrieves the Yahoo Weather RSS Feed for any specified location by geo-coordinates.
    #
    ##############################################################################

    class GetWeatherByCoordinates < Choreography

      ####
      #  Create a new instance of the GetWeatherByCoordinates Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Yahoo/Weather/GetWeatherByCoordinates")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetWeatherByCoordinatesInputSet
      ####
      def new_input_set()
        return GetWeatherByCoordinatesInputSet.new()
      end

      def make_result_set()
        return GetWeatherByCoordinatesResultSet.new()
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
        results = GetWeatherByCoordinatesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetWeatherByCoordinates
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetWeatherByCoordinatesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (optional, string) The App ID provided by Yahoo!
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The latitude coordinate of the location you want to search.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The longitude coordinate of the location you want to search.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the Units input for this Choreo. 
        # 
        # @param String - (optional, string) The unit of temperature in the response. Acceptable inputs: f for Fahrenheit or c for Celsius. Defaults to f. When c is specified, all units measurements returned are changed to metric.
        ###

        def set_Units(value)
          set_input("Units", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetWeatherByCoordinates Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetWeatherByCoordinatesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Yahoo Weather.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "WOEID" output from this Choreo execution
      	#
      	# @return String - (integer) The unique Where On Earth ID of the location.
      	####
      	def get_WOEID()
      	  return @outputs["WOEID"]
      	end
      end

    end # class GetWeatherByCoordinates




  end # module Weather

end # module Yahoo