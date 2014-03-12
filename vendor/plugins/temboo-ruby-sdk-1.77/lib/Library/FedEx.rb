require "temboo"

module FedEx



  ##############################################################################
  #
  # AddressValidationRequest
  #
  # Allows you to submit an address for validation to FedEx Web Services.
  #
  ##############################################################################

  class AddressValidationRequest < Choreography

    ####
    #  Create a new instance of the AddressValidationRequest Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/FedEx/AddressValidationRequest")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return AddressValidationRequestInputSet
    ####
    def new_input_set()
      return AddressValidationRequestInputSet.new()
    end

    def make_result_set()
      return AddressValidationRequestResultSet.new()
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
      results = AddressValidationRequestResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the AddressValidationRequest
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class AddressValidationRequestInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountNumber input for this Choreo. 
      # 
      # @param String - (required, string) Your FedEx Account Number
      ###

      def set_AccountNumber(value)
        set_input("AccountNumber", value)
      end
      #### 
      # Set the value of the AuthenticationKey input for this Choreo. 
      # 
      # @param String - (required, string) The Production Authentication Key provided by FedEx Web Services
      ###

      def set_AuthenticationKey(value)
        set_input("AuthenticationKey", value)
      end
      #### 
      # Set the value of the City input for this Choreo. 
      # 
      # @param String - (required, string) The city to use in the address validation request
      ###

      def set_City(value)
        set_input("City", value)
      end
      #### 
      # Set the value of the CountryCode input for this Choreo. 
      # 
      # @param String - (required, string) The country code to use in the address validation request
      ###

      def set_CountryCode(value)
        set_input("CountryCode", value)
      end
      #### 
      # Set the value of the MeterNumber input for this Choreo. 
      # 
      # @param String - (required, string) The Production Meter Number provided by FedEx Web Services
      ###

      def set_MeterNumber(value)
        set_input("MeterNumber", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The Production Password provided by FedEx Web Services
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the PostalCode input for this Choreo. 
      # 
      # @param String - (required, string) The postal code to use in the address validation request
      ###

      def set_PostalCode(value)
        set_input("PostalCode", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (required, string) The state to use in the address validation request
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Street input for this Choreo. 
      # 
      # @param String - (required, string) The street to use in the address validation request
      ###

      def set_Street(value)
        set_input("Street", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the AddressValidationRequest Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class AddressValidationRequestResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "DeliveryPointValidation" output from this Choreo execution
    	#
    	# @return String - (string) The Delivery Point Validation parsed from the FedEx response
    	####
    	def get_DeliveryPointValidation()
    	  return @outputs["DeliveryPointValidation"]
    	end
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from FedEx
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class AddressValidationRequest



  ##############################################################################
  #
  # FedExLocatorRequest
  #
  # Retrieves the nearest FedEx locations for a specified address.
  #
  ##############################################################################

  class FedExLocatorRequest < Choreography

    ####
    #  Create a new instance of the FedExLocatorRequest Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/FedEx/FedExLocatorRequest")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FedExLocatorRequestInputSet
    ####
    def new_input_set()
      return FedExLocatorRequestInputSet.new()
    end

    def make_result_set()
      return FedExLocatorRequestResultSet.new()
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
      results = FedExLocatorRequestResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FedExLocatorRequest
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FedExLocatorRequestInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountNumber input for this Choreo. 
      # 
      # @param String - (required, string) Your FedEx Account Number
      ###

      def set_AccountNumber(value)
        set_input("AccountNumber", value)
      end
      #### 
      # Set the value of the AuthenticationKey input for this Choreo. 
      # 
      # @param String - (required, string) The Production Authentication Key provided by FedEx Web Services
      ###

      def set_AuthenticationKey(value)
        set_input("AuthenticationKey", value)
      end
      #### 
      # Set the value of the City input for this Choreo. 
      # 
      # @param String - (required, string) The city to use in the locator request
      ###

      def set_City(value)
        set_input("City", value)
      end
      #### 
      # Set the value of the CountryCode input for this Choreo. 
      # 
      # @param String - (required, string) The country code to use in the locator request
      ###

      def set_CountryCode(value)
        set_input("CountryCode", value)
      end
      #### 
      # Set the value of the MeterNumber input for this Choreo. 
      # 
      # @param String - (required, string) The Production Meter Number provided by FedEx Web Services
      ###

      def set_MeterNumber(value)
        set_input("MeterNumber", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The Production Password provided by FedEx Web Services
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the PostalCode input for this Choreo. 
      # 
      # @param String - (required, string) The postal code to use in the locator request
      ###

      def set_PostalCode(value)
        set_input("PostalCode", value)
      end
      #### 
      # Set the value of the StateOrProvinceCode input for this Choreo. 
      # 
      # @param String - (required, string) The state or province code to use in the locator request
      ###

      def set_StateOrProvinceCode(value)
        set_input("StateOrProvinceCode", value)
      end
      #### 
      # Set the value of the Street input for this Choreo. 
      # 
      # @param String - (required, string) The street to use in the locator request
      ###

      def set_Street(value)
        set_input("Street", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FedExLocatorRequest Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FedExLocatorRequestResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "BusinessName" output from this Choreo execution
    	#
    	# @return String - (string) The Business Name parsed from the FedEx response
    	####
    	def get_BusinessName()
    	  return @outputs["BusinessName"]
    	end
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from FedEx
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    	####
    	# Retrieve the value for the "BusinessAddress" output from this Choreo execution
    	#
    	# @return String - (string) The Business Address parsed from the FedEx response
    	####
    	def get_BusinessAddress()
    	  return @outputs["BusinessAddress"]
    	end
    end

  end # class FedExLocatorRequest



  ##############################################################################
  #
  # PostalCodeInquiryRequest
  #
  # Retrieves location information from FedEx Web Services for a specified postal code.
  #
  ##############################################################################

  class PostalCodeInquiryRequest < Choreography

    ####
    #  Create a new instance of the PostalCodeInquiryRequest Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/FedEx/PostalCodeInquiryRequest")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return PostalCodeInquiryRequestInputSet
    ####
    def new_input_set()
      return PostalCodeInquiryRequestInputSet.new()
    end

    def make_result_set()
      return PostalCodeInquiryRequestResultSet.new()
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
      results = PostalCodeInquiryRequestResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the PostalCodeInquiryRequest
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class PostalCodeInquiryRequestInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountNumber input for this Choreo. 
      # 
      # @param String - (required, string) Your FedEx Account Number
      ###

      def set_AccountNumber(value)
        set_input("AccountNumber", value)
      end
      #### 
      # Set the value of the AuthenticationKey input for this Choreo. 
      # 
      # @param String - (required, string) The Production Authentication Key provided by FedEx Web Services
      ###

      def set_AuthenticationKey(value)
        set_input("AuthenticationKey", value)
      end
      #### 
      # Set the value of the CountryCode input for this Choreo. 
      # 
      # @param String - (required, string) The country code to use in the inquiry request
      ###

      def set_CountryCode(value)
        set_input("CountryCode", value)
      end
      #### 
      # Set the value of the MeterNumber input for this Choreo. 
      # 
      # @param String - (required, string) The Production Meter Number provided by FedEx Web Services
      ###

      def set_MeterNumber(value)
        set_input("MeterNumber", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The Production Password provided by FedEx Web Services
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the PostalCode input for this Choreo. 
      # 
      # @param String - (required, string) The postal code to use in the inquiry request
      ###

      def set_PostalCode(value)
        set_input("PostalCode", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the PostalCodeInquiryRequest Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class PostalCodeInquiryRequestResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from FedEx
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class PostalCodeInquiryRequest



  ##############################################################################
  #
  # ServiceAvailabilityRequest
  #
  # Retrieves available shipping options and delivery dates for a specified origin and destination.
  #
  ##############################################################################

  class ServiceAvailabilityRequest < Choreography

    ####
    #  Create a new instance of the ServiceAvailabilityRequest Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/FedEx/ServiceAvailabilityRequest")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ServiceAvailabilityRequestInputSet
    ####
    def new_input_set()
      return ServiceAvailabilityRequestInputSet.new()
    end

    def make_result_set()
      return ServiceAvailabilityRequestResultSet.new()
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
      results = ServiceAvailabilityRequestResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ServiceAvailabilityRequest
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ServiceAvailabilityRequestInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountNumber input for this Choreo. 
      # 
      # @param String - (required, string) Your FedEx Account Number
      ###

      def set_AccountNumber(value)
        set_input("AccountNumber", value)
      end
      #### 
      # Set the value of the AuthenticationKey input for this Choreo. 
      # 
      # @param String - (required, string) The Production Authentication Key provided by FedEx Web Services
      ###

      def set_AuthenticationKey(value)
        set_input("AuthenticationKey", value)
      end
      #### 
      # Set the value of the DestinationCountryCode input for this Choreo. 
      # 
      # @param String - (required, string) The destination country code to use as an input to the service availability request
      ###

      def set_DestinationCountryCode(value)
        set_input("DestinationCountryCode", value)
      end
      #### 
      # Set the value of the DestinationPostalCode input for this Choreo. 
      # 
      # @param String - (required, string) The destination postal code to use as an input to the service availability request
      ###

      def set_DestinationPostalCode(value)
        set_input("DestinationPostalCode", value)
      end
      #### 
      # Set the value of the MeterNumber input for this Choreo. 
      # 
      # @param String - (required, string) The Production Meter Number provided by FedEx Web Services
      ###

      def set_MeterNumber(value)
        set_input("MeterNumber", value)
      end
      #### 
      # Set the value of the OriginCountryCode input for this Choreo. 
      # 
      # @param String - (required, string) The origin country code to use as an input to the service availability request
      ###

      def set_OriginCountryCode(value)
        set_input("OriginCountryCode", value)
      end
      #### 
      # Set the value of the OriginPostalCode input for this Choreo. 
      # 
      # @param String - (required, string) The origin country code to use as an input to the service availability request
      ###

      def set_OriginPostalCode(value)
        set_input("OriginPostalCode", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The Production Password provided by FedEx Web Services
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the ShipDate input for this Choreo. 
      # 
      # @param String - (required, date) The date to use for the service availability request (epoch timestamp in milliseconds or formatted like yyyy-MM-dd)
      ###

      def set_ShipDate(value)
        set_input("ShipDate", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ServiceAvailabilityRequest Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ServiceAvailabilityRequestResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from FedEx
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ServiceAvailabilityRequest



  ##############################################################################
  #
  # TrackingRequest
  #
  # Retrieves package information for a specified tracking number.
  #
  ##############################################################################

  class TrackingRequest < Choreography

    ####
    #  Create a new instance of the TrackingRequest Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/FedEx/TrackingRequest")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return TrackingRequestInputSet
    ####
    def new_input_set()
      return TrackingRequestInputSet.new()
    end

    def make_result_set()
      return TrackingRequestResultSet.new()
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
      results = TrackingRequestResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the TrackingRequest
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class TrackingRequestInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountNumber input for this Choreo. 
      # 
      # @param String - (required, string) Your FedEx Account Number
      ###

      def set_AccountNumber(value)
        set_input("AccountNumber", value)
      end
      #### 
      # Set the value of the AuthenticationKey input for this Choreo. 
      # 
      # @param String - (required, string) The Production Authentication Key provided by FedEx Web Services
      ###

      def set_AuthenticationKey(value)
        set_input("AuthenticationKey", value)
      end
      #### 
      # Set the value of the MeterNumber input for this Choreo. 
      # 
      # @param String - (required, string) The Production Meter Number provided by FedEx Web Services
      ###

      def set_MeterNumber(value)
        set_input("MeterNumber", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) The Production Password provided by FedEx Web Services
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the TrackingNumber input for this Choreo. 
      # 
      # @param String - (required, string) The package tracking number to use in the request
      ###

      def set_TrackingNumber(value)
        set_input("TrackingNumber", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the TrackingRequest Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class TrackingRequestResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "StatusDescription" output from this Choreo execution
    	#
    	# @return String - (string) The status description for the package which is parsed from the FedEx response
    	####
    	def get_StatusDescription()
    	  return @outputs["StatusDescription"]
    	end
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from FedEx
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class TrackingRequest




end # module FedEx