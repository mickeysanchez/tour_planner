require "temboo"

module PayPal




  module AdaptivePayments



    ##############################################################################
    #
    # ConvertCurrency
    #
    # Converts a payment amount from one currency to another.
    #
    ##############################################################################

    class ConvertCurrency < Choreography

      ####
      #  Create a new instance of the ConvertCurrency Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/PayPal/AdaptivePayments/ConvertCurrency")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ConvertCurrencyInputSet
      ####
      def new_input_set()
        return ConvertCurrencyInputSet.new()
      end

      def make_result_set()
        return ConvertCurrencyResultSet.new()
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
        results = ConvertCurrencyResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ConvertCurrency
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ConvertCurrencyInputSet < Choreography::InputSet

        #### 
        # Set the value of the Amount input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The amount that should be converted to a new currency.
        ###

        def set_Amount(value)
          set_input("Amount", value)
        end
        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) Your PayPal AppID (or the default AppID for the PayPal sandbox).
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the ConvertToCurrency input for this Choreo. 
        # 
        # @param String - (required, string) The currency code that you want to convert to (i.e. GBP).
        ###

        def set_ConvertToCurrency(value)
          set_input("ConvertToCurrency", value)
        end
        #### 
        # Set the value of the CurrencyCode input for this Choreo. 
        # 
        # @param String - (required, string) The currency code that you want to convert. (i.e. USD).
        ###

        def set_CurrencyCode(value)
          set_input("CurrencyCode", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The API Password provided by PayPal.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Signature input for this Choreo. 
        # 
        # @param String - (required, string) The API Signature provided by PayPal.
        ###

        def set_Signature(value)
          set_input("Signature", value)
        end
        #### 
        # Set the value of the UseSandbox input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
        ###

        def set_UseSandbox(value)
          set_input("UseSandbox", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) The API Username provided by PayPal.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ConvertCurrency Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ConvertCurrencyResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from PayPal.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ConvertCurrency



    ##############################################################################
    #
    # PaymentDetails
    #
    # Retrieves information about a specific payment.
    #
    ##############################################################################

    class PaymentDetails < Choreography

      ####
      #  Create a new instance of the PaymentDetails Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/PayPal/AdaptivePayments/PaymentDetails")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PaymentDetailsInputSet
      ####
      def new_input_set()
        return PaymentDetailsInputSet.new()
      end

      def make_result_set()
        return PaymentDetailsResultSet.new()
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
        results = PaymentDetailsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the PaymentDetails
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PaymentDetailsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) Your PayPal AppID (or the default AppID for the PayPal sandbox).
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The API Password provided by PayPal.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PayKey input for this Choreo. 
        # 
        # @param String - (conditional, string) The pay key that identifies the payment for which you want to retrieve details. This is the pay key returned in the response of the Pay method.
        ###

        def set_PayKey(value)
          set_input("PayKey", value)
        end
        #### 
        # Set the value of the Signature input for this Choreo. 
        # 
        # @param String - (required, string) The API Signature provided by PayPal.
        ###

        def set_Signature(value)
          set_input("Signature", value)
        end
        #### 
        # Set the value of the TrackingID input for this Choreo. 
        # 
        # @param String - (optional, string) The tracking ID that was specified for this payment in the PayRequest message.
        ###

        def set_TrackingID(value)
          set_input("TrackingID", value)
        end
        #### 
        # Set the value of the TransactionID input for this Choreo. 
        # 
        # @param String - (optional, string) The PayPal transaction ID associated with the payment. The Instant Payment Notification message associated with the payment contains the transaction ID.
        ###

        def set_TransactionID(value)
          set_input("TransactionID", value)
        end
        #### 
        # Set the value of the UseSandbox input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
        ###

        def set_UseSandbox(value)
          set_input("UseSandbox", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) The API Username provided by PayPal.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the PaymentDetails Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PaymentDetailsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "TransactionStatus" output from this Choreo execution
      	#
      	# @return String - (string) The transaction status of the payment.
      	####
      	def get_TransactionStatus()
      	  return @outputs["TransactionStatus"]
      	end
      	####
      	# Retrieve the value for the "Status" output from this Choreo execution
      	#
      	# @return String - (string) The status of the payment.
      	####
      	def get_Status()
      	  return @outputs["Status"]
      	end
      	####
      	# Retrieve the value for the "Amount" output from this Choreo execution
      	#
      	# @return String - (decimal) The payment amount.
      	####
      	def get_Amount()
      	  return @outputs["Amount"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from PayPal.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "CurrencyCode" output from this Choreo execution
      	#
      	# @return String - (string) The currency code for the payment.
      	####
      	def get_CurrencyCode()
      	  return @outputs["CurrencyCode"]
      	end
      	####
      	# Retrieve the value for the "Email" output from this Choreo execution
      	#
      	# @return String - (string) The receiver email address.
      	####
      	def get_Email()
      	  return @outputs["Email"]
      	end
      	####
      	# Retrieve the value for the "AccountID" output from this Choreo execution
      	#
      	# @return String - (string) The account id of the payment reciever.
      	####
      	def get_AccountID()
      	  return @outputs["AccountID"]
      	end
      end

    end # class PaymentDetails




  end # module AdaptivePayments
  ##############################################################################
  #
  # AddressVerify
  #
  # Confirms whether a postal address and postal code match those of the specified PayPal account holder.
  #
  ##############################################################################

  class AddressVerify < Choreography

    ####
    #  Create a new instance of the AddressVerify Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/PayPal/AddressVerify")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return AddressVerifyInputSet
    ####
    def new_input_set()
      return AddressVerifyInputSet.new()
    end

    def make_result_set()
      return AddressVerifyResultSet.new()
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
      results = AddressVerifyResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the AddressVerify
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class AddressVerifyInputSet < Choreography::InputSet

      #### 
      # Set the value of the Email input for this Choreo. 
      # 
      # @param String - (required, string) The email address of a PayPal member to verify.
      ###

      def set_Email(value)
        set_input("Email", value)
      end
      #### 
      # Set the value of the Endpoint input for this Choreo. 
      # 
      # @param String - (optional, string) Set to api-3t.paypal.com when running in production. Defaults to api-3t.sandbox.paypal.com for sandbox testing.
      ###

      def set_Endpoint(value)
        set_input("Endpoint", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The API Password provided by PayPal.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the PostalCode input for this Choreo. 
      # 
      # @param String - (required, string) The postal code to verify.
      ###

      def set_PostalCode(value)
        set_input("PostalCode", value)
      end
      #### 
      # Set the value of the Signature input for this Choreo. 
      # 
      # @param String - (required, string) The API Signature provided by PayPal.
      ###

      def set_Signature(value)
        set_input("Signature", value)
      end
      #### 
      # Set the value of the Street input for this Choreo. 
      # 
      # @param String - (required, string) The first line of the billing or shipping address to verify.
      ###

      def set_Street(value)
        set_input("Street", value)
      end
      #### 
      # Set the value of the User input for this Choreo. 
      # 
      # @param String - (required, string) The API Username provided by PayPal.
      ###

      def set_User(value)
        set_input("User", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the AddressVerify Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class AddressVerifyResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (string) Response from PayPal formatted in name/value pairs.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class AddressVerify



  ##############################################################################
  #
  # GetBalance
  #
  # Retrieves the available balance for a PayPal account.
  #
  ##############################################################################

  class GetBalance < Choreography

    ####
    #  Create a new instance of the GetBalance Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/PayPal/GetBalance")
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
      # Set the value of the Endpoint input for this Choreo. 
      # 
      # @param String - (optional, string) Set to api-3t.paypal.com when running in production. Defaults to api-3t.sandbox.paypal.com for sandbox testing.
      ###

      def set_Endpoint(value)
        set_input("Endpoint", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The API Password provided by PayPal.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Signature input for this Choreo. 
      # 
      # @param String - (required, string) The API Signature provided by PayPal.
      ###

      def set_Signature(value)
        set_input("Signature", value)
      end
      #### 
      # Set the value of the User input for this Choreo. 
      # 
      # @param String - (required, string) The API Username provided by PayPal.
      ###

      def set_User(value)
        set_input("User", value)
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
    	# @return String - (string) Response from PayPal formatted in name/value pairs.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetBalance



  ##############################################################################
  #
  # GetTransactionDetails
  #
  # Retrieves information about a specific transaction.
  #
  ##############################################################################

  class GetTransactionDetails < Choreography

    ####
    #  Create a new instance of the GetTransactionDetails Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/PayPal/GetTransactionDetails")
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
      # Set the value of the Endpoint input for this Choreo. 
      # 
      # @param String - (optional, string) Set to api-3t.paypal.com when running in production. Defaults to api-3t.sandbox.paypal.com for sandbox testing.
      ###

      def set_Endpoint(value)
        set_input("Endpoint", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The API Password provided by PayPal.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Signature input for this Choreo. 
      # 
      # @param String - (required, string) The API Signature provided by PayPal.
      ###

      def set_Signature(value)
        set_input("Signature", value)
      end
      #### 
      # Set the value of the TransactionID input for this Choreo. 
      # 
      # @param String - (required, string) The ID for the transaction you want to retrieve data for.
      ###

      def set_TransactionID(value)
        set_input("TransactionID", value)
      end
      #### 
      # Set the value of the User input for this Choreo. 
      # 
      # @param String - (required, string) The API Username provided by PayPal.
      ###

      def set_User(value)
        set_input("User", value)
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
    	# @return String - (string) Response from PayPal formatted in name/value pairs.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetTransactionDetails



  ##############################################################################
  #
  # MakeIndividualPayment
  #
  # Retrieves the available balance for a PayPal account.
  #
  ##############################################################################

  class MakeIndividualPayment < Choreography

    ####
    #  Create a new instance of the MakeIndividualPayment Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/PayPal/MakeIndividualPayment")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return MakeIndividualPaymentInputSet
    ####
    def new_input_set()
      return MakeIndividualPaymentInputSet.new()
    end

    def make_result_set()
      return MakeIndividualPaymentResultSet.new()
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
      results = MakeIndividualPaymentResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the MakeIndividualPayment
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class MakeIndividualPaymentInputSet < Choreography::InputSet

      #### 
      # Set the value of the CurrencyCode input for this Choreo. 
      # 
      # @param String - (optional, string) The currency code associated with the PaymentAmount. Defaults to "USD".
      ###

      def set_CurrencyCode(value)
        set_input("CurrencyCode", value)
      end
      #### 
      # Set the value of the EmailAddress input for this Choreo. 
      # 
      # @param String - (required, string) The email address used to identify the recipient of the payment.
      ###

      def set_EmailAddress(value)
        set_input("EmailAddress", value)
      end
      #### 
      # Set the value of the EmailSubject input for this Choreo. 
      # 
      # @param String - (optional, string) The subject line of the email that PayPal sends when the transaction is completed. Character length and limitations: 255 single-byte alphanumeric characters.
      ###

      def set_EmailSubject(value)
        set_input("EmailSubject", value)
      end
      #### 
      # Set the value of the Endpoint input for this Choreo. 
      # 
      # @param String - (optional, string) Set to api-3t.paypal.com when running in production. Defaults to api-3t.sandbox.paypal.com for sandbox testing.
      ###

      def set_Endpoint(value)
        set_input("Endpoint", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The API Password provided by PayPal.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the PaymentAmount input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) The amount to be paid.
      ###

      def set_PaymentAmount(value)
        set_input("PaymentAmount", value)
      end
      #### 
      # Set the value of the Signature input for this Choreo. 
      # 
      # @param String - (required, string) The API Signature provided by PayPal.
      ###

      def set_Signature(value)
        set_input("Signature", value)
      end
      #### 
      # Set the value of the User input for this Choreo. 
      # 
      # @param String - (required, string) The API Username provided by PayPal.
      ###

      def set_User(value)
        set_input("User", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the MakeIndividualPayment Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class MakeIndividualPaymentResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (string) The full response from PayPal formatted in name/value pairs.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    	####
    	# Retrieve the value for the "Timestamp" output from this Choreo execution
    	#
    	# @return String - (date) The timestamp associated with the payment request.
    	####
    	def get_Timestamp()
    	  return @outputs["Timestamp"]
    	end
    	####
    	# Retrieve the value for the "Acknowledged" output from this Choreo execution
    	#
    	# @return String - (string) Indicates the status of the request. Should contain "Sucess" or "Failure".
    	####
    	def get_Acknowledged()
    	  return @outputs["Acknowledged"]
    	end
    	####
    	# Retrieve the value for the "CorrelationId" output from this Choreo execution
    	#
    	# @return String - (string) A unique id returned by PayPal for this payment.
    	####
    	def get_CorrelationId()
    	  return @outputs["CorrelationId"]
    	end
    	####
    	# Retrieve the value for the "ErrorMessage" output from this Choreo execution
    	#
    	# @return String - (string) This will contain any error message returned by PayPal during this operation.
    	####
    	def get_ErrorMessage()
    	  return @outputs["ErrorMessage"]
    	end
    end

  end # class MakeIndividualPayment



  ##############################################################################
  #
  # MassPayments
  #
  # Generates multiple payments from your PayPal Premier account or Business account to existing PayPal account holders.
  #
  ##############################################################################

  class MassPayments < Choreography

    ####
    #  Create a new instance of the MassPayments Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/PayPal/MassPayments")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return MassPaymentsInputSet
    ####
    def new_input_set()
      return MassPaymentsInputSet.new()
    end

    def make_result_set()
      return MassPaymentsResultSet.new()
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
      results = MassPaymentsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the MassPayments
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class MassPaymentsInputSet < Choreography::InputSet

      #### 
      # Set the value of the InputFile input for this Choreo. 
      # 
      # @param String - (required, any) An input file containing the payments to process. This data can either be in CSV or XML format. The format should be indicated using the InputFormat input. See Choreo documentation for schema details.
      ###

      def set_InputFile(value)
        set_input("InputFile", value)
      end
      #### 
      # Set the value of the EmailSubject input for this Choreo. 
      # 
      # @param String - (optional, string) The subject line of the email that PayPal sends when the transaction is completed. This is the same for all recipients. Character length and limitations: 255 single-byte alphanumeric characters.
      ###

      def set_EmailSubject(value)
        set_input("EmailSubject", value)
      end
      #### 
      # Set the value of the Endpoint input for this Choreo. 
      # 
      # @param String - (optional, string) Set to api-3t.paypal.com when running in production. Defaults to api-3t.sandbox.paypal.com for sandbox testing.
      ###

      def set_Endpoint(value)
        set_input("Endpoint", value)
      end
      #### 
      # Set the value of the InputFormat input for this Choreo. 
      # 
      # @param String - (required, string) The type of input you are providing for this mass payment. Accepted values are "csv" or "xml". See Choreo documentation for expected schema details.
      ###

      def set_InputFormat(value)
        set_input("InputFormat", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The API Password provided by PayPal.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Signature input for this Choreo. 
      # 
      # @param String - (required, string) The API Signature provided by PayPal.
      ###

      def set_Signature(value)
        set_input("Signature", value)
      end
      #### 
      # Set the value of the User input for this Choreo. 
      # 
      # @param String - (required, string) The API Username provided by PayPal.
      ###

      def set_User(value)
        set_input("User", value)
      end
      #### 
      # Set the value of the VaultFile input for this Choreo. 
      # 
      # @param TembooPath - The path to the vault file containing your payments in CSV or XML format. This can be used as an alternative to the InputFile input.
      ###

      def set_VaultFile(value)
        set_alias("VaultFile", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the MassPayments Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class MassPaymentsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Result" output from this Choreo execution
    	#
    	# @return String - The MassPayment result from PayPal returned in the same format you've submitted.
    	####
    	def get_Result()
    	  return @outputs["Result"]
    	end
    end

  end # class MassPayments




  module Merchant



    ##############################################################################
    #
    # AddressVerify
    #
    # Confirms whether a postal address and postal code match those of the specified PayPal account holder.
    #
    ##############################################################################

    class AddressVerify < Choreography

      ####
      #  Create a new instance of the AddressVerify Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/PayPal/Merchant/AddressVerify")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddressVerifyInputSet
      ####
      def new_input_set()
        return AddressVerifyInputSet.new()
      end

      def make_result_set()
        return AddressVerifyResultSet.new()
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
        results = AddressVerifyResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddressVerify
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddressVerifyInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (required, string) The email address of a PayPal member to verify.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The API Password provided by PayPal.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PostalCode input for this Choreo. 
        # 
        # @param String - (required, string) The postal code to verify.
        ###

        def set_PostalCode(value)
          set_input("PostalCode", value)
        end
        #### 
        # Set the value of the Signature input for this Choreo. 
        # 
        # @param String - (required, string) The API Signature provided by PayPal.
        ###

        def set_Signature(value)
          set_input("Signature", value)
        end
        #### 
        # Set the value of the Street input for this Choreo. 
        # 
        # @param String - (required, string) The first line of the billing or shipping address to verify.
        ###

        def set_Street(value)
          set_input("Street", value)
        end
        #### 
        # Set the value of the UseSandbox input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
        ###

        def set_UseSandbox(value)
          set_input("UseSandbox", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) The API Username provided by PayPal.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddressVerify Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddressVerifyResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (string) Response from PayPal formatted in name/value pairs.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddressVerify



    ##############################################################################
    #
    # GetBalance
    #
    # Retrieves the available balance for a PayPal account.
    #
    ##############################################################################

    class GetBalance < Choreography

      ####
      #  Create a new instance of the GetBalance Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/PayPal/Merchant/GetBalance")
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
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The API Password provided by PayPal.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Signature input for this Choreo. 
        # 
        # @param String - (required, string) The API Signature provided by PayPal.
        ###

        def set_Signature(value)
          set_input("Signature", value)
        end
        #### 
        # Set the value of the UseSandbox input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
        ###

        def set_UseSandbox(value)
          set_input("UseSandbox", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) The API Username provided by PayPal.
        ###

        def set_Username(value)
          set_input("Username", value)
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
      	# @return String - (string) Response from PayPal formatted in name/value pairs.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetBalance



    ##############################################################################
    #
    # GetTransactionDetails
    #
    # Retrieves information about a specific transaction.
    #
    ##############################################################################

    class GetTransactionDetails < Choreography

      ####
      #  Create a new instance of the GetTransactionDetails Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/PayPal/Merchant/GetTransactionDetails")
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
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The API Password provided by PayPal.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Signature input for this Choreo. 
        # 
        # @param String - (required, string) The API Signature provided by PayPal.
        ###

        def set_Signature(value)
          set_input("Signature", value)
        end
        #### 
        # Set the value of the TransactionID input for this Choreo. 
        # 
        # @param String - (required, string) The ID for the transaction you want to retrieve data for.
        ###

        def set_TransactionID(value)
          set_input("TransactionID", value)
        end
        #### 
        # Set the value of the UseSandbox input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
        ###

        def set_UseSandbox(value)
          set_input("UseSandbox", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) The API Username provided by PayPal.
        ###

        def set_Username(value)
          set_input("Username", value)
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
      	# @return String - (string) Response from PayPal formatted in name/value pairs.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTransactionDetails



    ##############################################################################
    #
    # MakeIndividualPayment
    #
    # Retrieves the available balance for a PayPal account.
    #
    ##############################################################################

    class MakeIndividualPayment < Choreography

      ####
      #  Create a new instance of the MakeIndividualPayment Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/PayPal/Merchant/MakeIndividualPayment")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return MakeIndividualPaymentInputSet
      ####
      def new_input_set()
        return MakeIndividualPaymentInputSet.new()
      end

      def make_result_set()
        return MakeIndividualPaymentResultSet.new()
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
        results = MakeIndividualPaymentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the MakeIndividualPayment
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class MakeIndividualPaymentInputSet < Choreography::InputSet

        #### 
        # Set the value of the CurrencyCode input for this Choreo. 
        # 
        # @param String - (optional, string) The currency code associated with the PaymentAmount. Defaults to "USD".
        ###

        def set_CurrencyCode(value)
          set_input("CurrencyCode", value)
        end
        #### 
        # Set the value of the EmailAddress input for this Choreo. 
        # 
        # @param String - (required, string) The email address used to identify the recipient of the payment.
        ###

        def set_EmailAddress(value)
          set_input("EmailAddress", value)
        end
        #### 
        # Set the value of the EmailSubject input for this Choreo. 
        # 
        # @param String - (optional, string) The subject line of the email that PayPal sends when the transaction is completed. Character length and limitations: 255 single-byte alphanumeric characters.
        ###

        def set_EmailSubject(value)
          set_input("EmailSubject", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The API Password provided by PayPal.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the PaymentAmount input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The amount to be paid.
        ###

        def set_PaymentAmount(value)
          set_input("PaymentAmount", value)
        end
        #### 
        # Set the value of the Signature input for this Choreo. 
        # 
        # @param String - (required, string) The API Signature provided by PayPal.
        ###

        def set_Signature(value)
          set_input("Signature", value)
        end
        #### 
        # Set the value of the UseSandbox input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
        ###

        def set_UseSandbox(value)
          set_input("UseSandbox", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) The API Username provided by PayPal.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the MakeIndividualPayment Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class MakeIndividualPaymentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Timestamp" output from this Choreo execution
      	#
      	# @return String - (date) The timestamp associated with the payment request.
      	####
      	def get_Timestamp()
      	  return @outputs["Timestamp"]
      	end
      	####
      	# Retrieve the value for the "Acknowledged" output from this Choreo execution
      	#
      	# @return String - (string) Indicates the status of the request. Should contain "Sucess" or "Failure".
      	####
      	def get_Acknowledged()
      	  return @outputs["Acknowledged"]
      	end
      	####
      	# Retrieve the value for the "CorrelationId" output from this Choreo execution
      	#
      	# @return String - (string) A unique id returned by PayPal for this payment.
      	####
      	def get_CorrelationId()
      	  return @outputs["CorrelationId"]
      	end
      	####
      	# Retrieve the value for the "ErrorMessage" output from this Choreo execution
      	#
      	# @return String - (string) This will contain any error message returned by PayPal during this operation.
      	####
      	def get_ErrorMessage()
      	  return @outputs["ErrorMessage"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (string) The full response from PayPal formatted in name/value pairs.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class MakeIndividualPayment



    ##############################################################################
    #
    # MassPayments
    #
    # Generates multiple payments from your PayPal Premier account or Business account to existing PayPal account holders.
    #
    ##############################################################################

    class MassPayments < Choreography

      ####
      #  Create a new instance of the MassPayments Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/PayPal/Merchant/MassPayments")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return MassPaymentsInputSet
      ####
      def new_input_set()
        return MassPaymentsInputSet.new()
      end

      def make_result_set()
        return MassPaymentsResultSet.new()
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
        results = MassPaymentsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the MassPayments
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class MassPaymentsInputSet < Choreography::InputSet

        #### 
        # Set the value of the InputFile input for this Choreo. 
        # 
        # @param String - (required, any) An input file containing the payments to process. This data can either be in CSV or XML format. The format should be indicated using the InputFormat input. See Choreo documentation for schema details.
        ###

        def set_InputFile(value)
          set_input("InputFile", value)
        end
        #### 
        # Set the value of the EmailSubject input for this Choreo. 
        # 
        # @param String - (optional, string) The subject line of the email that PayPal sends when the transaction is completed. This is the same for all recipients. Character length and limitations: 255 single-byte alphanumeric characters.
        ###

        def set_EmailSubject(value)
          set_input("EmailSubject", value)
        end
        #### 
        # Set the value of the InputFormat input for this Choreo. 
        # 
        # @param String - (required, string) The type of input you are providing for this mass payment. Accepted values are "csv" or "xml". See Choreo documentation for expected schema details.
        ###

        def set_InputFormat(value)
          set_input("InputFormat", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The API Password provided by PayPal.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Signature input for this Choreo. 
        # 
        # @param String - (required, string) The API Signature provided by PayPal.
        ###

        def set_Signature(value)
          set_input("Signature", value)
        end
        #### 
        # Set the value of the UseSandbox input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
        ###

        def set_UseSandbox(value)
          set_input("UseSandbox", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) The API Username provided by PayPal.
        ###

        def set_Username(value)
          set_input("Username", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - The path to the vault file containing your payments in CSV or XML format. This can be used as an alternative to the InputFile input.
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the MassPayments Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class MassPaymentsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Result" output from this Choreo execution
      	#
      	# @return String - The MassPayment result from PayPal returned in the same format you've submitted.
      	####
      	def get_Result()
      	  return @outputs["Result"]
      	end
      end

    end # class MassPayments



    ##############################################################################
    #
    # ParseResponse
    #
    # 
    #
    ##############################################################################

    class ParseResponse < Choreography

      ####
      #  Create a new instance of the ParseResponse Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/PayPal/Merchant/ParseResponse")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ParseResponseInputSet
      ####
      def new_input_set()
        return ParseResponseInputSet.new()
      end

      def make_result_set()
        return ParseResponseResultSet.new()
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
        results = ParseResponseResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ParseResponse
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ParseResponseInputSet < Choreography::InputSet

        #### 
        # Set the value of the Response input for this Choreo. 
        # 
        # @param String - (required, string) The response from PayPal in name/value pair format.
        ###

        def set_Response(value)
          set_input("Response", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ParseResponse Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ParseResponseResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "AssignedKeys" output from this Choreo execution
      	#
      	# @return String - 
      	####
      	def get_AssignedKeys()
      	  return @outputs["AssignedKeys"]
      	end
      end

    end # class ParseResponse



    ##############################################################################
    #
    # RefundTransaction
    #
    # Issue a refund to a PayPal buyer by specifying a transaction ID.
    #
    ##############################################################################

    class RefundTransaction < Choreography

      ####
      #  Create a new instance of the RefundTransaction Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/PayPal/Merchant/RefundTransaction")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RefundTransactionInputSet
      ####
      def new_input_set()
        return RefundTransactionInputSet.new()
      end

      def make_result_set()
        return RefundTransactionResultSet.new()
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
        results = RefundTransactionResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RefundTransaction
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RefundTransactionInputSet < Choreography::InputSet

        #### 
        # Set the value of the Amount input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Refund amount. Amount is required if RefundType is set to Partial. If RefundType is set to Full, leave input blank.
        ###

        def set_Amount(value)
          set_input("Amount", value)
        end
        #### 
        # Set the value of the CurrencyCode input for this Choreo. 
        # 
        # @param String - (optional, string) A three-character currency code (i.e. USD). Required for partial refunds. Leave this field blank for full refunds. Defaults to USD.
        ###

        def set_CurrencyCode(value)
          set_input("CurrencyCode", value)
        end
        #### 
        # Set the value of the InvoiceID input for this Choreo. 
        # 
        # @param String - (optional, string) Your own invoice or tracking number. Character length limitation is 127 alphanumeric characters.
        ###

        def set_InvoiceID(value)
          set_input("InvoiceID", value)
        end
        #### 
        # Set the value of the Note input for this Choreo. 
        # 
        # @param String - (optional, string) Custom note about the refund. Character length limitation is 255 alphanumeric characters.
        ###

        def set_Note(value)
          set_input("Note", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The API Password provided by PayPal.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the RefundType input for this Choreo. 
        # 
        # @param String - (required, string) The refund type must be set to Full or Partial.  This flag effects what values some other input variables should have. Defaults to Full.
        ###

        def set_RefundType(value)
          set_input("RefundType", value)
        end
        #### 
        # Set the value of the Signature input for this Choreo. 
        # 
        # @param String - (required, string) The API Signature provided by PayPal.
        ###

        def set_Signature(value)
          set_input("Signature", value)
        end
        #### 
        # Set the value of the TransactionID input for this Choreo. 
        # 
        # @param String - (required, string) The ID for the transaction you want to retrieve data for.
        ###

        def set_TransactionID(value)
          set_input("TransactionID", value)
        end
        #### 
        # Set the value of the UseSandbox input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
        ###

        def set_UseSandbox(value)
          set_input("UseSandbox", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) The API Username provided by PayPal.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RefundTransaction Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RefundTransactionResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (string) Response from PayPal formatted in name/value pairs.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RefundTransaction



    ##############################################################################
    #
    # TransactionSearch
    #
    # Retrieves transaction history for transactions that meet a specified criteria.
    #
    ##############################################################################

    class TransactionSearch < Choreography

      ####
      #  Create a new instance of the TransactionSearch Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/PayPal/Merchant/TransactionSearch")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return TransactionSearchInputSet
      ####
      def new_input_set()
        return TransactionSearchInputSet.new()
      end

      def make_result_set()
        return TransactionSearchResultSet.new()
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
        results = TransactionSearchResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the TransactionSearch
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class TransactionSearchInputSet < Choreography::InputSet

        #### 
        # Set the value of the Account input for this Choreo. 
        # 
        # @param String - (optional, string) Search by credit card number.
        ###

        def set_Account(value)
          set_input("Account", value)
        end
        #### 
        # Set the value of the AuctionItemNumber input for this Choreo. 
        # 
        # @param String - (optional, string) Search by auction item number of the purchased item.
        ###

        def set_AuctionItemNumber(value)
          set_input("AuctionItemNumber", value)
        end
        #### 
        # Set the value of the CurrencyCode input for this Choreo. 
        # 
        # @param String - (optional, string) Search by currency code (i.e. USD).
        ###

        def set_CurrencyCode(value)
          set_input("CurrencyCode", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (optional, string) Search by email.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the EndDate input for this Choreo. 
        # 
        # @param String - (optional, date) The latest transaction date to return. Must be an epoch timestamp in milliseconds or formatted in UTC like: 2011-05-19T00:00:00Z.
        ###

        def set_EndDate(value)
          set_input("EndDate", value)
        end
        #### 
        # Set the value of the InvoiceNumber input for this Choreo. 
        # 
        # @param String - (optional, string) Search by invoice number.
        ###

        def set_InvoiceNumber(value)
          set_input("InvoiceNumber", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The API Password provided by PayPal.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ReceiptId input for this Choreo. 
        # 
        # @param String - (optional, string) Search by the PayPal receipt ID.
        ###

        def set_ReceiptId(value)
          set_input("ReceiptId", value)
        end
        #### 
        # Set the value of the Receiver input for this Choreo. 
        # 
        # @param String - (optional, string) Search by the email address of the receiver.
        ###

        def set_Receiver(value)
          set_input("Receiver", value)
        end
        #### 
        # Set the value of the Signature input for this Choreo. 
        # 
        # @param String - (required, string) The API Signature provided by PayPal.
        ###

        def set_Signature(value)
          set_input("Signature", value)
        end
        #### 
        # Set the value of the StartDate input for this Choreo. 
        # 
        # @param String - (required, date) The earliest transaction date to return. Must be an epoch timestamp in milliseconds or formatted in UTC like: 2011-05-19T00:00:00Z.
        ###

        def set_StartDate(value)
          set_input("StartDate", value)
        end
        #### 
        # Set the value of the TransactionAmount input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Search by transaction amount.
        ###

        def set_TransactionAmount(value)
          set_input("TransactionAmount", value)
        end
        #### 
        # Set the value of the TransactionClass input for this Choreo. 
        # 
        # @param String - (optional, string) Search by classification of transaction (i.e. All, Sent, Recieved, etc).
        ###

        def set_TransactionClass(value)
          set_input("TransactionClass", value)
        end
        #### 
        # Set the value of the TransactionId input for this Choreo. 
        # 
        # @param String - (optional, string) Search by the transaction ID
        ###

        def set_TransactionId(value)
          set_input("TransactionId", value)
        end
        #### 
        # Set the value of the TransactionStatus input for this Choreo. 
        # 
        # @param String - (optional, string) Search by transaction status (i.e. Pending, Processing, Success, Denied, Reversed).
        ###

        def set_TransactionStatus(value)
          set_input("TransactionStatus", value)
        end
        #### 
        # Set the value of the UseSandbox input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
        ###

        def set_UseSandbox(value)
          set_input("UseSandbox", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) The API Username provided by PayPal.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the TransactionSearch Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class TransactionSearchResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (string) Response from PayPal formatted in name/value pairs.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class TransactionSearch




  end # module Merchant

  module OAuth



    ##############################################################################
    #
    # GetAccessToken
    #
    # Retrieves an Access Token from PayPal.
    #
    ##############################################################################

    class GetAccessToken < Choreography

      ####
      #  Create a new instance of the GetAccessToken Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/PayPal/OAuth/GetAccessToken")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetAccessTokenInputSet
      ####
      def new_input_set()
        return GetAccessTokenInputSet.new()
      end

      def make_result_set()
        return GetAccessTokenResultSet.new()
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
        results = GetAccessTokenResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetAccessToken
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetAccessTokenInputSet < Choreography::InputSet

        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (required, string) The Client ID provided by PayPal.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Client Secret provided by PayPal.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Scope input for this Choreo. 
        # 
        # @param String - (optional, string) A space delimited list of resource URL endpoints that the token should have access for (i.e. https://api.paypal.com/v1/payments/.*).
        ###

        def set_Scope(value)
          set_input("Scope", value)
        end
        #### 
        # Set the value of the UseSandbox input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Defaults to 0.
        ###

        def set_UseSandbox(value)
          set_input("UseSandbox", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetAccessToken Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetAccessTokenResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Expires" output from this Choreo execution
      	#
      	# @return String - (integer) The expiration time of the access token retrieved.
      	####
      	def get_Expires()
      	  return @outputs["Expires"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from PayPal.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "AccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The access token retrieved from PayPal.
      	####
      	def get_AccessToken()
      	  return @outputs["AccessToken"]
      	end
      end

    end # class GetAccessToken




  end # module OAuth
  ##############################################################################
  #
  # ParseResponse
  #
  # 
  #
  ##############################################################################

  class ParseResponse < Choreography

    ####
    #  Create a new instance of the ParseResponse Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/PayPal/ParseResponse")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ParseResponseInputSet
    ####
    def new_input_set()
      return ParseResponseInputSet.new()
    end

    def make_result_set()
      return ParseResponseResultSet.new()
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
      results = ParseResponseResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ParseResponse
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ParseResponseInputSet < Choreography::InputSet

      #### 
      # Set the value of the Response input for this Choreo. 
      # 
      # @param String - (required, string) The response from PayPal in name/value pair format.
      ###

      def set_Response(value)
        set_input("Response", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ParseResponse Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ParseResponseResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "AssignedKeys" output from this Choreo execution
    	#
    	# @return String - 
    	####
    	def get_AssignedKeys()
    	  return @outputs["AssignedKeys"]
    	end
    end

  end # class ParseResponse




  module Payments



    ##############################################################################
    #
    # AcceptPayPalPayment
    #
    # Creates a new PayPal payment which can then be approved and executed.
    #
    ##############################################################################

    class AcceptPayPalPayment < Choreography

      ####
      #  Create a new instance of the AcceptPayPalPayment Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/PayPal/Payments/AcceptPayPalPayment")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AcceptPayPalPaymentInputSet
      ####
      def new_input_set()
        return AcceptPayPalPaymentInputSet.new()
      end

      def make_result_set()
        return AcceptPayPalPaymentResultSet.new()
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
        results = AcceptPayPalPaymentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AcceptPayPalPayment
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AcceptPayPalPaymentInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved from PayPal. Required unless providing the ClientID and ClientSecret which can be used to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the CancelURL input for this Choreo. 
        # 
        # @param String - (required, string) URL to which the customer is returned if they do not approve the use of PayPal to pay you.
        ###

        def set_CancelURL(value)
          set_input("CancelURL", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by PayPal. Required unless a valid Access Token is provided.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by PayPal. Required unless a valid Access Token is provided.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Currency input for this Choreo. 
        # 
        # @param String - (required, string) The currency for the payment (i.e.  USD).
        ###

        def set_Currency(value)
          set_input("Currency", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) A description for this payment.
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the ReturnURL input for this Choreo. 
        # 
        # @param String - (required, string) The URL to which the customer's browser is returned after choosing to pay with PayPal.
        ###

        def set_ReturnURL(value)
          set_input("ReturnURL", value)
        end
        #### 
        # Set the value of the Scope input for this Choreo. 
        # 
        # @param String - (optional, string) A space delimited list of resource URL endpoints that the token should have access for. This is only used when providing the ClientID and Client Secret in order to generate a new access token.
        ###

        def set_Scope(value)
          set_input("Scope", value)
        end
        #### 
        # Set the value of the Total input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The total of the payment.
        ###

        def set_Total(value)
          set_input("Total", value)
        end
        #### 
        # Set the value of the UseSandbox input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
        ###

        def set_UseSandbox(value)
          set_input("UseSandbox", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AcceptPayPalPayment Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AcceptPayPalPaymentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from PayPal.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "PaymentID" output from this Choreo execution
      	#
      	# @return String - (string) The id of the payment that was created. This is used to execute the payment after the buyer has approved.
      	####
      	def get_PaymentID()
      	  return @outputs["PaymentID"]
      	end
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The new access token retrieved from PayPal when providing the Client ID and Client Secret.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      	####
      	# Retrieve the value for the "ApprovalURL" output from this Choreo execution
      	#
      	# @return String - (string) The approval url that the application should redirect the user to in order to approve the payment.
      	####
      	def get_ApprovalURL()
      	  return @outputs["ApprovalURL"]
      	end
      end

    end # class AcceptPayPalPayment



    ##############################################################################
    #
    # ExecutePayment
    #
    # Executes a PayPal payment that has been accepted and approved.
    #
    ##############################################################################

    class ExecutePayment < Choreography

      ####
      #  Create a new instance of the ExecutePayment Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/PayPal/Payments/ExecutePayment")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ExecutePaymentInputSet
      ####
      def new_input_set()
        return ExecutePaymentInputSet.new()
      end

      def make_result_set()
        return ExecutePaymentResultSet.new()
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
        results = ExecutePaymentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ExecutePayment
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ExecutePaymentInputSet < Choreography::InputSet

        #### 
        # Set the value of the PayerID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the user who is making a payment.
        ###

        def set_PayerID(value)
          set_input("PayerID", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved from PayPal. Required unless providing the ClientID and ClientSecret which can be used to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by PayPal. Required unless a valid Access Token is provided.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by PayPal. Required unless a valid Access Token is provided.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the PaymentID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the payment to execute.
        ###

        def set_PaymentID(value)
          set_input("PaymentID", value)
        end
        #### 
        # Set the value of the Scope input for this Choreo. 
        # 
        # @param String - (optional, string) A space delimited list of resource URL endpoints that the token should have access for. This is only used when providing the ClientID and Client Secret in order to generate a new access token.
        ###

        def set_Scope(value)
          set_input("Scope", value)
        end
        #### 
        # Set the value of the UseSandbox input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
        ###

        def set_UseSandbox(value)
          set_input("UseSandbox", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ExecutePayment Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ExecutePaymentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "SaleID" output from this Choreo execution
      	#
      	# @return String - (string) The id of the sale that was just executed. This can be used to Lookup the sales transaction if needed.
      	####
      	def get_SaleID()
      	  return @outputs["SaleID"]
      	end
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The new access token retrieved from PayPal when providing the Client ID and Client Secret.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from PayPal.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ExecutePayment



    ##############################################################################
    #
    # ListPayments
    #
    # Retrieves a list of payments.
    #
    ##############################################################################

    class ListPayments < Choreography

      ####
      #  Create a new instance of the ListPayments Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/PayPal/Payments/ListPayments")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListPaymentsInputSet
      ####
      def new_input_set()
        return ListPaymentsInputSet.new()
      end

      def make_result_set()
        return ListPaymentsResultSet.new()
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
        results = ListPaymentsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListPayments
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListPaymentsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved from PayPal. Required unless providing the ClientID and ClientSecret which can be used to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by PayPal. Required unless a valid Access Token is provided.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by PayPal. Required unless a valid Access Token is provided.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of items to return. Default is 10 with a maximum value of 20.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the Scope input for this Choreo. 
        # 
        # @param String - (optional, string) A space delimited list of resource URL endpoints that the token should have access for. This is only used when providing the ClientID and Client Secret in order to generate a new access token.
        ###

        def set_Scope(value)
          set_input("Scope", value)
        end
        #### 
        # Set the value of the SortBy input for this Choreo. 
        # 
        # @param String - (optional, string) The field to sort results by. Valid values are: create_time and update_time.
        ###

        def set_SortBy(value)
          set_input("SortBy", value)
        end
        #### 
        # Set the value of the SortOrder input for this Choreo. 
        # 
        # @param String - (optional, string) The sort order of the results. Valid values are asc and desc (the default).
        ###

        def set_SortOrder(value)
          set_input("SortOrder", value)
        end
        #### 
        # Set the value of the StartID input for this Choreo. 
        # 
        # @param String - (optional, string) The resource ID that indicates the starting resource to return. When results are paged, you can use the next_id response value as the StartID to continue with the next set of results.
        ###

        def set_StartID(value)
          set_input("StartID", value)
        end
        #### 
        # Set the value of the StartIndex input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The start index of the resources to be returned. Used to jump to a specific position in the results.
        ###

        def set_StartIndex(value)
          set_input("StartIndex", value)
        end
        #### 
        # Set the value of the UseSandbox input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
        ###

        def set_UseSandbox(value)
          set_input("UseSandbox", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListPayments Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListPaymentsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The new access token retrieved from PayPal when providing the Client ID and Client Secret.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from PayPal.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListPayments



    ##############################################################################
    #
    # LookupPayment
    #
    # Retrieves a specific payment resource by ID.
    #
    ##############################################################################

    class LookupPayment < Choreography

      ####
      #  Create a new instance of the LookupPayment Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/PayPal/Payments/LookupPayment")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LookupPaymentInputSet
      ####
      def new_input_set()
        return LookupPaymentInputSet.new()
      end

      def make_result_set()
        return LookupPaymentResultSet.new()
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
        results = LookupPaymentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LookupPayment
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LookupPaymentInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved from PayPal. Required unless providing the ClientID and ClientSecret which can be used to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by PayPal. Required unless a valid Access Token is provided.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by PayPal. Required unless a valid Access Token is provided.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the PaymentID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the payment to retrieve.
        ###

        def set_PaymentID(value)
          set_input("PaymentID", value)
        end
        #### 
        # Set the value of the Scope input for this Choreo. 
        # 
        # @param String - (optional, string) A space delimited list of resource URL endpoints that the token should have access for. This is only used when providing the ClientID and Client Secret in order to generate a new access token.
        ###

        def set_Scope(value)
          set_input("Scope", value)
        end
        #### 
        # Set the value of the UseSandbox input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
        ###

        def set_UseSandbox(value)
          set_input("UseSandbox", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LookupPayment Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LookupPaymentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The new access token retrieved from PayPal when providing the Client ID and Client Secret.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      	####
      	# Retrieve the value for the "Total" output from this Choreo execution
      	#
      	# @return String - (decimal) The total amount of the payment.
      	####
      	def get_Total()
      	  return @outputs["Total"]
      	end
      	####
      	# Retrieve the value for the "PaymentState" output from this Choreo execution
      	#
      	# @return String - (string) The state of the payment.
      	####
      	def get_PaymentState()
      	  return @outputs["PaymentState"]
      	end
      	####
      	# Retrieve the value for the "SaleState" output from this Choreo execution
      	#
      	# @return String - (string) The state of the sale.
      	####
      	def get_SaleState()
      	  return @outputs["SaleState"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from PayPal.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Currency" output from this Choreo execution
      	#
      	# @return String - (string) The payment currency.
      	####
      	def get_Currency()
      	  return @outputs["Currency"]
      	end
      end

    end # class LookupPayment



    ##############################################################################
    #
    # VerifyAllPayments
    #
    # Verifies that a payment has been successfully completed.
    #
    ##############################################################################

    class VerifyAllPayments < Choreography

      ####
      #  Create a new instance of the VerifyAllPayments Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/PayPal/Payments/VerifyAllPayments")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return VerifyAllPaymentsInputSet
      ####
      def new_input_set()
        return VerifyAllPaymentsInputSet.new()
      end

      def make_result_set()
        return VerifyAllPaymentsResultSet.new()
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
        results = VerifyAllPaymentsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the VerifyAllPayments
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class VerifyAllPaymentsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved from PayPal. Required unless providing the ClientID and ClientSecret which can be used to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (conditional, string) Your PayPal AppID (or the default AppID for the PayPal sandbox: APP-80W284485P519543T). This is used to authenticate PayPal's Adaptive Payments API.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by PayPal. This is used to authenticate PayPal's REST API.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by PayPal. This is used to authenticate PayPal's REST API.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (conditional, string) The API Password provided by PayPal. This is used to authenticate PayPal's Adaptive Payments API.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ProofOfPayment input for this Choreo. 
        # 
        # @param String - (required, json) The proof of payment received from the client SDK. This can be a proof of payment received from the Adaptive Payment API or the REST API.
        ###

        def set_ProofOfPayment(value)
          set_input("ProofOfPayment", value)
        end
        #### 
        # Set the value of the Signature input for this Choreo. 
        # 
        # @param String - (conditional, string) The API Signature provided by PayPal. This is used to authenticate PayPal's Adaptive Payments API.
        ###

        def set_Signature(value)
          set_input("Signature", value)
        end
        #### 
        # Set the value of the UseSandbox input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
        ###

        def set_UseSandbox(value)
          set_input("UseSandbox", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (conditional, string) The API Username provided by PayPal. This is used to authenticate PayPal's Adaptive Payments API.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the VerifyAllPayments Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class VerifyAllPaymentsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "FailureDescription" output from this Choreo execution
      	#
      	# @return String - (json) When the payment details indicate that the payment status is not complete, this will contain a JSON dictionary of payment status descriptions.
      	####
      	def get_FailureDescription()
      	  return @outputs["FailureDescription"]
      	end
      	####
      	# Retrieve the value for the "VerificationStatus" output from this Choreo execution
      	#
      	# @return String - (string) The status of the payment verification. This will set to either "verified" or "unverified" depending on the status of the payment details.
      	####
      	def get_VerificationStatus()
      	  return @outputs["VerificationStatus"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from PayPal. This includes the full response from retrieving payment details from either the AdaptivePayments API or the Rest API.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class VerifyAllPayments



    ##############################################################################
    #
    # VerifyCreditCardPayment
    #
    # Verifies that a credit card payment from the PayPal REST API has been completed successfully.
    #
    ##############################################################################

    class VerifyCreditCardPayment < Choreography

      ####
      #  Create a new instance of the VerifyCreditCardPayment Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/PayPal/Payments/VerifyCreditCardPayment")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return VerifyCreditCardPaymentInputSet
      ####
      def new_input_set()
        return VerifyCreditCardPaymentInputSet.new()
      end

      def make_result_set()
        return VerifyCreditCardPaymentResultSet.new()
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
        results = VerifyCreditCardPaymentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the VerifyCreditCardPayment
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class VerifyCreditCardPaymentInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved from PayPal. Required unless providing the ClientID and ClientSecret which can be used to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by PayPal. This is used to authenticate PayPal's REST API.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by PayPal. This is used to authenticate PayPal's REST API.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the ProofOfPayment input for this Choreo. 
        # 
        # @param String - (conditional, json) The proof of payment received from the client SDK. This can be a proof of payment received from the Adaptive Payment API or the REST API.
        ###

        def set_ProofOfPayment(value)
          set_input("ProofOfPayment", value)
        end
        #### 
        # Set the value of the UseSandbox input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
        ###

        def set_UseSandbox(value)
          set_input("UseSandbox", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the VerifyCreditCardPayment Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class VerifyCreditCardPaymentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "FailureDescription" output from this Choreo execution
      	#
      	# @return String - (json) When the payment details indicate that the payment status is not complete, this will contain a JSON dictionary of payment status descriptions.
      	####
      	def get_FailureDescription()
      	  return @outputs["FailureDescription"]
      	end
      	####
      	# Retrieve the value for the "VerificationStatus" output from this Choreo execution
      	#
      	# @return String - (string) The status of the payment verification. This will set to either "verified" or "unverified" depending on the status of the payment details.
      	####
      	def get_VerificationStatus()
      	  return @outputs["VerificationStatus"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from PayPal. This includes the full response from retrieving payment details from the Rest API.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class VerifyCreditCardPayment



    ##############################################################################
    #
    # VerifyPayPalPayment
    #
    # Verifies that a PayPal payment from the Adaptive Payments API has been successfully completed.
    #
    ##############################################################################

    class VerifyPayPalPayment < Choreography

      ####
      #  Create a new instance of the VerifyPayPalPayment Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/PayPal/Payments/VerifyPayPalPayment")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return VerifyPayPalPaymentInputSet
      ####
      def new_input_set()
        return VerifyPayPalPaymentInputSet.new()
      end

      def make_result_set()
        return VerifyPayPalPaymentResultSet.new()
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
        results = VerifyPayPalPaymentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the VerifyPayPalPayment
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class VerifyPayPalPaymentInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (conditional, string) Your PayPal AppID (or the default AppID for the PayPal sandbox: APP-80W284485P519543T). This is used to authenticate PayPal's Adaptive Payments API.
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (conditional, string) The API Password provided by PayPal. This is used to authenticate PayPal's Adaptive Payments API.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ProofOfPayment input for this Choreo. 
        # 
        # @param String - (required, json) The proof of payment received from the client SDK. This can be a proof of payment received from the Adaptive Payment API or the REST API.
        ###

        def set_ProofOfPayment(value)
          set_input("ProofOfPayment", value)
        end
        #### 
        # Set the value of the Signature input for this Choreo. 
        # 
        # @param String - (conditional, string) The API Signature provided by PayPal. This is used to authenticate PayPal's Adaptive Payments API.
        ###

        def set_Signature(value)
          set_input("Signature", value)
        end
        #### 
        # Set the value of the UseSandbox input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
        ###

        def set_UseSandbox(value)
          set_input("UseSandbox", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (conditional, string) The API Username provided by PayPal. This is used to authenticate PayPal's Adaptive Payments API.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the VerifyPayPalPayment Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class VerifyPayPalPaymentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "VerificationStatus" output from this Choreo execution
      	#
      	# @return String - (string) The status of the payment verification. This will set to either "verified" or "unverified" depending on the status of the payment details.
      	####
      	def get_VerificationStatus()
      	  return @outputs["VerificationStatus"]
      	end
      	####
      	# Retrieve the value for the "FailureDescription" output from this Choreo execution
      	#
      	# @return String - (json) When the payment details indicate that the payment status is not complete, this will contain a JSON dictionary of payment status descriptions.
      	####
      	def get_FailureDescription()
      	  return @outputs["FailureDescription"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from PayPal. This includes the full response from retrieving payment details from the AdaptivePayments API.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class VerifyPayPalPayment




  end # module Payments
  ##############################################################################
  #
  # ProcessDirectPayment
  #
  # Enables you to process a credit card payment.
  #
  ##############################################################################

  class ProcessDirectPayment < Choreography

    ####
    #  Create a new instance of the ProcessDirectPayment Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/PayPal/ProcessDirectPayment")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ProcessDirectPaymentInputSet
    ####
    def new_input_set()
      return ProcessDirectPaymentInputSet.new()
    end

    def make_result_set()
      return ProcessDirectPaymentResultSet.new()
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
      results = ProcessDirectPaymentResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ProcessDirectPayment
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ProcessDirectPaymentInputSet < Choreography::InputSet

      #### 
      # Set the value of the Amount input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) The total cost of the transaction to the buyer.
      ###

      def set_Amount(value)
        set_input("Amount", value)
      end
      #### 
      # Set the value of the CardSecurityCode input for this Choreo. 
      # 
      # @param Integer - (required, integer) The card Verification value found on the back of the user's credit card. For Visa, MasterCard, and Discover, the value is exactly 3 digits. For American Express, the value is exactly 4 digits.
      ###

      def set_CardSecurityCode(value)
        set_input("CardSecurityCode", value)
      end
      #### 
      # Set the value of the City input for this Choreo. 
      # 
      # @param String - (required, string) The buyer's city.
      ###

      def set_City(value)
        set_input("City", value)
      end
      #### 
      # Set the value of the CountryCode input for this Choreo. 
      # 
      # @param String - (required, string) The country code associated with the buyer's address.
      ###

      def set_CountryCode(value)
        set_input("CountryCode", value)
      end
      #### 
      # Set the value of the CreditCardNumber input for this Choreo. 
      # 
      # @param Integer - (required, integer) The credit card number used in this payment.
      ###

      def set_CreditCardNumber(value)
        set_input("CreditCardNumber", value)
      end
      #### 
      # Set the value of the CreditCardType input for this Choreo. 
      # 
      # @param String - (required, string) The type of credit card being used for this payment.
      ###

      def set_CreditCardType(value)
        set_input("CreditCardType", value)
      end
      #### 
      # Set the value of the Email input for this Choreo. 
      # 
      # @param String - (optional, string) The email address of buyer.
      ###

      def set_Email(value)
        set_input("Email", value)
      end
      #### 
      # Set the value of the Endpoint input for this Choreo. 
      # 
      # @param String - (optional, string) Set to api-3t.paypal.com when running in production. Defaults to api-3t.sandbox.paypal.com for sandbox testing.
      ###

      def set_Endpoint(value)
        set_input("Endpoint", value)
      end
      #### 
      # Set the value of the ExpirationDate input for this Choreo. 
      # 
      # @param String - (required, date) The credit card expiration date. Include leading zero in month if it exists. Formatted like MMYYYY.
      ###

      def set_ExpirationDate(value)
        set_input("ExpirationDate", value)
      end
      #### 
      # Set the value of the FirstName input for this Choreo. 
      # 
      # @param String - (required, string) The buyer's first name.
      ###

      def set_FirstName(value)
        set_input("FirstName", value)
      end
      #### 
      # Set the value of the IPAddress input for this Choreo. 
      # 
      # @param String - (required, string) The IP address of the buyer's browser.
      ###

      def set_IPAddress(value)
        set_input("IPAddress", value)
      end
      #### 
      # Set the value of the LastName input for this Choreo. 
      # 
      # @param String - (required, string) The buyer's last name.
      ###

      def set_LastName(value)
        set_input("LastName", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The API Password provided by PayPal.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the PaymentAction input for this Choreo. 
      # 
      # @param String - (optional, string) Indicates how you want to obtain payment. Accepted values are "Authorization" or "Sale". Defaults to "Sale".
      ###

      def set_PaymentAction(value)
        set_input("PaymentAction", value)
      end
      #### 
      # Set the value of the PhoneNumber input for this Choreo. 
      # 
      # @param String - (optional, string) The buyer's phone number.
      ###

      def set_PhoneNumber(value)
        set_input("PhoneNumber", value)
      end
      #### 
      # Set the value of the ReturnFMFDetails input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Flag  to indicate whether you want the results returned by Fraud Management Fitlers. Defaults to 0.
      ###

      def set_ReturnFMFDetails(value)
        set_input("ReturnFMFDetails", value)
      end
      #### 
      # Set the value of the Signature input for this Choreo. 
      # 
      # @param String - (required, string) The API Signature provided by PayPal.
      ###

      def set_Signature(value)
        set_input("Signature", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (required, string) The buyer's state or province.
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Street2 input for this Choreo. 
      # 
      # @param String - (optional, string) The second line of the buyer's address (if it exists).
      ###

      def set_Street2(value)
        set_input("Street2", value)
      end
      #### 
      # Set the value of the Street input for this Choreo. 
      # 
      # @param String - (required, string) The buyer's street address (line 1 of address).
      ###

      def set_Street(value)
        set_input("Street", value)
      end
      #### 
      # Set the value of the User input for this Choreo. 
      # 
      # @param String - (required, string) The API Username provided by PayPal.
      ###

      def set_User(value)
        set_input("User", value)
      end
      #### 
      # Set the value of the Zip input for this Choreo. 
      # 
      # @param String - (required, string) The postal code associated with the buyer's address.
      ###

      def set_Zip(value)
        set_input("Zip", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ProcessDirectPayment Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ProcessDirectPaymentResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (string) The full response from PayPal formatted in name/value pairs.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    	####
    	# Retrieve the value for the "Acknowledged" output from this Choreo execution
    	#
    	# @return String - (string) Indicates the status of the request. Should contain "Sucess" or "Failure".
    	####
    	def get_Acknowledged()
    	  return @outputs["Acknowledged"]
    	end
    	####
    	# Retrieve the value for the "Timestamp" output from this Choreo execution
    	#
    	# @return String - (date) The timestamp associated with the payment request.
    	####
    	def get_Timestamp()
    	  return @outputs["Timestamp"]
    	end
    	####
    	# Retrieve the value for the "ErrorMessage" output from this Choreo execution
    	#
    	# @return String - (string) This will contain any error message returned by PayPal during this operation.
    	####
    	def get_ErrorMessage()
    	  return @outputs["ErrorMessage"]
    	end
    	####
    	# Retrieve the value for the "CorrelationId" output from this Choreo execution
    	#
    	# @return String - (string) A unique id returned by PayPal for this payment.
    	####
    	def get_CorrelationId()
    	  return @outputs["CorrelationId"]
    	end
    end

  end # class ProcessDirectPayment



  ##############################################################################
  #
  # RefundTransaction
  #
  # Issue a refund to a PayPal buyer by specifying a transaction ID.
  #
  ##############################################################################

  class RefundTransaction < Choreography

    ####
    #  Create a new instance of the RefundTransaction Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/PayPal/RefundTransaction")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RefundTransactionInputSet
    ####
    def new_input_set()
      return RefundTransactionInputSet.new()
    end

    def make_result_set()
      return RefundTransactionResultSet.new()
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
      results = RefundTransactionResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RefundTransaction
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RefundTransactionInputSet < Choreography::InputSet

      #### 
      # Set the value of the Amount input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) Refund amount. Amount is required if RefundType is set to Partial. If RefundType is set to Full, leave input blank.
      ###

      def set_Amount(value)
        set_input("Amount", value)
      end
      #### 
      # Set the value of the CurrencyCode input for this Choreo. 
      # 
      # @param String - (optional, string) A three-character currency code (i.e. USD). Required for partial refunds. Leave this field blank for full refunds. Defaults to USD.
      ###

      def set_CurrencyCode(value)
        set_input("CurrencyCode", value)
      end
      #### 
      # Set the value of the Endpoint input for this Choreo. 
      # 
      # @param String - (optional, string) Set to api-3t.paypal.com when running in production. Defaults to api-3t.sandbox.paypal.com for sandbox testing.
      ###

      def set_Endpoint(value)
        set_input("Endpoint", value)
      end
      #### 
      # Set the value of the InvoiceID input for this Choreo. 
      # 
      # @param String - (optional, string) Your own invoice or tracking number. Character length limitation is 127 alphanumeric characters.
      ###

      def set_InvoiceID(value)
        set_input("InvoiceID", value)
      end
      #### 
      # Set the value of the Note input for this Choreo. 
      # 
      # @param String - (optional, string) Custom note about the refund. Character length limitation is 255 alphanumeric characters.
      ###

      def set_Note(value)
        set_input("Note", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The API Password provided by PayPal.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the RefundType input for this Choreo. 
      # 
      # @param String - (required, string) The refund type must be set to Full or Partial.  This flag effects what values some other input variables should have. Defaults to Full.
      ###

      def set_RefundType(value)
        set_input("RefundType", value)
      end
      #### 
      # Set the value of the Signature input for this Choreo. 
      # 
      # @param String - (required, string) The API Signature provided by PayPal.
      ###

      def set_Signature(value)
        set_input("Signature", value)
      end
      #### 
      # Set the value of the TransactionID input for this Choreo. 
      # 
      # @param String - (required, string) The ID for the transaction you want to retrieve data for.
      ###

      def set_TransactionID(value)
        set_input("TransactionID", value)
      end
      #### 
      # Set the value of the User input for this Choreo. 
      # 
      # @param String - (required, string) The API Username provided by PayPal.
      ###

      def set_User(value)
        set_input("User", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RefundTransaction Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RefundTransactionResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (string) Response from PayPal formatted in name/value pairs.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RefundTransaction




  module Refunds



    ##############################################################################
    #
    # LookupRefund
    #
    # Retrieves details about a specific refund.
    #
    ##############################################################################

    class LookupRefund < Choreography

      ####
      #  Create a new instance of the LookupRefund Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/PayPal/Refunds/LookupRefund")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LookupRefundInputSet
      ####
      def new_input_set()
        return LookupRefundInputSet.new()
      end

      def make_result_set()
        return LookupRefundResultSet.new()
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
        results = LookupRefundResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LookupRefund
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LookupRefundInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved from PayPal. Required unless providing the ClientID and ClientSecret which can be used to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by PayPal. Required unless a valid Access Token is provided.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by PayPal. Required unless a valid Access Token is provided.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the RefundID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the refund to retrieve.
        ###

        def set_RefundID(value)
          set_input("RefundID", value)
        end
        #### 
        # Set the value of the Scope input for this Choreo. 
        # 
        # @param String - (optional, string) A space delimited list of resource URL endpoints that the token should have access for. This is only used when providing the ClientID and Client Secret in order to generate a new access token.
        ###

        def set_Scope(value)
          set_input("Scope", value)
        end
        #### 
        # Set the value of the UseSandbox input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
        ###

        def set_UseSandbox(value)
          set_input("UseSandbox", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LookupRefund Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LookupRefundResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The new access token retrieved from PayPal when providing the Client ID and Client Secret.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from PayPal.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class LookupRefund




  end # module Refunds

  module SaleTransactions



    ##############################################################################
    #
    # LookupSale
    #
    # Retrieves details about a sale transaction.
    #
    ##############################################################################

    class LookupSale < Choreography

      ####
      #  Create a new instance of the LookupSale Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/PayPal/SaleTransactions/LookupSale")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LookupSaleInputSet
      ####
      def new_input_set()
        return LookupSaleInputSet.new()
      end

      def make_result_set()
        return LookupSaleResultSet.new()
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
        results = LookupSaleResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LookupSale
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LookupSaleInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved from PayPal. Required unless providing the ClientID and ClientSecret which can be used to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by PayPal. Required unless a valid Access Token is provided.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by PayPal. Required unless a valid Access Token is provided.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the SaleID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the sale to retrieve.
        ###

        def set_SaleID(value)
          set_input("SaleID", value)
        end
        #### 
        # Set the value of the Scope input for this Choreo. 
        # 
        # @param String - (optional, string) A space delimited list of resource URL endpoints that the token should have access for. This is only used when providing the ClientID and Client Secret in order to generate a new access token.
        ###

        def set_Scope(value)
          set_input("Scope", value)
        end
        #### 
        # Set the value of the UseSandbox input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
        ###

        def set_UseSandbox(value)
          set_input("UseSandbox", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LookupSale Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LookupSaleResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from PayPal.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The new access token retrieved from PayPal when providing the Client ID and Client Secret.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      end

    end # class LookupSale



    ##############################################################################
    #
    # RefundSale
    #
    # Allows your application to refund a completed payment.
    #
    ##############################################################################

    class RefundSale < Choreography

      ####
      #  Create a new instance of the RefundSale Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/PayPal/SaleTransactions/RefundSale")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RefundSaleInputSet
      ####
      def new_input_set()
        return RefundSaleInputSet.new()
      end

      def make_result_set()
        return RefundSaleResultSet.new()
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
        results = RefundSaleResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RefundSale
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RefundSaleInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved from PayPal. Required unless providing the ClientID and ClientSecret which can be used to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by PayPal. Required unless a valid Access Token is provided.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by PayPal. Required unless a valid Access Token is provided.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Currency input for this Choreo. 
        # 
        # @param String - (required, string) The currency associated with the sale (i.e. USD).
        ###

        def set_Currency(value)
          set_input("Currency", value)
        end
        #### 
        # Set the value of the SaleID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the sale to retrieve.
        ###

        def set_SaleID(value)
          set_input("SaleID", value)
        end
        #### 
        # Set the value of the Scope input for this Choreo. 
        # 
        # @param String - (optional, string) A space delimited list of resource URL endpoints that the token should have access for. This is only used when providing the ClientID and Client Secret in order to generate a new access token.
        ###

        def set_Scope(value)
          set_input("Scope", value)
        end
        #### 
        # Set the value of the Total input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The total amount to refund.
        ###

        def set_Total(value)
          set_input("Total", value)
        end
        #### 
        # Set the value of the UseSandbox input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
        ###

        def set_UseSandbox(value)
          set_input("UseSandbox", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RefundSale Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RefundSaleResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "RefundID" output from this Choreo execution
      	#
      	# @return String - (string) The id of the refund. This can be used to lookup the refund later if needed.
      	####
      	def get_RefundID()
      	  return @outputs["RefundID"]
      	end
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The new access token retrieved from PayPal when providing the Client ID and Client Secret.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from PayPal.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RefundSale




  end # module SaleTransactions
  ##############################################################################
  #
  # TransactionSearch
  #
  # Retrieves transaction history for transactions that meet a specified criteria.
  #
  ##############################################################################

  class TransactionSearch < Choreography

    ####
    #  Create a new instance of the TransactionSearch Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/PayPal/TransactionSearch")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return TransactionSearchInputSet
    ####
    def new_input_set()
      return TransactionSearchInputSet.new()
    end

    def make_result_set()
      return TransactionSearchResultSet.new()
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
      results = TransactionSearchResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the TransactionSearch
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class TransactionSearchInputSet < Choreography::InputSet

      #### 
      # Set the value of the Account input for this Choreo. 
      # 
      # @param String - (optional, string) Search by credit card number.
      ###

      def set_Account(value)
        set_input("Account", value)
      end
      #### 
      # Set the value of the AuctionItemNumber input for this Choreo. 
      # 
      # @param String - (optional, string) Search by auction item number of the purchased item.
      ###

      def set_AuctionItemNumber(value)
        set_input("AuctionItemNumber", value)
      end
      #### 
      # Set the value of the CurrencyCode input for this Choreo. 
      # 
      # @param String - (optional, string) Search by currency code (i.e. USD).
      ###

      def set_CurrencyCode(value)
        set_input("CurrencyCode", value)
      end
      #### 
      # Set the value of the Email input for this Choreo. 
      # 
      # @param String - (optional, string) Search by email.
      ###

      def set_Email(value)
        set_input("Email", value)
      end
      #### 
      # Set the value of the EndDate input for this Choreo. 
      # 
      # @param String - (optional, date) The latest transaction date to return. Must be an epoch timestamp in milliseconds or formatted in UTC like: 2011-05-19T00:00:00Z.
      ###

      def set_EndDate(value)
        set_input("EndDate", value)
      end
      #### 
      # Set the value of the Endpoint input for this Choreo. 
      # 
      # @param String - (optional, string) Set to api-3t.paypal.com when running in production. Defaults to api-3t.sandbox.paypal.com for sandbox testing.
      ###

      def set_Endpoint(value)
        set_input("Endpoint", value)
      end
      #### 
      # Set the value of the InvoiceNumber input for this Choreo. 
      # 
      # @param String - (optional, string) Search by invoice number.
      ###

      def set_InvoiceNumber(value)
        set_input("InvoiceNumber", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The API Password provided by PayPal.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the ReceiptId input for this Choreo. 
      # 
      # @param String - (optional, string) Search by the PayPal receipt ID.
      ###

      def set_ReceiptId(value)
        set_input("ReceiptId", value)
      end
      #### 
      # Set the value of the Receiver input for this Choreo. 
      # 
      # @param String - (optional, string) Search by the email address of the receiver.
      ###

      def set_Receiver(value)
        set_input("Receiver", value)
      end
      #### 
      # Set the value of the Signature input for this Choreo. 
      # 
      # @param String - (required, string) The API Signature provided by PayPal.
      ###

      def set_Signature(value)
        set_input("Signature", value)
      end
      #### 
      # Set the value of the StartDate input for this Choreo. 
      # 
      # @param String - (required, date) The earliest transaction date to return. Must be an epoch timestamp in milliseconds or formatted in UTC like: 2011-05-19T00:00:00Z.
      ###

      def set_StartDate(value)
        set_input("StartDate", value)
      end
      #### 
      # Set the value of the TransactionAmount input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) Search by transaction amount.
      ###

      def set_TransactionAmount(value)
        set_input("TransactionAmount", value)
      end
      #### 
      # Set the value of the TransactionClass input for this Choreo. 
      # 
      # @param String - (optional, string) Search by classification of transaction (i.e. All, Sent, Recieved, etc).
      ###

      def set_TransactionClass(value)
        set_input("TransactionClass", value)
      end
      #### 
      # Set the value of the TransactionId input for this Choreo. 
      # 
      # @param String - (optional, string) Search by the transaction ID
      ###

      def set_TransactionId(value)
        set_input("TransactionId", value)
      end
      #### 
      # Set the value of the TransactionStatus input for this Choreo. 
      # 
      # @param String - (optional, string) Search by transaction status (i.e. Pending, Processing, Success, Denied, Reversed).
      ###

      def set_TransactionStatus(value)
        set_input("TransactionStatus", value)
      end
      #### 
      # Set the value of the User input for this Choreo. 
      # 
      # @param String - (required, string) The API Username provided by PayPal.
      ###

      def set_User(value)
        set_input("User", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the TransactionSearch Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class TransactionSearchResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (string) Response from PayPal formatted in name/value pairs.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class TransactionSearch




  module Vault



    ##############################################################################
    #
    # LookupCreditCard
    #
    # Retrieves details for a specific stored credit card.
    #
    ##############################################################################

    class LookupCreditCard < Choreography

      ####
      #  Create a new instance of the LookupCreditCard Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/PayPal/Vault/LookupCreditCard")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LookupCreditCardInputSet
      ####
      def new_input_set()
        return LookupCreditCardInputSet.new()
      end

      def make_result_set()
        return LookupCreditCardResultSet.new()
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
        results = LookupCreditCardResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LookupCreditCard
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LookupCreditCardInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved from PayPal. Required unless providing the ClientID and ClientSecret which can be used to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by PayPal. Required unless a valid Access Token is provided.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by PayPal. Required unless a valid Access Token is provided.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the CreditCardID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the credit card to retrieve.
        ###

        def set_CreditCardID(value)
          set_input("CreditCardID", value)
        end
        #### 
        # Set the value of the Scope input for this Choreo. 
        # 
        # @param String - (optional, string) A space delimited list of resource URL endpoints that the token should have access for. This is only used when providing the ClientID and Client Secret in order to generate a new access token.
        ###

        def set_Scope(value)
          set_input("Scope", value)
        end
        #### 
        # Set the value of the UseSandbox input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
        ###

        def set_UseSandbox(value)
          set_input("UseSandbox", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LookupCreditCard Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LookupCreditCardResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from PayPal.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The new access token retrieved from PayPal when providing the Client ID and Client Secret.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      end

    end # class LookupCreditCard




  end # module Vault

end # module PayPal