require "temboo"

module Dwolla




  module Balance



    ##############################################################################
    #
    # GetBalance
    #
    # Retrieves the account balance for the user associated with the given authorized access token.
    #
    ##############################################################################

    class GetBalance < Choreography

      ####
      #  Create a new instance of the GetBalance Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dwolla/Balance/GetBalance")
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
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
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
      	# @return String - (json) The response from Dwolla.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetBalance




  end # module Balance

  module Contacts



    ##############################################################################
    #
    # NearbyContacts
    #
    # Retrieves nearby Dwolla spots within the range of the provided latitude and longitude.
    #
    ##############################################################################

    class NearbyContacts < Choreography

      ####
      #  Create a new instance of the NearbyContacts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dwolla/Contacts/NearbyContacts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return NearbyContactsInputSet
      ####
      def new_input_set()
        return NearbyContactsInputSet.new()
      end

      def make_result_set()
        return NearbyContactsResultSet.new()
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
        results = NearbyContactsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the NearbyContacts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class NearbyContactsInputSet < Choreography::InputSet

        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (required, string) The Client ID provided by Dwolla (AKA the Consumer Key).
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Client Secret provided by Dwolla (AKA the Consumer Secret).
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) Current latitude.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of spots to retrieve. Defaults to 10.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) Current longitude.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the Range input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Range to retrieve spots for in miles.
        ###

        def set_Range(value)
          set_input("Range", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the NearbyContacts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class NearbyContactsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Dwolla.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class NearbyContacts



    ##############################################################################
    #
    # UserContacts
    #
    # Retrieves the information for contacts for the user assoicated with the authorized access token.
    #
    ##############################################################################

    class UserContacts < Choreography

      ####
      #  Create a new instance of the UserContacts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dwolla/Contacts/UserContacts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UserContactsInputSet
      ####
      def new_input_set()
        return UserContactsInputSet.new()
      end

      def make_result_set()
        return UserContactsResultSet.new()
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
        results = UserContactsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UserContacts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UserContactsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of contacts to retrieve. Defaults to 10. Can be between 1 and 200 contacts.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Search input for this Choreo. 
        # 
        # @param String - (optional, string) Search term used to search the contacts.
        ###

        def set_Search(value)
          set_input("Search", value)
        end
        #### 
        # Set the value of the Types input for this Choreo. 
        # 
        # @param String - (optional, string) Type of accounts to retrieve, in the form of a comma-separated list (e.g. "Facebook,Dwolla")
        ###

        def set_Types(value)
          set_input("Types", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UserContacts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UserContactsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Dwolla.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UserContacts




  end # module Contacts

  module FundingSources



    ##############################################################################
    #
    # FundingSourcesByID
    #
    # Retrieves the account information for the user associated with the given authorized access token.
    #
    ##############################################################################

    class FundingSourcesByID < Choreography

      ####
      #  Create a new instance of the FundingSourcesByID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dwolla/FundingSources/FundingSourcesByID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FundingSourcesByIDInputSet
      ####
      def new_input_set()
        return FundingSourcesByIDInputSet.new()
      end

      def make_result_set()
        return FundingSourcesByIDResultSet.new()
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
        results = FundingSourcesByIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FundingSourcesByID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FundingSourcesByIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the FundingID input for this Choreo. 
        # 
        # @param String - (required, string) Funding source identifier of the funding source being requested.
        ###

        def set_FundingID(value)
          set_input("FundingID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FundingSourcesByID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FundingSourcesByIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Dwolla.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FundingSourcesByID



    ##############################################################################
    #
    # FundingSourcesListing
    #
    # Retrieves a list of verified funding sources for the user associated with the authorized access token.
    #
    ##############################################################################

    class FundingSourcesListing < Choreography

      ####
      #  Create a new instance of the FundingSourcesListing Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dwolla/FundingSources/FundingSourcesListing")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FundingSourcesListingInputSet
      ####
      def new_input_set()
        return FundingSourcesListingInputSet.new()
      end

      def make_result_set()
        return FundingSourcesListingResultSet.new()
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
        results = FundingSourcesListingResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FundingSourcesListing
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FundingSourcesListingInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FundingSourcesListing Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FundingSourcesListingResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Dwolla.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FundingSourcesListing




  end # module FundingSources

  module OAuth



    ##############################################################################
    #
    # FinalizeOAuth
    #
    # Completes the OAuth process by retrieving a Dwolla access token for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
    #
    ##############################################################################

    class FinalizeOAuth < Choreography

      ####
      #  Create a new instance of the FinalizeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dwolla/OAuth/FinalizeOAuth")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FinalizeOAuthInputSet
      ####
      def new_input_set()
        return FinalizeOAuthInputSet.new()
      end

      def make_result_set()
        return FinalizeOAuthResultSet.new()
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
        results = FinalizeOAuthResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FinalizeOAuth
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FinalizeOAuthInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the AppKeyName input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AppKeyName(value)
          set_input("AppKeyName", value)
        end
        #### 
        # Set the value of the AppKeyValue input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AppKeyValue(value)
          set_input("AppKeyValue", value)
        end
        #### 
        # Set the value of the CallbackID input for this Choreo. 
        # 
        # @param String - (required, string) The callback token returned by the InitializeOAuth Choreo. Used to retrieve the authorization code after the user authorizes.
        ###

        def set_CallbackID(value)
          set_input("CallbackID", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (required, string) The Client ID provided by Dwolla after registering your application.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Client Secret provided by Dwolla after registering your application.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Timeout input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The amount of time (in seconds) to poll your Temboo callback URL to see if your app's user has allowed or denied the request for access. Defaults to 20. Max is 60.
        ###

        def set_Timeout(value)
          set_input("Timeout", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FinalizeOAuth Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FinalizeOAuthResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "AccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The access token for the user that has granted access to your application.
      	####
      	def get_AccessToken()
      	  return @outputs["AccessToken"]
      	end
      end

    end # class FinalizeOAuth



    ##############################################################################
    #
    # InitializeOAuth
    #
    # Generates an authorization URL and callback ID that an application can use to complete the first step in the OAuth process.
    #
    ##############################################################################

    class InitializeOAuth < Choreography

      ####
      #  Create a new instance of the InitializeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dwolla/OAuth/InitializeOAuth")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return InitializeOAuthInputSet
      ####
      def new_input_set()
        return InitializeOAuthInputSet.new()
      end

      def make_result_set()
        return InitializeOAuthResultSet.new()
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
        results = InitializeOAuthResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the InitializeOAuth
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class InitializeOAuthInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the AppKeyName input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AppKeyName(value)
          set_input("AppKeyName", value)
        end
        #### 
        # Set the value of the AppKeyValue input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AppKeyValue(value)
          set_input("AppKeyValue", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (required, string) The Client ID provided by Dwolla after registering your application.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the CustomCallbackID input for this Choreo. 
        # 
        # @param String - (optional, string) A unique identifier that you can pass to eliminate the need to wait for a Temboo generated CallbackID. Callback identifiers may only contain numbers, letters, periods, and hyphens.
        ###

        def set_CustomCallbackID(value)
          set_input("CustomCallbackID", value)
        end
        #### 
        # Set the value of the ForwardingURL input for this Choreo. 
        # 
        # @param String - (optional, string) The URL that Temboo will redirect your users to after they grant access to your application. This should include the "https://" or "http://" prefix and be a fully qualified URL.
        ###

        def set_ForwardingURL(value)
          set_input("ForwardingURL", value)
        end
        #### 
        # Set the value of the Scope input for this Choreo. 
        # 
        # @param String - (required, string) Lists which access permissions the app requires. Multiple scopes - separated by '|' (ex of all: "AccountInfoFull|Contacts|Transactions|Balance|Send|Request|Funding" ). For more info see docs.
        ###

        def set_Scope(value)
          set_input("Scope", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the InitializeOAuth Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class InitializeOAuthResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "CallbackID" output from this Choreo execution
      	#
      	# @return String - (string) An ID used to retrieve the callback data that Temboo stores once your application's user authorizes.
      	####
      	def get_CallbackID()
      	  return @outputs["CallbackID"]
      	end
      	####
      	# Retrieve the value for the "AuthorizationURL" output from this Choreo execution
      	#
      	# @return String - (string) The authorization URL that the application's user needs to go to in order to grant access to your application.
      	####
      	def get_AuthorizationURL()
      	  return @outputs["AuthorizationURL"]
      	end
      end

    end # class InitializeOAuth




  end # module OAuth

  module Transactions



    ##############################################################################
    #
    # ByID
    #
    # Retrieves the account information about the specified transaction by Transaction ID.
    #
    ##############################################################################

    class ByID < Choreography

      ####
      #  Create a new instance of the ByID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dwolla/Transactions/ByID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ByIDInputSet
      ####
      def new_input_set()
        return ByIDInputSet.new()
      end

      def make_result_set()
        return ByIDResultSet.new()
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
        results = ByIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ByID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ByIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the TransactionID input for this Choreo. 
        # 
        # @param Integer - (required, integer) Transaction identifier of the transaction being requested.
        ###

        def set_TransactionID(value)
          set_input("TransactionID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ByID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ByIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Dwolla.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ByID



    ##############################################################################
    #
    # Listing
    #
    # Retrieves a list of transactions for the user associated with the authorized access token.
    #
    ##############################################################################

    class Listing < Choreography

      ####
      #  Create a new instance of the Listing Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dwolla/Transactions/Listing")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListingInputSet
      ####
      def new_input_set()
        return ListingInputSet.new()
      end

      def make_result_set()
        return ListingResultSet.new()
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
        results = ListingResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Listing
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListingInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of transactions to retrieve. Defaults to 10. Can be between 1 and 200 transactions.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the SinceDate input for this Choreo. 
        # 
        # @param String - (optional, string) Earliest date and time for which to retrieve transactions. Defaults to 7 days prior to current date and time in UTC.
        ###

        def set_SinceDate(value)
          set_input("SinceDate", value)
        end
        #### 
        # Set the value of the Skip input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of transactions to skip. Defaults to 0.
        ###

        def set_Skip(value)
          set_input("Skip", value)
        end
        #### 
        # Set the value of the Types input for this Choreo. 
        # 
        # @param String - (optional, string) Transaction types to retrieve. Must be delimited by a '|'. Options are money_sent, money_received, deposit, withdrawal, and fee. Defaults to include all transaction types.
        ###

        def set_Types(value)
          set_input("Types", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Listing Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListingResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Dwolla.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Listing



    ##############################################################################
    #
    # Request
    #
    # Use this method to request funds from a source user, originating from the user associated with the authorized access token.
    #
    ##############################################################################

    class Request < Choreography

      ####
      #  Create a new instance of the Request Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dwolla/Transactions/Request")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RequestInputSet
      ####
      def new_input_set()
        return RequestInputSet.new()
      end

      def make_result_set()
        return RequestResultSet.new()
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
        results = RequestResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Request
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RequestInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Amount input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) Amount of funds to request from the source user.
        ###

        def set_Amount(value)
          set_input("Amount", value)
        end
        #### 
        # Set the value of the FacillitatorAmount input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Amount of the facilitator fee to override. Only applicable if the facilitator fee feature is enabled. If set to 0, facilitator fee is disabled for transaction. Cannot exceed 25% of the 'amount'.
        ###

        def set_FacillitatorAmount(value)
          set_input("FacillitatorAmount", value)
        end
        #### 
        # Set the value of the Notes input for this Choreo. 
        # 
        # @param String - (optional, multiline) Note to attach to the transaction. Limited to 250 characters.
        ###

        def set_Notes(value)
          set_input("Notes", value)
        end
        #### 
        # Set the value of the Pin input for this Choreo. 
        # 
        # @param Integer - (required, integer) User's PIN associated with their account.
        ###

        def set_Pin(value)
          set_input("Pin", value)
        end
        #### 
        # Set the value of the SourceID input for this Choreo. 
        # 
        # @param String - (required, string) Identification of the user to request funds from. Must be the Dwolla identifier, Facebook identifier, Twitter screename, phone number, or email address.
        ###

        def set_SourceID(value)
          set_input("SourceID", value)
        end
        #### 
        # Set the value of the SourceType input for this Choreo. 
        # 
        # @param String - (optional, string) Type of destination user. Defaults to Dwolla. Can be Dwolla, Facebook, Twitter, Email, or Phone.
        ###

        def set_SourceType(value)
          set_input("SourceType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Request Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RequestResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Dwolla.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Request



    ##############################################################################
    #
    # Send
    #
    # Use this method to send funds to a destination user, from the user associated with the authorized access token.
    #
    ##############################################################################

    class Send < Choreography

      ####
      #  Create a new instance of the Send Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dwolla/Transactions/Send")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SendInputSet
      ####
      def new_input_set()
        return SendInputSet.new()
      end

      def make_result_set()
        return SendResultSet.new()
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
        results = SendResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Send
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SendInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Amount input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) Amount of funds to transfer to the destination user.
        ###

        def set_Amount(value)
          set_input("Amount", value)
        end
        #### 
        # Set the value of the AssumeCosts input for this Choreo. 
        # 
        # @param Boolean - (required, boolean) Set to true if the user will assume the Dwolla fee. Set to false if the destination user will assume the Dwolla fee. Does not affect facilitator fees. Defaults to false.
        ###

        def set_AssumeCosts(value)
          set_input("AssumeCosts", value)
        end
        #### 
        # Set the value of the DestinationId input for this Choreo. 
        # 
        # @param String - (required, string) Identification of the user to send funds to. Must be the Dwolla identifier, Facebook identifier, Twitter identifier, phone number, or email address.
        ###

        def set_DestinationId(value)
          set_input("DestinationId", value)
        end
        #### 
        # Set the value of the DestinationType input for this Choreo. 
        # 
        # @param String - (optional, string) Type of destination user. Defaults to Dwolla. Can be Dwolla, Facebook, Twitter, Email, or Phone.
        ###

        def set_DestinationType(value)
          set_input("DestinationType", value)
        end
        #### 
        # Set the value of the FacillitatorAmount input for this Choreo. 
        # 
        # @param String - (required, string) Amount of the facilitator fee to override. Only applicable if the facilitator fee feature is enabled. If set to 0, facilitator fee is disabled for transaction. Cannot exceed 25% of the 'amount'.
        ###

        def set_FacillitatorAmount(value)
          set_input("FacillitatorAmount", value)
        end
        #### 
        # Set the value of the FundsSource input for this Choreo. 
        # 
        # @param String - (required, string) Id of funding source to send funds from. Defaults to Balance.  Balance sourced transfers process immediately. Non-balanced sourced transfers may process immediately or take up to five business days.
        ###

        def set_FundsSource(value)
          set_input("FundsSource", value)
        end
        #### 
        # Set the value of the Notes input for this Choreo. 
        # 
        # @param String - (required, multiline) Note to attach to the transaction. Limited to 250 characters.
        ###

        def set_Notes(value)
          set_input("Notes", value)
        end
        #### 
        # Set the value of the Pin input for this Choreo. 
        # 
        # @param Integer - (required, integer) User's PIN associated with their account
        ###

        def set_Pin(value)
          set_input("Pin", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Send Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SendResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Dwolla.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Send



    ##############################################################################
    #
    # Stats
    #
    # Retrieves the account information for the user associated with the given authorized access token.
    #
    ##############################################################################

    class Stats < Choreography

      ####
      #  Create a new instance of the Stats Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dwolla/Transactions/Stats")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return StatsInputSet
      ####
      def new_input_set()
        return StatsInputSet.new()
      end

      def make_result_set()
        return StatsResultSet.new()
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
        results = StatsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Stats
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class StatsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the EndDate input for this Choreo. 
        # 
        # @param String - (optional, string) Ending date and time to for which to process transactions stats. Defaults to current date and time in UTC.
        ###

        def set_EndDate(value)
          set_input("EndDate", value)
        end
        #### 
        # Set the value of the StartDate input for this Choreo. 
        # 
        # @param String - (optional, string) Starting date and time to for which to process transactions stats. Defaults to 0300 of the current day in UTC.
        ###

        def set_StartDate(value)
          set_input("StartDate", value)
        end
        #### 
        # Set the value of the Types input for this Choreo. 
        # 
        # @param String - (optional, string) Types of status to retrieve. Must be comma delimited. Options are TransactionsCount and TransactionsTotal. Defaults to include all stats.
        ###

        def set_Types(value)
          set_input("Types", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Stats Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class StatsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Dwolla.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Stats




  end # module Transactions

  module Users



    ##############################################################################
    #
    # Account
    #
    # Retrieves the account information for the user associated with the given authorized access token.
    #
    ##############################################################################

    class Account < Choreography

      ####
      #  Create a new instance of the Account Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dwolla/Users/Account")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AccountInputSet
      ####
      def new_input_set()
        return AccountInputSet.new()
      end

      def make_result_set()
        return AccountResultSet.new()
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
        results = AccountResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Account
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AccountInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Account Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AccountResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Dwolla.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Account



    ##############################################################################
    #
    # Basic
    #
    # Retrieves the Dwolla account information for the user associated with the specified consumer credentials and Dwolla account identifier.
    #
    ##############################################################################

    class Basic < Choreography

      ####
      #  Create a new instance of the Basic Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Dwolla/Users/Basic")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return BasicInputSet
      ####
      def new_input_set()
        return BasicInputSet.new()
      end

      def make_result_set()
        return BasicResultSet.new()
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
        results = BasicResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Basic
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class BasicInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountIdentifier input for this Choreo. 
        # 
        # @param String - (required, string) Dwolla account identifier or email address of the Dwolla account.
        ###

        def set_AccountIdentifier(value)
          set_input("AccountIdentifier", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (required, string) The Client ID provided by Dwolla (AKA the Consumer Key).
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Client Secret provided by Dwolla (AKA the Consumer Secret).
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Basic Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class BasicResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Dwolla.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Basic




  end # module Users

end # module Dwolla