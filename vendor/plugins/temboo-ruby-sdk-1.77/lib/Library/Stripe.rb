require "temboo"

module Stripe




  module Account



    ##############################################################################
    #
    # RetrieveAccountDetails
    #
    # Retrieves the details of the account.
    #
    ##############################################################################

    class RetrieveAccountDetails < Choreography

      ####
      #  Create a new instance of the RetrieveAccountDetails Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Account/RetrieveAccountDetails")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveAccountDetailsInputSet
      ####
      def new_input_set()
        return RetrieveAccountDetailsInputSet.new()
      end

      def make_result_set()
        return RetrieveAccountDetailsResultSet.new()
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
        results = RetrieveAccountDetailsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveAccountDetails
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveAccountDetailsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveAccountDetails Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveAccountDetailsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveAccountDetails




  end # module Account
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
      super(session, "/Library/Stripe/CancelSubscription")
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
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the AtPeriodEnd input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Delays the cancellation of the subscription until the end of the current period when set to 1. Defaults to 0.
      ###

      def set_AtPeriodEnd(value)
        set_input("AtPeriodEnd", value)
      end
      #### 
      # Set the value of the CustomerId input for this Choreo. 
      # 
      # @param String - (required, string) The id of the customer whose subscription you want to cancel
      ###

      def set_CustomerId(value)
        set_input("CustomerId", value)
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
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CancelSubscription




  module Charges



    ##############################################################################
    #
    # CreateNewChargeForExistingCustomer
    #
    # Creates a new charge object in order to charge a credit card for an existing customer.
    #
    ##############################################################################

    class CreateNewChargeForExistingCustomer < Choreography

      ####
      #  Create a new instance of the CreateNewChargeForExistingCustomer Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Charges/CreateNewChargeForExistingCustomer")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateNewChargeForExistingCustomerInputSet
      ####
      def new_input_set()
        return CreateNewChargeForExistingCustomerInputSet.new()
      end

      def make_result_set()
        return CreateNewChargeForExistingCustomerResultSet.new()
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
        results = CreateNewChargeForExistingCustomerResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateNewChargeForExistingCustomer
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateNewChargeForExistingCustomerInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Amount input for this Choreo. 
        # 
        # @param Integer - (required, integer) The amount to charge a customer in cents
        ###

        def set_Amount(value)
          set_input("Amount", value)
        end
        #### 
        # Set the value of the Currency input for this Choreo. 
        # 
        # @param String - (optional, string) 3-letter ISO code for currency. Defaults to 'usd' which is currently the only supported currency.
        ###

        def set_Currency(value)
          set_input("Currency", value)
        end
        #### 
        # Set the value of the CustomerID input for this Choreo. 
        # 
        # @param String - (required, string) The id for the customer to charge
        ###

        def set_CustomerID(value)
          set_input("CustomerID", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) An arbitrary string of text that will be associated with the charge as a description
        ###

        def set_Description(value)
          set_input("Description", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateNewChargeForExistingCustomer Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateNewChargeForExistingCustomerResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateNewChargeForExistingCustomer



    ##############################################################################
    #
    # CreateNewChargeWithToken
    #
    # Charges a credit card by creating a new charge object using a card token that is associated with the credit card details.
    #
    ##############################################################################

    class CreateNewChargeWithToken < Choreography

      ####
      #  Create a new instance of the CreateNewChargeWithToken Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Charges/CreateNewChargeWithToken")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateNewChargeWithTokenInputSet
      ####
      def new_input_set()
        return CreateNewChargeWithTokenInputSet.new()
      end

      def make_result_set()
        return CreateNewChargeWithTokenResultSet.new()
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
        results = CreateNewChargeWithTokenResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateNewChargeWithToken
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateNewChargeWithTokenInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Amount input for this Choreo. 
        # 
        # @param Integer - (required, integer) The amount to charge a customer in cents
        ###

        def set_Amount(value)
          set_input("Amount", value)
        end
        #### 
        # Set the value of the Currency input for this Choreo. 
        # 
        # @param String - (optional, string) 3-letter ISO code for currency. Defaults to 'usd' which is currently the only supported currency.
        ###

        def set_Currency(value)
          set_input("Currency", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) An arbitrary string of text that will be associated with the charge as a description
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the Token input for this Choreo. 
        # 
        # @param String - (required, string) The token associated with a set of credit card details.
        ###

        def set_Token(value)
          set_input("Token", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateNewChargeWithToken Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateNewChargeWithTokenResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateNewChargeWithToken



    ##############################################################################
    #
    # ListAllCharges
    #
    # Returns a list of all charges or a list of charges for a specified customer.
    #
    ##############################################################################

    class ListAllCharges < Choreography

      ####
      #  Create a new instance of the ListAllCharges Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Charges/ListAllCharges")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListAllChargesInputSet
      ####
      def new_input_set()
        return ListAllChargesInputSet.new()
      end

      def make_result_set()
        return ListAllChargesResultSet.new()
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
        results = ListAllChargesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListAllCharges
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListAllChargesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The limit of charges to be returned. Can range from 1 to 100. Defaults to 10.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the CustomerID input for this Choreo. 
        # 
        # @param String - (optional, string) The unique identifier of the customer whose charges to return. If not specified, all charges will be returned.
        ###

        def set_CustomerID(value)
          set_input("CustomerID", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Stripe will return a list of charges starting at the specified offset. Defaults to 0.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListAllCharges Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListAllChargesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListAllCharges



    ##############################################################################
    #
    # RefundCharge
    #
    # Issues a refund of an existing credit card charge.
    #
    ##############################################################################

    class RefundCharge < Choreography

      ####
      #  Create a new instance of the RefundCharge Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Charges/RefundCharge")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RefundChargeInputSet
      ####
      def new_input_set()
        return RefundChargeInputSet.new()
      end

      def make_result_set()
        return RefundChargeResultSet.new()
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
        results = RefundChargeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RefundCharge
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RefundChargeInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Amount input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The amount to refund to the customer in cents. When left empty, the entire charge is refunded.
        ###

        def set_Amount(value)
          set_input("Amount", value)
        end
        #### 
        # Set the value of the ChargeID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier of the charge to be refunded
        ###

        def set_ChargeID(value)
          set_input("ChargeID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RefundCharge Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RefundChargeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RefundCharge



    ##############################################################################
    #
    # RetrieveCharge
    #
    # Retrieves the details of an existing charge.
    #
    ##############################################################################

    class RetrieveCharge < Choreography

      ####
      #  Create a new instance of the RetrieveCharge Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Charges/RetrieveCharge")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveChargeInputSet
      ####
      def new_input_set()
        return RetrieveChargeInputSet.new()
      end

      def make_result_set()
        return RetrieveChargeResultSet.new()
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
        results = RetrieveChargeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveCharge
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveChargeInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ChargeID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier of the charge you want to retrieve
        ###

        def set_ChargeID(value)
          set_input("ChargeID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveCharge Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveChargeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveCharge




  end # module Charges

  module Coupons



    ##############################################################################
    #
    # CreateCoupon
    #
    # Creates a coupon that can be redeemed by customers for a discount.
    #
    ##############################################################################

    class CreateCoupon < Choreography

      ####
      #  Create a new instance of the CreateCoupon Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Coupons/CreateCoupon")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateCouponInputSet
      ####
      def new_input_set()
        return CreateCouponInputSet.new()
      end

      def make_result_set()
        return CreateCouponResultSet.new()
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
        results = CreateCouponResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateCoupon
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateCouponInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CouponID input for this Choreo. 
        # 
        # @param String - (optional, string) The unique identifier of your choice for the coupon. If not specified, a random code will be generated by Stripe.
        ###

        def set_CouponID(value)
          set_input("CouponID", value)
        end
        #### 
        # Set the value of the DurationInMonths input for this Choreo. 
        # 
        # @param Integer - (optional, integer) If Duration is set to 'repeating', specify the number of months the discount will be valid.
        ###

        def set_DurationInMonths(value)
          set_input("DurationInMonths", value)
        end
        #### 
        # Set the value of the Duration input for this Choreo. 
        # 
        # @param String - (required, string) Indicates how long the discount will be in effect. Valid values are: forever, once, repeating.
        ###

        def set_Duration(value)
          set_input("Duration", value)
        end
        #### 
        # Set the value of the MaxRedemptions input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specify the number times the coupon can be used.
        ###

        def set_MaxRedemptions(value)
          set_input("MaxRedemptions", value)
        end
        #### 
        # Set the value of the PercentOff input for this Choreo. 
        # 
        # @param Integer - (required, integer) A integer between 1 and 100 that represents the discount that the coupon will apply when used by a customer
        ###

        def set_PercentOff(value)
          set_input("PercentOff", value)
        end
        #### 
        # Set the value of the RedeemBy input for this Choreo. 
        # 
        # @param String - (optional, date) An epoch timestamp in seconds representing the the last time at which the coupon can be used. Specify timestamp in UTC.
        ###

        def set_RedeemBy(value)
          set_input("RedeemBy", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateCoupon Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateCouponResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateCoupon



    ##############################################################################
    #
    # DeleteCoupon
    #
    # Deletes a specified coupon.
    #
    ##############################################################################

    class DeleteCoupon < Choreography

      ####
      #  Create a new instance of the DeleteCoupon Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Coupons/DeleteCoupon")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteCouponInputSet
      ####
      def new_input_set()
        return DeleteCouponInputSet.new()
      end

      def make_result_set()
        return DeleteCouponResultSet.new()
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
        results = DeleteCouponResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteCoupon
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteCouponInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CouponID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier of the coupon you wish to delete
        ###

        def set_CouponID(value)
          set_input("CouponID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteCoupon Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteCouponResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteCoupon



    ##############################################################################
    #
    # ListAllCoupons
    #
    # Retrieves a a list of your coupons.
    #
    ##############################################################################

    class ListAllCoupons < Choreography

      ####
      #  Create a new instance of the ListAllCoupons Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Coupons/ListAllCoupons")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListAllCouponsInputSet
      ####
      def new_input_set()
        return ListAllCouponsInputSet.new()
      end

      def make_result_set()
        return ListAllCouponsResultSet.new()
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
        results = ListAllCouponsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListAllCoupons
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListAllCouponsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A limit on the number of coupons to be returned. Valid values are 1 through 100.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) An offset into your coupons array. The API will return the requested number of coupons starting at that the specified offset.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListAllCoupons Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListAllCouponsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListAllCoupons



    ##############################################################################
    #
    # RetrieveCoupon
    #
    # Retrieves a coupon with specified coupon id.
    #
    ##############################################################################

    class RetrieveCoupon < Choreography

      ####
      #  Create a new instance of the RetrieveCoupon Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Coupons/RetrieveCoupon")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveCouponInputSet
      ####
      def new_input_set()
        return RetrieveCouponInputSet.new()
      end

      def make_result_set()
        return RetrieveCouponResultSet.new()
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
        results = RetrieveCouponResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveCoupon
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveCouponInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CouponID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier of the coupon you want to retrieve
        ###

        def set_CouponID(value)
          set_input("CouponID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveCoupon Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveCouponResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveCoupon




  end # module Coupons
  ##############################################################################
  #
  # CreateCardToken
  #
  # Creates a single use token associated with credit card details.
  #
  ##############################################################################

  class CreateCardToken < Choreography

    ####
    #  Create a new instance of the CreateCardToken Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/CreateCardToken")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CreateCardTokenInputSet
    ####
    def new_input_set()
      return CreateCardTokenInputSet.new()
    end

    def make_result_set()
      return CreateCardTokenResultSet.new()
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
      results = CreateCardTokenResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CreateCardToken
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CreateCardTokenInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the AddressLine1 input for this Choreo. 
      # 
      # @param String - (optional, string) The first line of the address that is associated with the credit card billing address
      ###

      def set_AddressLine1(value)
        set_input("AddressLine1", value)
      end
      #### 
      # Set the value of the AddressLine2 input for this Choreo. 
      # 
      # @param String - (optional, string) The second line of the address that is associated with the credit card billing address
      ###

      def set_AddressLine2(value)
        set_input("AddressLine2", value)
      end
      #### 
      # Set the value of the Amount input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The amount to charge a customer in cents. This option will guarantee that there are enough funds to satisfy a charge for this amount.
      ###

      def set_Amount(value)
        set_input("Amount", value)
      end
      #### 
      # Set the value of the CVC input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The 3-digit card security code
      ###

      def set_CVC(value)
        set_input("CVC", value)
      end
      #### 
      # Set the value of the CardNumber input for this Choreo. 
      # 
      # @param Integer - (required, integer) The credit card number without any separators
      ###

      def set_CardNumber(value)
        set_input("CardNumber", value)
      end
      #### 
      # Set the value of the CardholderName input for this Choreo. 
      # 
      # @param String - (optional, string) The cardholder's full name as it appears on the credit card
      ###

      def set_CardholderName(value)
        set_input("CardholderName", value)
      end
      #### 
      # Set the value of the Country input for this Choreo. 
      # 
      # @param String - (optional, string) The country associated with the credit card billing address
      ###

      def set_Country(value)
        set_input("Country", value)
      end
      #### 
      # Set the value of the Currency input for this Choreo. 
      # 
      # @param String - (optional, string) 3-letter ISO code for currency. Defaults to 'usd' which is currently the only supported currency.
      ###

      def set_Currency(value)
        set_input("Currency", value)
      end
      #### 
      # Set the value of the ExpirationMonth input for this Choreo. 
      # 
      # @param Integer - (required, integer) The card's expiration month as a two digit number
      ###

      def set_ExpirationMonth(value)
        set_input("ExpirationMonth", value)
      end
      #### 
      # Set the value of the ExpirationYear input for this Choreo. 
      # 
      # @param Integer - (required, integer) The card's expiration year as a 4 digit number
      ###

      def set_ExpirationYear(value)
        set_input("ExpirationYear", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) The state of the address that is associated with the credit card billing address
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the ZipCode input for this Choreo. 
      # 
      # @param String - (optional, string) The zip code of the address that is associated with the credit card billing address
      ###

      def set_ZipCode(value)
        set_input("ZipCode", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreateCardToken Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreateCardTokenResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreateCardToken



  ##############################################################################
  #
  # CreateCoupon
  #
  # Creates a coupon that can be redeemed by customers for a discount.
  #
  ##############################################################################

  class CreateCoupon < Choreography

    ####
    #  Create a new instance of the CreateCoupon Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/CreateCoupon")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CreateCouponInputSet
    ####
    def new_input_set()
      return CreateCouponInputSet.new()
    end

    def make_result_set()
      return CreateCouponResultSet.new()
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
      results = CreateCouponResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CreateCoupon
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CreateCouponInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the CouponId input for this Choreo. 
      # 
      # @param String - (optional, string) The unique identifier of your choice for the coupon. If not specified, a random code will be generated by Stripe.
      ###

      def set_CouponId(value)
        set_input("CouponId", value)
      end
      #### 
      # Set the value of the DurationInMonths input for this Choreo. 
      # 
      # @param Integer - (optional, integer) If Duration is set to 'repeating', specify the number of months the discount will be valid.
      ###

      def set_DurationInMonths(value)
        set_input("DurationInMonths", value)
      end
      #### 
      # Set the value of the Duration input for this Choreo. 
      # 
      # @param String - (required, string) Indicates how long the discount will be in effect. Valid values are: forever, once, repeating.
      ###

      def set_Duration(value)
        set_input("Duration", value)
      end
      #### 
      # Set the value of the MaxRedemptions input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the number times the coupon can be used.
      ###

      def set_MaxRedemptions(value)
        set_input("MaxRedemptions", value)
      end
      #### 
      # Set the value of the PercentOff input for this Choreo. 
      # 
      # @param Integer - (required, integer) A integer between 1 and 100 that represents the discount that the coupon will apply when used by a customer
      ###

      def set_PercentOff(value)
        set_input("PercentOff", value)
      end
      #### 
      # Set the value of the RedeemBy input for this Choreo. 
      # 
      # @param String - (optional, date) An epoch timestamp in seconds representing the the last time at which the coupon can be used. Specify timestamp in UTC.
      ###

      def set_RedeemBy(value)
        set_input("RedeemBy", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreateCoupon Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreateCouponResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreateCoupon



  ##############################################################################
  #
  # CreateInvoiceItem
  #
  # Adds a charge or credit to the customer's next invoice.
  #
  ##############################################################################

  class CreateInvoiceItem < Choreography

    ####
    #  Create a new instance of the CreateInvoiceItem Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/CreateInvoiceItem")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CreateInvoiceItemInputSet
    ####
    def new_input_set()
      return CreateInvoiceItemInputSet.new()
    end

    def make_result_set()
      return CreateInvoiceItemResultSet.new()
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
      results = CreateInvoiceItemResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CreateInvoiceItem
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CreateInvoiceItemInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the Amount input for this Choreo. 
      # 
      # @param Integer - (required, integer) The amount in cents of the charge to be included in the customer's next invoice
      ###

      def set_Amount(value)
        set_input("Amount", value)
      end
      #### 
      # Set the value of the Currency input for this Choreo. 
      # 
      # @param String - (optional, string) 3-letter ISO code for currency. Defaults to 'usd' which is currently the only supported currency.
      ###

      def set_Currency(value)
        set_input("Currency", value)
      end
      #### 
      # Set the value of the CustomerId input for this Choreo. 
      # 
      # @param String - (required, string) The unique identifier of the customer you want to create an invoice item for
      ###

      def set_CustomerId(value)
        set_input("CustomerId", value)
      end
      #### 
      # Set the value of the Description input for this Choreo. 
      # 
      # @param String - (optional, string) An arbitrary string of text that will be included with the invoice item
      ###

      def set_Description(value)
        set_input("Description", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreateInvoiceItem Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreateInvoiceItemResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreateInvoiceItem



  ##############################################################################
  #
  # CreateNewChargeForExistingCustomer
  #
  # Creates a new charge object in order to charge a credit card for an existing customer.
  #
  ##############################################################################

  class CreateNewChargeForExistingCustomer < Choreography

    ####
    #  Create a new instance of the CreateNewChargeForExistingCustomer Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/CreateNewChargeForExistingCustomer")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CreateNewChargeForExistingCustomerInputSet
    ####
    def new_input_set()
      return CreateNewChargeForExistingCustomerInputSet.new()
    end

    def make_result_set()
      return CreateNewChargeForExistingCustomerResultSet.new()
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
      results = CreateNewChargeForExistingCustomerResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CreateNewChargeForExistingCustomer
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CreateNewChargeForExistingCustomerInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the Amount input for this Choreo. 
      # 
      # @param Integer - (required, integer) The amount to charge a customer in cents
      ###

      def set_Amount(value)
        set_input("Amount", value)
      end
      #### 
      # Set the value of the Currency input for this Choreo. 
      # 
      # @param String - (optional, string) 3-letter ISO code for currency. Defaults to 'usd' which is currently the only supported currency.
      ###

      def set_Currency(value)
        set_input("Currency", value)
      end
      #### 
      # Set the value of the CustomerId input for this Choreo. 
      # 
      # @param String - (required, string) The id for the customer to charge
      ###

      def set_CustomerId(value)
        set_input("CustomerId", value)
      end
      #### 
      # Set the value of the Description input for this Choreo. 
      # 
      # @param String - (optional, string) An arbitrary string of text that will be associated with the charge as a description
      ###

      def set_Description(value)
        set_input("Description", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreateNewChargeForExistingCustomer Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreateNewChargeForExistingCustomerResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreateNewChargeForExistingCustomer



  ##############################################################################
  #
  # CreateNewChargeWithCreditCard
  #
  # Charges a credit card by creating a new charge object using credit card details.
  #
  ##############################################################################

  class CreateNewChargeWithCreditCard < Choreography

    ####
    #  Create a new instance of the CreateNewChargeWithCreditCard Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/CreateNewChargeWithCreditCard")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CreateNewChargeWithCreditCardInputSet
    ####
    def new_input_set()
      return CreateNewChargeWithCreditCardInputSet.new()
    end

    def make_result_set()
      return CreateNewChargeWithCreditCardResultSet.new()
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
      results = CreateNewChargeWithCreditCardResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CreateNewChargeWithCreditCard
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CreateNewChargeWithCreditCardInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the AddressLine1 input for this Choreo. 
      # 
      # @param String - (optional, string) The first line of the address that is associated with the credit card billing address
      ###

      def set_AddressLine1(value)
        set_input("AddressLine1", value)
      end
      #### 
      # Set the value of the AddressLine2 input for this Choreo. 
      # 
      # @param String - (optional, string) The second line of the address that is associated with the credit card billing address
      ###

      def set_AddressLine2(value)
        set_input("AddressLine2", value)
      end
      #### 
      # Set the value of the Amount input for this Choreo. 
      # 
      # @param Integer - (required, integer) The amount to charge a customer in cents
      ###

      def set_Amount(value)
        set_input("Amount", value)
      end
      #### 
      # Set the value of the CVC input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The 3-digit card security code
      ###

      def set_CVC(value)
        set_input("CVC", value)
      end
      #### 
      # Set the value of the CardNumber input for this Choreo. 
      # 
      # @param Integer - (required, integer) The credit card number without any separators
      ###

      def set_CardNumber(value)
        set_input("CardNumber", value)
      end
      #### 
      # Set the value of the CardholderName input for this Choreo. 
      # 
      # @param String - (optional, string) The cardholder's full name as it appears on the credit card
      ###

      def set_CardholderName(value)
        set_input("CardholderName", value)
      end
      #### 
      # Set the value of the Country input for this Choreo. 
      # 
      # @param String - (optional, string) The country associated with the credit card billing address
      ###

      def set_Country(value)
        set_input("Country", value)
      end
      #### 
      # Set the value of the Currency input for this Choreo. 
      # 
      # @param String - (optional, string) 3-letter ISO code for currency. Defaults to 'usd' which is currently the only supported currency.
      ###

      def set_Currency(value)
        set_input("Currency", value)
      end
      #### 
      # Set the value of the Description input for this Choreo. 
      # 
      # @param String - (optional, string) An arbitrary string of text that will be associated with the charge as a description
      ###

      def set_Description(value)
        set_input("Description", value)
      end
      #### 
      # Set the value of the ExpirationMonth input for this Choreo. 
      # 
      # @param Integer - (required, integer) The card's expiration month as a two digit number
      ###

      def set_ExpirationMonth(value)
        set_input("ExpirationMonth", value)
      end
      #### 
      # Set the value of the ExpirationYear input for this Choreo. 
      # 
      # @param Integer - (required, integer) The card's expiration year as a 4 digit number
      ###

      def set_ExpirationYear(value)
        set_input("ExpirationYear", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) The state of the address that is associated with the credit card billing address
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the ZipCode input for this Choreo. 
      # 
      # @param String - (optional, string) The zip code of the address that is associated with the credit card billing address
      ###

      def set_ZipCode(value)
        set_input("ZipCode", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreateNewChargeWithCreditCard Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreateNewChargeWithCreditCardResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreateNewChargeWithCreditCard



  ##############################################################################
  #
  # CreateNewChargeWithToken
  #
  # Charges a credit card by creating a new charge object using a card token that is associated with the credit card details.
  #
  ##############################################################################

  class CreateNewChargeWithToken < Choreography

    ####
    #  Create a new instance of the CreateNewChargeWithToken Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/CreateNewChargeWithToken")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CreateNewChargeWithTokenInputSet
    ####
    def new_input_set()
      return CreateNewChargeWithTokenInputSet.new()
    end

    def make_result_set()
      return CreateNewChargeWithTokenResultSet.new()
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
      results = CreateNewChargeWithTokenResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CreateNewChargeWithToken
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CreateNewChargeWithTokenInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the Amount input for this Choreo. 
      # 
      # @param Integer - (required, integer) The amount to charge a customer in cents
      ###

      def set_Amount(value)
        set_input("Amount", value)
      end
      #### 
      # Set the value of the Currency input for this Choreo. 
      # 
      # @param String - (optional, string) 3-letter ISO code for currency. Defaults to 'usd' which is currently the only supported currency.
      ###

      def set_Currency(value)
        set_input("Currency", value)
      end
      #### 
      # Set the value of the Description input for this Choreo. 
      # 
      # @param String - (optional, string) An arbitrary string of text that will be associated with the charge as a description
      ###

      def set_Description(value)
        set_input("Description", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (required, string) The token associated with a set of credit card details. This can be generated with the CreateCardToken Choreo.
      ###

      def set_Token(value)
        set_input("Token", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreateNewChargeWithToken Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreateNewChargeWithTokenResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreateNewChargeWithToken



  ##############################################################################
  #
  # CreateNewCustomer
  #
  # Creates a new customer record.
  #
  ##############################################################################

  class CreateNewCustomer < Choreography

    ####
    #  Create a new instance of the CreateNewCustomer Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/CreateNewCustomer")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CreateNewCustomerInputSet
    ####
    def new_input_set()
      return CreateNewCustomerInputSet.new()
    end

    def make_result_set()
      return CreateNewCustomerResultSet.new()
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
      results = CreateNewCustomerResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CreateNewCustomer
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CreateNewCustomerInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the AddressLine1 input for this Choreo. 
      # 
      # @param String - (optional, string) The first line of the address that is associated with the credit card billing address
      ###

      def set_AddressLine1(value)
        set_input("AddressLine1", value)
      end
      #### 
      # Set the value of the AddressLine2 input for this Choreo. 
      # 
      # @param String - (optional, string) The second line of the address that is associated with the credit card billing address
      ###

      def set_AddressLine2(value)
        set_input("AddressLine2", value)
      end
      #### 
      # Set the value of the CVC input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The 3-digit card security code
      ###

      def set_CVC(value)
        set_input("CVC", value)
      end
      #### 
      # Set the value of the CardNumber input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The credit card number without any separators. Required when attaching a credit card to the customer record unless using a Token.
      ###

      def set_CardNumber(value)
        set_input("CardNumber", value)
      end
      #### 
      # Set the value of the CardholderName input for this Choreo. 
      # 
      # @param String - (optional, string) The cardholder's full name as it appears on the credit card
      ###

      def set_CardholderName(value)
        set_input("CardholderName", value)
      end
      #### 
      # Set the value of the Country input for this Choreo. 
      # 
      # @param String - (optional, string) The country associated with the credit card billing address
      ###

      def set_Country(value)
        set_input("Country", value)
      end
      #### 
      # Set the value of the Coupon input for this Choreo. 
      # 
      # @param String - (optional, string) If you provide a coupon code, it can be specified here
      ###

      def set_Coupon(value)
        set_input("Coupon", value)
      end
      #### 
      # Set the value of the Description input for this Choreo. 
      # 
      # @param String - (optional, string) An arbitrary string of text that will be associated with the customer object
      ###

      def set_Description(value)
        set_input("Description", value)
      end
      #### 
      # Set the value of the Email input for this Choreo. 
      # 
      # @param String - (optional, string) The customer's email address
      ###

      def set_Email(value)
        set_input("Email", value)
      end
      #### 
      # Set the value of the ExpirationMonth input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The card's expiration month as a two digit number. Required when supplying a card number to attach to the customer.
      ###

      def set_ExpirationMonth(value)
        set_input("ExpirationMonth", value)
      end
      #### 
      # Set the value of the ExpirationYear input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The card's expiration year as a 4 digit number. Required when supplying a card number to attach to the customer.
      ###

      def set_ExpirationYear(value)
        set_input("ExpirationYear", value)
      end
      #### 
      # Set the value of the Plan input for this Choreo. 
      # 
      # @param String - (optional, string) The unique identifier of the plan to subscribe the customer to
      ###

      def set_Plan(value)
        set_input("Plan", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) The state of the address that is associated with the credit card billing address
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (optional, string) The token associated with a set of credit card details. When a token is provided, no other credit card details are necessary.
      ###

      def set_Token(value)
        set_input("Token", value)
      end
      #### 
      # Set the value of the TrialEnd input for this Choreo. 
      # 
      # @param String - (optional, date) Epoch timestamp in seconds for the end of the trial period. The customer won't be charged during the trial period. Timestamp should be in UTC.
      ###

      def set_TrialEnd(value)
        set_input("TrialEnd", value)
      end
      #### 
      # Set the value of the ZipCode input for this Choreo. 
      # 
      # @param String - (optional, string) The zip code of the address that is associated with the credit card billing address
      ###

      def set_ZipCode(value)
        set_input("ZipCode", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreateNewCustomer Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreateNewCustomerResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreateNewCustomer



  ##############################################################################
  #
  # CreatePlan
  #
  # Creates a subscription plan
  #
  ##############################################################################

  class CreatePlan < Choreography

    ####
    #  Create a new instance of the CreatePlan Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/CreatePlan")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CreatePlanInputSet
    ####
    def new_input_set()
      return CreatePlanInputSet.new()
    end

    def make_result_set()
      return CreatePlanResultSet.new()
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
      results = CreatePlanResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CreatePlan
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CreatePlanInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the Amount input for this Choreo. 
      # 
      # @param Integer - (required, integer) The amount in cents to charge on a recurring basis for subscribers of this plan
      ###

      def set_Amount(value)
        set_input("Amount", value)
      end
      #### 
      # Set the value of the Currency input for this Choreo. 
      # 
      # @param String - (optional, string) 3-letter ISO code for currency. Defaults to 'usd' which is currently the only supported currency.
      ###

      def set_Currency(value)
        set_input("Currency", value)
      end
      #### 
      # Set the value of the Interval input for this Choreo. 
      # 
      # @param String - (required, string) Indicates billing frequency. Valid values are: month or year.
      ###

      def set_Interval(value)
        set_input("Interval", value)
      end
      #### 
      # Set the value of the PlanId input for this Choreo. 
      # 
      # @param String - (required, string) The unique identifier of the plan you want to create
      ###

      def set_PlanId(value)
        set_input("PlanId", value)
      end
      #### 
      # Set the value of the PlanName input for this Choreo. 
      # 
      # @param String - (required, string) The name of the plan which will be displayed in the Stripe web interface.
      ###

      def set_PlanName(value)
        set_input("PlanName", value)
      end
      #### 
      # Set the value of the TrialPeriodDays input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of days in a trial period (customer will not be billed until the trial period is over)
      ###

      def set_TrialPeriodDays(value)
        set_input("TrialPeriodDays", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreatePlan Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreatePlanResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreatePlan




  module Customers



    ##############################################################################
    #
    # CreateCustomerWithToken
    #
    # Creates a new customer record using a Stripe generated token that represents the customer's credit card information.
    #
    ##############################################################################

    class CreateCustomerWithToken < Choreography

      ####
      #  Create a new instance of the CreateCustomerWithToken Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Customers/CreateCustomerWithToken")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateCustomerWithTokenInputSet
      ####
      def new_input_set()
        return CreateCustomerWithTokenInputSet.new()
      end

      def make_result_set()
        return CreateCustomerWithTokenResultSet.new()
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
        results = CreateCustomerWithTokenResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateCustomerWithToken
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateCustomerWithTokenInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the AccountBalance input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The amount in cents for the starting account balance. A negative amount represents a credit that will be used before charging the customer's card; a positive amount will be added to the next invoice.
        ###

        def set_AccountBalance(value)
          set_input("AccountBalance", value)
        end
        #### 
        # Set the value of the Coupon input for this Choreo. 
        # 
        # @param String - (optional, string) If you provide a coupon code, it can be specified here
        ###

        def set_Coupon(value)
          set_input("Coupon", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) An arbitrary string of text that will be associated with the customer object
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (optional, string) The customer's email address
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Plan input for this Choreo. 
        # 
        # @param String - (optional, string) The unique identifier of the plan to subscribe the customer to
        ###

        def set_Plan(value)
          set_input("Plan", value)
        end
        #### 
        # Set the value of the Quantity input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The quantity you'd like to apply to the subscription you're creating. This parameter applies to the plan amount associated with the customer.
        ###

        def set_Quantity(value)
          set_input("Quantity", value)
        end
        #### 
        # Set the value of the Token input for this Choreo. 
        # 
        # @param String - (conditional, string) The token associated with a set of credit card details
        ###

        def set_Token(value)
          set_input("Token", value)
        end
        #### 
        # Set the value of the TrialEnd input for this Choreo. 
        # 
        # @param String - (optional, date) Epoch timestamp in seconds for the end of the trial period. The customer won't be charged during the trial period. Timestamp should be in UTC.
        ###

        def set_TrialEnd(value)
          set_input("TrialEnd", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateCustomerWithToken Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateCustomerWithTokenResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateCustomerWithToken



    ##############################################################################
    #
    # DeleteCustomer
    #
    # Deletes a specified customer record.
    #
    ##############################################################################

    class DeleteCustomer < Choreography

      ####
      #  Create a new instance of the DeleteCustomer Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Customers/DeleteCustomer")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteCustomerInputSet
      ####
      def new_input_set()
        return DeleteCustomerInputSet.new()
      end

      def make_result_set()
        return DeleteCustomerResultSet.new()
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
        results = DeleteCustomerResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteCustomer
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteCustomerInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CustomerID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier of the customer you want to delete
        ###

        def set_CustomerID(value)
          set_input("CustomerID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteCustomer Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteCustomerResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteCustomer



    ##############################################################################
    #
    # ListAllCustomers
    #
    # Returns a list of all customers. 
    #
    ##############################################################################

    class ListAllCustomers < Choreography

      ####
      #  Create a new instance of the ListAllCustomers Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Customers/ListAllCustomers")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListAllCustomersInputSet
      ####
      def new_input_set()
        return ListAllCustomersInputSet.new()
      end

      def make_result_set()
        return ListAllCustomersResultSet.new()
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
        results = ListAllCustomersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListAllCustomers
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListAllCustomersInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The limit of customers to be returned. Can range from 1 to 100. Defaults to 10.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Stripe will return a list of customers starting at the specified offset. Defaults to 0.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListAllCustomers Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListAllCustomersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListAllCustomers



    ##############################################################################
    #
    # RetrieveCustomer
    #
    # Retrieves the details of an existing customer record.
    #
    ##############################################################################

    class RetrieveCustomer < Choreography

      ####
      #  Create a new instance of the RetrieveCustomer Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Customers/RetrieveCustomer")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveCustomerInputSet
      ####
      def new_input_set()
        return RetrieveCustomerInputSet.new()
      end

      def make_result_set()
        return RetrieveCustomerResultSet.new()
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
        results = RetrieveCustomerResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveCustomer
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveCustomerInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CustomerID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier of the customer you want to retrieve
        ###

        def set_CustomerID(value)
          set_input("CustomerID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveCustomer Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveCustomerResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveCustomer



    ##############################################################################
    #
    # UpdateCustomer
    #
    # Updates a specified customer record.
    #
    ##############################################################################

    class UpdateCustomer < Choreography

      ####
      #  Create a new instance of the UpdateCustomer Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Customers/UpdateCustomer")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateCustomerInputSet
      ####
      def new_input_set()
        return UpdateCustomerInputSet.new()
      end

      def make_result_set()
        return UpdateCustomerResultSet.new()
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
        results = UpdateCustomerResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateCustomer
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateCustomerInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the AccountBalance input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The amount in cents for the starting account balance. A negative amount represents a credit that will be used before charging the customer's card; a positive amount will be added to the next invoice.
        ###

        def set_AccountBalance(value)
          set_input("AccountBalance", value)
        end
        #### 
        # Set the value of the Coupon input for this Choreo. 
        # 
        # @param String - (optional, string) If you provide a coupon code, it can be specified here
        ###

        def set_Coupon(value)
          set_input("Coupon", value)
        end
        #### 
        # Set the value of the CustomerID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier of the customer you want to update
        ###

        def set_CustomerID(value)
          set_input("CustomerID", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) An arbitrary string of text that will be associated with the charge as a description
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (optional, string) The customer's email address
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Token input for this Choreo. 
        # 
        # @param String - (optional, string) The token associated with a set of credit card details.
        ###

        def set_Token(value)
          set_input("Token", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateCustomer Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateCustomerResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateCustomer




  end # module Customers
  ##############################################################################
  #
  # DeleteCoupon
  #
  # Deletes a specified coupon.
  #
  ##############################################################################

  class DeleteCoupon < Choreography

    ####
    #  Create a new instance of the DeleteCoupon Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/DeleteCoupon")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DeleteCouponInputSet
    ####
    def new_input_set()
      return DeleteCouponInputSet.new()
    end

    def make_result_set()
      return DeleteCouponResultSet.new()
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
      results = DeleteCouponResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the DeleteCoupon
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DeleteCouponInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the CouponId input for this Choreo. 
      # 
      # @param String - (optional, string) The unique identifier of the coupon you wish to delete
      ###

      def set_CouponId(value)
        set_input("CouponId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the DeleteCoupon Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DeleteCouponResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class DeleteCoupon



  ##############################################################################
  #
  # DeleteCustomer
  #
  # Deletes a specified customer record.
  #
  ##############################################################################

  class DeleteCustomer < Choreography

    ####
    #  Create a new instance of the DeleteCustomer Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/DeleteCustomer")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DeleteCustomerInputSet
    ####
    def new_input_set()
      return DeleteCustomerInputSet.new()
    end

    def make_result_set()
      return DeleteCustomerResultSet.new()
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
      results = DeleteCustomerResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the DeleteCustomer
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DeleteCustomerInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the CustomerId input for this Choreo. 
      # 
      # @param String - (required, string) The unique identifier of the customer you want to delete
      ###

      def set_CustomerId(value)
        set_input("CustomerId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the DeleteCustomer Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DeleteCustomerResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class DeleteCustomer



  ##############################################################################
  #
  # DeleteInvoiceItem
  #
  # Deletes a specified invoice item.
  #
  ##############################################################################

  class DeleteInvoiceItem < Choreography

    ####
    #  Create a new instance of the DeleteInvoiceItem Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/DeleteInvoiceItem")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DeleteInvoiceItemInputSet
    ####
    def new_input_set()
      return DeleteInvoiceItemInputSet.new()
    end

    def make_result_set()
      return DeleteInvoiceItemResultSet.new()
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
      results = DeleteInvoiceItemResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the DeleteInvoiceItem
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DeleteInvoiceItemInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the InvoiceItemId input for this Choreo. 
      # 
      # @param String - (required, string) The unique identifier of the invoice item you want to delete
      ###

      def set_InvoiceItemId(value)
        set_input("InvoiceItemId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the DeleteInvoiceItem Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DeleteInvoiceItemResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class DeleteInvoiceItem



  ##############################################################################
  #
  # DeletePlan
  #
  # Deletes a specified plan.
  #
  ##############################################################################

  class DeletePlan < Choreography

    ####
    #  Create a new instance of the DeletePlan Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/DeletePlan")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DeletePlanInputSet
    ####
    def new_input_set()
      return DeletePlanInputSet.new()
    end

    def make_result_set()
      return DeletePlanResultSet.new()
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
      results = DeletePlanResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the DeletePlan
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DeletePlanInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the PlanId input for this Choreo. 
      # 
      # @param String - (required, string) The unique identifier of the plan you want to delete
      ###

      def set_PlanId(value)
        set_input("PlanId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the DeletePlan Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DeletePlanResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class DeletePlan




  module Events



    ##############################################################################
    #
    # FilterHelper
    #
    # Executes an XPath query against a specified XML file and returns the result in CSV or JSON format.
    #
    ##############################################################################

    class FilterHelper < Choreography

      ####
      #  Create a new instance of the FilterHelper Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Events/FilterHelper")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FilterHelperInputSet
      ####
      def new_input_set()
        return FilterHelperInputSet.new()
      end

      def make_result_set()
        return FilterHelperResultSet.new()
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
        results = FilterHelperResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FilterHelper
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FilterHelperInputSet < Choreography::InputSet

        #### 
        # Set the value of the Mode input for this Choreo. 
        # 
        # @param String - (conditional, string) Valid values are "select" (the default) or "recursive". Recursive mode will iterate using the provided XPath. Select mode will return the first match if there are multiple rows in the XML provided.
        ###

        def set_Mode(value)
          set_input("Mode", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json or csv.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the XML input for this Choreo. 
        # 
        # @param String - (required, xml) The XML that contains the elements or attributes you want to retrieve.
        ###

        def set_XML(value)
          set_input("XML", value)
        end
        #### 
        # Set the value of the XPath input for this Choreo. 
        # 
        # @param String - (required, string) The XPath query to run.
        ###

        def set_XPath(value)
          set_input("XPath", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FilterHelper Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FilterHelperResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Result" output from this Choreo execution
      	#
      	# @return String - The XPath query result.
      	####
      	def get_Result()
      	  return @outputs["Result"]
      	end
      end

    end # class FilterHelper



    ##############################################################################
    #
    # ListAllEvents
    #
    # Returns a list of events that have happened in your account.
    #
    ##############################################################################

    class ListAllEvents < Choreography

      ####
      #  Create a new instance of the ListAllEvents Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Events/ListAllEvents")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListAllEventsInputSet
      ####
      def new_input_set()
        return ListAllEventsInputSet.new()
      end

      def make_result_set()
        return ListAllEventsResultSet.new()
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
        results = ListAllEventsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListAllEvents
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListAllEventsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A limit on the number of events to be returned. Count can range between 1 and 100 items.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the Created input for this Choreo. 
        # 
        # @param String - (optional, date) Filters the result based on the event created date (a UTC timestamp).
        ###

        def set_Created(value)
          set_input("Created", value)
        end
        #### 
        # Set the value of the GreaterThanEqualTo input for this Choreo. 
        # 
        # @param String - (optional, date) Returns events that have been created after or equal to this UTC timestamp.
        ###

        def set_GreaterThanEqualTo(value)
          set_input("GreaterThanEqualTo", value)
        end
        #### 
        # Set the value of the GreaterThan input for this Choreo. 
        # 
        # @param String - (optional, date) Returns events that have been created after this UTC timestamp.
        ###

        def set_GreaterThan(value)
          set_input("GreaterThan", value)
        end
        #### 
        # Set the value of the LessThanEqualTo input for this Choreo. 
        # 
        # @param String - (optional, date) Return events that were created before or equal to this UTC timestamp.
        ###

        def set_LessThanEqualTo(value)
          set_input("LessThanEqualTo", value)
        end
        #### 
        # Set the value of the LessThan input for this Choreo. 
        # 
        # @param String - (optional, date) Return events that were created before this UTC timestamp.
        ###

        def set_LessThan(value)
          set_input("LessThan", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) An offset into your events array. The API will return the requested number of events starting at that offset.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the Type input for this Choreo. 
        # 
        # @param String - (optional, string) A string containing a specific event name, or group of events using * as a wildcard. This will return a filtered result including only events with a matching event property.
        ###

        def set_Type(value)
          set_input("Type", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListAllEvents Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListAllEventsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListAllEvents



    ##############################################################################
    #
    # MoneyReceived
    #
    # Retrieves a list of successful charge events.
    #
    ##############################################################################

    class MoneyReceived < Choreography

      ####
      #  Create a new instance of the MoneyReceived Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Events/MoneyReceived")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return MoneyReceivedInputSet
      ####
      def new_input_set()
        return MoneyReceivedInputSet.new()
      end

      def make_result_set()
        return MoneyReceivedResultSet.new()
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
        results = MoneyReceivedResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the MoneyReceived
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class MoneyReceivedInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A limit on the number of events to be returned. Count can range between 1 and 100 items. Defaults to 10.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the Created input for this Choreo. 
        # 
        # @param String - (optional, date) Filters the result based on the event created date (a UTC timestamp).
        ###

        def set_Created(value)
          set_input("Created", value)
        end
        #### 
        # Set the value of the GreaterThanEqualTo input for this Choreo. 
        # 
        # @param String - (optional, date) Returns events that have been created after or equal to this UTC timestamp.
        ###

        def set_GreaterThanEqualTo(value)
          set_input("GreaterThanEqualTo", value)
        end
        #### 
        # Set the value of the GreaterThan input for this Choreo. 
        # 
        # @param String - (optional, date) Returns events that have been created after this UTC timestamp.
        ###

        def set_GreaterThan(value)
          set_input("GreaterThan", value)
        end
        #### 
        # Set the value of the LessThanEqualTo input for this Choreo. 
        # 
        # @param String - (optional, date) Return events that were created before or equal to this UTC timestamp.
        ###

        def set_LessThanEqualTo(value)
          set_input("LessThanEqualTo", value)
        end
        #### 
        # Set the value of the LessThan input for this Choreo. 
        # 
        # @param String - (optional, date) Return events that were created before this UTC timestamp.
        ###

        def set_LessThan(value)
          set_input("LessThan", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) An offset into your events array. The API will return the requested number of events starting at that offset.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ResponseMode input for this Choreo. 
        # 
        # @param String - (optional, string) Used to simplify the response. Valid values are: simple and verbose. When set to simple, an array of charge amounts is returned. Verbose mode returns an array of charge objects. Defaults to "simple".
        ###

        def set_ResponseMode(value)
          set_input("ResponseMode", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the MoneyReceived Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class MoneyReceivedResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "TotalCount" output from this Choreo execution
      	#
      	# @return String - (integer) The total number of results. This can be used to determine whether or not you need to retrieve the next page of results.
      	####
      	def get_TotalCount()
      	  return @outputs["TotalCount"]
      	end
      end

    end # class MoneyReceived



    ##############################################################################
    #
    # RetrieveEvent
    #
    # Retrieves the details of an event.
    #
    ##############################################################################

    class RetrieveEvent < Choreography

      ####
      #  Create a new instance of the RetrieveEvent Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Events/RetrieveEvent")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveEventInputSet
      ####
      def new_input_set()
        return RetrieveEventInputSet.new()
      end

      def make_result_set()
        return RetrieveEventResultSet.new()
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
        results = RetrieveEventResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveEvent
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveEventInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the EventID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the event to return.
        ###

        def set_EventID(value)
          set_input("EventID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveEvent Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveEventResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveEvent




  end # module Events

  module InvoiceItems



    ##############################################################################
    #
    # CreateInvoiceItem
    #
    # Adds a charge or credit to the customer's next invoice.
    #
    ##############################################################################

    class CreateInvoiceItem < Choreography

      ####
      #  Create a new instance of the CreateInvoiceItem Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/InvoiceItems/CreateInvoiceItem")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateInvoiceItemInputSet
      ####
      def new_input_set()
        return CreateInvoiceItemInputSet.new()
      end

      def make_result_set()
        return CreateInvoiceItemResultSet.new()
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
        results = CreateInvoiceItemResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateInvoiceItem
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateInvoiceItemInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key providied by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Amount input for this Choreo. 
        # 
        # @param Integer - (required, integer) The amount in cents of the charge to be included in the customer's next invoice
        ###

        def set_Amount(value)
          set_input("Amount", value)
        end
        #### 
        # Set the value of the Currency input for this Choreo. 
        # 
        # @param String - (optional, string) 3-letter ISO code for currency. Defaults to 'usd' which is currently the only supported currency.
        ###

        def set_Currency(value)
          set_input("Currency", value)
        end
        #### 
        # Set the value of the CustomerID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier of the customer you want to create an invoice item for
        ###

        def set_CustomerID(value)
          set_input("CustomerID", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) An arbitrary string of text that will be included with the invoice item
        ###

        def set_Description(value)
          set_input("Description", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateInvoiceItem Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateInvoiceItemResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateInvoiceItem



    ##############################################################################
    #
    # DeleteInvoiceItem
    #
    # Deletes a specified invoice item.
    #
    ##############################################################################

    class DeleteInvoiceItem < Choreography

      ####
      #  Create a new instance of the DeleteInvoiceItem Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/InvoiceItems/DeleteInvoiceItem")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteInvoiceItemInputSet
      ####
      def new_input_set()
        return DeleteInvoiceItemInputSet.new()
      end

      def make_result_set()
        return DeleteInvoiceItemResultSet.new()
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
        results = DeleteInvoiceItemResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteInvoiceItem
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteInvoiceItemInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the InvoiceItemID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier of the invoice item you want to delete
        ###

        def set_InvoiceItemID(value)
          set_input("InvoiceItemID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteInvoiceItem Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteInvoiceItemResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteInvoiceItem



    ##############################################################################
    #
    # ListAllInvoiceItems
    #
    # Returns a list of all invoice items or a list of invoice items for a specified customer.
    #
    ##############################################################################

    class ListAllInvoiceItems < Choreography

      ####
      #  Create a new instance of the ListAllInvoiceItems Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/InvoiceItems/ListAllInvoiceItems")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListAllInvoiceItemsInputSet
      ####
      def new_input_set()
        return ListAllInvoiceItemsInputSet.new()
      end

      def make_result_set()
        return ListAllInvoiceItemsResultSet.new()
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
        results = ListAllInvoiceItemsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListAllInvoiceItems
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListAllInvoiceItemsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The limit of invoice items to be returned. Can range from 1 to 100. Defaults to 10.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the CustomerID input for this Choreo. 
        # 
        # @param String - (optional, string) The unique identifier of the customer whose invoice items to return. If not specified, all invoice items will be returned.
        ###

        def set_CustomerID(value)
          set_input("CustomerID", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Stripe will return a list of invoice items starting at the specified offset. Defaults to 0.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListAllInvoiceItems Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListAllInvoiceItemsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListAllInvoiceItems



    ##############################################################################
    #
    # RetrieveInvoiceItem
    #
    # Retrieves invoice items with a specified id.
    #
    ##############################################################################

    class RetrieveInvoiceItem < Choreography

      ####
      #  Create a new instance of the RetrieveInvoiceItem Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/InvoiceItems/RetrieveInvoiceItem")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveInvoiceItemInputSet
      ####
      def new_input_set()
        return RetrieveInvoiceItemInputSet.new()
      end

      def make_result_set()
        return RetrieveInvoiceItemResultSet.new()
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
        results = RetrieveInvoiceItemResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveInvoiceItem
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveInvoiceItemInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The secret API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the InvoiceItemID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier of the invoice item you want to retrieve
        ###

        def set_InvoiceItemID(value)
          set_input("InvoiceItemID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveInvoiceItem Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveInvoiceItemResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveInvoiceItem



    ##############################################################################
    #
    # UpdateInvoiceItem
    #
    # Updates the amount or description of an existing invoice item.
    #
    ##############################################################################

    class UpdateInvoiceItem < Choreography

      ####
      #  Create a new instance of the UpdateInvoiceItem Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/InvoiceItems/UpdateInvoiceItem")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateInvoiceItemInputSet
      ####
      def new_input_set()
        return UpdateInvoiceItemInputSet.new()
      end

      def make_result_set()
        return UpdateInvoiceItemResultSet.new()
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
        results = UpdateInvoiceItemResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateInvoiceItem
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateInvoiceItemInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Amount input for this Choreo. 
        # 
        # @param Integer - (required, integer) The amount in cents of the charge to be included in the customer's next invoice
        ###

        def set_Amount(value)
          set_input("Amount", value)
        end
        #### 
        # Set the value of the Currency input for this Choreo. 
        # 
        # @param String - (optional, string) 3-letter ISO code for currency. Defaults to 'usd' which is currently the only supported currency.
        ###

        def set_Currency(value)
          set_input("Currency", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) An arbitrary string of text that will be included with the invoice item
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the InvoiceItemID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier of the invoice item you want to update
        ###

        def set_InvoiceItemID(value)
          set_input("InvoiceItemID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateInvoiceItem Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateInvoiceItemResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateInvoiceItem




  end # module InvoiceItems

  module Invoices



    ##############################################################################
    #
    # CreateInvoice
    #
    # Creates a new invoice for a customer.
    #
    ##############################################################################

    class CreateInvoice < Choreography

      ####
      #  Create a new instance of the CreateInvoice Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Invoices/CreateInvoice")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateInvoiceInputSet
      ####
      def new_input_set()
        return CreateInvoiceInputSet.new()
      end

      def make_result_set()
        return CreateInvoiceResultSet.new()
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
        results = CreateInvoiceResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateInvoice
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateInvoiceInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CustomerID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the customer to create an invoice for.
        ###

        def set_CustomerID(value)
          set_input("CustomerID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateInvoice Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateInvoiceResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateInvoice



    ##############################################################################
    #
    # ListAllInvoices
    #
    # Returns a list of all invoices or a list of invoices for a specified customer.
    #
    ##############################################################################

    class ListAllInvoices < Choreography

      ####
      #  Create a new instance of the ListAllInvoices Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Invoices/ListAllInvoices")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListAllInvoicesInputSet
      ####
      def new_input_set()
        return ListAllInvoicesInputSet.new()
      end

      def make_result_set()
        return ListAllInvoicesResultSet.new()
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
        results = ListAllInvoicesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListAllInvoices
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListAllInvoicesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The limit of invoices to be returned. Can range from 1 to 100. Defaults to 10.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the CustomerID input for this Choreo. 
        # 
        # @param String - (optional, string) The unique identifier of the customer whose invoice to return. If not specified, all invoices will be returned.
        ###

        def set_CustomerID(value)
          set_input("CustomerID", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Stripe will return a list of invoices starting at the specified offset. Defaults to 0.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListAllInvoices Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListAllInvoicesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListAllInvoices



    ##############################################################################
    #
    # PayInvoice
    #
    # Allows your application to attempt to collect payment on an invoice outside of the normal recurring payment schedule.
    #
    ##############################################################################

    class PayInvoice < Choreography

      ####
      #  Create a new instance of the PayInvoice Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Invoices/PayInvoice")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PayInvoiceInputSet
      ####
      def new_input_set()
        return PayInvoiceInputSet.new()
      end

      def make_result_set()
        return PayInvoiceResultSet.new()
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
        results = PayInvoiceResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the PayInvoice
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PayInvoiceInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the InvoiceID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the invoice to pay.
        ###

        def set_InvoiceID(value)
          set_input("InvoiceID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the PayInvoice Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PayInvoiceResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class PayInvoice



    ##############################################################################
    #
    # RetrieveInvoice
    #
    # Retrieves invoice details using the invoice id.
    #
    ##############################################################################

    class RetrieveInvoice < Choreography

      ####
      #  Create a new instance of the RetrieveInvoice Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Invoices/RetrieveInvoice")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveInvoiceInputSet
      ####
      def new_input_set()
        return RetrieveInvoiceInputSet.new()
      end

      def make_result_set()
        return RetrieveInvoiceResultSet.new()
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
        results = RetrieveInvoiceResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveInvoice
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveInvoiceInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the InvoiceID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier of the invoice you want to retrieve
        ###

        def set_InvoiceID(value)
          set_input("InvoiceID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveInvoice Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveInvoiceResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveInvoice



    ##############################################################################
    #
    # RetrieveInvoiceLineItems
    #
    # Retrieves a full list of line items contained in an invoice.
    #
    ##############################################################################

    class RetrieveInvoiceLineItems < Choreography

      ####
      #  Create a new instance of the RetrieveInvoiceLineItems Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Invoices/RetrieveInvoiceLineItems")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveInvoiceLineItemsInputSet
      ####
      def new_input_set()
        return RetrieveInvoiceLineItemsInputSet.new()
      end

      def make_result_set()
        return RetrieveInvoiceLineItemsResultSet.new()
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
        results = RetrieveInvoiceLineItemsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveInvoiceLineItems
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveInvoiceLineItemsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of line items to return
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the CustomerID input for this Choreo. 
        # 
        # @param String - (optional, string) In the case of upcoming invoices, the customer of the upcoming invoice is required. In other cases it is ignored.
        ###

        def set_CustomerID(value)
          set_input("CustomerID", value)
        end
        #### 
        # Set the value of the InvoiceID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the invoice containing the line items to return
        ###

        def set_InvoiceID(value)
          set_input("InvoiceID", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The offset into the list of line items to start returning from, with 0 being the most recent
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveInvoiceLineItems Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveInvoiceLineItemsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveInvoiceLineItems



    ##############################################################################
    #
    # RetrieveUpcomingInvoice
    #
    # Retrieves a customer's upcoming invoice.
    #
    ##############################################################################

    class RetrieveUpcomingInvoice < Choreography

      ####
      #  Create a new instance of the RetrieveUpcomingInvoice Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Invoices/RetrieveUpcomingInvoice")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveUpcomingInvoiceInputSet
      ####
      def new_input_set()
        return RetrieveUpcomingInvoiceInputSet.new()
      end

      def make_result_set()
        return RetrieveUpcomingInvoiceResultSet.new()
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
        results = RetrieveUpcomingInvoiceResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveUpcomingInvoice
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveUpcomingInvoiceInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CustomerID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier of the customer whose upcoming invoice to return
        ###

        def set_CustomerID(value)
          set_input("CustomerID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveUpcomingInvoice Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveUpcomingInvoiceResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveUpcomingInvoice



    ##############################################################################
    #
    # UpdateInvoice
    #
    # Updates an existing invoice.
    #
    ##############################################################################

    class UpdateInvoice < Choreography

      ####
      #  Create a new instance of the UpdateInvoice Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Invoices/UpdateInvoice")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateInvoiceInputSet
      ####
      def new_input_set()
        return UpdateInvoiceInputSet.new()
      end

      def make_result_set()
        return UpdateInvoiceResultSet.new()
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
        results = UpdateInvoiceResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateInvoice
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateInvoiceInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Closed input for this Choreo. 
        # 
        # @param Boolean - (conditional, boolean) Whether or not the invoice should be closed or not. To close an invoice, set this to "true".
        ###

        def set_Closed(value)
          set_input("Closed", value)
        end
        #### 
        # Set the value of the InvoiceID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the invoice to update.
        ###

        def set_InvoiceID(value)
          set_input("InvoiceID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateInvoice Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateInvoiceResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateInvoice




  end # module Invoices
  ##############################################################################
  #
  # ListAllCharges
  #
  # Returns a list of all charges or a list of charges for a specified customer.
  #
  ##############################################################################

  class ListAllCharges < Choreography

    ####
    #  Create a new instance of the ListAllCharges Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/ListAllCharges")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListAllChargesInputSet
    ####
    def new_input_set()
      return ListAllChargesInputSet.new()
    end

    def make_result_set()
      return ListAllChargesResultSet.new()
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
      results = ListAllChargesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListAllCharges
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListAllChargesInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the Count input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The limit of charges to be returned. Can range from 1 to 100. Defaults to 10.
      ###

      def set_Count(value)
        set_input("Count", value)
      end
      #### 
      # Set the value of the CustomerId input for this Choreo. 
      # 
      # @param String - (optional, string) The unique identifier of the customer whose charges to return. If not specified, all charges will be returned.
      ###

      def set_CustomerId(value)
        set_input("CustomerId", value)
      end
      #### 
      # Set the value of the Offset input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Stripe will return a list of charges starting at the specified offset. Defaults to 0.
      ###

      def set_Offset(value)
        set_input("Offset", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListAllCharges Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListAllChargesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListAllCharges



  ##############################################################################
  #
  # ListAllCustomers
  #
  # Returns a list of all customers. 
  #
  ##############################################################################

  class ListAllCustomers < Choreography

    ####
    #  Create a new instance of the ListAllCustomers Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/ListAllCustomers")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListAllCustomersInputSet
    ####
    def new_input_set()
      return ListAllCustomersInputSet.new()
    end

    def make_result_set()
      return ListAllCustomersResultSet.new()
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
      results = ListAllCustomersResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListAllCustomers
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListAllCustomersInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the Count input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The limit of customers to be returned. Can range from 1 to 100. Defaults to 10.
      ###

      def set_Count(value)
        set_input("Count", value)
      end
      #### 
      # Set the value of the Offset input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Stripe will return a list of customers starting at the specified offset. Defaults to 0.
      ###

      def set_Offset(value)
        set_input("Offset", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListAllCustomers Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListAllCustomersResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListAllCustomers



  ##############################################################################
  #
  # ListAllInvoiceItems
  #
  # Returns a list of all invoice items or a list of invoice items for a specified customer.
  #
  ##############################################################################

  class ListAllInvoiceItems < Choreography

    ####
    #  Create a new instance of the ListAllInvoiceItems Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/ListAllInvoiceItems")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListAllInvoiceItemsInputSet
    ####
    def new_input_set()
      return ListAllInvoiceItemsInputSet.new()
    end

    def make_result_set()
      return ListAllInvoiceItemsResultSet.new()
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
      results = ListAllInvoiceItemsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListAllInvoiceItems
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListAllInvoiceItemsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the Count input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The limit of invoice items to be returned. Can range from 1 to 100. Defaults to 10.
      ###

      def set_Count(value)
        set_input("Count", value)
      end
      #### 
      # Set the value of the CustomerId input for this Choreo. 
      # 
      # @param String - (optional, string) The unique identifier of the customer whose invoice items to return. If not specified, all invoice items will be returned.
      ###

      def set_CustomerId(value)
        set_input("CustomerId", value)
      end
      #### 
      # Set the value of the Offset input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Stripe will return a list of invoice items starting at the specified offset. Defaults to 0.
      ###

      def set_Offset(value)
        set_input("Offset", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListAllInvoiceItems Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListAllInvoiceItemsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListAllInvoiceItems



  ##############################################################################
  #
  # ListAllInvoices
  #
  # Returns a list of all invoices or a list of invoices for a specified customer.
  #
  ##############################################################################

  class ListAllInvoices < Choreography

    ####
    #  Create a new instance of the ListAllInvoices Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/ListAllInvoices")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListAllInvoicesInputSet
    ####
    def new_input_set()
      return ListAllInvoicesInputSet.new()
    end

    def make_result_set()
      return ListAllInvoicesResultSet.new()
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
      results = ListAllInvoicesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListAllInvoices
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListAllInvoicesInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the Count input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The limit of invoices to be returned. Can range from 1 to 100. Defaults to 10.
      ###

      def set_Count(value)
        set_input("Count", value)
      end
      #### 
      # Set the value of the CustomerId input for this Choreo. 
      # 
      # @param String - (optional, string) The unique identifier of the customer whose invoice to return. If not specified, all invoices will be returned.
      ###

      def set_CustomerId(value)
        set_input("CustomerId", value)
      end
      #### 
      # Set the value of the Offset input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Stripe will return a list of invoices starting at the specified offset. Defaults to 0.
      ###

      def set_Offset(value)
        set_input("Offset", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListAllInvoices Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListAllInvoicesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListAllInvoices



  ##############################################################################
  #
  # ListAllPlans
  #
  # Returns a list of all plans. 
  #
  ##############################################################################

  class ListAllPlans < Choreography

    ####
    #  Create a new instance of the ListAllPlans Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/ListAllPlans")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ListAllPlansInputSet
    ####
    def new_input_set()
      return ListAllPlansInputSet.new()
    end

    def make_result_set()
      return ListAllPlansResultSet.new()
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
      results = ListAllPlansResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ListAllPlans
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ListAllPlansInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the Count input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The limit of plans to be returned. Can range from 1 to 100. Defaults to 10.
      ###

      def set_Count(value)
        set_input("Count", value)
      end
      #### 
      # Set the value of the Offset input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Stripe will return a list of plans starting at the specified offset. Defaults to 0.
      ###

      def set_Offset(value)
        set_input("Offset", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ListAllPlans Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ListAllPlansResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ListAllPlans




  module Plans



    ##############################################################################
    #
    # CreatePlan
    #
    # Creates a subscription plan
    #
    ##############################################################################

    class CreatePlan < Choreography

      ####
      #  Create a new instance of the CreatePlan Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Plans/CreatePlan")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreatePlanInputSet
      ####
      def new_input_set()
        return CreatePlanInputSet.new()
      end

      def make_result_set()
        return CreatePlanResultSet.new()
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
        results = CreatePlanResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreatePlan
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreatePlanInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Amount input for this Choreo. 
        # 
        # @param Integer - (required, integer) The amount in cents to charge on a recurring basis for subscribers of this plan
        ###

        def set_Amount(value)
          set_input("Amount", value)
        end
        #### 
        # Set the value of the Currency input for this Choreo. 
        # 
        # @param String - (optional, string) 3-letter ISO code for currency. Defaults to 'usd' which is currently the only supported currency.
        ###

        def set_Currency(value)
          set_input("Currency", value)
        end
        #### 
        # Set the value of the Interval input for this Choreo. 
        # 
        # @param String - (required, string) Indicates billing frequency. Valid values are: month or year.
        ###

        def set_Interval(value)
          set_input("Interval", value)
        end
        #### 
        # Set the value of the PlanID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier of the plan you want to create
        ###

        def set_PlanID(value)
          set_input("PlanID", value)
        end
        #### 
        # Set the value of the PlanName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the plan which will be displayed in the Stripe web interface.
        ###

        def set_PlanName(value)
          set_input("PlanName", value)
        end
        #### 
        # Set the value of the TrialPeriodDays input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of days in a trial period (customer will not be billed until the trial period is over)
        ###

        def set_TrialPeriodDays(value)
          set_input("TrialPeriodDays", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreatePlan Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreatePlanResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreatePlan



    ##############################################################################
    #
    # DeletePlan
    #
    # Deletes a specified plan.
    #
    ##############################################################################

    class DeletePlan < Choreography

      ####
      #  Create a new instance of the DeletePlan Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Plans/DeletePlan")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeletePlanInputSet
      ####
      def new_input_set()
        return DeletePlanInputSet.new()
      end

      def make_result_set()
        return DeletePlanResultSet.new()
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
        results = DeletePlanResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeletePlan
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeletePlanInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the PlanID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier of the plan you want to delete
        ###

        def set_PlanID(value)
          set_input("PlanID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeletePlan Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeletePlanResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeletePlan



    ##############################################################################
    #
    # ListAllPlans
    #
    # Returns a list of all plans. 
    #
    ##############################################################################

    class ListAllPlans < Choreography

      ####
      #  Create a new instance of the ListAllPlans Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Plans/ListAllPlans")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListAllPlansInputSet
      ####
      def new_input_set()
        return ListAllPlansInputSet.new()
      end

      def make_result_set()
        return ListAllPlansResultSet.new()
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
        results = ListAllPlansResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListAllPlans
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListAllPlansInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The limit of plans to be returned. Can range from 1 to 100. Defaults to 10.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Stripe will return a list of plans starting at the specified offset. Defaults to 0.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListAllPlans Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListAllPlansResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListAllPlans



    ##############################################################################
    #
    # RetrievePlan
    #
    # Retrieves plan details with a specified plan id.
    #
    ##############################################################################

    class RetrievePlan < Choreography

      ####
      #  Create a new instance of the RetrievePlan Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Plans/RetrievePlan")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrievePlanInputSet
      ####
      def new_input_set()
        return RetrievePlanInputSet.new()
      end

      def make_result_set()
        return RetrievePlanResultSet.new()
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
        results = RetrievePlanResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrievePlan
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrievePlanInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the PlanID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier of the plan you want to retrieve
        ###

        def set_PlanID(value)
          set_input("PlanID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrievePlan Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrievePlanResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrievePlan



    ##############################################################################
    #
    # UpdatePlan
    #
    # Updates the name of an existing plan.
    #
    ##############################################################################

    class UpdatePlan < Choreography

      ####
      #  Create a new instance of the UpdatePlan Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Plans/UpdatePlan")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdatePlanInputSet
      ####
      def new_input_set()
        return UpdatePlanInputSet.new()
      end

      def make_result_set()
        return UpdatePlanResultSet.new()
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
        results = UpdatePlanResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdatePlan
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdatePlanInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the PlanID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier of the plan you want to update
        ###

        def set_PlanID(value)
          set_input("PlanID", value)
        end
        #### 
        # Set the value of the PlanName input for this Choreo. 
        # 
        # @param String - (conditional, string) The new name of the plan which will be displayed in the Stripe web interface.
        ###

        def set_PlanName(value)
          set_input("PlanName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdatePlan Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdatePlanResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdatePlan




  end # module Plans
  ##############################################################################
  #
  # RefundCharge
  #
  # Issues a refund of an existing credit card charge.
  #
  ##############################################################################

  class RefundCharge < Choreography

    ####
    #  Create a new instance of the RefundCharge Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/RefundCharge")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RefundChargeInputSet
    ####
    def new_input_set()
      return RefundChargeInputSet.new()
    end

    def make_result_set()
      return RefundChargeResultSet.new()
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
      results = RefundChargeResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RefundCharge
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RefundChargeInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the Amount input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The amount to refund to the customer in cents. When left empty, the entire charge is refunded.
      ###

      def set_Amount(value)
        set_input("Amount", value)
      end
      #### 
      # Set the value of the ChargeId input for this Choreo. 
      # 
      # @param String - (required, string) The unique identifier of the charge to be refunded
      ###

      def set_ChargeId(value)
        set_input("ChargeId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RefundCharge Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RefundChargeResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RefundCharge



  ##############################################################################
  #
  # RetrieveCardToken
  #
  # Retrieves a card token based on a given id.
  #
  ##############################################################################

  class RetrieveCardToken < Choreography

    ####
    #  Create a new instance of the RetrieveCardToken Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/RetrieveCardToken")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RetrieveCardTokenInputSet
    ####
    def new_input_set()
      return RetrieveCardTokenInputSet.new()
    end

    def make_result_set()
      return RetrieveCardTokenResultSet.new()
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
      results = RetrieveCardTokenResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RetrieveCardToken
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RetrieveCardTokenInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the TokenId input for this Choreo. 
      # 
      # @param String - (required, string) The unique identifier of the token you want to retrieve
      ###

      def set_TokenId(value)
        set_input("TokenId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RetrieveCardToken Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RetrieveCardTokenResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RetrieveCardToken



  ##############################################################################
  #
  # RetrieveCharge
  #
  # Retrieves the details of an existing charge.
  #
  ##############################################################################

  class RetrieveCharge < Choreography

    ####
    #  Create a new instance of the RetrieveCharge Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/RetrieveCharge")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RetrieveChargeInputSet
    ####
    def new_input_set()
      return RetrieveChargeInputSet.new()
    end

    def make_result_set()
      return RetrieveChargeResultSet.new()
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
      results = RetrieveChargeResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RetrieveCharge
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RetrieveChargeInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the ChargeId input for this Choreo. 
      # 
      # @param String - (optional, string) The unique identifier of the charge you want to retrieve
      ###

      def set_ChargeId(value)
        set_input("ChargeId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RetrieveCharge Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RetrieveChargeResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RetrieveCharge



  ##############################################################################
  #
  # RetrieveCoupon
  #
  # Retrieves a coupon with specified coupon id.
  #
  ##############################################################################

  class RetrieveCoupon < Choreography

    ####
    #  Create a new instance of the RetrieveCoupon Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/RetrieveCoupon")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RetrieveCouponInputSet
    ####
    def new_input_set()
      return RetrieveCouponInputSet.new()
    end

    def make_result_set()
      return RetrieveCouponResultSet.new()
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
      results = RetrieveCouponResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RetrieveCoupon
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RetrieveCouponInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the CouponId input for this Choreo. 
      # 
      # @param String - (optional, string) The unique identifier of the coupon you want to retrieve
      ###

      def set_CouponId(value)
        set_input("CouponId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RetrieveCoupon Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RetrieveCouponResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RetrieveCoupon



  ##############################################################################
  #
  # RetrieveCustomer
  #
  # Retrieves the details of an existing customer record.
  #
  ##############################################################################

  class RetrieveCustomer < Choreography

    ####
    #  Create a new instance of the RetrieveCustomer Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/RetrieveCustomer")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RetrieveCustomerInputSet
    ####
    def new_input_set()
      return RetrieveCustomerInputSet.new()
    end

    def make_result_set()
      return RetrieveCustomerResultSet.new()
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
      results = RetrieveCustomerResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RetrieveCustomer
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RetrieveCustomerInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the CustomerId input for this Choreo. 
      # 
      # @param String - (optional, string) The unique identifier of the customer you want to retrieve
      ###

      def set_CustomerId(value)
        set_input("CustomerId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RetrieveCustomer Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RetrieveCustomerResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RetrieveCustomer



  ##############################################################################
  #
  # RetrieveInvoice
  #
  # Retrieves invoice details using the invoice id.
  #
  ##############################################################################

  class RetrieveInvoice < Choreography

    ####
    #  Create a new instance of the RetrieveInvoice Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/RetrieveInvoice")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RetrieveInvoiceInputSet
    ####
    def new_input_set()
      return RetrieveInvoiceInputSet.new()
    end

    def make_result_set()
      return RetrieveInvoiceResultSet.new()
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
      results = RetrieveInvoiceResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RetrieveInvoice
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RetrieveInvoiceInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the InvoiceId input for this Choreo. 
      # 
      # @param String - (required, string) The unique identifier of the invoice you want to retrieve
      ###

      def set_InvoiceId(value)
        set_input("InvoiceId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RetrieveInvoice Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RetrieveInvoiceResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RetrieveInvoice



  ##############################################################################
  #
  # RetrieveInvoiceItem
  #
  # Retrieves invoice items with a specified id.
  #
  ##############################################################################

  class RetrieveInvoiceItem < Choreography

    ####
    #  Create a new instance of the RetrieveInvoiceItem Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/RetrieveInvoiceItem")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RetrieveInvoiceItemInputSet
    ####
    def new_input_set()
      return RetrieveInvoiceItemInputSet.new()
    end

    def make_result_set()
      return RetrieveInvoiceItemResultSet.new()
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
      results = RetrieveInvoiceItemResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RetrieveInvoiceItem
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RetrieveInvoiceItemInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the InvoiceItemId input for this Choreo. 
      # 
      # @param String - (required, string) The unique identifier of the invoice item you want to retrieve
      ###

      def set_InvoiceItemId(value)
        set_input("InvoiceItemId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RetrieveInvoiceItem Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RetrieveInvoiceItemResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RetrieveInvoiceItem



  ##############################################################################
  #
  # RetrievePlan
  #
  # Retrieves plan details with a specified plan id.
  #
  ##############################################################################

  class RetrievePlan < Choreography

    ####
    #  Create a new instance of the RetrievePlan Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/RetrievePlan")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RetrievePlanInputSet
    ####
    def new_input_set()
      return RetrievePlanInputSet.new()
    end

    def make_result_set()
      return RetrievePlanResultSet.new()
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
      results = RetrievePlanResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RetrievePlan
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RetrievePlanInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the PlanId input for this Choreo. 
      # 
      # @param String - (required, string) The unique identifier of the plan you want to retrieve
      ###

      def set_PlanId(value)
        set_input("PlanId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RetrievePlan Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RetrievePlanResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RetrievePlan



  ##############################################################################
  #
  # RetrieveUpcomingInvoice
  #
  # Retrieves a customer's upcoming invoice.
  #
  ##############################################################################

  class RetrieveUpcomingInvoice < Choreography

    ####
    #  Create a new instance of the RetrieveUpcomingInvoice Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/RetrieveUpcomingInvoice")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RetrieveUpcomingInvoiceInputSet
    ####
    def new_input_set()
      return RetrieveUpcomingInvoiceInputSet.new()
    end

    def make_result_set()
      return RetrieveUpcomingInvoiceResultSet.new()
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
      results = RetrieveUpcomingInvoiceResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RetrieveUpcomingInvoice
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RetrieveUpcomingInvoiceInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the CustomerId input for this Choreo. 
      # 
      # @param String - (required, string) The unique identifier of the customer whose upcoming invoice to return
      ###

      def set_CustomerId(value)
        set_input("CustomerId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RetrieveUpcomingInvoice Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RetrieveUpcomingInvoiceResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RetrieveUpcomingInvoice




  module Subscriptions



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
        super(session, "/Library/Stripe/Subscriptions/CancelSubscription")
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
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the AtPeriodEnd input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Delays the cancellation of the subscription until the end of the current period when set to 1. Defaults to 0.
        ###

        def set_AtPeriodEnd(value)
          set_input("AtPeriodEnd", value)
        end
        #### 
        # Set the value of the CustomerID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the customer whose subscription you want to cancel
        ###

        def set_CustomerID(value)
          set_input("CustomerID", value)
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
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CancelSubscription



    ##############################################################################
    #
    # UpdateSubscription
    #
    # Subscribes a customer to a specified plan.
    #
    ##############################################################################

    class UpdateSubscription < Choreography

      ####
      #  Create a new instance of the UpdateSubscription Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Subscriptions/UpdateSubscription")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateSubscriptionInputSet
      ####
      def new_input_set()
        return UpdateSubscriptionInputSet.new()
      end

      def make_result_set()
        return UpdateSubscriptionResultSet.new()
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
        results = UpdateSubscriptionResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateSubscription
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateSubscriptionInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Coupon input for this Choreo. 
        # 
        # @param String - (optional, string) If you provide a coupon code, it can be specified here
        ###

        def set_Coupon(value)
          set_input("Coupon", value)
        end
        #### 
        # Set the value of the CustomerID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier of the customer you want to subscribe to a plan
        ###

        def set_CustomerID(value)
          set_input("CustomerID", value)
        end
        #### 
        # Set the value of the Plan input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier of the plan to subscribe the customer to
        ###

        def set_Plan(value)
          set_input("Plan", value)
        end
        #### 
        # Set the value of the Prorate input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to 1, Stripe will prorate switching plans during a billing cycle. When set to 0, this feature is disabled. Defaults to 1.
        ###

        def set_Prorate(value)
          set_input("Prorate", value)
        end
        #### 
        # Set the value of the Token input for this Choreo. 
        # 
        # @param String - (optional, string) The token associated with a set of credit card details.
        ###

        def set_Token(value)
          set_input("Token", value)
        end
        #### 
        # Set the value of the TrialEnd input for this Choreo. 
        # 
        # @param String - (optional, date) A timestamp representing the end of the trial period in UTC. The customer will not be charged during the trial period.
        ###

        def set_TrialEnd(value)
          set_input("TrialEnd", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateSubscription Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateSubscriptionResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateSubscription




  end # module Subscriptions

  module Tokens



    ##############################################################################
    #
    # RetrieveCardToken
    #
    # Retrieves a card token based on a given id.
    #
    ##############################################################################

    class RetrieveCardToken < Choreography

      ####
      #  Create a new instance of the RetrieveCardToken Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Stripe/Tokens/RetrieveCardToken")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveCardTokenInputSet
      ####
      def new_input_set()
        return RetrieveCardTokenInputSet.new()
      end

      def make_result_set()
        return RetrieveCardTokenResultSet.new()
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
        results = RetrieveCardTokenResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveCardToken
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveCardTokenInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Stripe
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the TokenID input for this Choreo. 
        # 
        # @param String - (required, string) The unique identifier of the token you want to retrieve
        ###

        def set_TokenID(value)
          set_input("TokenID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveCardToken Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveCardTokenResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Stripe
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveCardToken




  end # module Tokens
  ##############################################################################
  #
  # UpdateActiveSubscription
  #
  # Subscribes a customer to a specified plan.
  #
  ##############################################################################

  class UpdateActiveSubscription < Choreography

    ####
    #  Create a new instance of the UpdateActiveSubscription Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/UpdateActiveSubscription")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return UpdateActiveSubscriptionInputSet
    ####
    def new_input_set()
      return UpdateActiveSubscriptionInputSet.new()
    end

    def make_result_set()
      return UpdateActiveSubscriptionResultSet.new()
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
      results = UpdateActiveSubscriptionResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the UpdateActiveSubscription
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class UpdateActiveSubscriptionInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the AddressLine1 input for this Choreo. 
      # 
      # @param String - (optional, string) The first line of the address that is associated with the credit card billing address
      ###

      def set_AddressLine1(value)
        set_input("AddressLine1", value)
      end
      #### 
      # Set the value of the AddressLine2 input for this Choreo. 
      # 
      # @param String - (optional, string) The second line of the address that is associated with the credit card billing address
      ###

      def set_AddressLine2(value)
        set_input("AddressLine2", value)
      end
      #### 
      # Set the value of the CVC input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The 3-digit card security code
      ###

      def set_CVC(value)
        set_input("CVC", value)
      end
      #### 
      # Set the value of the CardNumber input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The credit card number without any separators. Required when updating credit card details.
      ###

      def set_CardNumber(value)
        set_input("CardNumber", value)
      end
      #### 
      # Set the value of the CardholderName input for this Choreo. 
      # 
      # @param String - (optional, string) The cardholder's full name as it appears on the credit card
      ###

      def set_CardholderName(value)
        set_input("CardholderName", value)
      end
      #### 
      # Set the value of the Country input for this Choreo. 
      # 
      # @param String - (optional, string) The country associated with the credit card billing address
      ###

      def set_Country(value)
        set_input("Country", value)
      end
      #### 
      # Set the value of the Coupon input for this Choreo. 
      # 
      # @param String - (optional, string) If you provide a coupon code, it can be specified here
      ###

      def set_Coupon(value)
        set_input("Coupon", value)
      end
      #### 
      # Set the value of the CustomerId input for this Choreo. 
      # 
      # @param String - (required, string) The unique identifier of the customer you want to subscribe to a plan
      ###

      def set_CustomerId(value)
        set_input("CustomerId", value)
      end
      #### 
      # Set the value of the ExpirationMonth input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The card's expiration month as a two digit number. Required when updating credit card details.
      ###

      def set_ExpirationMonth(value)
        set_input("ExpirationMonth", value)
      end
      #### 
      # Set the value of the ExpirationYear input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The card's expiration year as a four digit number. Required when updating credit card details.
      ###

      def set_ExpirationYear(value)
        set_input("ExpirationYear", value)
      end
      #### 
      # Set the value of the Plan input for this Choreo. 
      # 
      # @param String - (required, string) The unique identifier of the plan to subscribe the customer to
      ###

      def set_Plan(value)
        set_input("Plan", value)
      end
      #### 
      # Set the value of the Prorate input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) When set to 1, Stripe will prorate switching plans during a billing cycle. When set to 0, this feature is disabled. Defaults to 1.
      ###

      def set_Prorate(value)
        set_input("Prorate", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) The state of the address that is associated with the credit card billing address
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (optional, string) The token associated with a set of credit card details. This can be used as an alternative to specifying credit card details.
      ###

      def set_Token(value)
        set_input("Token", value)
      end
      #### 
      # Set the value of the TrialEnd input for this Choreo. 
      # 
      # @param String - (optional, date) A timestamp representing the end of the trial period in UTC. The customer will not be charged during the trial period.
      ###

      def set_TrialEnd(value)
        set_input("TrialEnd", value)
      end
      #### 
      # Set the value of the ZipCode input for this Choreo. 
      # 
      # @param String - (optional, string) The zip code of the address that is associated with the credit card billing address
      ###

      def set_ZipCode(value)
        set_input("ZipCode", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the UpdateActiveSubscription Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class UpdateActiveSubscriptionResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class UpdateActiveSubscription



  ##############################################################################
  #
  # UpdateCustomer
  #
  # Updates a specified customer record.
  #
  ##############################################################################

  class UpdateCustomer < Choreography

    ####
    #  Create a new instance of the UpdateCustomer Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/UpdateCustomer")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return UpdateCustomerInputSet
    ####
    def new_input_set()
      return UpdateCustomerInputSet.new()
    end

    def make_result_set()
      return UpdateCustomerResultSet.new()
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
      results = UpdateCustomerResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the UpdateCustomer
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class UpdateCustomerInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the AddressLine1 input for this Choreo. 
      # 
      # @param String - (optional, string) The first line of the address that is associated with the credit card billing address
      ###

      def set_AddressLine1(value)
        set_input("AddressLine1", value)
      end
      #### 
      # Set the value of the AddressLine2 input for this Choreo. 
      # 
      # @param String - (optional, string) The second line of the address that is associated with the credit card billing address
      ###

      def set_AddressLine2(value)
        set_input("AddressLine2", value)
      end
      #### 
      # Set the value of the CVC input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The 3-digit card security code
      ###

      def set_CVC(value)
        set_input("CVC", value)
      end
      #### 
      # Set the value of the CardNumber input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The credit card number without any separators. Required when updating credit card details.
      ###

      def set_CardNumber(value)
        set_input("CardNumber", value)
      end
      #### 
      # Set the value of the CardholderName input for this Choreo. 
      # 
      # @param String - (optional, string) The cardholder's full name as it appears on the credit card
      ###

      def set_CardholderName(value)
        set_input("CardholderName", value)
      end
      #### 
      # Set the value of the Country input for this Choreo. 
      # 
      # @param String - (optional, string) The country associated with the credit card billing address
      ###

      def set_Country(value)
        set_input("Country", value)
      end
      #### 
      # Set the value of the Coupon input for this Choreo. 
      # 
      # @param String - (optional, string) If you provide a coupon code, it can be specified here
      ###

      def set_Coupon(value)
        set_input("Coupon", value)
      end
      #### 
      # Set the value of the CustomerId input for this Choreo. 
      # 
      # @param String - (required, string) The unique identifier of the customer you want to update
      ###

      def set_CustomerId(value)
        set_input("CustomerId", value)
      end
      #### 
      # Set the value of the Description input for this Choreo. 
      # 
      # @param String - (optional, string) An arbitrary string of text that will be associated with the charge as a description
      ###

      def set_Description(value)
        set_input("Description", value)
      end
      #### 
      # Set the value of the Email input for this Choreo. 
      # 
      # @param String - (optional, string) The customer's email address
      ###

      def set_Email(value)
        set_input("Email", value)
      end
      #### 
      # Set the value of the ExpirationMonth input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The card's expiration month as a two digit number. Required when updating credit card details.
      ###

      def set_ExpirationMonth(value)
        set_input("ExpirationMonth", value)
      end
      #### 
      # Set the value of the ExpirationYear input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The card's expiration year as a four digit number. Required when updating credit card details.
      ###

      def set_ExpirationYear(value)
        set_input("ExpirationYear", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) The state of the address that is associated with the credit card billing address
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Token input for this Choreo. 
      # 
      # @param String - (optional, string) The token associated with a set of credit card details. When a token is provided, no other credit card details are necessary.
      ###

      def set_Token(value)
        set_input("Token", value)
      end
      #### 
      # Set the value of the ZipCode input for this Choreo. 
      # 
      # @param String - (optional, string) The zip code of the address that is associated with the credit card billing address
      ###

      def set_ZipCode(value)
        set_input("ZipCode", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the UpdateCustomer Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class UpdateCustomerResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class UpdateCustomer



  ##############################################################################
  #
  # UpdateInvoiceItem
  #
  # Updates the amount or description of an existing invoice item.
  #
  ##############################################################################

  class UpdateInvoiceItem < Choreography

    ####
    #  Create a new instance of the UpdateInvoiceItem Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Stripe/UpdateInvoiceItem")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return UpdateInvoiceItemInputSet
    ####
    def new_input_set()
      return UpdateInvoiceItemInputSet.new()
    end

    def make_result_set()
      return UpdateInvoiceItemResultSet.new()
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
      results = UpdateInvoiceItemResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the UpdateInvoiceItem
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class UpdateInvoiceItemInputSet < Choreography::InputSet

      #### 
      # Set the value of the APISecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The secret API Key providied by Stripe
      ###

      def set_APISecretKey(value)
        set_input("APISecretKey", value)
      end
      #### 
      # Set the value of the Amount input for this Choreo. 
      # 
      # @param Integer - (required, integer) The amount in cents of the charge to be included in the customer's next invoice
      ###

      def set_Amount(value)
        set_input("Amount", value)
      end
      #### 
      # Set the value of the Currency input for this Choreo. 
      # 
      # @param String - (optional, string) 3-letter ISO code for currency. Defaults to 'usd' which is currently the only supported currency.
      ###

      def set_Currency(value)
        set_input("Currency", value)
      end
      #### 
      # Set the value of the Description input for this Choreo. 
      # 
      # @param String - (optional, string) An arbitrary string of text that will be included with the invoice item
      ###

      def set_Description(value)
        set_input("Description", value)
      end
      #### 
      # Set the value of the InvoiceItemId input for this Choreo. 
      # 
      # @param String - (required, string) The unique identifier of the invoice item you want to update
      ###

      def set_InvoiceItemId(value)
        set_input("InvoiceItemId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the UpdateInvoiceItem Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class UpdateInvoiceItemResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Stripe
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class UpdateInvoiceItem




end # module Stripe