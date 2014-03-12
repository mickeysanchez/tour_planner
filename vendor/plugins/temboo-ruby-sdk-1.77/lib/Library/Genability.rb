require "temboo"

module Genability




  module PricingAndCalc



    ##############################################################################
    #
    # CalculateTariffInputMetaData
    #
    # Retrieve inputs required to run a calculation for the specified tariff, within a specified period of time.
    #
    ##############################################################################

    class CalculateTariffInputMetaData < Choreography

      ####
      #  Create a new instance of the CalculateTariffInputMetaData Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Genability/PricingAndCalc/CalculateTariffInputMetaData")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CalculateTariffInputMetaDataInputSet
      ####
      def new_input_set()
        return CalculateTariffInputMetaDataInputSet.new()
      end

      def make_result_set()
        return CalculateTariffInputMetaDataResultSet.new()
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
        results = CalculateTariffInputMetaDataResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CalculateTariffInputMetaData
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CalculateTariffInputMetaDataInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The App ID provided by Genability.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Genability.
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the BillingPeriod input for this Choreo. 
        # 
        # @param String - (optional, string) Specify whether results retireved should be based on a billing period, or not.  Default is set to: false.
        ###

        def set_BillingPeriod(value)
          set_input("BillingPeriod", value)
        end
        #### 
        # Set the value of the CityLimits input for this Choreo. 
        # 
        # @param String - (optional, string) Specify whether electricity pricing information should be restricted to city limits, or not.  Example input value: Inside.
        ###

        def set_CityLimits(value)
          set_input("CityLimits", value)
        end
        #### 
        # Set the value of the ConnectionType input for this Choreo. 
        # 
        # @param String - (optional, string) The connection type.  For example: Primary.
        ###

        def set_ConnectionType(value)
          set_input("ConnectionType", value)
        end
        #### 
        # Set the value of the FromDateTime input for this Choreo. 
        # 
        # @param String - (required, string) The date and time of the requested start of the price query. Must be in ISO 8601 format.  Example: 2012-06-12T00:00:00.0-0700
        ###

        def set_FromDateTime(value)
          set_input("FromDateTime", value)
        end
        #### 
        # Set the value of the GroupBy input for this Choreo. 
        # 
        # @param String - (optional, string) Specify how calculation details are displayed.  For example retrieved details can be grouped by month, or year. Options include: Daily, Weekly, Month, Year.
        ###

        def set_GroupBy(value)
          set_input("GroupBy", value)
        end
        #### 
        # Set the value of the KeyName input for this Choreo. 
        # 
        # @param String - (optional, string) An applicability value.  If an error is returned, indicating the need for an extra applicability parameter, use this variable to set the parameter name.  For example: territoryID.
        ###

        def set_KeyName(value)
          set_input("KeyName", value)
        end
        #### 
        # Set the value of the KeyValue input for this Choreo. 
        # 
        # @param String - (conditional, string) The value for the specified KeyName variable. For example if KeyName is set to territoryID, you could provide 3385 for the KeyValue input.
        ###

        def set_KeyValue(value)
          set_input("KeyValue", value)
        end
        #### 
        # Set the value of the MasterTariffID input for this Choreo. 
        # 
        # @param String - (required, string) A Genability tariff ID.
        ###

        def set_MasterTariffID(value)
          set_input("MasterTariffID", value)
        end
        #### 
        # Set the value of the ToDateTime input for this Choreo. 
        # 
        # @param String - (required, string) The date and time of the requested start of the price query. Must be in ISO 8601 format.  Example: 2012-06-12T00:00:00.0-0700
        ###

        def set_ToDateTime(value)
          set_input("ToDateTime", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CalculateTariffInputMetaData Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CalculateTariffInputMetaDataResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Genability.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CalculateTariffInputMetaData



    ##############################################################################
    #
    # GetPrice
    #
    # Retrieves the consumption price of a specified Tariff over a given date range.
    #
    ##############################################################################

    class GetPrice < Choreography

      ####
      #  Create a new instance of the GetPrice Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Genability/PricingAndCalc/GetPrice")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetPriceInputSet
      ####
      def new_input_set()
        return GetPriceInputSet.new()
      end

      def make_result_set()
        return GetPriceResultSet.new()
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
        results = GetPriceResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetPrice
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetPriceInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountID input for this Choreo. 
        # 
        # @param String - (optional, string) A Genability ID for an account. More info on Accounts is available here: http://developer.genability.com/documentation/api-reference/account-api/account
        ###

        def set_AccountID(value)
          set_input("AccountID", value)
        end
        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The App ID provided by Genability.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Genability.
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the ConsumptionAmount input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Specify a monthly consumption in kWh. By default the highest banded level of consumption is used.
        ###

        def set_ConsumptionAmount(value)
          set_input("ConsumptionAmount", value)
        end
        #### 
        # Set the value of the DemandAmount input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Specify a monthly demand in kWh. By default the highest banded level of demand is used.
        ###

        def set_DemandAmount(value)
          set_input("DemandAmount", value)
        end
        #### 
        # Set the value of the FromDateTime input for this Choreo. 
        # 
        # @param String - (required, string) The date and time of the requested start of the price query. Must be in ISO 8601 format.  Example: 2012-06-12T00:00:00.0-0700
        ###

        def set_FromDateTime(value)
          set_input("FromDateTime", value)
        end
        #### 
        # Set the value of the MasterTariffID input for this Choreo. 
        # 
        # @param String - (optional, string) A Genability tariff ID. Not required, if AccountID is specified.
        ###

        def set_MasterTariffID(value)
          set_input("MasterTariffID", value)
        end
        #### 
        # Set the value of the PageCount input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to be returned. Defailt is set to: 25.
        ###

        def set_PageCount(value)
          set_input("PageCount", value)
        end
        #### 
        # Set the value of the PageStart input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to start to display results from. If unspecified, the first page of results will be returned.
        ###

        def set_PageStart(value)
          set_input("PageStart", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The Genability ID of a profile. This ID can be passed instead of consumptionAmount or demandAmount.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
        end
        #### 
        # Set the value of the ProviderAccountID input for this Choreo. 
        # 
        # @param String - (optional, string) A unique ID for an Account. Same as AccountId, however your unique ID can be used instead of the Genability Account ID.
        ###

        def set_ProviderAccountID(value)
          set_input("ProviderAccountID", value)
        end
        #### 
        # Set the value of the TerritoryID input for this Choreo. 
        # 
        # @param String - (optional, string) Return rate changes for the specified Territory.
        ###

        def set_TerritoryID(value)
          set_input("TerritoryID", value)
        end
        #### 
        # Set the value of the ToDateTime input for this Choreo. 
        # 
        # @param String - (optional, string) The date and time of the requested start of the price query. Must be in ISO 8601 format.  Example: 2012-06-12T00:00:00.0-0700
        ###

        def set_ToDateTime(value)
          set_input("ToDateTime", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetPrice Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetPriceResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Genability.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetPrice



    ##############################################################################
    #
    # GetTariffPrice
    #
    # Retrieve summarized rates of a specified electricity tariff, in addition to changes in rates over a specified time span.
    #
    ##############################################################################

    class GetTariffPrice < Choreography

      ####
      #  Create a new instance of the GetTariffPrice Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Genability/PricingAndCalc/GetTariffPrice")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTariffPriceInputSet
      ####
      def new_input_set()
        return GetTariffPriceInputSet.new()
      end

      def make_result_set()
        return GetTariffPriceResultSet.new()
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
        results = GetTariffPriceResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTariffPrice
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTariffPriceInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountID input for this Choreo. 
        # 
        # @param String - (optional, string) The Genability ID for an account. This is optional if MasterTariffID is set.
        ###

        def set_AccountID(value)
          set_input("AccountID", value)
        end
        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The App ID provided by Genability.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Genability.
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the ConsumptionAmount input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Specify a monthly consumption in kWh. By default the highest banded level of consumption is used.
        ###

        def set_ConsumptionAmount(value)
          set_input("ConsumptionAmount", value)
        end
        #### 
        # Set the value of the DemandAmount input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Specify a monthly demand in kWh. By default the highest banded level of demand is used.
        ###

        def set_DemandAmount(value)
          set_input("DemandAmount", value)
        end
        #### 
        # Set the value of the FromDateTime input for this Choreo. 
        # 
        # @param String - (required, string) The date and time of the requested start of the price query. Must be in ISO 8601 format.  Example: 2012-06-12T00:00:00.0-0700
        ###

        def set_FromDateTime(value)
          set_input("FromDateTime", value)
        end
        #### 
        # Set the value of the MasterTariffID input for this Choreo. 
        # 
        # @param String - (optional, string) A Genability tariff ID. This variable is not required, if AccountID is set.
        ###

        def set_MasterTariffID(value)
          set_input("MasterTariffID", value)
        end
        #### 
        # Set the value of the PageCount input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to be returned. Defailt is set to: 25.
        ###

        def set_PageCount(value)
          set_input("PageCount", value)
        end
        #### 
        # Set the value of the PageStart input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to start to display results from. If unspecified, the first page of results will be returned.
        ###

        def set_PageStart(value)
          set_input("PageStart", value)
        end
        #### 
        # Set the value of the TerritoryID input for this Choreo. 
        # 
        # @param String - (optional, string) Return rate changes for the specified Territory.
        ###

        def set_TerritoryID(value)
          set_input("TerritoryID", value)
        end
        #### 
        # Set the value of the ToDateTime input for this Choreo. 
        # 
        # @param String - (optional, string) The date and time of the requested start of the price query. Must be in ISO 8601 format.  Example: 2012-06-12T00:00:00.0-0700
        ###

        def set_ToDateTime(value)
          set_input("ToDateTime", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTariffPrice Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTariffPriceResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Genability.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTariffPrice



    ##############################################################################
    #
    # GetTerritoryIDFromZipcode
    #
    # Get a territoryID, by using a consumer's zipcode, LSE ID and master tariff ID.
    #
    ##############################################################################

    class GetTerritoryIDFromZipcode < Choreography

      ####
      #  Create a new instance of the GetTerritoryIDFromZipcode Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Genability/PricingAndCalc/GetTerritoryIDFromZipcode")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTerritoryIDFromZipcodeInputSet
      ####
      def new_input_set()
        return GetTerritoryIDFromZipcodeInputSet.new()
      end

      def make_result_set()
        return GetTerritoryIDFromZipcodeResultSet.new()
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
        results = GetTerritoryIDFromZipcodeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTerritoryIDFromZipcode
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTerritoryIDFromZipcodeInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The App ID provided by Genability.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Genability.
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the LSEID input for this Choreo. 
        # 
        # @param String - (required, string) An LSE ID.
        ###

        def set_LSEID(value)
          set_input("LSEID", value)
        end
        #### 
        # Set the value of the MasterTariffID input for this Choreo. 
        # 
        # @param String - (required, string) A Genability tariff ID.
        ###

        def set_MasterTariffID(value)
          set_input("MasterTariffID", value)
        end
        #### 
        # Set the value of the Zipcode input for this Choreo. 
        # 
        # @param Integer - (required, integer) A zip code for which a territory ID is to be retrieved.
        ###

        def set_Zipcode(value)
          set_input("Zipcode", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTerritoryIDFromZipcode Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTerritoryIDFromZipcodeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Genability.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTerritoryIDFromZipcode



    ##############################################################################
    #
    # RunNewPriceCalculation
    #
    # Calculate electricity costs based on a POSTed calculation criteria. 
    #
    ##############################################################################

    class RunNewPriceCalculation < Choreography

      ####
      #  Create a new instance of the RunNewPriceCalculation Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Genability/PricingAndCalc/RunNewPriceCalculation")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RunNewPriceCalculationInputSet
      ####
      def new_input_set()
        return RunNewPriceCalculationInputSet.new()
      end

      def make_result_set()
        return RunNewPriceCalculationResultSet.new()
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
        results = RunNewPriceCalculationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RunNewPriceCalculation
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RunNewPriceCalculationInputSet < Choreography::InputSet

        #### 
        # Set the value of the POSTData input for this Choreo. 
        # 
        # @param String - (required, json) The POST payload in JSON format.
        ###

        def set_POSTData(value)
          set_input("POSTData", value)
        end
        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The App ID provided by Genability.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Genability.
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the MasterTariffID input for this Choreo. 
        # 
        # @param String - (required, string) A Genability tariff ID.
        ###

        def set_MasterTariffID(value)
          set_input("MasterTariffID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RunNewPriceCalculation Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RunNewPriceCalculationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Genability.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RunNewPriceCalculation




  end # module PricingAndCalc

  module TariffData



    ##############################################################################
    #
    # GetLoadServingEntities
    #
    # Returns a list of LoadServingEntity objects based a specified search criteria.
    #
    ##############################################################################

    class GetLoadServingEntities < Choreography

      ####
      #  Create a new instance of the GetLoadServingEntities Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Genability/TariffData/GetLoadServingEntities")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetLoadServingEntitiesInputSet
      ####
      def new_input_set()
        return GetLoadServingEntitiesInputSet.new()
      end

      def make_result_set()
        return GetLoadServingEntitiesResultSet.new()
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
        results = GetLoadServingEntitiesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLoadServingEntities
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetLoadServingEntitiesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountID input for this Choreo. 
        # 
        # @param String - (optional, string) The unique ID of the Account to find LSEs for. When passed in, the search will look for a territoryId on the Account and use that to find all LSEs that provide service within that territory.
        ###

        def set_AccountID(value)
          set_input("AccountID", value)
        end
        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (conditional, string) The App ID provided by Genability.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Genability.
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the EndsWith input for this Choreo. 
        # 
        # @param String - (optional, string) When true, the search will only return results that end with the specified search string. Otherwise, any match of the search string will be returned as a result.
        ###

        def set_EndsWith(value)
          set_input("EndsWith", value)
        end
        #### 
        # Set the value of the IsRegex input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When true, the provided search string will be regarded as a regular expression and the search will return results matching the regular expression.
        ###

        def set_IsRegex(value)
          set_input("IsRegex", value)
        end
        #### 
        # Set the value of the PageCount input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return. Defaults to 25.
        ###

        def set_PageCount(value)
          set_input("PageCount", value)
        end
        #### 
        # Set the value of the PageStart input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to begin the result set from. Defaults to 1.
        ###

        def set_PageStart(value)
          set_input("PageStart", value)
        end
        #### 
        # Set the value of the SearchOn input for this Choreo. 
        # 
        # @param String - (optional, string) Comma separated list of fields to query on. When searchOn is specified, the text provided in the search string field will be searched within these fields.
        ###

        def set_SearchOn(value)
          set_input("SearchOn", value)
        end
        #### 
        # Set the value of the Search input for this Choreo. 
        # 
        # @param String - (optional, string) The string of text to search on. This can also be a regular expression, in which case you should set the 'isRegex' flag to true.
        ###

        def set_Search(value)
          set_input("Search", value)
        end
        #### 
        # Set the value of the SortOn input for this Choreo. 
        # 
        # @param String - (optional, string) Comma separated list of fields to sort on.
        ###

        def set_SortOn(value)
          set_input("SortOn", value)
        end
        #### 
        # Set the value of the SortOrder input for this Choreo. 
        # 
        # @param String - (optional, string) Comma separated list of ordering. Possible values are 'ASC' and 'DESC'. Default is 'ASC'. This list corresponds to the field list used in the SortOn input.
        ###

        def set_SortOrder(value)
          set_input("SortOrder", value)
        end
        #### 
        # Set the value of the StartsWith input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When true, the search will only return results that begin with the specified search string. Otherwise, any match of the search string will be returned as a result.
        ###

        def set_StartsWith(value)
          set_input("StartsWith", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLoadServingEntities Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetLoadServingEntitiesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Genability.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetLoadServingEntities



    ##############################################################################
    #
    # GetLoadServingEntity
    #
    # Returns a Load Serving Entity with a given ID.
    #
    ##############################################################################

    class GetLoadServingEntity < Choreography

      ####
      #  Create a new instance of the GetLoadServingEntity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Genability/TariffData/GetLoadServingEntity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetLoadServingEntityInputSet
      ####
      def new_input_set()
        return GetLoadServingEntityInputSet.new()
      end

      def make_result_set()
        return GetLoadServingEntityResultSet.new()
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
        results = GetLoadServingEntityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLoadServingEntity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetLoadServingEntityInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (conditional, string) The App ID provided by Genability.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Genability.
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the LSEID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of a particular Load Serving Entity to return.
        ###

        def set_LSEID(value)
          set_input("LSEID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLoadServingEntity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetLoadServingEntityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Genability.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetLoadServingEntity



    ##############################################################################
    #
    # GetMetricsForZipCode
    #
    # Returns a place object and associated facts and metrics with a given zip code.
    #
    ##############################################################################

    class GetMetricsForZipCode < Choreography

      ####
      #  Create a new instance of the GetMetricsForZipCode Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Genability/TariffData/GetMetricsForZipCode")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetMetricsForZipCodeInputSet
      ####
      def new_input_set()
        return GetMetricsForZipCodeInputSet.new()
      end

      def make_result_set()
        return GetMetricsForZipCodeResultSet.new()
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
        results = GetMetricsForZipCodeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetMetricsForZipCode
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetMetricsForZipCodeInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (conditional, string) The App ID provided by Genability.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Genability.
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the ZipCode input for this Choreo. 
        # 
        # @param String - (optional, string) The zip code for the place object you want to return.
        ###

        def set_ZipCode(value)
          set_input("ZipCode", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetMetricsForZipCode Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetMetricsForZipCodeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Genability.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetMetricsForZipCode



    ##############################################################################
    #
    # GetPropertyKey
    #
    # Returns an individual Property Key using a given key name.
    #
    ##############################################################################

    class GetPropertyKey < Choreography

      ####
      #  Create a new instance of the GetPropertyKey Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Genability/TariffData/GetPropertyKey")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetPropertyKeyInputSet
      ####
      def new_input_set()
        return GetPropertyKeyInputSet.new()
      end

      def make_result_set()
        return GetPropertyKeyResultSet.new()
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
        results = GetPropertyKeyResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetPropertyKey
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetPropertyKeyInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (conditional, string) The App ID provided by Genability.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Genability.
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the KeyName input for this Choreo. 
        # 
        # @param String - (required, string) The key name for the property key you want to return.
        ###

        def set_KeyName(value)
          set_input("KeyName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetPropertyKey Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetPropertyKeyResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Genability.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetPropertyKey



    ##############################################################################
    #
    # GetPropertyKeys
    #
    # Returns a list of Property Keys based on a specified search criteria.
    #
    ##############################################################################

    class GetPropertyKeys < Choreography

      ####
      #  Create a new instance of the GetPropertyKeys Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Genability/TariffData/GetPropertyKeys")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetPropertyKeysInputSet
      ####
      def new_input_set()
        return GetPropertyKeysInputSet.new()
      end

      def make_result_set()
        return GetPropertyKeysResultSet.new()
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
        results = GetPropertyKeysResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetPropertyKeys
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetPropertyKeysInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (conditional, string) The App ID provided by Genability.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Genability.
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the EntityID input for this Choreo. 
        # 
        # @param String - (optional, string) Filters the result so that only Properties that belong to this EntityID are returned. When specified, EntityType must also be specified.
        ###

        def set_EntityID(value)
          set_input("EntityID", value)
        end
        #### 
        # Set the value of the EntityType input for this Choreo. 
        # 
        # @param String - (optional, string) Filters the result so that only Properties that belong to this EntityType are returned. When specified, EntityID must also be specified.
        ###

        def set_EntityType(value)
          set_input("EntityType", value)
        end
        #### 
        # Set the value of the PageCount input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return. Defaults to 25.
        ###

        def set_PageCount(value)
          set_input("PageCount", value)
        end
        #### 
        # Set the value of the PageStart input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to begin the result set from. Defaults to 1.
        ###

        def set_PageStart(value)
          set_input("PageStart", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetPropertyKeys Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetPropertyKeysResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Genability.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetPropertyKeys



    ##############################################################################
    #
    # GetSeasonGroups
    #
    # Returns a list of Season Groups for a given Load Serving Entity.
    #
    ##############################################################################

    class GetSeasonGroups < Choreography

      ####
      #  Create a new instance of the GetSeasonGroups Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Genability/TariffData/GetSeasonGroups")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetSeasonGroupsInputSet
      ####
      def new_input_set()
        return GetSeasonGroupsInputSet.new()
      end

      def make_result_set()
        return GetSeasonGroupsResultSet.new()
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
        results = GetSeasonGroupsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetSeasonGroups
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetSeasonGroupsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (conditional, string) The App ID provided by Genability.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Genability.
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the EndsWith input for this Choreo. 
        # 
        # @param String - (optional, string) When true, the search will only return results that end with the specified search string. Otherwise, any match of the search string will be returned as a result.
        ###

        def set_EndsWith(value)
          set_input("EndsWith", value)
        end
        #### 
        # Set the value of the IsRegex input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When true, the provided search string will be regarded as a regular expression and the search will return results matching the regular expression.
        ###

        def set_IsRegex(value)
          set_input("IsRegex", value)
        end
        #### 
        # Set the value of the LSEID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The LSE Id whose Seasons to return.
        ###

        def set_LSEID(value)
          set_input("LSEID", value)
        end
        #### 
        # Set the value of the PageCount input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return. Defaults to 25.
        ###

        def set_PageCount(value)
          set_input("PageCount", value)
        end
        #### 
        # Set the value of the PageStart input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to begin the result set from. Defaults to 1.
        ###

        def set_PageStart(value)
          set_input("PageStart", value)
        end
        #### 
        # Set the value of the SearchOn input for this Choreo. 
        # 
        # @param String - (optional, string) Comma separated list of fields to query on. When searchOn is specified, the text provided in the search string field will be searched within these fields.
        ###

        def set_SearchOn(value)
          set_input("SearchOn", value)
        end
        #### 
        # Set the value of the Search input for this Choreo. 
        # 
        # @param String - (optional, string) The string of text to search on. This can also be a regular expression, in which case you should set the 'isRegex' flag to true.
        ###

        def set_Search(value)
          set_input("Search", value)
        end
        #### 
        # Set the value of the SortOn input for this Choreo. 
        # 
        # @param String - (optional, string) Comma separated list of fields to sort on.
        ###

        def set_SortOn(value)
          set_input("SortOn", value)
        end
        #### 
        # Set the value of the SortOrder input for this Choreo. 
        # 
        # @param String - (optional, string) Comma separated list of ordering. Possible values are 'ASC' and 'DESC'. Default is 'ASC'. This list corresponds to the field list used in the SortOn input.
        ###

        def set_SortOrder(value)
          set_input("SortOrder", value)
        end
        #### 
        # Set the value of the StartsWith input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When true, the search will only return results that begin with the specified search string. Otherwise, any match of the search string will be returned as a result.
        ###

        def set_StartsWith(value)
          set_input("StartsWith", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetSeasonGroups Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetSeasonGroupsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Genability.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetSeasonGroups



    ##############################################################################
    #
    # GetTariff
    #
    # Returns an individual Tariff object with a given id.
    #
    ##############################################################################

    class GetTariff < Choreography

      ####
      #  Create a new instance of the GetTariff Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Genability/TariffData/GetTariff")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTariffInputSet
      ####
      def new_input_set()
        return GetTariffInputSet.new()
      end

      def make_result_set()
        return GetTariffResultSet.new()
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
        results = GetTariffResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTariff
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTariffInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (conditional, string) The App ID provided by Genability.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Genability.
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the MasterTariffID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The master tariff id. This can be retrieved in the output of the GetTariffs Choreo.
        ###

        def set_MasterTariffID(value)
          set_input("MasterTariffID", value)
        end
        #### 
        # Set the value of the PopulateProperties input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to "true" to populate the properties for the returned Tariffs.
        ###

        def set_PopulateProperties(value)
          set_input("PopulateProperties", value)
        end
        #### 
        # Set the value of the PopulateRates input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to "true" to populate the rate details for the returned Tariffs.
        ###

        def set_PopulateRates(value)
          set_input("PopulateRates", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTariff Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTariffResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Genability.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTariff



    ##############################################################################
    #
    # GetTariffs
    #
    # Returns a list of Tariff objects based a specified search criteria.
    #
    ##############################################################################

    class GetTariffs < Choreography

      ####
      #  Create a new instance of the GetTariffs Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Genability/TariffData/GetTariffs")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTariffsInputSet
      ####
      def new_input_set()
        return GetTariffsInputSet.new()
      end

      def make_result_set()
        return GetTariffsResultSet.new()
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
        results = GetTariffsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTariffs
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTariffsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountID input for this Choreo. 
        # 
        # @param String - (optional, string) The unique ID of the Account to find tariffs for. Values passed in will override those from the Account.
        ###

        def set_AccountID(value)
          set_input("AccountID", value)
        end
        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (conditional, string) The App ID provided by Genability.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Genability.
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the CustomerClasses input for this Choreo. 
        # 
        # @param String - (optional, string) Returns only these customer classes. Valid values are: RESIDENTIAL, GENERAL.
        ###

        def set_CustomerClasses(value)
          set_input("CustomerClasses", value)
        end
        #### 
        # Set the value of the EffectiveOn input for this Choreo. 
        # 
        # @param String - (optional, date) Returns only tariffs that are effective on this date.
        ###

        def set_EffectiveOn(value)
          set_input("EffectiveOn", value)
        end
        #### 
        # Set the value of the EndsWith input for this Choreo. 
        # 
        # @param String - (optional, string) When true, the search will only return results that end with the specified search string. Otherwise, any match of the search string will be returned as a result.
        ###

        def set_EndsWith(value)
          set_input("EndsWith", value)
        end
        #### 
        # Set the value of the FromDateTime input for this Choreo. 
        # 
        # @param String - (optional, date) Returns only tariffs that are effective on or after this date.
        ###

        def set_FromDateTime(value)
          set_input("FromDateTime", value)
        end
        #### 
        # Set the value of the IsRegex input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When true, the provided search string will be regarded as a regular expression and the search will return results matching the regular expression.
        ###

        def set_IsRegex(value)
          set_input("IsRegex", value)
        end
        #### 
        # Set the value of the LSEID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Filter tariffs for a specific LSE.
        ###

        def set_LSEID(value)
          set_input("LSEID", value)
        end
        #### 
        # Set the value of the PageCount input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return. Defaults to 25.
        ###

        def set_PageCount(value)
          set_input("PageCount", value)
        end
        #### 
        # Set the value of the PageStart input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to begin the result set from. Defaults to 1.
        ###

        def set_PageStart(value)
          set_input("PageStart", value)
        end
        #### 
        # Set the value of the PopulateProperties input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to "true" to populate the properties for the returned Tariffs.
        ###

        def set_PopulateProperties(value)
          set_input("PopulateProperties", value)
        end
        #### 
        # Set the value of the PopulateRates input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to "true" to populate the rate details for the returned Tariffs.
        ###

        def set_PopulateRates(value)
          set_input("PopulateRates", value)
        end
        #### 
        # Set the value of the SearchOn input for this Choreo. 
        # 
        # @param String - (optional, string) Comma separated list of fields to query on. When searchOn is specified, the text provided in the search string field will be searched within these fields.
        ###

        def set_SearchOn(value)
          set_input("SearchOn", value)
        end
        #### 
        # Set the value of the Search input for this Choreo. 
        # 
        # @param String - (optional, string) The string of text to search on. This can also be a regular expression, in which case you should set the 'isRegex' flag to true.
        ###

        def set_Search(value)
          set_input("Search", value)
        end
        #### 
        # Set the value of the SortOn input for this Choreo. 
        # 
        # @param String - (optional, string) Comma separated list of fields to sort on.
        ###

        def set_SortOn(value)
          set_input("SortOn", value)
        end
        #### 
        # Set the value of the SortOrder input for this Choreo. 
        # 
        # @param String - (optional, string) Comma separated list of ordering. Possible values are 'ASC' and 'DESC'. Default is 'ASC'. This list corresponds to the field list used in the SortOn input.
        ###

        def set_SortOrder(value)
          set_input("SortOrder", value)
        end
        #### 
        # Set the value of the StartsWith input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When true, the search will only return results that begin with the specified search string. Otherwise, any match of the search string will be returned as a result.
        ###

        def set_StartsWith(value)
          set_input("StartsWith", value)
        end
        #### 
        # Set the value of the TariffTypes input for this Choreo. 
        # 
        # @param String - (optional, string) Returns only these tariff types. Valid values are: DEFAULT, ALTERNATIVE, OPTIONAL_EXTRA, RIDER.
        ###

        def set_TariffTypes(value)
          set_input("TariffTypes", value)
        end
        #### 
        # Set the value of the ToDateTime input for this Choreo. 
        # 
        # @param String - (optional, date) Returns only tariffs that are effective on or before this date.
        ###

        def set_ToDateTime(value)
          set_input("ToDateTime", value)
        end
        #### 
        # Set the value of the ZipCode input for this Choreo. 
        # 
        # @param String - (optional, string) Return tariffs for a given zip or post code.
        ###

        def set_ZipCode(value)
          set_input("ZipCode", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTariffs Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTariffsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Genability.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTariffs



    ##############################################################################
    #
    # GetTerritories
    #
    # Returns a list of Territory objects based a specified search criteria.
    #
    ##############################################################################

    class GetTerritories < Choreography

      ####
      #  Create a new instance of the GetTerritories Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Genability/TariffData/GetTerritories")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTerritoriesInputSet
      ####
      def new_input_set()
        return GetTerritoriesInputSet.new()
      end

      def make_result_set()
        return GetTerritoriesResultSet.new()
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
        results = GetTerritoriesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTerritories
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTerritoriesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (conditional, string) The App ID provided by Genability.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Genability.
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the ContainsItemType input for this Choreo. 
        # 
        # @param String - (optional, string) Filters the result set to include a particular type of territory. Valid values are: CITY, ZIPCODE, STATE, COUNTY.
        ###

        def set_ContainsItemType(value)
          set_input("ContainsItemType", value)
        end
        #### 
        # Set the value of the ContainsItemValue input for this Choreo. 
        # 
        # @param String - (optional, string) Used in combination with the ContainsItemType value. Filters the Types by this value.
        ###

        def set_ContainsItemValue(value)
          set_input("ContainsItemValue", value)
        end
        #### 
        # Set the value of the EndsWith input for this Choreo. 
        # 
        # @param String - (optional, string) When true, the search will only return results that end with the specified search string. Otherwise, any match of the search string will be returned as a result.
        ###

        def set_EndsWith(value)
          set_input("EndsWith", value)
        end
        #### 
        # Set the value of the IsRegex input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When true, the provided search string will be regarded as a regular expression and the search will return results matching the regular expression.
        ###

        def set_IsRegex(value)
          set_input("IsRegex", value)
        end
        #### 
        # Set the value of the LSEID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Filters the result set to only include territories within this LSE ID.
        ###

        def set_LSEID(value)
          set_input("LSEID", value)
        end
        #### 
        # Set the value of the MasterTariffID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) For tariffs with prices varying by geographic location, this will return the list of those territories covered by this tariff.
        ###

        def set_MasterTariffID(value)
          set_input("MasterTariffID", value)
        end
        #### 
        # Set the value of the PageCount input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return. Defaults to 25.
        ###

        def set_PageCount(value)
          set_input("PageCount", value)
        end
        #### 
        # Set the value of the PageStart input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to begin the result set from. Defaults to 1.
        ###

        def set_PageStart(value)
          set_input("PageStart", value)
        end
        #### 
        # Set the value of the PopulateItems input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) If set to "true", returns a list of territory items for each territory in the result set.
        ###

        def set_PopulateItems(value)
          set_input("PopulateItems", value)
        end
        #### 
        # Set the value of the PopulateLSES input for this Choreo. 
        # 
        # @param String - (optional, string) If set to "true", the response includes a list of TerritoryLses which are all the LSEs providing service in this territory.
        ###

        def set_PopulateLSES(value)
          set_input("PopulateLSES", value)
        end
        #### 
        # Set the value of the SearchOn input for this Choreo. 
        # 
        # @param String - (optional, string) Comma separated list of fields to query on. When searchOn is specified, the text provided in the search string field will be searched within these fields.
        ###

        def set_SearchOn(value)
          set_input("SearchOn", value)
        end
        #### 
        # Set the value of the Search input for this Choreo. 
        # 
        # @param String - (optional, string) The string of text to search on. This can also be a regular expression, in which case you should set the 'isRegex' flag to true.
        ###

        def set_Search(value)
          set_input("Search", value)
        end
        #### 
        # Set the value of the SortOn input for this Choreo. 
        # 
        # @param String - (optional, string) Comma separated list of fields to sort on.
        ###

        def set_SortOn(value)
          set_input("SortOn", value)
        end
        #### 
        # Set the value of the SortOrder input for this Choreo. 
        # 
        # @param String - (optional, string) Comma separated list of ordering. Possible values are 'ASC' and 'DESC'. Default is 'ASC'. This list corresponds to the field list used in the SortOn input.
        ###

        def set_SortOrder(value)
          set_input("SortOrder", value)
        end
        #### 
        # Set the value of the StartsWith input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When true, the search will only return results that begin with the specified search string. Otherwise, any match of the search string will be returned as a result.
        ###

        def set_StartsWith(value)
          set_input("StartsWith", value)
        end
        #### 
        # Set the value of the UsageTypes input for this Choreo. 
        # 
        # @param String - (optional, string) Filters the result set to only include territories of the specified usageType. valid values are: SERVICE, TARIFF.
        ###

        def set_UsageTypes(value)
          set_input("UsageTypes", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTerritories Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTerritoriesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Genability.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTerritories



    ##############################################################################
    #
    # GetTerritory
    #
    # Returns a an individual Territory objects with a given id.
    #
    ##############################################################################

    class GetTerritory < Choreography

      ####
      #  Create a new instance of the GetTerritory Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Genability/TariffData/GetTerritory")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTerritoryInputSet
      ####
      def new_input_set()
        return GetTerritoryInputSet.new()
      end

      def make_result_set()
        return GetTerritoryResultSet.new()
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
        results = GetTerritoryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTerritory
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTerritoryInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (conditional, string) The App ID provided by Genability.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Genability.
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the PopulateItems input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) If set to "true", returns a list of territory items for each territory in the result set.
        ###

        def set_PopulateItems(value)
          set_input("PopulateItems", value)
        end
        #### 
        # Set the value of the TerritoryID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id for the territory to retrieve. This can be retrieved in the output of the GetTerritories Choreo.
        ###

        def set_TerritoryID(value)
          set_input("TerritoryID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTerritory Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTerritoryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Genability.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTerritory



    ##############################################################################
    #
    # GetTimeOfUseGroup
    #
    # Returns a particular Time of Use Group with a given touGroupId and lseId.
    #
    ##############################################################################

    class GetTimeOfUseGroup < Choreography

      ####
      #  Create a new instance of the GetTimeOfUseGroup Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Genability/TariffData/GetTimeOfUseGroup")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTimeOfUseGroupInputSet
      ####
      def new_input_set()
        return GetTimeOfUseGroupInputSet.new()
      end

      def make_result_set()
        return GetTimeOfUseGroupResultSet.new()
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
        results = GetTimeOfUseGroupResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTimeOfUseGroup
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTimeOfUseGroupInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The App ID provided by Genability.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Genability.
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the EndsWith input for this Choreo. 
        # 
        # @param String - (optional, string) When true, the search will only return results that end with the specified search string. Otherwise, any match of the search string will be returned as a result.
        ###

        def set_EndsWith(value)
          set_input("EndsWith", value)
        end
        #### 
        # Set the value of the IsRegex input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When true, the provided search string will be regarded as a regular expression and the search will return results matching the regular expression.
        ###

        def set_IsRegex(value)
          set_input("IsRegex", value)
        end
        #### 
        # Set the value of the LSEID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) Used to retrieve a TOU Group for a specific LSE.
        ###

        def set_LSEID(value)
          set_input("LSEID", value)
        end
        #### 
        # Set the value of the PageCount input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return. Defaults to 25.
        ###

        def set_PageCount(value)
          set_input("PageCount", value)
        end
        #### 
        # Set the value of the PageStart input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to begin the result set from. Defaults to 1.
        ###

        def set_PageStart(value)
          set_input("PageStart", value)
        end
        #### 
        # Set the value of the SearchOn input for this Choreo. 
        # 
        # @param String - (optional, string) Comma separated list of fields to query on. When searchOn is specified, the text provided in the search string field will be searched within these fields.
        ###

        def set_SearchOn(value)
          set_input("SearchOn", value)
        end
        #### 
        # Set the value of the Search input for this Choreo. 
        # 
        # @param String - (optional, string) The string of text to search on. This can also be a regular expression, in which case you should set the 'isRegex' flag to true.
        ###

        def set_Search(value)
          set_input("Search", value)
        end
        #### 
        # Set the value of the SortOn input for this Choreo. 
        # 
        # @param String - (optional, string) Comma separated list of fields to sort on.
        ###

        def set_SortOn(value)
          set_input("SortOn", value)
        end
        #### 
        # Set the value of the SortOrder input for this Choreo. 
        # 
        # @param String - (optional, string) Comma separated list of ordering. Possible values are 'ASC' and 'DESC'. Default is 'ASC'. This list corresponds to the field list used in the SortOn input.
        ###

        def set_SortOrder(value)
          set_input("SortOrder", value)
        end
        #### 
        # Set the value of the StartsWith input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When true, the search will only return results that begin with the specified search string. Otherwise, any match of the search string will be returned as a result.
        ###

        def set_StartsWith(value)
          set_input("StartsWith", value)
        end
        #### 
        # Set the value of the TOUGroupID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) Used to retrieve a TOU Group by its ID (required when LSE ID is provided).
        ###

        def set_TOUGroupID(value)
          set_input("TOUGroupID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTimeOfUseGroup Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTimeOfUseGroupResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Genability.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTimeOfUseGroup



    ##############################################################################
    #
    # GetTimeOfUseGroupIntervals
    #
    # Returns all the Intervals for a Time of Use Group within a given date range.
    #
    ##############################################################################

    class GetTimeOfUseGroupIntervals < Choreography

      ####
      #  Create a new instance of the GetTimeOfUseGroupIntervals Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Genability/TariffData/GetTimeOfUseGroupIntervals")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTimeOfUseGroupIntervalsInputSet
      ####
      def new_input_set()
        return GetTimeOfUseGroupIntervalsInputSet.new()
      end

      def make_result_set()
        return GetTimeOfUseGroupIntervalsResultSet.new()
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
        results = GetTimeOfUseGroupIntervalsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTimeOfUseGroupIntervals
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTimeOfUseGroupIntervalsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The App ID provided by Genability.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Genability.
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the FromDateTime input for this Choreo. 
        # 
        # @param String - (optional, date) The starting date and time of the requested Intervals (in ISO 8601 format). Defaults to current date if not specified.
        ###

        def set_FromDateTime(value)
          set_input("FromDateTime", value)
        end
        #### 
        # Set the value of the LSEID input for this Choreo. 
        # 
        # @param Integer - (required, integer) Used to retrieve a TOU Group for a specific LSE.
        ###

        def set_LSEID(value)
          set_input("LSEID", value)
        end
        #### 
        # Set the value of the PageCount input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return. Defaults to 25.
        ###

        def set_PageCount(value)
          set_input("PageCount", value)
        end
        #### 
        # Set the value of the PageStart input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to begin the result set from. Defaults to 1.
        ###

        def set_PageStart(value)
          set_input("PageStart", value)
        end
        #### 
        # Set the value of the TOUGroupID input for this Choreo. 
        # 
        # @param Integer - (required, integer) Used to retrieve a TOU Group by its ID.
        ###

        def set_TOUGroupID(value)
          set_input("TOUGroupID", value)
        end
        #### 
        # Set the value of the ToDateTime input for this Choreo. 
        # 
        # @param String - (optional, date) The ending date and time of the requested Intervals (in ISO 8601 format). If not specified, defaults to one week ahead of the current date.
        ###

        def set_ToDateTime(value)
          set_input("ToDateTime", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTimeOfUseGroupIntervals Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTimeOfUseGroupIntervalsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Genability.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTimeOfUseGroupIntervals



    ##############################################################################
    #
    # GetZipCodeDetails
    #
    # Returns the details for a given zip code.
    #
    ##############################################################################

    class GetZipCodeDetails < Choreography

      ####
      #  Create a new instance of the GetZipCodeDetails Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Genability/TariffData/GetZipCodeDetails")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetZipCodeDetailsInputSet
      ####
      def new_input_set()
        return GetZipCodeDetailsInputSet.new()
      end

      def make_result_set()
        return GetZipCodeDetailsResultSet.new()
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
        results = GetZipCodeDetailsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetZipCodeDetails
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetZipCodeDetailsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (conditional, string) The App ID provided by Genability.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the AppKey input for this Choreo. 
        # 
        # @param String - (required, string) The App Key provided by Genability.
        ###

        def set_AppKey(value)
          set_input("AppKey", value)
        end
        #### 
        # Set the value of the PageCount input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return. Defaults to 25.
        ###

        def set_PageCount(value)
          set_input("PageCount", value)
        end
        #### 
        # Set the value of the PageStart input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to begin the result set from. Defaults to 1.
        ###

        def set_PageStart(value)
          set_input("PageStart", value)
        end
        #### 
        # Set the value of the ZipCode input for this Choreo. 
        # 
        # @param String - (optional, string) A zip code to search with.
        ###

        def set_ZipCode(value)
          set_input("ZipCode", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetZipCodeDetails Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetZipCodeDetailsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Genability.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetZipCodeDetails




  end # module TariffData

end # module Genability