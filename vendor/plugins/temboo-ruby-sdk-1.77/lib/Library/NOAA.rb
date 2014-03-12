require "temboo"

module NOAA



  ##############################################################################
  #
  # ListCityCoordinatesUnsummarized
  #
  # Retrieve unsummarized latitude and longitude data for a specified list of cities.
  #
  ##############################################################################

  class ListCityCoordinatesUnsummarized < Choreography

    ####
    #  Create a new instance of the ListCityCoordinatesUnsummarized Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/NOAA/ListCityCoordinatesUnsummarized")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListCityCoordinatesUnsummarizedInputSet
    ####
    def new_input_set()
      return ListCityCoordinatesUnsummarizedInputSet.new()
    end

    def make_result_set()
      return ListCityCoordinatesUnsummarizedResultSet.new()
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
      results = ListCityCoordinatesUnsummarizedResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListCityCoordinatesUnsummarized
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListCityCoordinatesUnsummarizedInputSet < Choreography::InputSet

      #### 
      # Set the value of the CitiesLevel input for this Choreo. 
      # 
      # @param Integer - (integer) Enter a city grouping number to retrieve its latitude and longitude coordinates. For example: enter 1, to obtain information for primary U.S. cities.
      ###

      def set_CitiesLevel(value)
        set_input("CitiesLevel", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListCityCoordinatesUnsummarized Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListCityCoordinatesUnsummarizedResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (XML) Response from NDFD servers.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListCityCoordinatesUnsummarized



  ##############################################################################
  #
  # ListCoordinatesForZipcode
  #
  # Retrieve latitude and longitude data for a specified zipcode (in 50 U.S. States and Puerto Rico).
  #
  ##############################################################################

  class ListCoordinatesForZipcode < Choreography

    ####
    #  Create a new instance of the ListCoordinatesForZipcode Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/NOAA/ListCoordinatesForZipcode")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListCoordinatesForZipcodeInputSet
    ####
    def new_input_set()
      return ListCoordinatesForZipcodeInputSet.new()
    end

    def make_result_set()
      return ListCoordinatesForZipcodeResultSet.new()
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
      results = ListCoordinatesForZipcodeResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListCoordinatesForZipcode
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListCoordinatesForZipcodeInputSet < Choreography::InputSet

      #### 
      # Set the value of the ListZipCodeList input for this Choreo. 
      # 
      # @param Integer - (integer) Enter the zipcode for which latitude and longitude coordinates will be retrieved.
      ###

      def set_ListZipCodeList(value)
        set_input("ListZipCodeList", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListCoordinatesForZipcode Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListCoordinatesForZipcodeResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (XML) Response from NDFD servers.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListCoordinatesForZipcode



  ##############################################################################
  #
  # WeatherByCenterPointSubgridSummarized
  #
  # Retrieve weather information for a rectangle defined by a center point and distances in the latitudinal and longitudinal directions.
  #
  ##############################################################################

  class WeatherByCenterPointSubgridSummarized < Choreography

    ####
    #  Create a new instance of the WeatherByCenterPointSubgridSummarized Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/NOAA/WeatherByCenterPointSubgridSummarized")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return WeatherByCenterPointSubgridSummarizedInputSet
    ####
    def new_input_set()
      return WeatherByCenterPointSubgridSummarizedInputSet.new()
    end

    def make_result_set()
      return WeatherByCenterPointSubgridSummarizedResultSet.new()
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
      results = WeatherByCenterPointSubgridSummarizedResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the WeatherByCenterPointSubgridSummarized
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class WeatherByCenterPointSubgridSummarizedInputSet < Choreography::InputSet

      #### 
      # Set the value of the CenterPointLatitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) Enter the latitude specifying the rectangle or the grid center that defines the area being queried. North latitude is positive.
      ###

      def set_CenterPointLatitude(value)
        set_input("CenterPointLatitude", value)
      end
      #### 
      # Set the value of the CenterPointLongitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) Enter the longitute specifying the rectangle or the grid center that defines the area being queried. West longitude is negative.
      ###

      def set_CenterPointLongitude(value)
        set_input("CenterPointLongitude", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (required, string) Specify a timespan for which NDFD data will be summarized. Enter: 24 hourly, for a 24 hour summary, or: 12 hourly, for a 12 hour weather summary.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the LatitudeDistance input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) Specify the distance from the center point in the latitudinal direction to the rectangle's East/West oriented sides.
      ###

      def set_LatitudeDistance(value)
        set_input("LatitudeDistance", value)
      end
      #### 
      # Set the value of the LongitudeDistance input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) Specify the distance from the center point in the longitudinal direction to the rectangle's North/South oriented side.
      ###

      def set_LongitudeDistance(value)
        set_input("LongitudeDistance", value)
      end
      #### 
      # Set the value of the NumberOfDays input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the number of days to retieve data for. If null, data from the earliest date in the dabase is returned.
      ###

      def set_NumberOfDays(value)
        set_input("NumberOfDays", value)
      end
      #### 
      # Set the value of the SquareResolution input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) Enter desired data resolution in kilometers.  Default is 5km.
      ###

      def set_SquareResolution(value)
        set_input("SquareResolution", value)
      end
      #### 
      # Set the value of the StartDate input for this Choreo. 
      # 
      # @param String - (required, date) Enter the start time for retrieval of NDWD data in following format: 2004-04-27 If null, the earliest date in the database is returned.
      ###

      def set_StartDate(value)
        set_input("StartDate", value)
      end
      #### 
      # Set the value of the Unit input for this Choreo. 
      # 
      # @param String - (optional, string) Enter the unit format the data will be displayed in. Default is: e, for Standard English (U.S. Standard).  Or: m, for Metric (SI Units).
      ###

      def set_Unit(value)
        set_input("Unit", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the WeatherByCenterPointSubgridSummarized Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class WeatherByCenterPointSubgridSummarizedResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) Response from NDFD servers.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class WeatherByCenterPointSubgridSummarized



  ##############################################################################
  #
  # WeatherByCitiesSummarized
  #
  # Retrieve weather information for a specific list of cities.
  #
  ##############################################################################

  class WeatherByCitiesSummarized < Choreography

    ####
    #  Create a new instance of the WeatherByCitiesSummarized Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/NOAA/WeatherByCitiesSummarized")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return WeatherByCitiesSummarizedInputSet
    ####
    def new_input_set()
      return WeatherByCitiesSummarizedInputSet.new()
    end

    def make_result_set()
      return WeatherByCitiesSummarizedResultSet.new()
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
      results = WeatherByCitiesSummarizedResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the WeatherByCitiesSummarized
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class WeatherByCitiesSummarizedInputSet < Choreography::InputSet

      #### 
      # Set the value of the CitiesLevel input for this Choreo. 
      # 
      # @param Integer - (required, integer) Enter a city grouping number. For example: enter 1, to obtain weather information for primary U.S. cities. See documentation for additional numbers.
      ###

      def set_CitiesLevel(value)
        set_input("CitiesLevel", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (required, string) Specify a timespan for which NDFD data will be summarized. Enter: 24 hourly, for a 24 hour summary, or: 12 hourly, for a 12 hour weather summary.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the NumberOfDays input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the number of days to retieve data for. If null, data from the earliest date in the dabase is returned.
      ###

      def set_NumberOfDays(value)
        set_input("NumberOfDays", value)
      end
      #### 
      # Set the value of the StartDate input for this Choreo. 
      # 
      # @param String - (optional, date) Enter the start time for retrieval of NDWD information in UTC format. If null, the earliest date in the database is returned. Format: 2004-04-27T12:00.
      ###

      def set_StartDate(value)
        set_input("StartDate", value)
      end
      #### 
      # Set the value of the Unit input for this Choreo. 
      # 
      # @param String - (optional, string) Enter the unit format the data will be displayed in. Default is: e, for Standard English (U.S. Standard).  Or: m, for Metric (SI Units).
      ###

      def set_Unit(value)
        set_input("Unit", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the WeatherByCitiesSummarized Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class WeatherByCitiesSummarizedResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) Response from NDFD servers.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class WeatherByCitiesSummarized



  ##############################################################################
  #
  # WeatherByCitiesUnsummarized
  #
  # Retrieve weather information for a specific list of cities.
  #
  ##############################################################################

  class WeatherByCitiesUnsummarized < Choreography

    ####
    #  Create a new instance of the WeatherByCitiesUnsummarized Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/NOAA/WeatherByCitiesUnsummarized")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return WeatherByCitiesUnsummarizedInputSet
    ####
    def new_input_set()
      return WeatherByCitiesUnsummarizedInputSet.new()
    end

    def make_result_set()
      return WeatherByCitiesUnsummarizedResultSet.new()
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
      results = WeatherByCitiesUnsummarizedResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the WeatherByCitiesUnsummarized
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class WeatherByCitiesUnsummarizedInputSet < Choreography::InputSet

      #### 
      # Set the value of the CitiesLevel input for this Choreo. 
      # 
      # @param Integer - (required, integer) Enter a city grouping number. For example: enter 1, to obtain weather information for primary U.S. cities. See documentation for additional numbers.
      ###

      def set_CitiesLevel(value)
        set_input("CitiesLevel", value)
      end
      #### 
      # Set the value of the EndDate input for this Choreo. 
      # 
      # @param String - (required, date) Enter the end time for retrieval of NDWD information in UTC format. Time must be today's date, or a future date.  Format: 2004-04-27T12:00.
      ###

      def set_EndDate(value)
        set_input("EndDate", value)
      end
      #### 
      # Set the value of the NDFDParameterName input for this Choreo. 
      # 
      # @param String - (optional, string) Enter an additional weather parameter in the following format: phail=phail. Use only if Product is set to: glance.
      ###

      def set_NDFDParameterName(value)
        set_input("NDFDParameterName", value)
      end
      #### 
      # Set the value of the Product input for this Choreo. 
      # 
      # @param String - (required, string) Enter one of two parameters: time-series (to return all data between the Begin and End time parameters); glance for a subset of 5 often used parameters
      ###

      def set_Product(value)
        set_input("Product", value)
      end
      #### 
      # Set the value of the StartDate input for this Choreo. 
      # 
      # @param String - (optional, date) Enter the start time for retrieval of NDWD information in UTC format. If null, the earliest date in the database is returned. Format: 2004-04-27T12:00.
      ###

      def set_StartDate(value)
        set_input("StartDate", value)
      end
      #### 
      # Set the value of the Unit input for this Choreo. 
      # 
      # @param String - (optional, string) Enter the unit format the data will be displayed in. Default is: e, for Standard English (U.S. Standard).  Or: m, for Metric (SI Units).
      ###

      def set_Unit(value)
        set_input("Unit", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the WeatherByCitiesUnsummarized Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class WeatherByCitiesUnsummarizedResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) Response from NDFD servers.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class WeatherByCitiesUnsummarized



  ##############################################################################
  #
  # WeatherByZipcode
  #
  # Retrieve DWML-encoded NDFD data for a specified zipcode (in 50 U.S. States and Puerto Rico).
  #
  ##############################################################################

  class WeatherByZipcode < Choreography

    ####
    #  Create a new instance of the WeatherByZipcode Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/NOAA/WeatherByZipcode")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return WeatherByZipcodeInputSet
    ####
    def new_input_set()
      return WeatherByZipcodeInputSet.new()
    end

    def make_result_set()
      return WeatherByZipcodeResultSet.new()
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
      results = WeatherByZipcodeResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the WeatherByZipcode
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class WeatherByZipcodeInputSet < Choreography::InputSet

      #### 
      # Set the value of the EndDate input for this Choreo. 
      # 
      # @param String - (optional, date) Enter today's date, or some future date in UTC format. Format: 2004-04-27T12:00. Defaults to NOW if not provided.
      ###

      def set_EndDate(value)
        set_input("EndDate", value)
      end
      #### 
      # Set the value of the NDFDParameterName input for this Choreo. 
      # 
      # @param String - (optional, string) Enter an additional weather parameter in the following format: phail=phail. Use only if Product is set to: glance.
      ###

      def set_NDFDParameterName(value)
        set_input("NDFDParameterName", value)
      end
      #### 
      # Set the value of the Product input for this Choreo. 
      # 
      # @param String - (required, string) Enter one of two parameters: time-series (to return all data between the Begin and End time parameters); glance for a subset of 5 often used parameters
      ###

      def set_Product(value)
        set_input("Product", value)
      end
      #### 
      # Set the value of the StartDate input for this Choreo. 
      # 
      # @param String - (optional, date) Enter the start time for retrieval of NDWD information in UTC format. If null, the earliest date in the database is returned.  Format: 2004-04-27T12:00.
      ###

      def set_StartDate(value)
        set_input("StartDate", value)
      end
      #### 
      # Set the value of the Unit input for this Choreo. 
      # 
      # @param String - (optional, string) Enter the unit format the data will be displayed in. Default is: e, for Standard English (U.S. Standard).  Or: m, for Metric (SI Units).
      ###

      def set_Unit(value)
        set_input("Unit", value)
      end
      #### 
      # Set the value of the ZipCodeList input for this Choreo. 
      # 
      # @param Integer - (required, integer) Enter the zipcode for which NDFD weather information will be retrieved.
      ###

      def set_ZipCodeList(value)
        set_input("ZipCodeList", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the WeatherByZipcode Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class WeatherByZipcodeResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) Response from NDFD servers.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class WeatherByZipcode



  ##############################################################################
  #
  # WeatherForPointsOnLineSummarized
  #
  # Retrieve weather information for all points on a line defined by a set of latitude and longitude coordinates.
  #
  ##############################################################################

  class WeatherForPointsOnLineSummarized < Choreography

    ####
    #  Create a new instance of the WeatherForPointsOnLineSummarized Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/NOAA/WeatherForPointsOnLineSummarized")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return WeatherForPointsOnLineSummarizedInputSet
    ####
    def new_input_set()
      return WeatherForPointsOnLineSummarizedInputSet.new()
    end

    def make_result_set()
      return WeatherForPointsOnLineSummarizedResultSet.new()
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
      results = WeatherForPointsOnLineSummarizedResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the WeatherForPointsOnLineSummarized
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class WeatherForPointsOnLineSummarizedInputSet < Choreography::InputSet

      #### 
      # Set the value of the Endpoint1Latitude input for this Choreo. 
      # 
      # @param Integer - (required, integer) Enter the latitude of the first endpoint of the line for which weather data is requested. North latitude is positive.
      ###

      def set_Endpoint1Latitude(value)
        set_input("Endpoint1Latitude", value)
      end
      #### 
      # Set the value of the Endpoint1Longitude input for this Choreo. 
      # 
      # @param Integer - (required, integer) Enter the longitude of the first endpoint of the line for which weather data is requested. West longitude is negative.
      ###

      def set_Endpoint1Longitude(value)
        set_input("Endpoint1Longitude", value)
      end
      #### 
      # Set the value of the Endpoint2Latitude input for this Choreo. 
      # 
      # @param Integer - (required, integer) Enter the latitude of the second endpoint of the line for which weather data is requested. North latitude is positive.
      ###

      def set_Endpoint2Latitude(value)
        set_input("Endpoint2Latitude", value)
      end
      #### 
      # Set the value of the Endpoint2Longitude input for this Choreo. 
      # 
      # @param Integer - (required, integer) Enter the longitude of the second endpoint of the line for which weather data is requested. West longitude is negative.
      ###

      def set_Endpoint2Longitude(value)
        set_input("Endpoint2Longitude", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (required, string) Specify a timespan for which NDFD data will be summarized. Enter: 24 hourly, for a 24 hour summary, or: 12 hourly, for a 12 hour weather summary.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the NumberOfDays input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the number of days to retieve data for. If null, data from the earliest date in the dabase is returned.
      ###

      def set_NumberOfDays(value)
        set_input("NumberOfDays", value)
      end
      #### 
      # Set the value of the StartDate input for this Choreo. 
      # 
      # @param String - (optional, date) Enter the start time for retrieval of NDWD information in UTC format. If null, the earliest date in the database is returned. Format: 2004-04-27T12:00.
      ###

      def set_StartDate(value)
        set_input("StartDate", value)
      end
      #### 
      # Set the value of the Unit input for this Choreo. 
      # 
      # @param String - (optional, string) Enter the unit format the data will be displayed in. Default is: e, for Standard English (U.S. Standard).  Or: m, for Metric (SI Units).
      ###

      def set_Unit(value)
        set_input("Unit", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the WeatherForPointsOnLineSummarized Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class WeatherForPointsOnLineSummarizedResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) Response from NDFD servers.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class WeatherForPointsOnLineSummarized



  ##############################################################################
  #
  # WeatherForSinglePointSummarized
  #
  # Retrieve weather information for a single point defined by latitude and longitude coordinates.
  #
  ##############################################################################

  class WeatherForSinglePointSummarized < Choreography

    ####
    #  Create a new instance of the WeatherForSinglePointSummarized Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/NOAA/WeatherForSinglePointSummarized")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return WeatherForSinglePointSummarizedInputSet
    ####
    def new_input_set()
      return WeatherForSinglePointSummarizedInputSet.new()
    end

    def make_result_set()
      return WeatherForSinglePointSummarizedResultSet.new()
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
      results = WeatherForSinglePointSummarizedResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the WeatherForSinglePointSummarized
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class WeatherForSinglePointSummarizedInputSet < Choreography::InputSet

      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (required, string) Specify a timespan for which NDFD data will be summarized. Enter: 24 hourly, for a 24 hour summary, or: 12 hourly, for a 12 hour weather summary.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the Latitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) Enter the latitude coordinates of the point for which weather data is requested. North latitude is positive.
      ###

      def set_Latitude(value)
        set_input("Latitude", value)
      end
      #### 
      # Set the value of the Longitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) Enter the longitude coordinate of the point for which weather data is requested. West longitude is negative.
      ###

      def set_Longitude(value)
        set_input("Longitude", value)
      end
      #### 
      # Set the value of the NumberOfDays input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the number of days to retieve data for. If null, data from the earliest date in the dabase is returned.
      ###

      def set_NumberOfDays(value)
        set_input("NumberOfDays", value)
      end
      #### 
      # Set the value of the StartDate input for this Choreo. 
      # 
      # @param String - (optional, date) Enter the start time for retrieval of NDWD information in UTC format. If null, the earliest date in the database is returned. Format: 2004-04-27T12:00.
      ###

      def set_StartDate(value)
        set_input("StartDate", value)
      end
      #### 
      # Set the value of the Unit input for this Choreo. 
      # 
      # @param String - (optional, string) Enter the unit format the data will be displayed in. Default is: e, for Standard English (U.S. Standard).  Or: m, for Metric (SI Units).
      ###

      def set_Unit(value)
        set_input("Unit", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the WeatherForSinglePointSummarized Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class WeatherForSinglePointSummarizedResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) Response from NDFD servers.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class WeatherForSinglePointSummarized



  ##############################################################################
  #
  # WeatherForSinglePointUnsummarized
  #
  # Retrieve unsummarized weather information for a single point defined by latitude and longitude coordinates.
  #
  ##############################################################################

  class WeatherForSinglePointUnsummarized < Choreography

    ####
    #  Create a new instance of the WeatherForSinglePointUnsummarized Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/NOAA/WeatherForSinglePointUnsummarized")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return WeatherForSinglePointUnsummarizedInputSet
    ####
    def new_input_set()
      return WeatherForSinglePointUnsummarizedInputSet.new()
    end

    def make_result_set()
      return WeatherForSinglePointUnsummarizedResultSet.new()
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
      results = WeatherForSinglePointUnsummarizedResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the WeatherForSinglePointUnsummarized
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class WeatherForSinglePointUnsummarizedInputSet < Choreography::InputSet

      #### 
      # Set the value of the EndDate input for this Choreo. 
      # 
      # @param String - (optional, date) Enter the end time for retrieval of NDWD information in UTC format. If null, the last available time in the database is returned. Format: 2004-04-27T12:00.
      ###

      def set_EndDate(value)
        set_input("EndDate", value)
      end
      #### 
      # Set the value of the Latitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) Enter the latitude coordinate of the point for which weather data is requested. North latitude is positive.
      ###

      def set_Latitude(value)
        set_input("Latitude", value)
      end
      #### 
      # Set the value of the Longitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) Enter the longitude coordinate of the point for which weather data is requested. West longitude is negative.
      ###

      def set_Longitude(value)
        set_input("Longitude", value)
      end
      #### 
      # Set the value of the Product input for this Choreo. 
      # 
      # @param String - (required, string) Enter one of two parameters: time-series (to return all data between the Begin and End time parameters); glance for a subset of 5 often used parameters
      ###

      def set_Product(value)
        set_input("Product", value)
      end
      #### 
      # Set the value of the StartDate input for this Choreo. 
      # 
      # @param String - (optional, date) Enter the start time for retrieval of NDWD information in UTC format. If null, the earliest time in the database is returned. Format: 2004-04-27T12:00.
      ###

      def set_StartDate(value)
        set_input("StartDate", value)
      end
      #### 
      # Set the value of the Unit input for this Choreo. 
      # 
      # @param String - (optional, string) Enter the unit format the data will be displayed in. Default is: e, for Standard English (U.S. Standard).  Or: m, for Metric (SI Units).
      ###

      def set_Unit(value)
        set_input("Unit", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the WeatherForSinglePointUnsummarized Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class WeatherForSinglePointUnsummarizedResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) Response from NDFD servers.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class WeatherForSinglePointUnsummarized




end # module NOAA