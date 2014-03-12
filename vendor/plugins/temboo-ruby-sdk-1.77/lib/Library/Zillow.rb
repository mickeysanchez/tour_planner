require "temboo"

module Zillow



  ##############################################################################
  #
  # GetComps
  #
  # Returns a list of comparable recent sales for a specified property.
  #
  ##############################################################################

  class GetComps < Choreography

    ####
    #  Create a new instance of the GetComps Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Zillow/GetComps")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetCompsInputSet
    ####
    def new_input_set()
      return GetCompsInputSet.new()
    end

    def make_result_set()
      return GetCompsResultSet.new()
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
      results = GetCompsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetComps
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetCompsInputSet < Choreography::InputSet

      #### 
      # Set the value of the Count input for this Choreo. 
      # 
      # @param Integer - (required, integer) Enter the number of comparable recent sales to retrieve. Choose a value between 1 and 25.
      ###

      def set_Count(value)
        set_input("Count", value)
      end
      #### 
      # Set the value of the RentEstimate input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Set to 1 (true) to enable. Defaults to 0 (false).
      ###

      def set_RentEstimate(value)
        set_input("RentEstimate", value)
      end
      #### 
      # Set the value of the ZPID input for this Choreo. 
      # 
      # @param Integer - (required, integer) Enter a Zillow Property ID for the property being queried.
      ###

      def set_ZPID(value)
        set_input("ZPID", value)
      end
      #### 
      # Set the value of the ZWSID input for this Choreo. 
      # 
      # @param String - (required, string) Enter a Zillow Web Service Identifier (ZWS ID).
      ###

      def set_ZWSID(value)
        set_input("ZWSID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetComps Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetCompsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Zillow.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetComps



  ##############################################################################
  #
  # GetDeepSearchResults
  #
  # Retrieve comprehensive property information for a specified address. 
  #
  ##############################################################################

  class GetDeepSearchResults < Choreography

    ####
    #  Create a new instance of the GetDeepSearchResults Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Zillow/GetDeepSearchResults")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetDeepSearchResultsInputSet
    ####
    def new_input_set()
      return GetDeepSearchResultsInputSet.new()
    end

    def make_result_set()
      return GetDeepSearchResultsResultSet.new()
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
      results = GetDeepSearchResultsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetDeepSearchResults
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetDeepSearchResultsInputSet < Choreography::InputSet

      #### 
      # Set the value of the Address input for this Choreo. 
      # 
      # @param String - (required, string) Enter the address of the property to search.
      ###

      def set_Address(value)
        set_input("Address", value)
      end
      #### 
      # Set the value of the City input for this Choreo. 
      # 
      # @param String - (required, string) Enter a city name.
      ###

      def set_City(value)
        set_input("City", value)
      end
      #### 
      # Set the value of the RentEstimate input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Set to 1 (true) to enable. Defaults to 0 (false).
      ###

      def set_RentEstimate(value)
        set_input("RentEstimate", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (required, string) Enter a State abbreviation. If State is set, an entry for City must also be entered.
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the ZWSID input for this Choreo. 
      # 
      # @param String - (required, string) Enter a Zillow Web Service Identifier (ZWS ID).
      ###

      def set_ZWSID(value)
        set_input("ZWSID", value)
      end
      #### 
      # Set the value of the Zipcode input for this Choreo. 
      # 
      # @param Integer - (required, integer) Enter a zipcode. Can be combined with or without the  City and State input variables.
      ###

      def set_Zipcode(value)
        set_input("Zipcode", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetDeepSearchResults Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetDeepSearchResultsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Zillow.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetDeepSearchResults



  ##############################################################################
  #
  # GetMonthlyPayments
  #
  # Retrieve estimated monthly payments, including principal and interest based on current interest rates.
  #
  ##############################################################################

  class GetMonthlyPayments < Choreography

    ####
    #  Create a new instance of the GetMonthlyPayments Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Zillow/GetMonthlyPayments")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetMonthlyPaymentsInputSet
    ####
    def new_input_set()
      return GetMonthlyPaymentsInputSet.new()
    end

    def make_result_set()
      return GetMonthlyPaymentsResultSet.new()
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
      results = GetMonthlyPaymentsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetMonthlyPayments
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetMonthlyPaymentsInputSet < Choreography::InputSet

      #### 
      # Set the value of the DollarsDown input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the dollar amount that is placed for a down payment. This variable can be used in place of DownPaymentAmount.
      ###

      def set_DollarsDown(value)
        set_input("DollarsDown", value)
      end
      #### 
      # Set the value of the DownPaymentAmount input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Enter the percentage of the total properly price that will be used as a down payment. If < 20%, mortage insurance info is also returned.
      ###

      def set_DownPaymentAmount(value)
        set_input("DownPaymentAmount", value)
      end
      #### 
      # Set the value of the OutputFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Enter the desired query output format.  Enter: xml, or json.  Default output is set to: xml.
      ###

      def set_OutputFormat(value)
        set_input("OutputFormat", value)
      end
      #### 
      # Set the value of the Price input for this Choreo. 
      # 
      # @param Integer - (required, integer) Enter the price for which the monthly payment is to be calculated.
      ###

      def set_Price(value)
        set_input("Price", value)
      end
      #### 
      # Set the value of the ZWSID input for this Choreo. 
      # 
      # @param String - (required, string) Enter a Zillow Web Service Identifier (ZWS ID).
      ###

      def set_ZWSID(value)
        set_input("ZWSID", value)
      end
      #### 
      # Set the value of the Zip input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Enter the zip code of the property.  If null, no property tax, or hazard insurance data will be returned.
      ###

      def set_Zip(value)
        set_input("Zip", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetMonthlyPayments Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetMonthlyPaymentsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Zillow.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetMonthlyPayments



  ##############################################################################
  #
  # GetRateSummary
  #
  # Retrieve current interest rates for a specified loan type.
  #
  ##############################################################################

  class GetRateSummary < Choreography

    ####
    #  Create a new instance of the GetRateSummary Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Zillow/GetRateSummary")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetRateSummaryInputSet
    ####
    def new_input_set()
      return GetRateSummaryInputSet.new()
    end

    def make_result_set()
      return GetRateSummaryResultSet.new()
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
      results = GetRateSummaryResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetRateSummary
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetRateSummaryInputSet < Choreography::InputSet

      #### 
      # Set the value of the OutputFormat input for this Choreo. 
      # 
      # @param String - (optional, string) Enter the desired query output format.  Enter: xml, or json.  Default output is set to: xml.
      ###

      def set_OutputFormat(value)
        set_input("OutputFormat", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) Enter a U.S. state abbreviation for which to retrieve mortgage rates.  If null, the national average rate is returned.
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the ZWSID input for this Choreo. 
      # 
      # @param String - (required, string) Enter a Zillow Web Service Identifier (ZWS ID).
      ###

      def set_ZWSID(value)
        set_input("ZWSID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetRateSummary Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetRateSummaryResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Zillow.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetRateSummary



  ##############################################################################
  #
  # GetUpdatedPropertyDetails
  #
  # Retrieve detailed property information that has been edited by the home's owner or agent.
  #
  ##############################################################################

  class GetUpdatedPropertyDetails < Choreography

    ####
    #  Create a new instance of the GetUpdatedPropertyDetails Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Zillow/GetUpdatedPropertyDetails")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetUpdatedPropertyDetailsInputSet
    ####
    def new_input_set()
      return GetUpdatedPropertyDetailsInputSet.new()
    end

    def make_result_set()
      return GetUpdatedPropertyDetailsResultSet.new()
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
      results = GetUpdatedPropertyDetailsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetUpdatedPropertyDetails
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetUpdatedPropertyDetailsInputSet < Choreography::InputSet

      #### 
      # Set the value of the ZPID input for this Choreo. 
      # 
      # @param Integer - (required, integer) Enter a Zillow Property ID for the property being queried.
      ###

      def set_ZPID(value)
        set_input("ZPID", value)
      end
      #### 
      # Set the value of the ZWSID input for this Choreo. 
      # 
      # @param String - (required, string) Enter a Zillow Web Service Identifier (ZWS ID).
      ###

      def set_ZWSID(value)
        set_input("ZWSID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetUpdatedPropertyDetails Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetUpdatedPropertyDetailsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Zillow.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetUpdatedPropertyDetails



  ##############################################################################
  #
  # GetZestimate
  #
  # Retrieve estimate information for a specified property.
  #
  ##############################################################################

  class GetZestimate < Choreography

    ####
    #  Create a new instance of the GetZestimate Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Zillow/GetZestimate")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetZestimateInputSet
    ####
    def new_input_set()
      return GetZestimateInputSet.new()
    end

    def make_result_set()
      return GetZestimateResultSet.new()
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
      results = GetZestimateResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetZestimate
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetZestimateInputSet < Choreography::InputSet

      #### 
      # Set the value of the RentEstimate input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Set to 1 (true) to enable. Defaults to 0 (false).
      ###

      def set_RentEstimate(value)
        set_input("RentEstimate", value)
      end
      #### 
      # Set the value of the ZPID input for this Choreo. 
      # 
      # @param Integer - (required, integer) Enter a Zillow Property ID for the property being queried.
      ###

      def set_ZPID(value)
        set_input("ZPID", value)
      end
      #### 
      # Set the value of the ZWSID input for this Choreo. 
      # 
      # @param String - (required, string) Enter a Zillow Web Service Identifier (ZWS ID).
      ###

      def set_ZWSID(value)
        set_input("ZWSID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetZestimate Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetZestimateResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Zillow.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetZestimate




end # module Zillow