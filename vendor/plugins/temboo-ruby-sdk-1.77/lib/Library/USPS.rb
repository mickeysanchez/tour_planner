require "temboo"

module USPS




  module AddressInformationAPI



    ##############################################################################
    #
    # CityStateLookup
    #
    # Lookup city and state using incomplete address information.
    #
    ##############################################################################

    class CityStateLookup < Choreography

      ####
      #  Create a new instance of the CityStateLookup Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/USPS/AddressInformationAPI/CityStateLookup")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CityStateLookupInputSet
      ####
      def new_input_set()
        return CityStateLookupInputSet.new()
      end

      def make_result_set()
        return CityStateLookupResultSet.new()
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
        results = CityStateLookupResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CityStateLookup
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CityStateLookupInputSet < Choreography::InputSet

        #### 
        # Set the value of the Endpoint input for this Choreo. 
        # 
        # @param String - (optional, string) If you are accessing the production server, set to 'production'. Defaults to 'testing' which indicates that you are using the sandbox.
        ###

        def set_Endpoint(value)
          set_input("Endpoint", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The password assigned by USPS
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (required, string) Alphanumeric ID assigned by USPS
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end
        #### 
        # Set the value of the Zip input for this Choreo. 
        # 
        # @param Integer - (required, integer) Maximum characters allowed: 5
        ###

        def set_Zip(value)
          set_input("Zip", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CityStateLookup Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CityStateLookupResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from USPS Web Service
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CityStateLookup



    ##############################################################################
    #
    # ValidateAddress
    #
    # Validates and supplements incomplete address information.
    #
    ##############################################################################

    class ValidateAddress < Choreography

      ####
      #  Create a new instance of the ValidateAddress Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/USPS/AddressInformationAPI/ValidateAddress")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ValidateAddressInputSet
      ####
      def new_input_set()
        return ValidateAddressInputSet.new()
      end

      def make_result_set()
        return ValidateAddressResultSet.new()
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
        results = ValidateAddressResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ValidateAddress
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ValidateAddressInputSet < Choreography::InputSet

        #### 
        # Set the value of the AptOrSuite input for this Choreo. 
        # 
        # @param String - (optional, string) Used to provide an apartment or suite number, if applicable. Maximum characters allowed: 38.
        ###

        def set_AptOrSuite(value)
          set_input("AptOrSuite", value)
        end
        #### 
        # Set the value of the City input for this Choreo. 
        # 
        # @param String - (optional, string) Maximum characters allowed: 15. Either City and State or Zip are required.
        ###

        def set_City(value)
          set_input("City", value)
        end
        #### 
        # Set the value of the Endpoint input for this Choreo. 
        # 
        # @param String - (optional, string) If you are accessing the production server, set to 'production'. Defaults to 'testing' which indicates that you are using the sandbox.
        ###

        def set_Endpoint(value)
          set_input("Endpoint", value)
        end
        #### 
        # Set the value of the FirmName input for this Choreo. 
        # 
        # @param String - (optional, string) Maximum characters allowed: 38.
        ###

        def set_FirmName(value)
          set_input("FirmName", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The password assigned by USPS
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) Maximum characters allowed: 2. Either City and State or Zip are required.
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the StreetAddress input for this Choreo. 
        # 
        # @param String - (required, string) Street address. Maximum characters allowed: 38.
        ###

        def set_StreetAddress(value)
          set_input("StreetAddress", value)
        end
        #### 
        # Set the value of the Urbanization input for this Choreo. 
        # 
        # @param String - (optional, string) Maximum characters allowed: 28. For Puerto Rico addresses only.
        ###

        def set_Urbanization(value)
          set_input("Urbanization", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (required, string) Alphanumeric ID assigned by USPS
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end
        #### 
        # Set the value of the Zip4DigitCode input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Maximum characters allowed: 4
        ###

        def set_Zip4DigitCode(value)
          set_input("Zip4DigitCode", value)
        end
        #### 
        # Set the value of the Zip input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Maximum characters allowed: 5. Either City and State or Zip are required.
        ###

        def set_Zip(value)
          set_input("Zip", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ValidateAddress Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ValidateAddressResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from USPS Web Service
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ValidateAddress



    ##############################################################################
    #
    # ZipCodeLookup
    #
    # Lookup zip codes using incomplete address information.
    #
    ##############################################################################

    class ZipCodeLookup < Choreography

      ####
      #  Create a new instance of the ZipCodeLookup Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/USPS/AddressInformationAPI/ZipCodeLookup")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ZipCodeLookupInputSet
      ####
      def new_input_set()
        return ZipCodeLookupInputSet.new()
      end

      def make_result_set()
        return ZipCodeLookupResultSet.new()
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
        results = ZipCodeLookupResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ZipCodeLookup
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ZipCodeLookupInputSet < Choreography::InputSet

        #### 
        # Set the value of the AptOrSuite input for this Choreo. 
        # 
        # @param String - (optional, string) Used to provide an apartment or suite number, if applicable. Maximum characters allowed: 38.
        ###

        def set_AptOrSuite(value)
          set_input("AptOrSuite", value)
        end
        #### 
        # Set the value of the ApyOrSuite input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_ApyOrSuite(value)
          set_input("ApyOrSuite", value)
        end
        #### 
        # Set the value of the City input for this Choreo. 
        # 
        # @param String - (required, string) Maximum characters allowed: 15.
        ###

        def set_City(value)
          set_input("City", value)
        end
        #### 
        # Set the value of the Endpoint input for this Choreo. 
        # 
        # @param String - (optional, string) If you are accessing the production server, set to 'production'. Defaults to 'testing' which indicates that you are using the sandbox.
        ###

        def set_Endpoint(value)
          set_input("Endpoint", value)
        end
        #### 
        # Set the value of the FirmName input for this Choreo. 
        # 
        # @param String - (optional, string) Maximum characters allowed: 38.
        ###

        def set_FirmName(value)
          set_input("FirmName", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The password assigned by USPS
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (required, string) Maximum characters allowed: 2.
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the StreetAddress input for this Choreo. 
        # 
        # @param String - (required, string) Street address.  Maximum characters allowed: 38.
        ###

        def set_StreetAddress(value)
          set_input("StreetAddress", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (required, string) Alphanumeric ID assigned by USPS
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ZipCodeLookup Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ZipCodeLookupResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from USPS Web Service
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ZipCodeLookup




  end # module AddressInformationAPI

  module DeliveryInformationAPI



    ##############################################################################
    #
    # ExpressMailServiceRequest
    #
    # Request USPS Express Mail shipping information for a given origin and destination.
    #
    ##############################################################################

    class ExpressMailServiceRequest < Choreography

      ####
      #  Create a new instance of the ExpressMailServiceRequest Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/USPS/DeliveryInformationAPI/ExpressMailServiceRequest")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ExpressMailServiceRequestInputSet
      ####
      def new_input_set()
        return ExpressMailServiceRequestInputSet.new()
      end

      def make_result_set()
        return ExpressMailServiceRequestResultSet.new()
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
        results = ExpressMailServiceRequestResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ExpressMailServiceRequest
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ExpressMailServiceRequestInputSet < Choreography::InputSet

        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, date) Date the package is to be shipped. Must take the form 'MM/DD/YYYY'.
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the DestinationZip input for this Choreo. 
        # 
        # @param Integer - (required, integer) Five digit zip code.
        ###

        def set_DestinationZip(value)
          set_input("DestinationZip", value)
        end
        #### 
        # Set the value of the Endpoint input for this Choreo. 
        # 
        # @param String - (optional, string) If you are accessing the production server, set to 'production'. Defaults to 'testing' which indicates that you are using the sandbox.
        ###

        def set_Endpoint(value)
          set_input("Endpoint", value)
        end
        #### 
        # Set the value of the OriginZip input for this Choreo. 
        # 
        # @param Integer - (required, integer) Three or five digit zip code.
        ###

        def set_OriginZip(value)
          set_input("OriginZip", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The password assigned by USPS
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (required, string) Alphanumeric ID assigned by USPS
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ExpressMailServiceRequest Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ExpressMailServiceRequestResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from USPS Web Service
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ExpressMailServiceRequest



    ##############################################################################
    #
    # PackageServicesRequest
    #
    # Request USPS Parcel Post, Bound Printed Matter, Library Mail, or Media Mail shipping information for a given origin and destination.
    #
    ##############################################################################

    class PackageServicesRequest < Choreography

      ####
      #  Create a new instance of the PackageServicesRequest Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/USPS/DeliveryInformationAPI/PackageServicesRequest")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PackageServicesRequestInputSet
      ####
      def new_input_set()
        return PackageServicesRequestInputSet.new()
      end

      def make_result_set()
        return PackageServicesRequestResultSet.new()
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
        results = PackageServicesRequestResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the PackageServicesRequest
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PackageServicesRequestInputSet < Choreography::InputSet

        #### 
        # Set the value of the DestinationZip input for this Choreo. 
        # 
        # @param Integer - (required, integer) First 3 digits of a 5-digit zip code.
        ###

        def set_DestinationZip(value)
          set_input("DestinationZip", value)
        end
        #### 
        # Set the value of the Endpoint input for this Choreo. 
        # 
        # @param String - (optional, string) If you are accessing the production server, set to 'production'. Defaults to 'testing' which indicates that you are using the sandbox.
        ###

        def set_Endpoint(value)
          set_input("Endpoint", value)
        end
        #### 
        # Set the value of the OriginZip input for this Choreo. 
        # 
        # @param Integer - (required, integer) First 3 digits of a 5-digit zip code.  Required value.
        ###

        def set_OriginZip(value)
          set_input("OriginZip", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The password assigned by USPS
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (required, string) Alphanumeric ID assigned by USPS
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the PackageServicesRequest Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PackageServicesRequestResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from USPS Web Service
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class PackageServicesRequest



    ##############################################################################
    #
    # PriorityMailServiceRequest
    #
    # Request USPS Priority Mail shipping information for a given origin and destination.
    #
    ##############################################################################

    class PriorityMailServiceRequest < Choreography

      ####
      #  Create a new instance of the PriorityMailServiceRequest Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/USPS/DeliveryInformationAPI/PriorityMailServiceRequest")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PriorityMailServiceRequestInputSet
      ####
      def new_input_set()
        return PriorityMailServiceRequestInputSet.new()
      end

      def make_result_set()
        return PriorityMailServiceRequestResultSet.new()
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
        results = PriorityMailServiceRequestResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the PriorityMailServiceRequest
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PriorityMailServiceRequestInputSet < Choreography::InputSet

        #### 
        # Set the value of the DestinationZip input for this Choreo. 
        # 
        # @param Integer - (required, integer) First 3 digits of a 5-digit zip code
        ###

        def set_DestinationZip(value)
          set_input("DestinationZip", value)
        end
        #### 
        # Set the value of the Endpoint input for this Choreo. 
        # 
        # @param String - (optional, string) If you are accessing the production server, set to 'production'. Defaults to 'testing' which indicates that you are using the sandbox.
        ###

        def set_Endpoint(value)
          set_input("Endpoint", value)
        end
        #### 
        # Set the value of the OriginZip input for this Choreo. 
        # 
        # @param Integer - (required, integer) First 3 digits of a 5-digit zip code
        ###

        def set_OriginZip(value)
          set_input("OriginZip", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The password assigned by USPS
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (required, string) Alphanumeric ID assigned by USPS.  Required value.
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the PriorityMailServiceRequest Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PriorityMailServiceRequestResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from USPS Web Service
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class PriorityMailServiceRequest



    ##############################################################################
    #
    # TrackConfirm
    #
    # Request tracking information for a package with a given tracking id.
    #
    ##############################################################################

    class TrackConfirm < Choreography

      ####
      #  Create a new instance of the TrackConfirm Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/USPS/DeliveryInformationAPI/TrackConfirm")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return TrackConfirmInputSet
      ####
      def new_input_set()
        return TrackConfirmInputSet.new()
      end

      def make_result_set()
        return TrackConfirmResultSet.new()
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
        results = TrackConfirmResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the TrackConfirm
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class TrackConfirmInputSet < Choreography::InputSet

        #### 
        # Set the value of the Endpoint input for this Choreo. 
        # 
        # @param String - (optional, string) If you are accessing the production server, set to 'production'. Defaults to 'testing' which indicates that you are using the sandbox.
        ###

        def set_Endpoint(value)
          set_input("Endpoint", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The password assigned by USPS
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the TrackID input for this Choreo. 
        # 
        # @param String - (required, string) The tracking number.  Can be alphanumeric characters.  Required value.
        ###

        def set_TrackID(value)
          set_input("TrackID", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (required, string) Alphanumeric ID assigned by USPS
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the TrackConfirm Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class TrackConfirmResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from USPS Web Service
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class TrackConfirm



    ##############################################################################
    #
    # TrackConfirmFields
    #
    # Track a package sent via USPS and return tracking information with details in separate XML tags.
    #
    ##############################################################################

    class TrackConfirmFields < Choreography

      ####
      #  Create a new instance of the TrackConfirmFields Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/USPS/DeliveryInformationAPI/TrackConfirmFields")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return TrackConfirmFieldsInputSet
      ####
      def new_input_set()
        return TrackConfirmFieldsInputSet.new()
      end

      def make_result_set()
        return TrackConfirmFieldsResultSet.new()
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
        results = TrackConfirmFieldsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the TrackConfirmFields
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class TrackConfirmFieldsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Endpoint input for this Choreo. 
        # 
        # @param String - (optional, string) If you are accessing the production server, set to 'production'. Defaults to 'testing' which indicates that you are using the sandbox.
        ###

        def set_Endpoint(value)
          set_input("Endpoint", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The password assigned by USPS
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the TrackID input for this Choreo. 
        # 
        # @param String - (required, string) The tracking number.  Can be alphanumeric characters.
        ###

        def set_TrackID(value)
          set_input("TrackID", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (required, string) Alphanumeric ID assigned by USPS
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the TrackConfirmFields Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class TrackConfirmFieldsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from USPS Web Service
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class TrackConfirmFields




  end # module DeliveryInformationAPI

end # module USPS