require "temboo"

module Withings




  module Measure



    ##############################################################################
    #
    # GetActivityMetrics
    #
    # Retrieves activity metrics for the specified user.
    #
    ##############################################################################

    class GetActivityMetrics < Choreography

      ####
      #  Create a new instance of the GetActivityMetrics Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Withings/Measure/GetActivityMetrics")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetActivityMetricsInputSet
      ####
      def new_input_set()
        return GetActivityMetricsInputSet.new()
      end

      def make_result_set()
        return GetActivityMetricsResultSet.new()
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
        results = GetActivityMetricsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetActivityMetrics
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetActivityMetricsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Withings.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Withings.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, date) The date for the log in YYYY-MM-DD format.
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the user to retrieve activity metrics for.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetActivityMetrics Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetActivityMetricsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Withings.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetActivityMetrics



    ##############################################################################
    #
    # GetBodyMetrics
    #
    # Retrieves body metrics for the specified user.
    #
    ##############################################################################

    class GetBodyMetrics < Choreography

      ####
      #  Create a new instance of the GetBodyMetrics Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Withings/Measure/GetBodyMetrics")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetBodyMetricsInputSet
      ####
      def new_input_set()
        return GetBodyMetricsInputSet.new()
      end

      def make_result_set()
        return GetBodyMetricsResultSet.new()
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
        results = GetBodyMetricsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetBodyMetrics
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetBodyMetricsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Category input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set to 2 to retrieve objectives or to 1 to retrieve actual measurements.
        ###

        def set_Category(value)
          set_input("Category", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Withings.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Withings.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the DeviceType input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Retrieves data for a particular device type. Specifying 1 will retrieve all body scale related measures and 0 will retrieve all user personal data entered at user creation time.
        ###

        def set_DeviceType(value)
          set_input("DeviceType", value)
        end
        #### 
        # Set the value of the EndDate input for this Choreo. 
        # 
        # @param String - (optional, date) Retrieves results dated before the specified EPOCH formatted date.
        ###

        def set_EndDate(value)
          set_input("EndDate", value)
        end
        #### 
        # Set the value of the LastUpdated input for this Choreo. 
        # 
        # @param String - (optional, date) Retrieves results added or modified since the specified EPOCH formatted date.
        ###

        def set_LastUpdated(value)
          set_input("LastUpdated", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the number of measure groups returned in the result.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the MeasurementType input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Filters by the measurement type. Set to 1 to filter by weight or 4 to filter by height.
        ###

        def set_MeasurementType(value)
          set_input("MeasurementType", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used in combination with the Limit parameter to page through results.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the StartDate input for this Choreo. 
        # 
        # @param String - (optional, date) Retrieves results dated after the specified EPOCH formatted date.
        ###

        def set_StartDate(value)
          set_input("StartDate", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the user to retrieve body metrics for.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetBodyMetrics Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetBodyMetricsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Withings.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetBodyMetrics




  end # module Measure

  module Notification



    ##############################################################################
    #
    # GetSubscription
    #
    # Allows your application to check whether the notification service was previously subscribed on a specific user and to retrieve the subscription expiration date.
    #
    ##############################################################################

    class GetSubscription < Choreography

      ####
      #  Create a new instance of the GetSubscription Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Withings/Notification/GetSubscription")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetSubscriptionInputSet
      ####
      def new_input_set()
        return GetSubscriptionInputSet.new()
      end

      def make_result_set()
        return GetSubscriptionResultSet.new()
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
        results = GetSubscriptionResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetSubscription
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetSubscriptionInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the CallbackURL input for this Choreo. 
        # 
        # @param String - (required, string) The URL used when subscribing to the notification service.
        ###

        def set_CallbackURL(value)
          set_input("CallbackURL", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Withings.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Withings.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the user to verify a subscription for.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetSubscription Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetSubscriptionResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Withings.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetSubscription



    ##############################################################################
    #
    # ListSubscriptions
    #
    # Allows your application to list all the currently provisioned notification callbacks for a specific user and to retrieve the subscription expiration dates.
    #
    ##############################################################################

    class ListSubscriptions < Choreography

      ####
      #  Create a new instance of the ListSubscriptions Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Withings/Notification/ListSubscriptions")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListSubscriptionsInputSet
      ####
      def new_input_set()
        return ListSubscriptionsInputSet.new()
      end

      def make_result_set()
        return ListSubscriptionsResultSet.new()
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
        results = ListSubscriptionsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListSubscriptions
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListSubscriptionsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Application input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to restrict the request to the given device type. Set to 1 for Bodyscale.
        ###

        def set_Application(value)
          set_input("Application", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Withings.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Withings.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the user to list subscriptions for.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListSubscriptions Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListSubscriptionsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Withings.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListSubscriptions



    ##############################################################################
    #
    # RevokeSubscription
    #
    # Allows your application to revoke a previously subscribed notification.
    #
    ##############################################################################

    class RevokeSubscription < Choreography

      ####
      #  Create a new instance of the RevokeSubscription Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Withings/Notification/RevokeSubscription")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RevokeSubscriptionInputSet
      ####
      def new_input_set()
        return RevokeSubscriptionInputSet.new()
      end

      def make_result_set()
        return RevokeSubscriptionResultSet.new()
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
        results = RevokeSubscriptionResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RevokeSubscription
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RevokeSubscriptionInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Application input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the device type for which the notification is to be revoked. Set to 1 for Bodyscale.
        ###

        def set_Application(value)
          set_input("Application", value)
        end
        #### 
        # Set the value of the CallbackURL input for this Choreo. 
        # 
        # @param String - (required, string) The URL used when subscribing to the notification service.
        ###

        def set_CallbackURL(value)
          set_input("CallbackURL", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Withings.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Withings.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the user to revoke a subscription for.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RevokeSubscription Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RevokeSubscriptionResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Withings.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RevokeSubscription



    ##############################################################################
    #
    # Subscribe
    #
    # Allows your application to subscribe users to notifications. 
    #
    ##############################################################################

    class Subscribe < Choreography

      ####
      #  Create a new instance of the Subscribe Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Withings/Notification/Subscribe")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SubscribeInputSet
      ####
      def new_input_set()
        return SubscribeInputSet.new()
      end

      def make_result_set()
        return SubscribeResultSet.new()
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
        results = SubscribeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Subscribe
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SubscribeInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Application input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the device type for which the notification is to be activated. Set to 1 for Bodyscale.
        ###

        def set_Application(value)
          set_input("Application", value)
        end
        #### 
        # Set the value of the CallbackURL input for this Choreo. 
        # 
        # @param String - (required, string) The URL the API notification will be pushed to.
        ###

        def set_CallbackURL(value)
          set_input("CallbackURL", value)
        end
        #### 
        # Set the value of the Comment input for this Choreo. 
        # 
        # @param String - (optional, string) A comment string used for a description to display to the user when presenting them with your notification setup.
        ###

        def set_Comment(value)
          set_input("Comment", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Withings.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Withings.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the user to setup a subscription for.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Subscribe Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SubscribeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Withings.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Subscribe




  end # module Notification

  module OAuth



    ##############################################################################
    #
    # FinalizeOAuth
    #
    # Completes the OAuth process by retrieving a Withings access token and access token secret for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
    #
    ##############################################################################

    class FinalizeOAuth < Choreography

      ####
      #  Create a new instance of the FinalizeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Withings/OAuth/FinalizeOAuth")
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
        # Set the value of the CallbackID input for this Choreo. 
        # 
        # @param String - (required, string) The callback token returned by the InitializeOAuth Choreo. Used to retrieve the callback data after the user authorizes.
        ###

        def set_CallbackID(value)
          set_input("CallbackID", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Withings.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Withings.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the OAuthTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The oauth_token_secret retrieved during the OAuth process. This is returned by the InitializeOAuth Choreo.
        ###

        def set_OAuthTokenSecret(value)
          set_input("OAuthTokenSecret", value)
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
      	# @return String - (string) The Access Token retrieved during the OAuth process.
      	####
      	def get_AccessToken()
      	  return @outputs["AccessToken"]
      	end
      	####
      	# Retrieve the value for the "UserID" output from this Choreo execution
      	#
      	# @return String - (string) The ID of the user who is associated with the OAuth credentials.
      	####
      	def get_UserID()
      	  return @outputs["UserID"]
      	end
      	####
      	# Retrieve the value for the "AccessTokenSecret" output from this Choreo execution
      	#
      	# @return String - (string) The Access Token Secret retrieved during the OAuth process.
      	####
      	def get_AccessTokenSecret()
      	  return @outputs["AccessTokenSecret"]
      	end
      end

    end # class FinalizeOAuth



    ##############################################################################
    #
    # InitializeOAuth
    #
    # Generates an authorization URL that an application can use to complete the first step in the OAuth process.
    #
    ##############################################################################

    class InitializeOAuth < Choreography

      ####
      #  Create a new instance of the InitializeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Withings/OAuth/InitializeOAuth")
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
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Withings.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Withings.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ForwardingURL input for this Choreo. 
        # 
        # @param String - (optional, string) The URL that Temboo will redirect your users to after they grant access to your application. This should include the "https://" or "http://" prefix and be a fully qualified URL.
        ###

        def set_ForwardingURL(value)
          set_input("ForwardingURL", value)
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
      	####
      	# Retrieve the value for the "OAuthTokenSecret" output from this Choreo execution
      	#
      	# @return String - (string) The temporary OAuth Token Secret that can be exchanged for permanent tokens using the FinalizeOAuth Choreo.
      	####
      	def get_OAuthTokenSecret()
      	  return @outputs["OAuthTokenSecret"]
      	end
      end

    end # class InitializeOAuth




    module Utils



      ##############################################################################
      #
      # Step1
      #
      # Generates an authorization URL that an application can use to complete the first step in the OAuth 1.0 process.
      #
      ##############################################################################

      class Step1 < Choreography

        ####
        #  Create a new instance of the Step1 Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/Withings/OAuth/Utils/Step1")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return Step1InputSet
        ####
        def new_input_set()
          return Step1InputSet.new()
        end

        def make_result_set()
          return Step1ResultSet.new()
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
          results = Step1ResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the Step1
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class Step1InputSet < Choreography::InputSet

          #### 
          # Set the value of the AuthorizationEndpoint input for this Choreo. 
          # 
          # @param String - (required, string) The endpoint that the user should be redirected to in order to authenticate and grant access (e.g. https://www.dropbox.com/1/oauth/authorize).
          ###

          def set_AuthorizationEndpoint(value)
            set_input("AuthorizationEndpoint", value)
          end
          #### 
          # Set the value of the ConsumerKey input for this Choreo. 
          # 
          # @param String - (required, string) The Consumer Key provided by the service.
          ###

          def set_ConsumerKey(value)
            set_input("ConsumerKey", value)
          end
          #### 
          # Set the value of the ConsumerSecret input for this Choreo. 
          # 
          # @param String - (required, string) The Consumer Secret provided by the service.
          ###

          def set_ConsumerSecret(value)
            set_input("ConsumerSecret", value)
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
          # Set the value of the RequestTokenEndpoint input for this Choreo. 
          # 
          # @param String - (required, string) The Authorization Server URL where the initial token request occurs (e.g. https://api.dropbox.com/1/oauth/request_token).
          ###

          def set_RequestTokenEndpoint(value)
            set_input("RequestTokenEndpoint", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the Step1 Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class Step1ResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "CallbackID" output from this Choreo execution
        	#
        	# @return String - (string) An ID used to retrieve the callback data that Temboo stores once your application's user authorizes.
        	####
        	def get_CallbackID()
        	  return @outputs["CallbackID"]
        	end
        	####
        	# Retrieve the value for the "OAuthTokenSecret" output from this Choreo execution
        	#
        	# @return String - (string) The temporary OAuth Token Secret that can be exchanged for permanent tokens using the FinalizeOAuth Choreo.
        	####
        	def get_OAuthTokenSecret()
        	  return @outputs["OAuthTokenSecret"]
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

      end # class Step1



      ##############################################################################
      #
      # Step2
      #
      # Completes the OAuth process by retrieving an access token and access token secret for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
      #
      ##############################################################################

      class Step2 < Choreography

        ####
        #  Create a new instance of the Step2 Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/Withings/OAuth/Utils/Step2")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return Step2InputSet
        ####
        def new_input_set()
          return Step2InputSet.new()
        end

        def make_result_set()
          return Step2ResultSet.new()
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
          results = Step2ResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the Step2
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class Step2InputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessTokenURL input for this Choreo. 
          # 
          # @param String - (required, string) The URL for the authorization server that issues access tokens (e.g. https://api.dropbox.com/1/oauth/access_token).
          ###

          def set_AccessTokenURL(value)
            set_input("AccessTokenURL", value)
          end
          #### 
          # Set the value of the CallbackID input for this Choreo. 
          # 
          # @param String - (required, string) The callback ID returned by the InitializeOAuth Choreo. Used to retrieve the callback data after the user authorizes.
          ###

          def set_CallbackID(value)
            set_input("CallbackID", value)
          end
          #### 
          # Set the value of the ConsumerKey input for this Choreo. 
          # 
          # @param String - (required, string) The Consumer Key provided by the service.
          ###

          def set_ConsumerKey(value)
            set_input("ConsumerKey", value)
          end
          #### 
          # Set the value of the ConsumerSecret input for this Choreo. 
          # 
          # @param String - (required, string) The Consumer Secret provided by the service.
          ###

          def set_ConsumerSecret(value)
            set_input("ConsumerSecret", value)
          end
          #### 
          # Set the value of the OAuthTokenSecret input for this Choreo. 
          # 
          # @param String - (required, string) The oauth_token_secret retrieved during the OAuth process. This is returned by the InitializeOAuth Choreo.
          ###

          def set_OAuthTokenSecret(value)
            set_input("OAuthTokenSecret", value)
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
        # A ResultSet with methods tailored to the values returned by the Step2 Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class Step2ResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (string) The response from the Authorization Server.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class Step2



      ##############################################################################
      #
      # UtilityHelper
      #
      # 
      #
      ##############################################################################

      class UtilityHelper < Choreography

        ####
        #  Create a new instance of the UtilityHelper Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/Withings/OAuth/Utils/UtilityHelper")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return UtilityHelperInputSet
        ####
        def new_input_set()
          return UtilityHelperInputSet.new()
        end

        def make_result_set()
          return UtilityHelperResultSet.new()
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
          results = UtilityHelperResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the UtilityHelper
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class UtilityHelperInputSet < Choreography::InputSet

          #### 
          # Set the value of the ParamString input for this Choreo. 
          # 
          # @param String - (required, string) 
          ###

          def set_ParamString(value)
            set_input("ParamString", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the UtilityHelper Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class UtilityHelperResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "JSONResponse" output from this Choreo execution
        	#
        	# @return String - (json) 
        	####
        	def get_JSONResponse()
        	  return @outputs["JSONResponse"]
        	end
        end

      end # class UtilityHelper




    end # module Utils

  end # module OAuth

  module User



    ##############################################################################
    #
    # GetUser
    #
    # Retrieves information regarding the specified user.
    #
    ##############################################################################

    class GetUser < Choreography

      ####
      #  Create a new instance of the GetUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Withings/User/GetUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetUserInputSet
      ####
      def new_input_set()
        return GetUserInputSet.new()
      end

      def make_result_set()
        return GetUserResultSet.new()
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
        results = GetUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Withings.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Withings.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the user to retrieve.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Withings.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetUser




  end # module User

end # module Withings