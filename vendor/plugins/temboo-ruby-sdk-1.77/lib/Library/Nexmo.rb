require "temboo"

module Nexmo




  module Account



    ##############################################################################
    #
    # BuyNumber
    #
    # Purchase the specified inbound number.
    #
    ##############################################################################

    class BuyNumber < Choreography

      ####
      #  Create a new instance of the BuyNumber Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Nexmo/Account/BuyNumber")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return BuyNumberInputSet
      ####
      def new_input_set()
        return BuyNumberInputSet.new()
      end

      def make_result_set()
        return BuyNumberResultSet.new()
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
        results = BuyNumberResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the BuyNumber
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class BuyNumberInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your API Key provided to you by Nexmo.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) Your API Secret provided to you by Nexmo.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the Country input for this Choreo. 
        # 
        # @param String - (required, string) Country code. (e.g.: ES)
        ###

        def set_Country(value)
          set_input("Country", value)
        end
        #### 
        # Set the value of the Number input for this Choreo. 
        # 
        # @param String - (required, string) An available inbound (MSISDN) number  (e.g. 34911067000).
        ###

        def set_Number(value)
          set_input("Number", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the BuyNumber Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class BuyNumberResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Nexmo. For a successful request, an empty response body is returned.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Nexmo. A 200 is returned for a successful request.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class BuyNumber



    ##############################################################################
    #
    # CancelNumber
    #
    # Cancels the specified inbound number subscription.
    #
    ##############################################################################

    class CancelNumber < Choreography

      ####
      #  Create a new instance of the CancelNumber Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Nexmo/Account/CancelNumber")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CancelNumberInputSet
      ####
      def new_input_set()
        return CancelNumberInputSet.new()
      end

      def make_result_set()
        return CancelNumberResultSet.new()
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
        results = CancelNumberResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CancelNumber
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CancelNumberInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your API Key provided to you by Nexmo.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) Your API Secret provided to you by Nexmo.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the Country input for this Choreo. 
        # 
        # @param String - (required, string) 2-digit country code. (e.g.: CA)
        ###

        def set_Country(value)
          set_input("Country", value)
        end
        #### 
        # Set the value of the Number input for this Choreo. 
        # 
        # @param String - (required, string) Your inbound (MSISDN) number (e.g. 34911067000).
        ###

        def set_Number(value)
          set_input("Number", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CancelNumber Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CancelNumberResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Nexmo. For a successful request, an empty response body is returned.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Nexmo. A 200 is returned for a successful request.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class CancelNumber



    ##############################################################################
    #
    # GetBalance
    #
    # Retrieve your current account balance.
    #
    ##############################################################################

    class GetBalance < Choreography

      ####
      #  Create a new instance of the GetBalance Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Nexmo/Account/GetBalance")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetBalanceInputSet
      ####
      def new_input_set()
        return GetBalanceInputSet.new()
      end

      def make_result_set()
        return GetBalanceResultSet.new()
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
        results = GetBalanceResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetBalance
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetBalanceInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your API Key provided to you by Nexmo.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) Your API Secret provided to you by Nexmo.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetBalance Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetBalanceResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Nexmo. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetBalance



    ##############################################################################
    #
    # GetNumbers
    #
    # Get all inbound numbers associated with your Nexmo account.
    #
    ##############################################################################

    class GetNumbers < Choreography

      ####
      #  Create a new instance of the GetNumbers Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Nexmo/Account/GetNumbers")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetNumbersInputSet
      ####
      def new_input_set()
        return GetNumbersInputSet.new()
      end

      def make_result_set()
        return GetNumbersResultSet.new()
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
        results = GetNumbersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetNumbers
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetNumbersInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your API Key provided to you by Nexmo.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) Your API Secret provided to you by Nexmo.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the Index input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Page index.
        ###

        def set_Index(value)
          set_input("Index", value)
        end
        #### 
        # Set the value of the Pattern input for this Choreo. 
        # 
        # @param String - (optional, string) Pattern to match.
        ###

        def set_Pattern(value)
          set_input("Pattern", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Size input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Page size.
        ###

        def set_Size(value)
          set_input("Size", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetNumbers Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetNumbersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Nexmo. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetNumbers



    ##############################################################################
    #
    # GetPricingByCountry
    #
    # Retrieve Nexmo's outbound pricing for the specified country.
    #
    ##############################################################################

    class GetPricingByCountry < Choreography

      ####
      #  Create a new instance of the GetPricingByCountry Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Nexmo/Account/GetPricingByCountry")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetPricingByCountryInputSet
      ####
      def new_input_set()
        return GetPricingByCountryInputSet.new()
      end

      def make_result_set()
        return GetPricingByCountryResultSet.new()
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
        results = GetPricingByCountryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetPricingByCountry
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetPricingByCountryInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your API Key provided to you by Nexmo.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) Your API Secret provided to you by Nexmo.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the Country input for this Choreo. 
        # 
        # @param String - (required, string) A 2 letter country code.  (e.g. CA)
        ###

        def set_Country(value)
          set_input("Country", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetPricingByCountry Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetPricingByCountryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Nexmo. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetPricingByCountry



    ##############################################################################
    #
    # GetPricingByPrefix
    #
    # Retrieve Nexmo's outbound pricing for the specified international prefix.
    #
    ##############################################################################

    class GetPricingByPrefix < Choreography

      ####
      #  Create a new instance of the GetPricingByPrefix Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Nexmo/Account/GetPricingByPrefix")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetPricingByPrefixInputSet
      ####
      def new_input_set()
        return GetPricingByPrefixInputSet.new()
      end

      def make_result_set()
        return GetPricingByPrefixResultSet.new()
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
        results = GetPricingByPrefixResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetPricingByPrefix
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetPricingByPrefixInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your API Key provided to you by Nexmo.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) Your API Secret provided to you by Nexmo.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the Prefix input for this Choreo. 
        # 
        # @param Integer - (required, integer) International dialing code. (e.g. 44)
        ###

        def set_Prefix(value)
          set_input("Prefix", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetPricingByPrefix Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetPricingByPrefixResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Nexmo. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetPricingByPrefix



    ##############################################################################
    #
    # TopUp
    #
    # Allows you to top-up your account provided that you've set up "auto-reload" in your Account Settings.
    #
    ##############################################################################

    class TopUp < Choreography

      ####
      #  Create a new instance of the TopUp Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Nexmo/Account/TopUp")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return TopUpInputSet
      ####
      def new_input_set()
        return TopUpInputSet.new()
      end

      def make_result_set()
        return TopUpResultSet.new()
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
        results = TopUpResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the TopUp
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class TopUpInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your API Key provided to you by Nexmo.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) Your API Secret provided to you by Nexmo.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the TransactionID input for this Choreo. 
        # 
        # @param String - (required, string) The transaction id associated with your **first** 'auto reload' top-up.
        ###

        def set_TransactionID(value)
          set_input("TransactionID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the TopUp Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class TopUpResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Nexmo. For a successful request, an empty response body is returned.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Nexmo. A 200 is returned for a successful request.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class TopUp



    ##############################################################################
    #
    # UpdateAccountSettings
    #
    # Update your account settings.
    #
    ##############################################################################

    class UpdateAccountSettings < Choreography

      ####
      #  Create a new instance of the UpdateAccountSettings Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Nexmo/Account/UpdateAccountSettings")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateAccountSettingsInputSet
      ####
      def new_input_set()
        return UpdateAccountSettingsInputSet.new()
      end

      def make_result_set()
        return UpdateAccountSettingsResultSet.new()
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
        results = UpdateAccountSettingsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateAccountSettings
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateAccountSettingsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your API Key provided to you by Nexmo.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) Your API Secret provided to you by Nexmo.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the DeliveryReceiptCallbackURL input for this Choreo. 
        # 
        # @param String - (conditional, string) Your new Delivery Receipt Callback URL.
        ###

        def set_DeliveryReceiptCallbackURL(value)
          set_input("DeliveryReceiptCallbackURL", value)
        end
        #### 
        # Set the value of the InboundCallbackURL input for this Choreo. 
        # 
        # @param String - (conditional, string) Your new Inbound Callback URL.
        ###

        def set_InboundCallbackURL(value)
          set_input("InboundCallbackURL", value)
        end
        #### 
        # Set the value of the NewSecret input for this Choreo. 
        # 
        # @param String - (optional, string) Your new API secret. (8 characters max)
        ###

        def set_NewSecret(value)
          set_input("NewSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateAccountSettings Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateAccountSettingsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Nexmo. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Nexmo.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class UpdateAccountSettings



    ##############################################################################
    #
    # UpdateNumber
    #
    # Updates the callback details for the specified number.
    #
    ##############################################################################

    class UpdateNumber < Choreography

      ####
      #  Create a new instance of the UpdateNumber Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Nexmo/Account/UpdateNumber")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateNumberInputSet
      ####
      def new_input_set()
        return UpdateNumberInputSet.new()
      end

      def make_result_set()
        return UpdateNumberResultSet.new()
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
        results = UpdateNumberResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateNumber
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateNumberInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your API Key provided to you by Nexmo.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) Your API Secret provided to you by Nexmo.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the CallbackURL input for this Choreo. 
        # 
        # @param String - (optional, string) Mobile originated Callback URL.
        ###

        def set_CallbackURL(value)
          set_input("CallbackURL", value)
        end
        #### 
        # Set the value of the Country input for this Choreo. 
        # 
        # @param String - (required, string) 2-digit country code. (e.g. CA)
        ###

        def set_Country(value)
          set_input("Country", value)
        end
        #### 
        # Set the value of the Number input for this Choreo. 
        # 
        # @param String - (required, string) Your inbound (MSISDN) number (e.g. 34911067000).
        ###

        def set_Number(value)
          set_input("Number", value)
        end
        #### 
        # Set the value of the SMPPSystemType input for this Choreo. 
        # 
        # @param String - (optional, string) The Mobile Orignated associated system type for SMPP client only. (e.g.: inbound)
        ###

        def set_SMPPSystemType(value)
          set_input("SMPPSystemType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateNumber Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateNumberResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Nexmo. For a successful request, an empty response body is returned.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Nexmo. A 200 is returned for a successful request.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class UpdateNumber




  end # module Account

  module SMS



    ##############################################################################
    #
    # SendMessage
    #
    # Send a text message to any global number.
    #
    ##############################################################################

    class SendMessage < Choreography

      ####
      #  Create a new instance of the SendMessage Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Nexmo/SMS/SendMessage")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SendMessageInputSet
      ####
      def new_input_set()
        return SendMessageInputSet.new()
      end

      def make_result_set()
        return SendMessageResultSet.new()
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
        results = SendMessageResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SendMessage
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SendMessageInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your API Key provided to you by Nexmo.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) Your API Secret provided to you by Nexmo.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the Body input for this Choreo. 
        # 
        # @param String - (optional, string) Hex encoded binary data. (e.g. 0011223344556677).  Required when Type is binary.
        ###

        def set_Body(value)
          set_input("Body", value)
        end
        #### 
        # Set the value of the CallbackID input for this Choreo. 
        # 
        # @param String - (conditional, string) A unique identifier that is part of your Temboo callback URL registered at Nexmo. Required in order to listen for a reply. See Choreo description for details.
        ###

        def set_CallbackID(value)
          set_input("CallbackID", value)
        end
        #### 
        # Set the value of the ClientReference input for this Choreo. 
        # 
        # @param String - (optional, string) Include a note for your reference. (40 characters max).
        ###

        def set_ClientReference(value)
          set_input("ClientReference", value)
        end
        #### 
        # Set the value of the DeliveryReceipt input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set to 1 to receive a Delivery Receipt for this message. Make sure to configure your "Callback URL" in your "API Settings".
        ###

        def set_DeliveryReceipt(value)
          set_input("DeliveryReceipt", value)
        end
        #### 
        # Set the value of the From input for this Choreo. 
        # 
        # @param String - (required, string) Sender address may be alphanumeric (e.g. MyCompany20). Restrictions may apply, depending on the destination.
        ###

        def set_From(value)
          set_input("From", value)
        end
        #### 
        # Set the value of the MessageClass input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set to 0 for Flash SMS.
        ###

        def set_MessageClass(value)
          set_input("MessageClass", value)
        end
        #### 
        # Set the value of the NetworkCode input for this Choreo. 
        # 
        # @param String - (optional, string) Sends this message to the specifed network operator (MCCMNC).
        ###

        def set_NetworkCode(value)
          set_input("NetworkCode", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the TTL input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Message life span (Time to  live) in milliseconds.
        ###

        def set_TTL(value)
          set_input("TTL", value)
        end
        #### 
        # Set the value of the Text input for this Choreo. 
        # 
        # @param String - (conditional, string) Required when Type is "text".  Body of the text message (with a maximum length of 3200 characters).
        ###

        def set_Text(value)
          set_input("Text", value)
        end
        #### 
        # Set the value of the Timeout input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The amount of time (in minutes) to wait for a reply when a CallbackID is provided. Defaults to 10. See Choreo description for details.
        ###

        def set_Timeout(value)
          set_input("Timeout", value)
        end
        #### 
        # Set the value of the To input for this Choreo. 
        # 
        # @param String - (required, string) Mobile number in international format, and one recipient per request. (e.g. 447525856424 or 00447525856424 when sending to UK).
        ###

        def set_To(value)
          set_input("To", value)
        end
        #### 
        # Set the value of the Type input for this Choreo. 
        # 
        # @param String - (optional, string) This can be omitted for text (default), but is required when sending a Binary (binary), WAP Push (wappush), Unicode message (unicode), VCal (vcal) or VCard (vcard).
        ###

        def set_Type(value)
          set_input("Type", value)
        end
        #### 
        # Set the value of the UDH input for this Choreo. 
        # 
        # @param String - (optional, string) Hex encoded User data header. (e.g. 06050415811581) (Required when Type is binary).
        ###

        def set_UDH(value)
          set_input("UDH", value)
        end
        #### 
        # Set the value of the VCal input for this Choreo. 
        # 
        # @param String - (optional, string) Correctly formatted VCal text body.
        ###

        def set_VCal(value)
          set_input("VCal", value)
        end
        #### 
        # Set the value of the VCard input for this Choreo. 
        # 
        # @param String - (optional, string) Correctly formatted VCard text body.
        ###

        def set_VCard(value)
          set_input("VCard", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SendMessage Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SendMessageResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Nexmo. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "CallbackData" output from this Choreo execution
      	#
      	# @return String - The Nexmo callback data retrieved after a user has replied to the SMS message. This is only returned if you've setup your Temboo callback URL at Nexmo, and  have provided the CallbackID input.
      	####
      	def get_CallbackData()
      	  return @outputs["CallbackData"]
      	end
      end

    end # class SendMessage




    module Util



      ##############################################################################
      #
      # ClearExistingCallbackData
      #
      # 
      #
      ##############################################################################

      class ClearExistingCallbackData < Choreography

        ####
        #  Create a new instance of the ClearExistingCallbackData Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/Nexmo/SMS/Util/ClearExistingCallbackData")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ClearExistingCallbackDataInputSet
        ####
        def new_input_set()
          return ClearExistingCallbackDataInputSet.new()
        end

        def make_result_set()
          return ClearExistingCallbackDataResultSet.new()
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
          results = ClearExistingCallbackDataResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ClearExistingCallbackData
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ClearExistingCallbackDataInputSet < Choreography::InputSet

          #### 
          # Set the value of the CallbackID input for this Choreo. 
          # 
          # @param String - (conditional, any) 
          ###

          def set_CallbackID(value)
            set_input("CallbackID", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ClearExistingCallbackData Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ClearExistingCallbackDataResultSet < Choreography::ResultSet
        end

      end # class ClearExistingCallbackData




    end # module Util

  end # module SMS

  module Search



    ##############################################################################
    #
    # SearchMessage
    #
    # Search for a previously sent message by Message ID.  Note that a sent message won't be immediately available for search.
    #
    ##############################################################################

    class SearchMessage < Choreography

      ####
      #  Create a new instance of the SearchMessage Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Nexmo/Search/SearchMessage")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchMessageInputSet
      ####
      def new_input_set()
        return SearchMessageInputSet.new()
      end

      def make_result_set()
        return SearchMessageResultSet.new()
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
        results = SearchMessageResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchMessage
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchMessageInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your API Key provided to you by Nexmo.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) Your API Secret provided to you by Nexmo.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the MessageID input for this Choreo. 
        # 
        # @param String - (required, string) Your Message ID.
        ###

        def set_MessageID(value)
          set_input("MessageID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchMessage Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchMessageResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Nexmo. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchMessage



    ##############################################################################
    #
    # SearchMessages
    #
    # Search for previously sent messages by Message IDs.  Note that  sent messages won't be immediately available for search.
    #
    ##############################################################################

    class SearchMessages < Choreography

      ####
      #  Create a new instance of the SearchMessages Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Nexmo/Search/SearchMessages")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchMessagesInputSet
      ####
      def new_input_set()
        return SearchMessagesInputSet.new()
      end

      def make_result_set()
        return SearchMessagesResultSet.new()
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
        results = SearchMessagesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchMessages
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchMessagesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your API Key provided to you by Nexmo.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) Your API Secret provided to you by Nexmo.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the MessageIDs input for this Choreo. 
        # 
        # @param String - (required, string) Comma-separated list of up to 10 MessageIDs
        ###

        def set_MessageIDs(value)
          set_input("MessageIDs", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchMessages Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchMessagesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Nexmo. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchMessages



    ##############################################################################
    #
    # SearchMessagesByRecipientAndDate
    #
    # Searches sent messages by Date and Recipient. Note that a sent message won't be immediately available for searching.
    #
    ##############################################################################

    class SearchMessagesByRecipientAndDate < Choreography

      ####
      #  Create a new instance of the SearchMessagesByRecipientAndDate Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Nexmo/Search/SearchMessagesByRecipientAndDate")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchMessagesByRecipientAndDateInputSet
      ####
      def new_input_set()
        return SearchMessagesByRecipientAndDateInputSet.new()
      end

      def make_result_set()
        return SearchMessagesByRecipientAndDateResultSet.new()
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
        results = SearchMessagesByRecipientAndDateResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchMessagesByRecipientAndDate
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchMessagesByRecipientAndDateInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your API Key provided to you by Nexmo.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) Your API Secret provided to you by Nexmo.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, string) Date message was sent in the form of YYYY-MM-DD (UTC). (e.g. 2013-07-01)
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the To input for this Choreo. 
        # 
        # @param String - (required, string) The recipient's phone number.  (e.g. 123456780)
        ###

        def set_To(value)
          set_input("To", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchMessagesByRecipientAndDate Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchMessagesByRecipientAndDateResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Nexmo. Corresponds to the ResponseFormat input. Defaults to json.  Note that if no matches are found for the specified Date and To, the Response will contain an error-code "-2".
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchMessagesByRecipientAndDate



    ##############################################################################
    #
    # SearchNumbers
    #
    # Get available inbound numbers for a given country.
    #
    ##############################################################################

    class SearchNumbers < Choreography

      ####
      #  Create a new instance of the SearchNumbers Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Nexmo/Search/SearchNumbers")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchNumbersInputSet
      ####
      def new_input_set()
        return SearchNumbersInputSet.new()
      end

      def make_result_set()
        return SearchNumbersResultSet.new()
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
        results = SearchNumbersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchNumbers
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchNumbersInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your API Key provided to you by Nexmo.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) Your API Secret provided to you by Nexmo.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the Country input for this Choreo. 
        # 
        # @param String - (required, string) 2-digit country code. (e.g. CA)
        ###

        def set_Country(value)
          set_input("Country", value)
        end
        #### 
        # Set the value of the Index input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Page index
        ###

        def set_Index(value)
          set_input("Index", value)
        end
        #### 
        # Set the value of the Pattern input for this Choreo. 
        # 
        # @param String - (optional, string) Pattern to match.
        ###

        def set_Pattern(value)
          set_input("Pattern", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Size input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Page size.
        ###

        def set_Size(value)
          set_input("Size", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchNumbers Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchNumbersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Nexmo. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchNumbers



    ##############################################################################
    #
    # SearchRejectedMessages
    #
    # Search for a previously sent message by Message ID.  Note that a sent message won't be immediately available for search.
    #
    ##############################################################################

    class SearchRejectedMessages < Choreography

      ####
      #  Create a new instance of the SearchRejectedMessages Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Nexmo/Search/SearchRejectedMessages")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchRejectedMessagesInputSet
      ####
      def new_input_set()
        return SearchRejectedMessagesInputSet.new()
      end

      def make_result_set()
        return SearchRejectedMessagesResultSet.new()
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
        results = SearchRejectedMessagesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchRejectedMessages
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchRejectedMessagesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your API Key provided to you by Nexmo.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) Your API Secret provided to you by Nexmo.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, string) Date message was sent in the form of YYYY-MM-DD. (e.g. 2013-07-01)
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the MessageID input for this Choreo. 
        # 
        # @param String - (required, string) Your Message ID.
        ###

        def set_MessageID(value)
          set_input("MessageID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the To input for this Choreo. 
        # 
        # @param String - (required, string) The recipient's phone number.  (e.g. 123456780)
        ###

        def set_To(value)
          set_input("To", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchRejectedMessages Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchRejectedMessagesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Nexmo. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchRejectedMessages




  end # module Search

  module USSD



    ##############################################################################
    #
    # Prompt
    #
    # Sends a text message to the specified number using USSD protocol.  You can then listen to inbound messages.
    #
    ##############################################################################

    class Prompt < Choreography

      ####
      #  Create a new instance of the Prompt Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Nexmo/USSD/Prompt")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PromptInputSet
      ####
      def new_input_set()
        return PromptInputSet.new()
      end

      def make_result_set()
        return PromptResultSet.new()
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
        results = PromptResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Prompt
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PromptInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your API Key provided to you by Nexmo.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) Your API Secret provided to you by Nexmo.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the ClientReference input for this Choreo. 
        # 
        # @param String - (optional, string) Include a note for your reference. (40 characters max).
        ###

        def set_ClientReference(value)
          set_input("ClientReference", value)
        end
        #### 
        # Set the value of the DeliveryReceipt input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set to 1 to receive a Delivery Receipt for this message. Make sure to configure your "Callback URL" in your "API Settings".
        ###

        def set_DeliveryReceipt(value)
          set_input("DeliveryReceipt", value)
        end
        #### 
        # Set the value of the From input for this Choreo. 
        # 
        # @param String - (required, string) Sender address could be alphanumeric (e.g. MyCompany20). Restrictions may apply depending on the destination.
        ###

        def set_From(value)
          set_input("From", value)
        end
        #### 
        # Set the value of the NetworkCode input for this Choreo. 
        # 
        # @param String - (optional, string) Sends this message to the specifed network operator (MCCMNC).
        ###

        def set_NetworkCode(value)
          set_input("NetworkCode", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Text input for this Choreo. 
        # 
        # @param String - (conditional, string) Required when Type is "text".  Body of the text message (with a maximum length of 3200 characters)
        ###

        def set_Text(value)
          set_input("Text", value)
        end
        #### 
        # Set the value of the To input for this Choreo. 
        # 
        # @param String - (required, string) Mobile number in international format, and one recipient per request. (e.g. 447525856424 or 00447525856424 when sending to UK)
        ###

        def set_To(value)
          set_input("To", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Prompt Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PromptResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Nexmo. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Prompt



    ##############################################################################
    #
    # Push
    #
    # Sends a text message to the specified number using USSD protocol. 
    #
    ##############################################################################

    class Push < Choreography

      ####
      #  Create a new instance of the Push Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Nexmo/USSD/Push")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PushInputSet
      ####
      def new_input_set()
        return PushInputSet.new()
      end

      def make_result_set()
        return PushResultSet.new()
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
        results = PushResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Push
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PushInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your API Key provided to you by Nexmo.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) Your API Secret provided to you by Nexmo.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the ClientReference input for this Choreo. 
        # 
        # @param String - (optional, string) Include a note for your reference. (40 characters max).
        ###

        def set_ClientReference(value)
          set_input("ClientReference", value)
        end
        #### 
        # Set the value of the DeliveryReceipt input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set to 1 to receive a Delivery Receipt for this message. Make sure to configure your "Callback URL" in your "API Settings".
        ###

        def set_DeliveryReceipt(value)
          set_input("DeliveryReceipt", value)
        end
        #### 
        # Set the value of the From input for this Choreo. 
        # 
        # @param String - (required, string) Sender address could be alphanumeric (e.g. MyCompany20). Restrictions may apply depending on the destination.
        ###

        def set_From(value)
          set_input("From", value)
        end
        #### 
        # Set the value of the NetworkCode input for this Choreo. 
        # 
        # @param String - (optional, string) Sends this message to the specifed network operator (MCCMNC).
        ###

        def set_NetworkCode(value)
          set_input("NetworkCode", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Text input for this Choreo. 
        # 
        # @param String - (conditional, string) Required when Type is "text".  Body of the text message. (with a maximum length of 3200 characters).
        ###

        def set_Text(value)
          set_input("Text", value)
        end
        #### 
        # Set the value of the To input for this Choreo. 
        # 
        # @param String - (required, string) Mobile number in international format, and one recipient per request. (e.g. 447525856424 or 00447525856424 when sending to UK.)
        ###

        def set_To(value)
          set_input("To", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Push Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PushResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Nexmo. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Push




  end # module USSD

  module Voice



    ##############################################################################
    #
    # CaptureTextToSpeechPrompt
    #
    # Sends a Text-to-Speech message to the specifed Number and captures keypad entries from the receiver.
    #
    ##############################################################################

    class CaptureTextToSpeechPrompt < Choreography

      ####
      #  Create a new instance of the CaptureTextToSpeechPrompt Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Nexmo/Voice/CaptureTextToSpeechPrompt")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CaptureTextToSpeechPromptInputSet
      ####
      def new_input_set()
        return CaptureTextToSpeechPromptInputSet.new()
      end

      def make_result_set()
        return CaptureTextToSpeechPromptResultSet.new()
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
        results = CaptureTextToSpeechPromptResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CaptureTextToSpeechPrompt
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CaptureTextToSpeechPromptInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your API Key provided to you by Nexmo.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) Your API Secret provided to you by Nexmo.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the ByeText input for this Choreo. 
        # 
        # @param String - (required, string) Body of the text message played after digits are entered.  (with a maximum length of 500 characters).
        ###

        def set_ByeText(value)
          set_input("ByeText", value)
        end
        #### 
        # Set the value of the CallbackURL input for this Choreo. 
        # 
        # @param String - (conditional, string) A CallbackURL that Nexmo will request when the call ends to notify your application.  If left empty, the Choreo will handle the callback for you and return the results in CallbackData.
        ###

        def set_CallbackURL(value)
          set_input("CallbackURL", value)
        end
        #### 
        # Set the value of the DropIfMachine input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set to 1 to drop the call if a machine is detected.
        ###

        def set_DropIfMachine(value)
          set_input("DropIfMachine", value)
        end
        #### 
        # Set the value of the Language input for this Choreo. 
        # 
        # @param String - (optional, string) The language used to play back your message.  The default is "en-us" which corresponds to United States english.
        ###

        def set_Language(value)
          set_input("Language", value)
        end
        #### 
        # Set the value of the MaxDigits input for this Choreo. 
        # 
        # @param Integer - (required, integer) Number of digits entered by the end user.  (Valid values are 1-9).
        ###

        def set_MaxDigits(value)
          set_input("MaxDigits", value)
        end
        #### 
        # Set the value of the Repeat input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Define how many times you want to repeat the text message (default is 1 , maximum is 10).
        ###

        def set_Repeat(value)
          set_input("Repeat", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Text input for this Choreo. 
        # 
        # @param String - (conditional, string) Body of the text message. (with a maximum length of 1000 characters).
        ###

        def set_Text(value)
          set_input("Text", value)
        end
        #### 
        # Set the value of the To input for this Choreo. 
        # 
        # @param String - (required, string) Phone number in international format and one recipient per request. (e.g. 447525856424 when sending to UK)
        ###

        def set_To(value)
          set_input("To", value)
        end
        #### 
        # Set the value of the Voice input for this Choreo. 
        # 
        # @param String - (optional, string) The voice to be used female (default) or male
        ###

        def set_Voice(value)
          set_input("Voice", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CaptureTextToSpeechPrompt Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CaptureTextToSpeechPromptResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Nexmo. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "CallbackData" output from this Choreo execution
      	#
      	# @return String - The Nexmo callback data retrieved after a user has entered a pin code. Note that this will only be returned when the CallbackURL input  is not provided.
      	####
      	def get_CallbackData()
      	  return @outputs["CallbackData"]
      	end
      end

    end # class CaptureTextToSpeechPrompt



    ##############################################################################
    #
    # ConfirmTextToSpeechPrompt
    #
    # Sends a Text-to-Speech message to the specifed Number and confirms the specifed pin-code.
    #
    ##############################################################################

    class ConfirmTextToSpeechPrompt < Choreography

      ####
      #  Create a new instance of the ConfirmTextToSpeechPrompt Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Nexmo/Voice/ConfirmTextToSpeechPrompt")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ConfirmTextToSpeechPromptInputSet
      ####
      def new_input_set()
        return ConfirmTextToSpeechPromptInputSet.new()
      end

      def make_result_set()
        return ConfirmTextToSpeechPromptResultSet.new()
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
        results = ConfirmTextToSpeechPromptResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ConfirmTextToSpeechPrompt
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ConfirmTextToSpeechPromptInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your API Key provided to you by Nexmo.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) Your API Secret provided to you by Nexmo.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the ByeText input for this Choreo. 
        # 
        # @param String - (required, string) Body of the text message played after digits are entered. (with a maximum length of 500 characters),
        ###

        def set_ByeText(value)
          set_input("ByeText", value)
        end
        #### 
        # Set the value of the CallbackURL input for this Choreo. 
        # 
        # @param String - (required, string) A URL that Nexmo will request when the call ends to notify your application.
        ###

        def set_CallbackURL(value)
          set_input("CallbackURL", value)
        end
        #### 
        # Set the value of the DropIfMachine input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set to 1 to drop the call if a machine is detected.
        ###

        def set_DropIfMachine(value)
          set_input("DropIfMachine", value)
        end
        #### 
        # Set the value of the FailedText input for this Choreo. 
        # 
        # @param String - (required, string) Body of the text message played after 3 failed attempts. (with a maximum length of 500 characters),
        ###

        def set_FailedText(value)
          set_input("FailedText", value)
        end
        #### 
        # Set the value of the Language input for this Choreo. 
        # 
        # @param String - (optional, string) The language used to play back your message.  The default is "en-us" which corresponds to United States english.
        ###

        def set_Language(value)
          set_input("Language", value)
        end
        #### 
        # Set the value of the MaxDigits input for this Choreo. 
        # 
        # @param Integer - (required, integer) Number of digits entered by the end user.
        ###

        def set_MaxDigits(value)
          set_input("MaxDigits", value)
        end
        #### 
        # Set the value of the PinCode input for this Choreo. 
        # 
        # @param String - (required, string) Pin-code to be entered by end user (Pin-code length should be equals to MaxDigits).
        ###

        def set_PinCode(value)
          set_input("PinCode", value)
        end
        #### 
        # Set the value of the Repeat input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Define how many times you want to repeat the text message (default is 1 , maximum is 10).
        ###

        def set_Repeat(value)
          set_input("Repeat", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Text input for this Choreo. 
        # 
        # @param String - (conditional, string) Body of the text message (with a maximum length of 1000 characters).
        ###

        def set_Text(value)
          set_input("Text", value)
        end
        #### 
        # Set the value of the To input for this Choreo. 
        # 
        # @param String - (required, string) Phone number in international format and one recipient per request. (e.g. 447525856424 when sending to UK)
        ###

        def set_To(value)
          set_input("To", value)
        end
        #### 
        # Set the value of the Voice input for this Choreo. 
        # 
        # @param String - (optional, string) The voice to be used female (default) or male.
        ###

        def set_Voice(value)
          set_input("Voice", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ConfirmTextToSpeechPrompt Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ConfirmTextToSpeechPromptResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Nexmo. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ConfirmTextToSpeechPrompt



    ##############################################################################
    #
    # TextToSpeech
    #
    # Sends a Text-to-Speech message to the specified number.
    #
    ##############################################################################

    class TextToSpeech < Choreography

      ####
      #  Create a new instance of the TextToSpeech Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Nexmo/Voice/TextToSpeech")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return TextToSpeechInputSet
      ####
      def new_input_set()
        return TextToSpeechInputSet.new()
      end

      def make_result_set()
        return TextToSpeechResultSet.new()
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
        results = TextToSpeechResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the TextToSpeech
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class TextToSpeechInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your API Key provided to you by Nexmo.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) Your API Secret provided to you by Nexmo.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the CallbackMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method for your callback. Must be GET (default) or POST.
        ###

        def set_CallbackMethod(value)
          set_input("CallbackMethod", value)
        end
        #### 
        # Set the value of the CallbackURL input for this Choreo. 
        # 
        # @param String - (optional, string) A URL that Nexmo will request when the call ends to notify your application.
        ###

        def set_CallbackURL(value)
          set_input("CallbackURL", value)
        end
        #### 
        # Set the value of the DropIfMachine input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set to 1 to drop the call if a machine is detected.
        ###

        def set_DropIfMachine(value)
          set_input("DropIfMachine", value)
        end
        #### 
        # Set the value of the Language input for this Choreo. 
        # 
        # @param String - (optional, string) The language used to play back your message.  The default is "en-us" which corresponds to United States english.
        ###

        def set_Language(value)
          set_input("Language", value)
        end
        #### 
        # Set the value of the Repeat input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Define how many times you want to repeat the text message (default is 1 , maximum is 10).
        ###

        def set_Repeat(value)
          set_input("Repeat", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are "json" (the default) and "xml".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Text input for this Choreo. 
        # 
        # @param String - (conditional, string) Body of the text message (with a maximum length of 1000 characters).
        ###

        def set_Text(value)
          set_input("Text", value)
        end
        #### 
        # Set the value of the To input for this Choreo. 
        # 
        # @param String - (required, string) Phone number in international format and one recipient per request. (e.g.: 447525856424 when sending to UK)
        ###

        def set_To(value)
          set_input("To", value)
        end
        #### 
        # Set the value of the Voice input for this Choreo. 
        # 
        # @param String - (optional, string) The voice to be used female (default) or male
        ###

        def set_Voice(value)
          set_input("Voice", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the TextToSpeech Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class TextToSpeechResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Nexmo. Corresponds to the ResponseFormat input. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class TextToSpeech




  end # module Voice

end # module Nexmo