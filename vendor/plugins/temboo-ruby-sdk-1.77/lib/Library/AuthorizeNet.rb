require "temboo"

module AuthorizeNet




  module AutomatedRecurringBilling



    ##############################################################################
    #
    # CancelSubscription
    #
    # Cancels an existing subscription.
    #
    ##############################################################################

    class CancelSubscription < Choreography

      ####
      #  Create a new instance of the CancelSubscription Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/AuthorizeNet/AutomatedRecurringBilling/CancelSubscription")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CancelSubscriptionInputSet
      ####
      def new_input_set()
        return CancelSubscriptionInputSet.new()
      end

      def make_result_set()
        return CancelSubscriptionResultSet.new()
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
        results = CancelSubscriptionResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CancelSubscription
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CancelSubscriptionInputSet < Choreography::InputSet

        #### 
        # Set the value of the APILoginId input for this Choreo. 
        # 
        # @param String - (required, string) The API Login Id provided by Authorize.net when signing up for a developer account.
        ###

        def set_APILoginId(value)
          set_input("APILoginId", value)
        end
        #### 
        # Set the value of the Endpoint input for this Choreo. 
        # 
        # @param String - (optional, string) Set to api.authorize.net when running in production. Defaults to apitest.authorize.net for sandbox testing.
        ###

        def set_Endpoint(value)
          set_input("Endpoint", value)
        end
        #### 
        # Set the value of the RefId input for this Choreo. 
        # 
        # @param String - (optional, string) The merchant assigned reference id for the subscription.
        ###

        def set_RefId(value)
          set_input("RefId", value)
        end
        #### 
        # Set the value of the SubscriptionId input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the subscription that you want to cancel.
        ###

        def set_SubscriptionId(value)
          set_input("SubscriptionId", value)
        end
        #### 
        # Set the value of the TransactionKey input for this Choreo. 
        # 
        # @param String - (required, string) The TransactionKey provided by Authorize.net when signing up for a developer account.
        ###

        def set_TransactionKey(value)
          set_input("TransactionKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CancelSubscription Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CancelSubscriptionResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Authorize.net.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CancelSubscription



    ##############################################################################
    #
    # GetSubscriptionStatus
    #
    # Returns status information for a specified subscription.
    #
    ##############################################################################

    class GetSubscriptionStatus < Choreography

      ####
      #  Create a new instance of the GetSubscriptionStatus Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/AuthorizeNet/AutomatedRecurringBilling/GetSubscriptionStatus")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetSubscriptionStatusInputSet
      ####
      def new_input_set()
        return GetSubscriptionStatusInputSet.new()
      end

      def make_result_set()
        return GetSubscriptionStatusResultSet.new()
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
        results = GetSubscriptionStatusResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetSubscriptionStatus
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetSubscriptionStatusInputSet < Choreography::InputSet

        #### 
        # Set the value of the APILoginId input for this Choreo. 
        # 
        # @param String - (required, string) The API Login Id provided by Authorize.net when signing up for a developer account.
        ###

        def set_APILoginId(value)
          set_input("APILoginId", value)
        end
        #### 
        # Set the value of the Endpoint input for this Choreo. 
        # 
        # @param String - (optional, string) Set to api.authorize.net when running in production. Defaults to apitest.authorize.net for sandbox testing.
        ###

        def set_Endpoint(value)
          set_input("Endpoint", value)
        end
        #### 
        # Set the value of the RefId input for this Choreo. 
        # 
        # @param String - (optional, string) The merchant assigned reference id for the subscription.
        ###

        def set_RefId(value)
          set_input("RefId", value)
        end
        #### 
        # Set the value of the SubscriptionId input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the subscription that you want to retrieve the status for.
        ###

        def set_SubscriptionId(value)
          set_input("SubscriptionId", value)
        end
        #### 
        # Set the value of the TransactionKey input for this Choreo. 
        # 
        # @param String - (required, string) The TransactionKey provided by Authorize.net when signing up for a developer account.
        ###

        def set_TransactionKey(value)
          set_input("TransactionKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetSubscriptionStatus Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetSubscriptionStatusResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Authorize.net.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetSubscriptionStatus




  end # module AutomatedRecurringBilling

  module CustomerInformationManager



    ##############################################################################
    #
    # GetCustomerPaymentProfile
    #
    # Retrieves a payment profile associated with an existing customer profile.
    #
    ##############################################################################

    class GetCustomerPaymentProfile < Choreography

      ####
      #  Create a new instance of the GetCustomerPaymentProfile Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/AuthorizeNet/CustomerInformationManager/GetCustomerPaymentProfile")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCustomerPaymentProfileInputSet
      ####
      def new_input_set()
        return GetCustomerPaymentProfileInputSet.new()
      end

      def make_result_set()
        return GetCustomerPaymentProfileResultSet.new()
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
        results = GetCustomerPaymentProfileResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCustomerPaymentProfile
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCustomerPaymentProfileInputSet < Choreography::InputSet

        #### 
        # Set the value of the APILoginId input for this Choreo. 
        # 
        # @param String - (required, string) The API Login Id provided by Authorize.net when signing up for a developer account.
        ###

        def set_APILoginId(value)
          set_input("APILoginId", value)
        end
        #### 
        # Set the value of the CustomerPaymentProfileId input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id for the payment profile you want to retrieve.
        ###

        def set_CustomerPaymentProfileId(value)
          set_input("CustomerPaymentProfileId", value)
        end
        #### 
        # Set the value of the CustomerProfileId input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the customer who's payment profile you want to return.
        ###

        def set_CustomerProfileId(value)
          set_input("CustomerProfileId", value)
        end
        #### 
        # Set the value of the Endpoint input for this Choreo. 
        # 
        # @param String - (optional, string) Set to api.authorize.net when running in production. Defaults to apitest.authorize.net for sandbox testing.
        ###

        def set_Endpoint(value)
          set_input("Endpoint", value)
        end
        #### 
        # Set the value of the TransactionKey input for this Choreo. 
        # 
        # @param String - (required, string) The TransactionKey provided by Authorize.net when signing up for a developer account.
        ###

        def set_TransactionKey(value)
          set_input("TransactionKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCustomerPaymentProfile Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCustomerPaymentProfileResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Authorize.net.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCustomerPaymentProfile



    ##############################################################################
    #
    # GetCustomerProfile
    #
    # Retrieves an existing customer profile by id with relevant payment profiles and shipping addresses.
    #
    ##############################################################################

    class GetCustomerProfile < Choreography

      ####
      #  Create a new instance of the GetCustomerProfile Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/AuthorizeNet/CustomerInformationManager/GetCustomerProfile")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCustomerProfileInputSet
      ####
      def new_input_set()
        return GetCustomerProfileInputSet.new()
      end

      def make_result_set()
        return GetCustomerProfileResultSet.new()
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
        results = GetCustomerProfileResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCustomerProfile
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCustomerProfileInputSet < Choreography::InputSet

        #### 
        # Set the value of the APILoginId input for this Choreo. 
        # 
        # @param String - (required, string) The API Login Id provided by Authorize.net when signing up for a developer account.
        ###

        def set_APILoginId(value)
          set_input("APILoginId", value)
        end
        #### 
        # Set the value of the CustomerProfileId input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the customer who's profile you want to return.
        ###

        def set_CustomerProfileId(value)
          set_input("CustomerProfileId", value)
        end
        #### 
        # Set the value of the Endpoint input for this Choreo. 
        # 
        # @param String - (optional, string) Set to api.authorize.net when running in production. Defaults to apitest.authorize.net for sandbox testing.
        ###

        def set_Endpoint(value)
          set_input("Endpoint", value)
        end
        #### 
        # Set the value of the TransactionKey input for this Choreo. 
        # 
        # @param String - (required, string) The TransactionKey provided by Authorize.net when signing up for a developer account.
        ###

        def set_TransactionKey(value)
          set_input("TransactionKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCustomerProfile Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCustomerProfileResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Authorize.net.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCustomerProfile



    ##############################################################################
    #
    # GetCustomerProfileIds
    #
    # Retrieves all existing customer profile IDs.
    #
    ##############################################################################

    class GetCustomerProfileIds < Choreography

      ####
      #  Create a new instance of the GetCustomerProfileIds Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/AuthorizeNet/CustomerInformationManager/GetCustomerProfileIds")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCustomerProfileIdsInputSet
      ####
      def new_input_set()
        return GetCustomerProfileIdsInputSet.new()
      end

      def make_result_set()
        return GetCustomerProfileIdsResultSet.new()
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
        results = GetCustomerProfileIdsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCustomerProfileIds
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCustomerProfileIdsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APILoginId input for this Choreo. 
        # 
        # @param String - (required, string) The API Login Id provided by Authorize.net when signing up for a developer account.
        ###

        def set_APILoginId(value)
          set_input("APILoginId", value)
        end
        #### 
        # Set the value of the Endpoint input for this Choreo. 
        # 
        # @param String - (optional, string) Set to api.authorize.net when running in production. Defaults to apitest.authorize.net for sandbox testing.
        ###

        def set_Endpoint(value)
          set_input("Endpoint", value)
        end
        #### 
        # Set the value of the TransactionKey input for this Choreo. 
        # 
        # @param String - (required, string) The TransactionKey provided by Authorize.net when signing up for a developer account.
        ###

        def set_TransactionKey(value)
          set_input("TransactionKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCustomerProfileIds Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCustomerProfileIdsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Authorize.net.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCustomerProfileIds



    ##############################################################################
    #
    # GetCustomerShippingAddress
    #
    # Retrieves a customer shipping address for an existing customer profile.
    #
    ##############################################################################

    class GetCustomerShippingAddress < Choreography

      ####
      #  Create a new instance of the GetCustomerShippingAddress Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/AuthorizeNet/CustomerInformationManager/GetCustomerShippingAddress")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCustomerShippingAddressInputSet
      ####
      def new_input_set()
        return GetCustomerShippingAddressInputSet.new()
      end

      def make_result_set()
        return GetCustomerShippingAddressResultSet.new()
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
        results = GetCustomerShippingAddressResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCustomerShippingAddress
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCustomerShippingAddressInputSet < Choreography::InputSet

        #### 
        # Set the value of the APILoginId input for this Choreo. 
        # 
        # @param String - (required, string) The API Login Id provided by Authorize.net when signing up for a developer account.
        ###

        def set_APILoginId(value)
          set_input("APILoginId", value)
        end
        #### 
        # Set the value of the CustomerAddressId input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id for the shipping profile you want to retrieve.
        ###

        def set_CustomerAddressId(value)
          set_input("CustomerAddressId", value)
        end
        #### 
        # Set the value of the CustomerProfileId input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the customer who's shipping address you want to return.
        ###

        def set_CustomerProfileId(value)
          set_input("CustomerProfileId", value)
        end
        #### 
        # Set the value of the Endpoint input for this Choreo. 
        # 
        # @param String - (optional, string) Set to api.authorize.net when running in production. Defaults to apitest.authorize.net for sandbox testing.
        ###

        def set_Endpoint(value)
          set_input("Endpoint", value)
        end
        #### 
        # Set the value of the TransactionKey input for this Choreo. 
        # 
        # @param String - (required, string) The TransactionKey provided by Authorize.net when signing up for a developer account.
        ###

        def set_TransactionKey(value)
          set_input("TransactionKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCustomerShippingAddress Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCustomerShippingAddressResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Authorize.net.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCustomerShippingAddress




  end # module CustomerInformationManager

  module TransactionDetailsAPI



    ##############################################################################
    #
    # GetBatchStatistics
    #
    # Returns batch statistics by payment type for a specified batch ID.
    #
    ##############################################################################

    class GetBatchStatistics < Choreography

      ####
      #  Create a new instance of the GetBatchStatistics Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/AuthorizeNet/TransactionDetailsAPI/GetBatchStatistics")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetBatchStatisticsInputSet
      ####
      def new_input_set()
        return GetBatchStatisticsInputSet.new()
      end

      def make_result_set()
        return GetBatchStatisticsResultSet.new()
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
        results = GetBatchStatisticsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetBatchStatistics
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetBatchStatisticsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APILoginId input for this Choreo. 
        # 
        # @param String - (required, string) The API Login Id provided by Authorize.net when signing up for a developer account.
        ###

        def set_APILoginId(value)
          set_input("APILoginId", value)
        end
        #### 
        # Set the value of the BatchId input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the batch that you want to retrieve a list of transactions for.
        ###

        def set_BatchId(value)
          set_input("BatchId", value)
        end
        #### 
        # Set the value of the Endpoint input for this Choreo. 
        # 
        # @param String - (optional, string) Set to api.authorize.net when running in production. Defaults to apitest.authorize.net for sandbox testing.
        ###

        def set_Endpoint(value)
          set_input("Endpoint", value)
        end
        #### 
        # Set the value of the TransactionKey input for this Choreo. 
        # 
        # @param String - (required, string) The TransactionKey provided by Authorize.net when signing up for a developer account.
        ###

        def set_TransactionKey(value)
          set_input("TransactionKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetBatchStatistics Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetBatchStatisticsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Authorize.net.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetBatchStatistics



    ##############################################################################
    #
    # GetSettledBatchList
    #
    # Returns data about a settled batch including: Batch ID, Settlement Time, and Settlement State, and Batch Statistics by payment type.
    #
    ##############################################################################

    class GetSettledBatchList < Choreography

      ####
      #  Create a new instance of the GetSettledBatchList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/AuthorizeNet/TransactionDetailsAPI/GetSettledBatchList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetSettledBatchListInputSet
      ####
      def new_input_set()
        return GetSettledBatchListInputSet.new()
      end

      def make_result_set()
        return GetSettledBatchListResultSet.new()
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
        results = GetSettledBatchListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetSettledBatchList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetSettledBatchListInputSet < Choreography::InputSet

        #### 
        # Set the value of the APILoginId input for this Choreo. 
        # 
        # @param String - (required, string) The API Login Id provided by Authorize.net when signing up for a developer account.
        ###

        def set_APILoginId(value)
          set_input("APILoginId", value)
        end
        #### 
        # Set the value of the Endpoint input for this Choreo. 
        # 
        # @param String - (optional, string) Set to api.authorize.net when running in production. Defaults to apitest.authorize.net for sandbox testing.
        ###

        def set_Endpoint(value)
          set_input("Endpoint", value)
        end
        #### 
        # Set the value of the FirstSettlementDate input for this Choreo. 
        # 
        # @param String - (required, date) Can be an epoch timestamp in milliseconds or formatted like 2010-12-01T00:00:00Z.
        ###

        def set_FirstSettlementDate(value)
          set_input("FirstSettlementDate", value)
        end
        #### 
        # Set the value of the IncludeStatistics input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When 1 is specified, batch statistics by payment type are returned. Defaults to 1.
        ###

        def set_IncludeStatistics(value)
          set_input("IncludeStatistics", value)
        end
        #### 
        # Set the value of the LastSettlementDate input for this Choreo. 
        # 
        # @param String - (required, date) Can be an epoch timestamp in milliseconds or formatted like 2010-12-01T00:00:00Z.
        ###

        def set_LastSettlementDate(value)
          set_input("LastSettlementDate", value)
        end
        #### 
        # Set the value of the TransactionKey input for this Choreo. 
        # 
        # @param String - (required, string) The TransactionKey provided by Authorize.net when signing up for a developer account.
        ###

        def set_TransactionKey(value)
          set_input("TransactionKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetSettledBatchList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetSettledBatchListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Authorize.net.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetSettledBatchList



    ##############################################################################
    #
    # GetTransactionDetails
    #
    # Returns transaction details for a specified transaction ID.
    #
    ##############################################################################

    class GetTransactionDetails < Choreography

      ####
      #  Create a new instance of the GetTransactionDetails Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/AuthorizeNet/TransactionDetailsAPI/GetTransactionDetails")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTransactionDetailsInputSet
      ####
      def new_input_set()
        return GetTransactionDetailsInputSet.new()
      end

      def make_result_set()
        return GetTransactionDetailsResultSet.new()
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
        results = GetTransactionDetailsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTransactionDetails
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTransactionDetailsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APILoginId input for this Choreo. 
        # 
        # @param String - (required, string) The API Login Id provided by Authorize.net when signing up for a developer account.
        ###

        def set_APILoginId(value)
          set_input("APILoginId", value)
        end
        #### 
        # Set the value of the Endpoint input for this Choreo. 
        # 
        # @param String - (optional, string) Set to api.authorize.net when running in production. Defaults to apitest.authorize.net for sandbox testing.
        ###

        def set_Endpoint(value)
          set_input("Endpoint", value)
        end
        #### 
        # Set the value of the TransactionId input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the transaction that you want to retrieve information for.
        ###

        def set_TransactionId(value)
          set_input("TransactionId", value)
        end
        #### 
        # Set the value of the TransactionKey input for this Choreo. 
        # 
        # @param String - (required, string) The TransactionKey provided by Authorize.net when signing up for a developer account.
        ###

        def set_TransactionKey(value)
          set_input("TransactionKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTransactionDetails Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTransactionDetailsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Authorize.net.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTransactionDetails



    ##############################################################################
    #
    # GetTransactionList
    #
    # Returns a list of transactions and their details for a specified batch ID.
    #
    ##############################################################################

    class GetTransactionList < Choreography

      ####
      #  Create a new instance of the GetTransactionList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/AuthorizeNet/TransactionDetailsAPI/GetTransactionList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTransactionListInputSet
      ####
      def new_input_set()
        return GetTransactionListInputSet.new()
      end

      def make_result_set()
        return GetTransactionListResultSet.new()
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
        results = GetTransactionListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTransactionList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTransactionListInputSet < Choreography::InputSet

        #### 
        # Set the value of the APILoginId input for this Choreo. 
        # 
        # @param String - (required, string) The API Login Id provided by Authorize.net when signing up for a developer account.
        ###

        def set_APILoginId(value)
          set_input("APILoginId", value)
        end
        #### 
        # Set the value of the BatchId input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the batch that you want to retrieve a list of transactions for.
        ###

        def set_BatchId(value)
          set_input("BatchId", value)
        end
        #### 
        # Set the value of the Endpoint input for this Choreo. 
        # 
        # @param String - (optional, string) Set to api.authorize.net when running in production. Defaults to apitest.authorize.net for sandbox testing.
        ###

        def set_Endpoint(value)
          set_input("Endpoint", value)
        end
        #### 
        # Set the value of the TransactionKey input for this Choreo. 
        # 
        # @param String - (required, string) The TransactionKey provided by Authorize.net when signing up for a developer account.
        ###

        def set_TransactionKey(value)
          set_input("TransactionKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTransactionList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTransactionListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Authorize.net.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTransactionList



    ##############################################################################
    #
    # GetUnsettledTransactionList
    #
    # Returns limited details for unsettled transactions.
    #
    ##############################################################################

    class GetUnsettledTransactionList < Choreography

      ####
      #  Create a new instance of the GetUnsettledTransactionList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/AuthorizeNet/TransactionDetailsAPI/GetUnsettledTransactionList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetUnsettledTransactionListInputSet
      ####
      def new_input_set()
        return GetUnsettledTransactionListInputSet.new()
      end

      def make_result_set()
        return GetUnsettledTransactionListResultSet.new()
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
        results = GetUnsettledTransactionListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetUnsettledTransactionList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetUnsettledTransactionListInputSet < Choreography::InputSet

        #### 
        # Set the value of the APILoginId input for this Choreo. 
        # 
        # @param String - (required, string) The API Login Id provided by Authorize.net when signing up for a developer account.
        ###

        def set_APILoginId(value)
          set_input("APILoginId", value)
        end
        #### 
        # Set the value of the Endpoint input for this Choreo. 
        # 
        # @param String - (optional, string) Set to api.authorize.net when running in production. Defaults to apitest.authorize.net for sandbox testing.
        ###

        def set_Endpoint(value)
          set_input("Endpoint", value)
        end
        #### 
        # Set the value of the TransactionKey input for this Choreo. 
        # 
        # @param String - (required, string) The TransactionKey provided by Authorize.net when signing up for a developer account.
        ###

        def set_TransactionKey(value)
          set_input("TransactionKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetUnsettledTransactionList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetUnsettledTransactionListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Authorize.net.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetUnsettledTransactionList




  end # module TransactionDetailsAPI

end # module AuthorizeNet