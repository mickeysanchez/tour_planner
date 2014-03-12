require "temboo"

module BrighterPlanet



  ##############################################################################
  #
  # Automobile
  #
  # Returns greenhouse gas modeling for passenger vehicles operated over periods of time.
  #
  ##############################################################################

  class Automobile < Choreography

    ####
    #  Create a new instance of the Automobile Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/BrighterPlanet/Automobile")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return AutomobileInputSet
    ####
    def new_input_set()
      return AutomobileInputSet.new()
    end

    def make_result_set()
      return AutomobileResultSet.new()
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
      results = AutomobileResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Automobile
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class AutomobileInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Brighter Planet.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Acquisition input for this Choreo. 
      # 
      # @param String - (optional, string) Date automobile was acquired in YYYY-MM-DD format.
      ###

      def set_Acquisition(value)
        set_input("Acquisition", value)
      end
      #### 
      # Set the value of the AnnualDistance input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) Annual distance traveled in kilometres.
      ###

      def set_AnnualDistance(value)
        set_input("AnnualDistance", value)
      end
      #### 
      # Set the value of the AnnualFuelUse input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) Total fuel used in one year in litres.
      ###

      def set_AnnualFuelUse(value)
        set_input("AnnualFuelUse", value)
      end
      #### 
      # Set the value of the AutomobileFuel input for this Choreo. 
      # 
      # @param String - (optional, string) Fuel used by automobile (e.g. regular gasoline).
      ###

      def set_AutomobileFuel(value)
        set_input("AutomobileFuel", value)
      end
      #### 
      # Set the value of the Country input for this Choreo. 
      # 
      # @param String - (optional, string) ISO code of the country. Defaults to 3166.
      ###

      def set_Country(value)
        set_input("Country", value)
      end
      #### 
      # Set the value of the DailyDistance input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) Daily distance traveled on average in kilometres.
      ###

      def set_DailyDistance(value)
        set_input("DailyDistance", value)
      end
      #### 
      # Set the value of the DailyDuration input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Average amount of time used daily in seconds.
      ###

      def set_DailyDuration(value)
        set_input("DailyDuration", value)
      end
      #### 
      # Set the value of the FuelEfficiency input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) The automobile's fuel efficiency in kilometres per litre.
      ###

      def set_FuelEfficiency(value)
        set_input("FuelEfficiency", value)
      end
      #### 
      # Set the value of the FuelUse input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) Amount of fuel used in litres.
      ###

      def set_FuelUse(value)
        set_input("FuelUse", value)
      end
      #### 
      # Set the value of the Hybridity input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Enter whether the automobile is a hybrid.
      ###

      def set_Hybridity(value)
        set_input("Hybridity", value)
      end
      #### 
      # Set the value of the Make input for this Choreo. 
      # 
      # @param String - (optional, string) Automobile make (e.g. Honda).
      ###

      def set_Make(value)
        set_input("Make", value)
      end
      #### 
      # Set the value of the Model input for this Choreo. 
      # 
      # @param String - (optional, string) Model of automobile (e.g. Civic, Accord).
      ###

      def set_Model(value)
        set_input("Model", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Specify your desired response format. Accepted values are xml and json (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Retirement input for this Choreo. 
      # 
      # @param String - (optional, string) Date automobile is retired from use in YYYY-MM-DD format.
      ###

      def set_Retirement(value)
        set_input("Retirement", value)
      end
      #### 
      # Set the value of the SizeClass input for this Choreo. 
      # 
      # @param String - (optional, string) Automobile size class (e.g. midsize car, large van).
      ###

      def set_SizeClass(value)
        set_input("SizeClass", value)
      end
      #### 
      # Set the value of the Speed input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) Enter average speed when in use in kilometres per hour.
      ###

      def set_Speed(value)
        set_input("Speed", value)
      end
      #### 
      # Set the value of the Urbanity input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Enter whether the trip is in an urban area.
      ###

      def set_Urbanity(value)
        set_input("Urbanity", value)
      end
      #### 
      # Set the value of the WeeklyDistance input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Enter average weekly distance automobile travels in kilometres.
      ###

      def set_WeeklyDistance(value)
        set_input("WeeklyDistance", value)
      end
      #### 
      # Set the value of the Year input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Year that automobile was manufactured.
      ###

      def set_Year(value)
        set_input("Year", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Automobile Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class AutomobileResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Brighter Planet.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Automobile



  ##############################################################################
  #
  # AutomobileTrip
  #
  # Returns information about the carbon footprint of driving an automobile.
  #
  ##############################################################################

  class AutomobileTrip < Choreography

    ####
    #  Create a new instance of the AutomobileTrip Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/BrighterPlanet/AutomobileTrip")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return AutomobileTripInputSet
    ####
    def new_input_set()
      return AutomobileTripInputSet.new()
    end

    def make_result_set()
      return AutomobileTripResultSet.new()
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
      results = AutomobileTripResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the AutomobileTrip
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class AutomobileTripInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Brighter Planet.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AutomobileFuel input for this Choreo. 
      # 
      # @param String - (optional, string) Fuel used by automobile (e.g. regular gasoline).
      ###

      def set_AutomobileFuel(value)
        set_input("AutomobileFuel", value)
      end
      #### 
      # Set the value of the Country input for this Choreo. 
      # 
      # @param String - (optional, string) ISO code of the country. Defaults to 3166.
      ###

      def set_Country(value)
        set_input("Country", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, string) Automobile trip date in YYYY-MM-DD format.
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the Destination input for this Choreo. 
      # 
      # @param String - (optional, string) Enter the name of a destination.
      ###

      def set_Destination(value)
        set_input("Destination", value)
      end
      #### 
      # Set the value of the Distance input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) Distance traveled in kilometres.
      ###

      def set_Distance(value)
        set_input("Distance", value)
      end
      #### 
      # Set the value of the Duration input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) Duration of trip in total seconds.
      ###

      def set_Duration(value)
        set_input("Duration", value)
      end
      #### 
      # Set the value of the FuelEfficiency input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) The automobile's fuel efficiency in kilometres per litre.
      ###

      def set_FuelEfficiency(value)
        set_input("FuelEfficiency", value)
      end
      #### 
      # Set the value of the FuelUse input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) Amount of fuel used in litres.
      ###

      def set_FuelUse(value)
        set_input("FuelUse", value)
      end
      #### 
      # Set the value of the Hybridity input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Enter whether the automobile is a hybrid.
      ###

      def set_Hybridity(value)
        set_input("Hybridity", value)
      end
      #### 
      # Set the value of the Make input for this Choreo. 
      # 
      # @param String - (optional, string) Automobile make (e.g. Honda).
      ###

      def set_Make(value)
        set_input("Make", value)
      end
      #### 
      # Set the value of the Model input for this Choreo. 
      # 
      # @param String - (optional, string) Model of automobile (e.g. Civic, Accord).
      ###

      def set_Model(value)
        set_input("Model", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Specify your desired response format. Accepted values are xml and json (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the SizeClass input for this Choreo. 
      # 
      # @param String - (optional, string) Automobile size class (e.g. midsize car, large van).
      ###

      def set_SizeClass(value)
        set_input("SizeClass", value)
      end
      #### 
      # Set the value of the Speed input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) Enter the speed during the trip in kilometres per hour.
      ###

      def set_Speed(value)
        set_input("Speed", value)
      end
      #### 
      # Set the value of the Urbanity input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Enter whether the trip is in an urban area.
      ###

      def set_Urbanity(value)
        set_input("Urbanity", value)
      end
      #### 
      # Set the value of the Year input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Year that automobile was manufactured.
      ###

      def set_Year(value)
        set_input("Year", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the AutomobileTrip Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class AutomobileTripResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Brighter Planet.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class AutomobileTrip



  ##############################################################################
  #
  # BusTrip
  #
  # Returns information about the carbon footprint of passenger bus travel.
  #
  ##############################################################################

  class BusTrip < Choreography

    ####
    #  Create a new instance of the BusTrip Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/BrighterPlanet/BusTrip")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return BusTripInputSet
    ####
    def new_input_set()
      return BusTripInputSet.new()
    end

    def make_result_set()
      return BusTripResultSet.new()
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
      results = BusTripResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the BusTrip
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class BusTripInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Brighter Planet.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the BusClass input for this Choreo. 
      # 
      # @param String - (optional, string) The bus class for the trip (i.e. city transit, regional coach).
      ###

      def set_BusClass(value)
        set_input("BusClass", value)
      end
      #### 
      # Set the value of the Compliance input for this Choreo. 
      # 
      # @param String - (optional, string) Comply with one or more protocols: Greenhouse Gas Protocol Scope 3 (ghg_protocol_scope_3), and ISO 14064-1 (iso), and The Climate Registry (tcr).
      ###

      def set_Compliance(value)
        set_input("Compliance", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, date) The date of the bus trip in YYYY-MM-DD format.
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the Distance input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) The distance of the bus trip in kilometres.
      ###

      def set_Distance(value)
        set_input("Distance", value)
      end
      #### 
      # Set the value of the Duration input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) The duration of the bus trip in seconds.
      ###

      def set_Duration(value)
        set_input("Duration", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Specify your desired response format. Accepted values are xml and json (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Timeframe input for this Choreo. 
      # 
      # @param String - (optional, string) A date range specified in the following format: 2008-01-01/2008-07-09
      ###

      def set_Timeframe(value)
        set_input("Timeframe", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the BusTrip Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class BusTripResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Brighter Planet.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class BusTrip



  ##############################################################################
  #
  # Diet
  #
  # Returns information about the carbon footprint of an individual's yearly food consumption.
  #
  ##############################################################################

  class Diet < Choreography

    ####
    #  Create a new instance of the Diet Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/BrighterPlanet/Diet")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DietInputSet
    ####
    def new_input_set()
      return DietInputSet.new()
    end

    def make_result_set()
      return DietResultSet.new()
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
      results = DietResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Diet
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DietInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Brighter Planet.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the DietClass input for this Choreo. 
      # 
      # @param String - (optional, string) Enter the type of diet. Acceptable inputs: standard, vegetarian, vegan.
      ###

      def set_DietClass(value)
        set_input("DietClass", value)
      end
      #### 
      # Set the value of the EndDate input for this Choreo. 
      # 
      # @param String - (optional, string) End date od diet in YYYY-MM-DD format. Defaults to 2013-01-01 when none specified.
      ###

      def set_EndDate(value)
        set_input("EndDate", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Specify your desired response format. Accepted values are xml and json (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Size input for this Choreo. 
      # 
      # @param Integer - (required, integer) Enter the number of calories consumed per day. See documentation below for a set of national averages for reference.
      ###

      def set_Size(value)
        set_input("Size", value)
      end
      #### 
      # Set the value of the StartDate input for this Choreo. 
      # 
      # @param String - (optional, string) Start date of diet in YYYY-MM-DD format. Defaults to 2012-01-01 when none specified.
      ###

      def set_StartDate(value)
        set_input("StartDate", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Diet Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DietResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Brighter Planet.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Diet



  ##############################################################################
  #
  # ElectricityUse
  #
  # Returns information about the carbon footprint of using electricity from the US public grid.
  #
  ##############################################################################

  class ElectricityUse < Choreography

    ####
    #  Create a new instance of the ElectricityUse Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/BrighterPlanet/ElectricityUse")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ElectricityUseInputSet
    ####
    def new_input_set()
      return ElectricityUseInputSet.new()
    end

    def make_result_set()
      return ElectricityUseResultSet.new()
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
      results = ElectricityUseResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ElectricityUse
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ElectricityUseInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Brighter Planet.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Country input for this Choreo. 
      # 
      # @param String - (optional, string) An iso_3166 country code.
      ###

      def set_Country(value)
        set_input("Country", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, date) The date of the electricity use in YYYY-MM-DD format.
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the Energy input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) The amount of engery in kilowatt hours.
      ###

      def set_Energy(value)
        set_input("Energy", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Specify your desired response format. Accepted values are xml and json (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) A postal abbreviation for the state to return electricity information for.
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Timeframe input for this Choreo. 
      # 
      # @param String - (optional, string) A date range specified in the following format: 2008-01-01/2008-07-09
      ###

      def set_Timeframe(value)
        set_input("Timeframe", value)
      end
      #### 
      # Set the value of the ZipCode input for this Choreo. 
      # 
      # @param String - (optional, string) The postal code for the area to retrieve electricity information for.
      ###

      def set_ZipCode(value)
        set_input("ZipCode", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ElectricityUse Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ElectricityUseResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Brighter Planet.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ElectricityUse



  ##############################################################################
  #
  # Flight
  #
  # Returns information about the carbon footprint of a passenger's air travel.
  #
  ##############################################################################

  class Flight < Choreography

    ####
    #  Create a new instance of the Flight Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/BrighterPlanet/Flight")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FlightInputSet
    ####
    def new_input_set()
      return FlightInputSet.new()
    end

    def make_result_set()
      return FlightResultSet.new()
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
      results = FlightResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Flight
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FlightInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Brighter Planet.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Aircraft input for this Choreo. 
      # 
      # @param String - (optional, string) The ICAO code associated with the aircraft.
      ###

      def set_Aircraft(value)
        set_input("Aircraft", value)
      end
      #### 
      # Set the value of the Airline input for this Choreo. 
      # 
      # @param String - (optional, string) The name of the airline used (i.e. Continental, Delta, etc).
      ###

      def set_Airline(value)
        set_input("Airline", value)
      end
      #### 
      # Set the value of the Compliance input for this Choreo. 
      # 
      # @param String - (optional, string) Comply with one or more protocols:  Greenhouse Gas Protocol Scope 3 (ghg_protocol_scope_3), ISO 14064-1 (iso), and The Climate Registry (tcr).
      ###

      def set_Compliance(value)
        set_input("Compliance", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, date) The date of the trip in YYYY-MM-DD format.
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the DestinationAirport input for this Choreo. 
      # 
      # @param String - (optional, string) The airport code for the destination (i.e. LGA, JFK, etc.).
      ###

      def set_DestinationAirport(value)
        set_input("DestinationAirport", value)
      end
      #### 
      # Set the value of the DistanceClass input for this Choreo. 
      # 
      # @param String - (optional, string) The distance class associated it the air travel (i.e. long haul, short haul).
      ###

      def set_DistanceClass(value)
        set_input("DistanceClass", value)
      end
      #### 
      # Set the value of the DistanceEstimate input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) A estimate of the distance of the travel in kilometres.
      ###

      def set_DistanceEstimate(value)
        set_input("DistanceEstimate", value)
      end
      #### 
      # Set the value of the Fuel input for this Choreo. 
      # 
      # @param String - (optional, string) The type of fuel used in the aircraft (i.e. Aviation Gasoline, Biodiesel).
      ###

      def set_Fuel(value)
        set_input("Fuel", value)
      end
      #### 
      # Set the value of the OriginAirport input for this Choreo. 
      # 
      # @param String - (optional, string) The airport code for the origin (i.e. LGA, JFK, etc.).
      ###

      def set_OriginAirport(value)
        set_input("OriginAirport", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Specify your desired response format. Accepted values are xml and json (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Seats input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of seats.
      ###

      def set_Seats(value)
        set_input("Seats", value)
      end
      #### 
      # Set the value of the Timeframe input for this Choreo. 
      # 
      # @param String - (optional, string) A date range specified in the following format: 2008-01-01/2008-07-09
      ###

      def set_Timeframe(value)
        set_input("Timeframe", value)
      end
      #### 
      # Set the value of the Trips input for this Choreo. 
      # 
      # @param String - (optional, string) The number of trips to calculate information for.
      ###

      def set_Trips(value)
        set_input("Trips", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Flight Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FlightResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Brighter Planet.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Flight



  ##############################################################################
  #
  # FuelPurchase
  #
  # Returns information about the carbon emissions from using a wide variety of fuel types.
  #
  ##############################################################################

  class FuelPurchase < Choreography

    ####
    #  Create a new instance of the FuelPurchase Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/BrighterPlanet/FuelPurchase")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FuelPurchaseInputSet
    ####
    def new_input_set()
      return FuelPurchaseInputSet.new()
    end

    def make_result_set()
      return FuelPurchaseResultSet.new()
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
      results = FuelPurchaseResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FuelPurchase
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FuelPurchaseInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Brighter Planet.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Cost input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) The cost of the fuel purchase.
      ###

      def set_Cost(value)
        set_input("Cost", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, date) The date of the fuel purchase in YYYY-MM-DD format.
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the FuelType input for this Choreo. 
      # 
      # @param String - (optional, string) The fuel type purchases (i.e. Asphalt and Road Oil, Aviation Gasoline, Commercial Coal, Commercial Natural Gas, or Motor Gasoline)
      ###

      def set_FuelType(value)
        set_input("FuelType", value)
      end
      #### 
      # Set the value of the PADD input for this Choreo. 
      # 
      # @param String - (optional, string) A code for the Petroleum administration for defense districts (1A, 1B, 1C, 2, or 3).
      ###

      def set_PADD(value)
        set_input("PADD", value)
      end
      #### 
      # Set the value of the Price input for this Choreo. 
      # 
      # @param String - (optional, string) The price of the fuel.
      ###

      def set_Price(value)
        set_input("Price", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Specify your desired response format. Accepted values are xml and json (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) A postal abbreviation for the state where the fuel was purchased.
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Timeframe input for this Choreo. 
      # 
      # @param String - (optional, string) A date range specified in the following format: 2008-01-01/2008-07-09
      ###

      def set_Timeframe(value)
        set_input("Timeframe", value)
      end
      #### 
      # Set the value of the Volume input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) The amount of fuel purchased.
      ###

      def set_Volume(value)
        set_input("Volume", value)
      end
      #### 
      # Set the value of the ZipCode input for this Choreo. 
      # 
      # @param String - (optional, string) The postal code for the area where the fuel was purchased.
      ###

      def set_ZipCode(value)
        set_input("ZipCode", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FuelPurchase Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FuelPurchaseResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Brighter Planet.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class FuelPurchase



  ##############################################################################
  #
  # GetReferenceData
  #
  # Retrieves a wide variety of reference data sets provided by Brighter Planet.
  #
  ##############################################################################

  class GetReferenceData < Choreography

    ####
    #  Create a new instance of the GetReferenceData Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/BrighterPlanet/GetReferenceData")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetReferenceDataInputSet
    ####
    def new_input_set()
      return GetReferenceDataInputSet.new()
    end

    def make_result_set()
      return GetReferenceDataResultSet.new()
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
      results = GetReferenceDataResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetReferenceData
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetReferenceDataInputSet < Choreography::InputSet

      #### 
      # Set the value of the Resource input for this Choreo. 
      # 
      # @param String - (required, string) The name of the reference data resource you want to retrieve (i.e. airports, airlines, etc). Resource names are formatted using plural, lowercase, and underscores (i.e. automobile_makes).
      ###

      def set_Resource(value)
        set_input("Resource", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The desired response format. Accepted formats are: csv, xml, and json (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetReferenceData Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetReferenceDataResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Brighter Planet.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetReferenceData



  ##############################################################################
  #
  # Lodging
  #
  # Returns the the footprint of a guest's hotel stay.
  #
  ##############################################################################

  class Lodging < Choreography

    ####
    #  Create a new instance of the Lodging Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/BrighterPlanet/Lodging")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return LodgingInputSet
    ####
    def new_input_set()
      return LodgingInputSet.new()
    end

    def make_result_set()
      return LodgingResultSet.new()
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
      results = LodgingResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Lodging
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class LodgingInputSet < Choreography::InputSet

      #### 
      # Set the value of the ACCoverage input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) A numeric value representing the AC coverage of the lodging establishment.
      ###

      def set_ACCoverage(value)
        set_input("ACCoverage", value)
      end
      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Brighter Planet.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the City input for this Choreo. 
      # 
      # @param String - (optional, string) The city of the establishment.
      ###

      def set_City(value)
        set_input("City", value)
      end
      #### 
      # Set the value of the Compliance input for this Choreo. 
      # 
      # @param String - (optional, string) Comply with one or more protocols:  Greenhouse Gas Protocol Scope 3 (ghg_protocol_scope_3), ISO 14064-1 (iso), and The Climate Registry (tcr).
      ###

      def set_Compliance(value)
        set_input("Compliance", value)
      end
      #### 
      # Set the value of the ConstructionYear input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The year that the establishment was constructed.
      ###

      def set_ConstructionYear(value)
        set_input("ConstructionYear", value)
      end
      #### 
      # Set the value of the Country input for this Choreo. 
      # 
      # @param String - (optional, string) The ISO 3166 country code associated with the establishment.
      ###

      def set_Country(value)
        set_input("Country", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, date) The date of the stay at the establishment in YYYY-MM-DD format.
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the Duration input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The amount of time spent at the establishment in seconds.
      ###

      def set_Duration(value)
        set_input("Duration", value)
      end
      #### 
      # Set the value of the Floors input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of floors at the establishment.
      ###

      def set_Floors(value)
        set_input("Floors", value)
      end
      #### 
      # Set the value of the HotTubs input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of hot tubs that the establishment has.
      ###

      def set_HotTubs(value)
        set_input("HotTubs", value)
      end
      #### 
      # Set the value of the IndoorPools input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of indoor pools that the establishment has.
      ###

      def set_IndoorPools(value)
        set_input("IndoorPools", value)
      end
      #### 
      # Set the value of the LodgingClass input for this Choreo. 
      # 
      # @param String - (optional, string) The lodging class (i.e. Hotel, Inn, or Motel).
      ###

      def set_LodgingClass(value)
        set_input("LodgingClass", value)
      end
      #### 
      # Set the value of the OutdoorPools input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of outdoor pools that the establishment has.
      ###

      def set_OutdoorPools(value)
        set_input("OutdoorPools", value)
      end
      #### 
      # Set the value of the PropertyRooms input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of rooms on the property.
      ###

      def set_PropertyRooms(value)
        set_input("PropertyRooms", value)
      end
      #### 
      # Set the value of the Property input for this Choreo. 
      # 
      # @param Integer - (optional, integer) A property id (or northstart_id) associated with the establishment.
      ###

      def set_Property(value)
        set_input("Property", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Specify your desired response format. Accepted values are xml and json (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Rooms input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of rooms.
      ###

      def set_Rooms(value)
        set_input("Rooms", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) The postal abbreviation for the state that the establishment is in.
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Timeframe input for this Choreo. 
      # 
      # @param String - (optional, string) A date range specified in the following format: 2008-01-01/2008-07-09
      ###

      def set_Timeframe(value)
        set_input("Timeframe", value)
      end
      #### 
      # Set the value of the ZipCode input for this Choreo. 
      # 
      # @param String - (optional, string) The postal code associated with the establishment.
      ###

      def set_ZipCode(value)
        set_input("ZipCode", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Lodging Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class LodgingResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Brighter Planet.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Lodging



  ##############################################################################
  #
  # Meeting
  #
  # Returns facility operations emissions analysis for corporate and cultural events.
  #
  ##############################################################################

  class Meeting < Choreography

    ####
    #  Create a new instance of the Meeting Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/BrighterPlanet/Meeting")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return MeetingInputSet
    ####
    def new_input_set()
      return MeetingInputSet.new()
    end

    def make_result_set()
      return MeetingResultSet.new()
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
      results = MeetingResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Meeting
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class MeetingInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Brighter Planet.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Area input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Area of event venue in square meters.
      ###

      def set_Area(value)
        set_input("Area", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, string) Date of event in YYYY-MM-DD format.
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the Duration input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Event duration in total seconds.
      ###

      def set_Duration(value)
        set_input("Duration", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Specify your desired response format. Accepted values are xml and json (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) Two-letter postal abbreviation for the state in which the meeting takes place (e.g. NY).
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Zip input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Five digit zip code in which the meeting takes place.
      ###

      def set_Zip(value)
        set_input("Zip", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Meeting Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class MeetingResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Brighter Planet.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Meeting



  ##############################################################################
  #
  # Pet
  #
  # Returns lifecycle food production and veterinary care emissions modeling for domestic animals.
  #
  ##############################################################################

  class Pet < Choreography

    ####
    #  Create a new instance of the Pet Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/BrighterPlanet/Pet")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return PetInputSet
    ####
    def new_input_set()
      return PetInputSet.new()
    end

    def make_result_set()
      return PetResultSet.new()
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
      results = PetResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Pet
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class PetInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Brighter Planet.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Acquisition input for this Choreo. 
      # 
      # @param String - (optional, string) Enter date the pet was acquired.
      ###

      def set_Acquisition(value)
        set_input("Acquisition", value)
      end
      #### 
      # Set the value of the Breed input for this Choreo. 
      # 
      # @param String - (optional, string) Enter a cat, dog, or horse breed.
      ###

      def set_Breed(value)
        set_input("Breed", value)
      end
      #### 
      # Set the value of the Gender input for this Choreo. 
      # 
      # @param String - (optional, string) Enter cat, dog, or horse gender.
      ###

      def set_Gender(value)
        set_input("Gender", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Specify your desired response format. Accepted values are xml and json (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Retirement input for this Choreo. 
      # 
      # @param String - (optional, string) Enter date you no longer have the pet.
      ###

      def set_Retirement(value)
        set_input("Retirement", value)
      end
      #### 
      # Set the value of the Species input for this Choreo. 
      # 
      # @param String - (optional, string) Enter the species type (e.g. bird, cat, dog, ferret, fish).
      ###

      def set_Species(value)
        set_input("Species", value)
      end
      #### 
      # Set the value of the Weight input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) Enter pet weight in kilograms.
      ###

      def set_Weight(value)
        set_input("Weight", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Pet Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class PetResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Brighter Planet.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Pet



  ##############################################################################
  #
  # Purchase
  #
  # Returns lifecycle emissions for any good or service. 
  #
  ##############################################################################

  class Purchase < Choreography

    ####
    #  Create a new instance of the Purchase Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/BrighterPlanet/Purchase")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return PurchaseInputSet
    ####
    def new_input_set()
      return PurchaseInputSet.new()
    end

    def make_result_set()
      return PurchaseResultSet.new()
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
      results = PurchaseResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Purchase
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class PurchaseInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Brighter Planet.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Cost input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) The cost associated with the purchase.
      ###

      def set_Cost(value)
        set_input("Cost", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, date) The date of the purchase in YYYY-MM-DD format.
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the Industry input for this Choreo. 
      # 
      # @param Integer - (optional, integer) An industry code (NAICS CODE) corresponding to the industry to return results for. For example, the id for Audio and Video Equipment Manufacturing is 334310.
      ###

      def set_Industry(value)
        set_input("Industry", value)
      end
      #### 
      # Set the value of the MerchantCategory input for this Choreo. 
      # 
      # @param String - (optional, string) The id for a merchant category.
      ###

      def set_MerchantCategory(value)
        set_input("MerchantCategory", value)
      end
      #### 
      # Set the value of the Merchant input for this Choreo. 
      # 
      # @param Integer - (optional, integer) An id corresponding to a merchant that you want to return data for.
      ###

      def set_Merchant(value)
        set_input("Merchant", value)
      end
      #### 
      # Set the value of the PurchaseAmount input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) The purchase amount.
      ###

      def set_PurchaseAmount(value)
        set_input("PurchaseAmount", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Specify your desired response format. Accepted values are xml and json (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the SicIndustry input for this Choreo. 
      # 
      # @param Integer - (optional, integer) A Sic Industry id (i.e. 0111 is the code for Wheat, 0112 is the code for Rice, etc).
      ###

      def set_SicIndustry(value)
        set_input("SicIndustry", value)
      end
      #### 
      # Set the value of the Tax input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) The tax amount for the purchase.
      ###

      def set_Tax(value)
        set_input("Tax", value)
      end
      #### 
      # Set the value of the Timeframe input for this Choreo. 
      # 
      # @param String - (optional, string) A date range specified in the following format: 2008-01-01/2008-07-09
      ###

      def set_Timeframe(value)
        set_input("Timeframe", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Purchase Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class PurchaseResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Brighter Planet.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Purchase



  ##############################################################################
  #
  # RailTrip
  #
  # Returns information about the carbon footprint of a passenger's train travel.
  #
  ##############################################################################

  class RailTrip < Choreography

    ####
    #  Create a new instance of the RailTrip Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/BrighterPlanet/RailTrip")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RailTripInputSet
    ####
    def new_input_set()
      return RailTripInputSet.new()
    end

    def make_result_set()
      return RailTripResultSet.new()
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
      results = RailTripResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RailTrip
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RailTripInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Brighter Planet.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Compliance input for this Choreo. 
      # 
      # @param String - (optional, string) Comply with one or more protocols:  Greenhouse Gas Protocol Scope 3 (ghg_protocol_scope_3), ISO 14064-1 (iso), and The Climate Registry (tcr).
      ###

      def set_Compliance(value)
        set_input("Compliance", value)
      end
      #### 
      # Set the value of the Country input for this Choreo. 
      # 
      # @param String - (optional, string) A country code associated with the rail trip (in ISO 3166 format).
      ###

      def set_Country(value)
        set_input("Country", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, date) The date of the rail trip in YYYY-MM-DD format.
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the Destination input for this Choreo. 
      # 
      # @param String - (optional, string) The destination of the rail trip.
      ###

      def set_Destination(value)
        set_input("Destination", value)
      end
      #### 
      # Set the value of the Distance input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) The distance of the rail trip in kilometres.
      ###

      def set_Distance(value)
        set_input("Distance", value)
      end
      #### 
      # Set the value of the Duration input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) The duration of the rail trip in seconds.
      ###

      def set_Duration(value)
        set_input("Duration", value)
      end
      #### 
      # Set the value of the Origin input for this Choreo. 
      # 
      # @param String - (optional, string) The origin of the rail trip.
      ###

      def set_Origin(value)
        set_input("Origin", value)
      end
      #### 
      # Set the value of the RailClass input for this Choreo. 
      # 
      # @param String - (optional, string) The rail class associated with the rail trip (i.e. commuter, heavy, highspeed, intercity, light).
      ###

      def set_RailClass(value)
        set_input("RailClass", value)
      end
      #### 
      # Set the value of the RailCompany input for this Choreo. 
      # 
      # @param String - (optional, string) The rail company associated with the rail trip (i.e. AMTRAK).
      ###

      def set_RailCompany(value)
        set_input("RailCompany", value)
      end
      #### 
      # Set the value of the RailTraction input for this Choreo. 
      # 
      # @param String - (optional, string) The rail traction associated with the rail trip (i.e. diesel, electric).
      ###

      def set_RailTraction(value)
        set_input("RailTraction", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Specify your desired response format. Accepted values are xml and json (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Timeframe input for this Choreo. 
      # 
      # @param String - (optional, string) A date range specified in the following format: 2008-01-01/2008-07-09
      ###

      def set_Timeframe(value)
        set_input("Timeframe", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RailTrip Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RailTripResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Brighter Planet.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RailTrip



  ##############################################################################
  #
  # Residence
  #
  # Returns information about the annual carbon footprint of a home.
  #
  ##############################################################################

  class Residence < Choreography

    ####
    #  Create a new instance of the Residence Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/BrighterPlanet/Residence")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ResidenceInputSet
    ####
    def new_input_set()
      return ResidenceInputSet.new()
    end

    def make_result_set()
      return ResidenceResultSet.new()
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
      results = ResidenceResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Residence
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ResidenceInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Brighter Planet.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Acquisition input for this Choreo. 
      # 
      # @param String - (optional, date) Date of acquisition in YYYY-MM-DD format.
      ###

      def set_Acquisition(value)
        set_input("Acquisition", value)
      end
      #### 
      # Set the value of the AirConditionerUse input for this Choreo. 
      # 
      # @param String - (optional, string) The frequency of air conditioner use. Accepted values are: "Not used at all", "Turned on just about all summer", "Turned on only a few days or nights when really needed", or "Turned on quite a bit"
      ###

      def set_AirConditionerUse(value)
        set_input("AirConditionerUse", value)
      end
      #### 
      # Set the value of the AnnualCoalVolumeEstimate input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) An estimate for amount of coal used annually.
      ###

      def set_AnnualCoalVolumeEstimate(value)
        set_input("AnnualCoalVolumeEstimate", value)
      end
      #### 
      # Set the value of the AnnualFuelOilCost input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) Annual cost of oil fuel in dollars.
      ###

      def set_AnnualFuelOilCost(value)
        set_input("AnnualFuelOilCost", value)
      end
      #### 
      # Set the value of the AnnualFuelOilVolumeEstimate input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) An estimate for the volume oil used annually.
      ###

      def set_AnnualFuelOilVolumeEstimate(value)
        set_input("AnnualFuelOilVolumeEstimate", value)
      end
      #### 
      # Set the value of the AnnualPropaneCost input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) The annual cost of propane annually in dollars.
      ###

      def set_AnnualPropaneCost(value)
        set_input("AnnualPropaneCost", value)
      end
      #### 
      # Set the value of the AnnualPropaneVolumeEstimate input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) An estimate of the amount of propane used annually in litres.
      ###

      def set_AnnualPropaneVolumeEstimate(value)
        set_input("AnnualPropaneVolumeEstimate", value)
      end
      #### 
      # Set the value of the AnnualWoodVolumeEstimate input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) An estimate of the amount of wood used for heating annually (in Joulses).
      ###

      def set_AnnualWoodVolumeEstimate(value)
        set_input("AnnualWoodVolumeEstimate", value)
      end
      #### 
      # Set the value of the Bathrooms input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) The amount of bathrooms in the residence.
      ###

      def set_Bathrooms(value)
        set_input("Bathrooms", value)
      end
      #### 
      # Set the value of the Bedrooms input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) The number of bedrooms in the residence.
      ###

      def set_Bedrooms(value)
        set_input("Bedrooms", value)
      end
      #### 
      # Set the value of the ClothesMachineUse input for this Choreo. 
      # 
      # @param String - (optional, string) The number laundry loads per week. Valid values are: "1 load or less each week", "10 to 15 loads", "2 to 4 loads", "5 to 9 loads", "More than 15 loads"
      ###

      def set_ClothesMachineUse(value)
        set_input("ClothesMachineUse", value)
      end
      #### 
      # Set the value of the ConstructionYear input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The year the residence was constructed.
      ###

      def set_ConstructionYear(value)
        set_input("ConstructionYear", value)
      end
      #### 
      # Set the value of the DishwasherUse input for this Choreo. 
      # 
      # @param String - (optional, string) Number of times the dishwasher is used per week. Valid values: "2 or 3 times a week", "4 to 6 times a week", "At least once each day", "Less than once each week", "Once each week".
      ###

      def set_DishwasherUse(value)
        set_input("DishwasherUse", value)
      end
      #### 
      # Set the value of the Floors input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of floors.
      ###

      def set_Floors(value)
        set_input("Floors", value)
      end
      #### 
      # Set the value of the FloorspaceEstimate input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) An estimate of the amount of floorspace that the residence has.
      ###

      def set_FloorspaceEstimate(value)
        set_input("FloorspaceEstimate", value)
      end
      #### 
      # Set the value of the FreezerCount input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of freezers in the residence.
      ###

      def set_FreezerCount(value)
        set_input("FreezerCount", value)
      end
      #### 
      # Set the value of the FullBathrooms input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of full bathrooms in the residence.
      ###

      def set_FullBathrooms(value)
        set_input("FullBathrooms", value)
      end
      #### 
      # Set the value of the GreenElectricty input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) The amount green electricity that the residence uses.
      ###

      def set_GreenElectricty(value)
        set_input("GreenElectricty", value)
      end
      #### 
      # Set the value of the HalfBathrooms input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of half bathrooms in the residence.
      ###

      def set_HalfBathrooms(value)
        set_input("HalfBathrooms", value)
      end
      #### 
      # Set the value of the LightingEfficiency input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) A numeric value representing the lighting efficiency of the residence.
      ###

      def set_LightingEfficiency(value)
        set_input("LightingEfficiency", value)
      end
      #### 
      # Set the value of the MonthlyElectricityCost input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) The montly cost of electricity for the residence.
      ###

      def set_MonthlyElectricityCost(value)
        set_input("MonthlyElectricityCost", value)
      end
      #### 
      # Set the value of the MonthlyElectricityUseEstimate input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) An estimate for the amount of electricity used monthly in kilowatt hours.
      ###

      def set_MonthlyElectricityUseEstimate(value)
        set_input("MonthlyElectricityUseEstimate", value)
      end
      #### 
      # Set the value of the MonthlyNaturalGasCost input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) The monthly cost of natural gas for the residence.
      ###

      def set_MonthlyNaturalGasCost(value)
        set_input("MonthlyNaturalGasCost", value)
      end
      #### 
      # Set the value of the MonthlyNaturalGasVolumeEstimate input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) An estimate of the amount of natural gas used monthly.
      ###

      def set_MonthlyNaturalGasVolumeEstimate(value)
        set_input("MonthlyNaturalGasVolumeEstimate", value)
      end
      #### 
      # Set the value of the Occupation input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) Refers to the percentage of time a residence is occupied during a year. Defaults to 0.937.
      ###

      def set_Occupation(value)
        set_input("Occupation", value)
      end
      #### 
      # Set the value of the Ownership input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Indicates whether the residence is owned or rented. Set to "true" if you own the residence.
      ###

      def set_Ownership(value)
        set_input("Ownership", value)
      end
      #### 
      # Set the value of the RefrigeratorCount input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of refrigerators in the residence.
      ###

      def set_RefrigeratorCount(value)
        set_input("RefrigeratorCount", value)
      end
      #### 
      # Set the value of the ResidentialClass input for this Choreo. 
      # 
      # @param String - (optional, string) Valid values: "Apartment in a building with 5 or more units", "Apartment in a house or a building with 2-4 units", "Mobile home", "Single-family attached house", or "Single-family detached house".
      ###

      def set_ResidentialClass(value)
        set_input("ResidentialClass", value)
      end
      #### 
      # Set the value of the Residents input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of people living in the residence.
      ###

      def set_Residents(value)
        set_input("Residents", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Specify your desired response format. Accepted values are xml and json (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Retirement input for this Choreo. 
      # 
      # @param String - (optional, date) A date of retirement.
      ###

      def set_Retirement(value)
        set_input("Retirement", value)
      end
      #### 
      # Set the value of the Timeframe input for this Choreo. 
      # 
      # @param String - (optional, string) A date range specified in the following format: 2008-01-01/2008-07-09
      ###

      def set_Timeframe(value)
        set_input("Timeframe", value)
      end
      #### 
      # Set the value of the Urbanity input for this Choreo. 
      # 
      # @param String - (optional, string) Can be set to: City, Rural, Suburbs, or Town.
      ###

      def set_Urbanity(value)
        set_input("Urbanity", value)
      end
      #### 
      # Set the value of the ZipCode input for this Choreo. 
      # 
      # @param String - (optional, string) The postal code of the residence.
      ###

      def set_ZipCode(value)
        set_input("ZipCode", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Residence Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ResidenceResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Brighter Planet.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Residence



  ##############################################################################
  #
  # Shipment
  #
  # Returns information about the carbon footprint of shipping packages.
  #
  ##############################################################################

  class Shipment < Choreography

    ####
    #  Create a new instance of the Shipment Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/BrighterPlanet/Shipment")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ShipmentInputSet
    ####
    def new_input_set()
      return ShipmentInputSet.new()
    end

    def make_result_set()
      return ShipmentResultSet.new()
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
      results = ShipmentResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Shipment
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ShipmentInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Brighter Planet.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Carrier input for this Choreo. 
      # 
      # @param String - (optional, string) The carrier used for the shipment. Valid values are: FedEx, UPS, or USPS.
      ###

      def set_Carrier(value)
        set_input("Carrier", value)
      end
      #### 
      # Set the value of the DestinationZipCode input for this Choreo. 
      # 
      # @param String - (optional, string) The postal code of the destination address.
      ###

      def set_DestinationZipCode(value)
        set_input("DestinationZipCode", value)
      end
      #### 
      # Set the value of the Destination input for this Choreo. 
      # 
      # @param String - (optional, string) The destination of the shipment.
      ###

      def set_Destination(value)
        set_input("Destination", value)
      end
      #### 
      # Set the value of the Distance input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) The distance from the shipment origin to the shipment destination.
      ###

      def set_Distance(value)
        set_input("Distance", value)
      end
      #### 
      # Set the value of the Mode input for this Choreo. 
      # 
      # @param String - (optional, string) The mode or method of shipment. Valid values are: air, courier, or ground.
      ###

      def set_Mode(value)
        set_input("Mode", value)
      end
      #### 
      # Set the value of the OriginZipCode input for this Choreo. 
      # 
      # @param String - (optional, string) The postal code of the origin address.
      ###

      def set_OriginZipCode(value)
        set_input("OriginZipCode", value)
      end
      #### 
      # Set the value of the Origin input for this Choreo. 
      # 
      # @param String - (optional, string) The origin of the shipment.
      ###

      def set_Origin(value)
        set_input("Origin", value)
      end
      #### 
      # Set the value of the PackageCount input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of packages in the shipment.
      ###

      def set_PackageCount(value)
        set_input("PackageCount", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Specify your desired response format. Accepted values are xml and json (the default).
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Weight input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) The weight of the shipment in kilograms.
      ###

      def set_Weight(value)
        set_input("Weight", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Shipment Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ShipmentResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Brighter Planet.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Shipment




end # module BrighterPlanet