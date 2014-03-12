require "temboo"

module Fitbit




  module Activities



    ##############################################################################
    #
    # AddFavoriteActivity
    #
    # Adds a specified activity to a user's favorite activities list.
    #
    ##############################################################################

    class AddFavoriteActivity < Choreography

      ####
      #  Create a new instance of the AddFavoriteActivity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Activities/AddFavoriteActivity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddFavoriteActivityInputSet
      ####
      def new_input_set()
        return AddFavoriteActivityInputSet.new()
      end

      def make_result_set()
        return AddFavoriteActivityResultSet.new()
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
        results = AddFavoriteActivityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddFavoriteActivity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddFavoriteActivityInputSet < Choreography::InputSet

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
        # Set the value of the ActivityID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the activity you want to make a favorite.
        ###

        def set_ActivityID(value)
          set_input("ActivityID", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddFavoriteActivity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddFavoriteActivityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddFavoriteActivity



    ##############################################################################
    #
    # BrowseActivities
    #
    # Gets a tree of all valid Fitbit public activities from the activities catalog as well as private custom activities the user created.
    #
    ##############################################################################

    class BrowseActivities < Choreography

      ####
      #  Create a new instance of the BrowseActivities Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Activities/BrowseActivities")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return BrowseActivitiesInputSet
      ####
      def new_input_set()
        return BrowseActivitiesInputSet.new()
      end

      def make_result_set()
        return BrowseActivitiesResultSet.new()
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
        results = BrowseActivitiesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the BrowseActivities
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class BrowseActivitiesInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the BrowseActivities Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class BrowseActivitiesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class BrowseActivities



    ##############################################################################
    #
    # DeleteActivityLog
    #
    # Deletes a specified activity log entry.
    #
    ##############################################################################

    class DeleteActivityLog < Choreography

      ####
      #  Create a new instance of the DeleteActivityLog Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Activities/DeleteActivityLog")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteActivityLogInputSet
      ####
      def new_input_set()
        return DeleteActivityLogInputSet.new()
      end

      def make_result_set()
        return DeleteActivityLogResultSet.new()
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
        results = DeleteActivityLogResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteActivityLog
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteActivityLogInputSet < Choreography::InputSet

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
        # Set the value of the ActivityLogID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the activity log you want to delete. The Id is returned in the LogActivity response.
        ###

        def set_ActivityLogID(value)
          set_input("ActivityLogID", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteActivityLog Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteActivityLogResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteActivityLog



    ##############################################################################
    #
    # DeleteFavoriteActivity
    #
    # Deletes a specified activity from a user's favorite activities list.
    #
    ##############################################################################

    class DeleteFavoriteActivity < Choreography

      ####
      #  Create a new instance of the DeleteFavoriteActivity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Activities/DeleteFavoriteActivity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteFavoriteActivityInputSet
      ####
      def new_input_set()
        return DeleteFavoriteActivityInputSet.new()
      end

      def make_result_set()
        return DeleteFavoriteActivityResultSet.new()
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
        results = DeleteFavoriteActivityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteFavoriteActivity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteFavoriteActivityInputSet < Choreography::InputSet

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
        # Set the value of the ActivityID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the activity you want to delete from your favorites list.
        ###

        def set_ActivityID(value)
          set_input("ActivityID", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteFavoriteActivity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteFavoriteActivityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteFavoriteActivity



    ##############################################################################
    #
    # GetActivities
    #
    # Gets a summary and list of a user's activities and activity log entries for a specified date.
    #
    ##############################################################################

    class GetActivities < Choreography

      ####
      #  Create a new instance of the GetActivities Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Activities/GetActivities")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetActivitiesInputSet
      ####
      def new_input_set()
        return GetActivitiesInputSet.new()
      end

      def make_result_set()
        return GetActivitiesResultSet.new()
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
        results = GetActivitiesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetActivities
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetActivitiesInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, date) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd).
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetActivities Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetActivitiesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetActivities



    ##############################################################################
    #
    # GetFavoriteActivities
    #
    # Gets a list of a user's favorite activities.
    #
    ##############################################################################

    class GetFavoriteActivities < Choreography

      ####
      #  Create a new instance of the GetFavoriteActivities Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Activities/GetFavoriteActivities")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetFavoriteActivitiesInputSet
      ####
      def new_input_set()
        return GetFavoriteActivitiesInputSet.new()
      end

      def make_result_set()
        return GetFavoriteActivitiesResultSet.new()
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
        results = GetFavoriteActivitiesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetFavoriteActivities
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetFavoriteActivitiesInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetFavoriteActivities Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetFavoriteActivitiesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetFavoriteActivities



    ##############################################################################
    #
    # GetFrequentActivities
    #
    # Gets a list of a user's frequent activities.
    #
    ##############################################################################

    class GetFrequentActivities < Choreography

      ####
      #  Create a new instance of the GetFrequentActivities Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Activities/GetFrequentActivities")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetFrequentActivitiesInputSet
      ####
      def new_input_set()
        return GetFrequentActivitiesInputSet.new()
      end

      def make_result_set()
        return GetFrequentActivitiesResultSet.new()
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
        results = GetFrequentActivitiesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetFrequentActivities
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetFrequentActivitiesInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetFrequentActivities Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetFrequentActivitiesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetFrequentActivities



    ##############################################################################
    #
    # GetRecentActivities
    #
    # Gets a list of a user's recent activities.
    #
    ##############################################################################

    class GetRecentActivities < Choreography

      ####
      #  Create a new instance of the GetRecentActivities Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Activities/GetRecentActivities")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetRecentActivitiesInputSet
      ####
      def new_input_set()
        return GetRecentActivitiesInputSet.new()
      end

      def make_result_set()
        return GetRecentActivitiesResultSet.new()
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
        results = GetRecentActivitiesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetRecentActivities
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetRecentActivitiesInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetRecentActivities Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetRecentActivitiesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetRecentActivities



    ##############################################################################
    #
    # LogActivity
    #
    # Log a new activity for a particular date.
    #
    ##############################################################################

    class LogActivity < Choreography

      ####
      #  Create a new instance of the LogActivity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Activities/LogActivity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LogActivityInputSet
      ####
      def new_input_set()
        return LogActivityInputSet.new()
      end

      def make_result_set()
        return LogActivityResultSet.new()
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
        results = LogActivityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LogActivity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LogActivityInputSet < Choreography::InputSet

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
        # Set the value of the ActivityID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) This can be the id of the activity, directory activity, or intensity level activity.
        ###

        def set_ActivityID(value)
          set_input("ActivityID", value)
        end
        #### 
        # Set the value of the ActivityName input for this Choreo. 
        # 
        # @param String - (conditional, string) Custom activity name; either activityId or activityName should be provided.
        ###

        def set_ActivityName(value)
          set_input("ActivityName", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, date) The date that corresponds with the new log entry (in the format yyyy-MM-dd).
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the DistanceUnit input for this Choreo. 
        # 
        # @param String - (conditional, string) Corresponds with the Distance parameter (i.e. Mile). See Choreo documentation for links to unit charts.
        ###

        def set_DistanceUnit(value)
          set_input("DistanceUnit", value)
        end
        #### 
        # Set the value of the Distance input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The activity distance. Used when activityId corresponds to 'Running'  or 'Walking' for example.
        ###

        def set_Distance(value)
          set_input("Distance", value)
        end
        #### 
        # Set the value of the Duration input for this Choreo. 
        # 
        # @param Integer - (required, integer) The duration of the activity in milliseconds.
        ###

        def set_Duration(value)
          set_input("Duration", value)
        end
        #### 
        # Set the value of the ManualCalories input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The amount of calories defined manually; required when using the ActivityName parameter, otherwise optional.
        ###

        def set_ManualCalories(value)
          set_input("ManualCalories", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the StartTime input for this Choreo. 
        # 
        # @param String - (required, string) The hour and minutes for the start of the activity formatted like HH:mm.
        ###

        def set_StartTime(value)
          set_input("StartTime", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LogActivity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LogActivityResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class LogActivity




  end # module Activities
  ##############################################################################
  #
  # AddFavoriteActivity
  #
  # Adds a specified activity to a user's favorite activities list.
  #
  ##############################################################################

  class AddFavoriteActivity < Choreography

    ####
    #  Create a new instance of the AddFavoriteActivity Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/AddFavoriteActivity")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return AddFavoriteActivityInputSet
    ####
    def new_input_set()
      return AddFavoriteActivityInputSet.new()
    end

    def make_result_set()
      return AddFavoriteActivityResultSet.new()
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
      results = AddFavoriteActivityResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the AddFavoriteActivity
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class AddFavoriteActivityInputSet < Choreography::InputSet

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
      # Set the value of the ActivityId input for this Choreo. 
      # 
      # @param Integer - (required, integer) The id of the activity you want to make a favorite.
      ###

      def set_ActivityId(value)
        set_input("ActivityId", value)
      end
      #### 
      # Set the value of the ConsumerKey input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the AddFavoriteActivity Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class AddFavoriteActivityResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class AddFavoriteActivity



  ##############################################################################
  #
  # AddFavoriteFood
  #
  # Adds a specified food to a user's favorite food list.
  #
  ##############################################################################

  class AddFavoriteFood < Choreography

    ####
    #  Create a new instance of the AddFavoriteFood Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/AddFavoriteFood")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return AddFavoriteFoodInputSet
    ####
    def new_input_set()
      return AddFavoriteFoodInputSet.new()
    end

    def make_result_set()
      return AddFavoriteFoodResultSet.new()
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
      results = AddFavoriteFoodResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the AddFavoriteFood
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class AddFavoriteFoodInputSet < Choreography::InputSet

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
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the FoodId input for this Choreo. 
      # 
      # @param Integer - (required, integer) The id of the food you want to make a favorite.
      ###

      def set_FoodId(value)
        set_input("FoodId", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the AddFavoriteFood Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class AddFavoriteFoodResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class AddFavoriteFood




  module BloodPressure



    ##############################################################################
    #
    # DeleteBloodPressureLog
    #
    # Deletes user's blood pressure log entry with the given id.
    #
    ##############################################################################

    class DeleteBloodPressureLog < Choreography

      ####
      #  Create a new instance of the DeleteBloodPressureLog Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/BloodPressure/DeleteBloodPressureLog")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteBloodPressureLogInputSet
      ####
      def new_input_set()
        return DeleteBloodPressureLogInputSet.new()
      end

      def make_result_set()
        return DeleteBloodPressureLogResultSet.new()
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
        results = DeleteBloodPressureLogResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteBloodPressureLog
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteBloodPressureLogInputSet < Choreography::InputSet

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
        # Set the value of the BloodPressureLogID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the blood pressure log you want to delete.
        ###

        def set_BloodPressureLogID(value)
          set_input("BloodPressureLogID", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteBloodPressureLog Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteBloodPressureLogResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteBloodPressureLog



    ##############################################################################
    #
    # GetBloodPressure
    #
    # Get an average value and a list of user's blood pressure log entries for a given day.
    #
    ##############################################################################

    class GetBloodPressure < Choreography

      ####
      #  Create a new instance of the GetBloodPressure Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/BloodPressure/GetBloodPressure")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetBloodPressureInputSet
      ####
      def new_input_set()
        return GetBloodPressureInputSet.new()
      end

      def make_result_set()
        return GetBloodPressureResultSet.new()
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
        results = GetBloodPressureResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetBloodPressure
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetBloodPressureInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, date) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd).
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetBloodPressure Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetBloodPressureResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetBloodPressure



    ##############################################################################
    #
    # LogBloodPressure
    #
    # Creates log entry for a blood pressure measurement.
    #
    ##############################################################################

    class LogBloodPressure < Choreography

      ####
      #  Create a new instance of the LogBloodPressure Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/BloodPressure/LogBloodPressure")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LogBloodPressureInputSet
      ####
      def new_input_set()
        return LogBloodPressureInputSet.new()
      end

      def make_result_set()
        return LogBloodPressureResultSet.new()
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
        results = LogBloodPressureResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LogBloodPressure
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LogBloodPressureInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, date) The date that corresponds with the log entry (in the format yyyy-MM-dd).
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the Diastolic input for this Choreo. 
        # 
        # @param Integer - (required, integer) The diastolic measurement.
        ###

        def set_Diastolic(value)
          set_input("Diastolic", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Systolic input for this Choreo. 
        # 
        # @param Integer - (required, integer) The systolic measurement.
        ###

        def set_Systolic(value)
          set_input("Systolic", value)
        end
        #### 
        # Set the value of the Time input for this Choreo. 
        # 
        # @param String - (optional, string) Time of the measurement; hours and minutes in the format HH:mm.
        ###

        def set_Time(value)
          set_input("Time", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LogBloodPressure Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LogBloodPressureResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class LogBloodPressure




  end # module BloodPressure

  module Body



    ##############################################################################
    #
    # DeleteBodyFatLog
    #
    # Delete user's body weight fat log entry with the given id.
    #
    ##############################################################################

    class DeleteBodyFatLog < Choreography

      ####
      #  Create a new instance of the DeleteBodyFatLog Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Body/DeleteBodyFatLog")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteBodyFatLogInputSet
      ####
      def new_input_set()
        return DeleteBodyFatLogInputSet.new()
      end

      def make_result_set()
        return DeleteBodyFatLogResultSet.new()
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
        results = DeleteBodyFatLogResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteBodyFatLog
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteBodyFatLogInputSet < Choreography::InputSet

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
        # Set the value of the BodyFatLogID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the body fat log entry.
        ###

        def set_BodyFatLogID(value)
          set_input("BodyFatLogID", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteBodyFatLog Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteBodyFatLogResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteBodyFatLog



    ##############################################################################
    #
    # DeleteBodyWeightLog
    #
    # Delete user's body weight log entry with the given id.
    #
    ##############################################################################

    class DeleteBodyWeightLog < Choreography

      ####
      #  Create a new instance of the DeleteBodyWeightLog Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Body/DeleteBodyWeightLog")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteBodyWeightLogInputSet
      ####
      def new_input_set()
        return DeleteBodyWeightLogInputSet.new()
      end

      def make_result_set()
        return DeleteBodyWeightLogResultSet.new()
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
        results = DeleteBodyWeightLogResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteBodyWeightLog
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteBodyWeightLogInputSet < Choreography::InputSet

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
        # Set the value of the BodyWeightLogID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the body weight log entry.
        ###

        def set_BodyWeightLogID(value)
          set_input("BodyWeightLogID", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteBodyWeightLog Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteBodyWeightLogResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteBodyWeightLog



    ##############################################################################
    #
    # GetBodyFat
    #
    # Get a list of all user's body fat log entries for a given day.
    #
    ##############################################################################

    class GetBodyFat < Choreography

      ####
      #  Create a new instance of the GetBodyFat Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Body/GetBodyFat")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetBodyFatInputSet
      ####
      def new_input_set()
        return GetBodyFatInputSet.new()
      end

      def make_result_set()
        return GetBodyFatResultSet.new()
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
        results = GetBodyFatResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetBodyFat
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetBodyFatInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, string) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd). Time periods and ranges are allowed by passing a range like 2013-03-16/2013-03-18 or 2013-03-18/1w.
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetBodyFat Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetBodyFatResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetBodyFat



    ##############################################################################
    #
    # GetBodyFatGoal
    #
    # Get a user's current body fat goal.
    #
    ##############################################################################

    class GetBodyFatGoal < Choreography

      ####
      #  Create a new instance of the GetBodyFatGoal Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Body/GetBodyFatGoal")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetBodyFatGoalInputSet
      ####
      def new_input_set()
        return GetBodyFatGoalInputSet.new()
      end

      def make_result_set()
        return GetBodyFatGoalResultSet.new()
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
        results = GetBodyFatGoalResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetBodyFatGoal
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetBodyFatGoalInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetBodyFatGoal Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetBodyFatGoalResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetBodyFatGoal



    ##############################################################################
    #
    # GetBodyMeasurements
    #
    # Gets a summary of a user's body measurements for a specified date.
    #
    ##############################################################################

    class GetBodyMeasurements < Choreography

      ####
      #  Create a new instance of the GetBodyMeasurements Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Body/GetBodyMeasurements")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetBodyMeasurementsInputSet
      ####
      def new_input_set()
        return GetBodyMeasurementsInputSet.new()
      end

      def make_result_set()
        return GetBodyMeasurementsResultSet.new()
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
        results = GetBodyMeasurementsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetBodyMeasurements
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetBodyMeasurementsInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, date) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd).
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetBodyMeasurements Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetBodyMeasurementsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetBodyMeasurements



    ##############################################################################
    #
    # GetBodyWeight
    #
    # Gets a summary of a user's body weight for a specified date.
    #
    ##############################################################################

    class GetBodyWeight < Choreography

      ####
      #  Create a new instance of the GetBodyWeight Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Body/GetBodyWeight")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetBodyWeightInputSet
      ####
      def new_input_set()
        return GetBodyWeightInputSet.new()
      end

      def make_result_set()
        return GetBodyWeightResultSet.new()
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
        results = GetBodyWeightResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetBodyWeight
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetBodyWeightInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, string) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd). Time periods and ranges are allowed by passing a range like 2013-03-16/2013-03-18 or 2013-03-18/1w.
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetBodyWeight Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetBodyWeightResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetBodyWeight



    ##############################################################################
    #
    # GetBodyWeightGoal
    #
    # Get a user's current weight goal.
    #
    ##############################################################################

    class GetBodyWeightGoal < Choreography

      ####
      #  Create a new instance of the GetBodyWeightGoal Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Body/GetBodyWeightGoal")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetBodyWeightGoalInputSet
      ####
      def new_input_set()
        return GetBodyWeightGoalInputSet.new()
      end

      def make_result_set()
        return GetBodyWeightGoalResultSet.new()
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
        results = GetBodyWeightGoalResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetBodyWeightGoal
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetBodyWeightGoalInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetBodyWeightGoal Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetBodyWeightGoalResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetBodyWeightGoal



    ##############################################################################
    #
    # LogBodyFat
    #
    # Creates log entry for a user's body fat.
    #
    ##############################################################################

    class LogBodyFat < Choreography

      ####
      #  Create a new instance of the LogBodyFat Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Body/LogBodyFat")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LogBodyFatInputSet
      ####
      def new_input_set()
        return LogBodyFatInputSet.new()
      end

      def make_result_set()
        return LogBodyFatResultSet.new()
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
        results = LogBodyFatResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LogBodyFat
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LogBodyFatInputSet < Choreography::InputSet

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
        # Set the value of the BodyFat input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) Body Fat; in the format X.XX
        ###

        def set_BodyFat(value)
          set_input("BodyFat", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, date) The date that corresponds with the new log entry (in the format yyyy-MM-dd).
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Time input for this Choreo. 
        # 
        # @param String - (optional, string) Time of the measurement; hours and minutes in the format HH:mm:ss; set to last second of the day if not provided.
        ###

        def set_Time(value)
          set_input("Time", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LogBodyFat Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LogBodyFatResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class LogBodyFat



    ##############################################################################
    #
    # LogBodyMeasurements
    #
    # Creates a new log entry for a user's body measurements.
    #
    ##############################################################################

    class LogBodyMeasurements < Choreography

      ####
      #  Create a new instance of the LogBodyMeasurements Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Body/LogBodyMeasurements")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LogBodyMeasurementsInputSet
      ####
      def new_input_set()
        return LogBodyMeasurementsInputSet.new()
      end

      def make_result_set()
        return LogBodyMeasurementsResultSet.new()
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
        results = LogBodyMeasurementsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LogBodyMeasurements
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LogBodyMeasurementsInputSet < Choreography::InputSet

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
        # Set the value of the Bicep input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The user's bicep measurement.
        ###

        def set_Bicep(value)
          set_input("Bicep", value)
        end
        #### 
        # Set the value of the Calf input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The user's calf measurement.
        ###

        def set_Calf(value)
          set_input("Calf", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, date) The date that corresponds with the new log entry (in the format yyyy-MM-dd).
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the Forearm input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The user's forearm measurement.
        ###

        def set_Forearm(value)
          set_input("Forearm", value)
        end
        #### 
        # Set the value of the Hips input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The user's hips measurement.
        ###

        def set_Hips(value)
          set_input("Hips", value)
        end
        #### 
        # Set the value of the Neck input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The user's neck measurement.
        ###

        def set_Neck(value)
          set_input("Neck", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Thigh input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The user's thigh measurement.
        ###

        def set_Thigh(value)
          set_input("Thigh", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end
        #### 
        # Set the value of the Waist input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The user's waist measurement.
        ###

        def set_Waist(value)
          set_input("Waist", value)
        end
        #### 
        # Set the value of the Weight input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The user's weight.
        ###

        def set_Weight(value)
          set_input("Weight", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LogBodyMeasurements Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LogBodyMeasurementsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class LogBodyMeasurements



    ##############################################################################
    #
    # LogBodyWeight
    #
    # Creates log entry for a user's body weight.
    #
    ##############################################################################

    class LogBodyWeight < Choreography

      ####
      #  Create a new instance of the LogBodyWeight Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Body/LogBodyWeight")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LogBodyWeightInputSet
      ####
      def new_input_set()
        return LogBodyWeightInputSet.new()
      end

      def make_result_set()
        return LogBodyWeightResultSet.new()
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
        results = LogBodyWeightResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LogBodyWeight
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LogBodyWeightInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, date) The date that corresponds with the new log entry (in the format yyyy-MM-dd).
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Time input for this Choreo. 
        # 
        # @param String - (optional, string) Time of the measurement; hours and minutes in the format HH:mm:ss; set to last second of the day if not provided.
        ###

        def set_Time(value)
          set_input("Time", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end
        #### 
        # Set the value of the Weight input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) A new value (in pounds) to log for weight. In the format of X.XX.
        ###

        def set_Weight(value)
          set_input("Weight", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LogBodyWeight Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LogBodyWeightResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class LogBodyWeight



    ##############################################################################
    #
    # UpdateBodyFatGoal
    #
    # Create or updates user's body fat goal.
    #
    ##############################################################################

    class UpdateBodyFatGoal < Choreography

      ####
      #  Create a new instance of the UpdateBodyFatGoal Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Body/UpdateBodyFatGoal")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateBodyFatGoalInputSet
      ####
      def new_input_set()
        return UpdateBodyFatGoalInputSet.new()
      end

      def make_result_set()
        return UpdateBodyFatGoalResultSet.new()
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
        results = UpdateBodyFatGoalResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateBodyFatGoal
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateBodyFatGoalInputSet < Choreography::InputSet

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
        # Set the value of the BodyFat input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) Target body fat in %;  Fitbit currently only accepts whole numbers.
        ###

        def set_BodyFat(value)
          set_input("BodyFat", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateBodyFatGoal Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateBodyFatGoalResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateBodyFatGoal



    ##############################################################################
    #
    # UpdateBodyWeightGoal
    #
    # Creates or updates a user's weight goal.
    #
    ##############################################################################

    class UpdateBodyWeightGoal < Choreography

      ####
      #  Create a new instance of the UpdateBodyWeightGoal Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Body/UpdateBodyWeightGoal")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateBodyWeightGoalInputSet
      ####
      def new_input_set()
        return UpdateBodyWeightGoalInputSet.new()
      end

      def make_result_set()
        return UpdateBodyWeightGoalResultSet.new()
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
        results = UpdateBodyWeightGoalResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateBodyWeightGoal
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateBodyWeightGoalInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the StartDate input for this Choreo. 
        # 
        # @param String - (required, date) Weight goal start date; in the format yyyy-MM-dd.
        ###

        def set_StartDate(value)
          set_input("StartDate", value)
        end
        #### 
        # Set the value of the StartWeight input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) Weight goal start weight; in the format X.XX.
        ###

        def set_StartWeight(value)
          set_input("StartWeight", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end
        #### 
        # Set the value of the Weight input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) Weight goal target weight; in the format X.XX. Required if user doesn't have a weight goal.
        ###

        def set_Weight(value)
          set_input("Weight", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateBodyWeightGoal Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateBodyWeightGoalResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateBodyWeightGoal




  end # module Body
  ##############################################################################
  #
  # DeleteActivityLog
  #
  # Deletes a specified activity log entry.
  #
  ##############################################################################

  class DeleteActivityLog < Choreography

    ####
    #  Create a new instance of the DeleteActivityLog Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/DeleteActivityLog")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DeleteActivityLogInputSet
    ####
    def new_input_set()
      return DeleteActivityLogInputSet.new()
    end

    def make_result_set()
      return DeleteActivityLogResultSet.new()
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
      results = DeleteActivityLogResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the DeleteActivityLog
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DeleteActivityLogInputSet < Choreography::InputSet

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
      # Set the value of the ActivityLogId input for this Choreo. 
      # 
      # @param Integer - (required, integer) The id of the activity log you want to delete. The Id is returned in the LogActivity response.
      ###

      def set_ActivityLogId(value)
        set_input("ActivityLogId", value)
      end
      #### 
      # Set the value of the ConsumerKey input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the DeleteActivityLog Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DeleteActivityLogResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class DeleteActivityLog



  ##############################################################################
  #
  # DeleteFavoriteActivity
  #
  # Deletes a specified activity from a user's favorite activities list.
  #
  ##############################################################################

  class DeleteFavoriteActivity < Choreography

    ####
    #  Create a new instance of the DeleteFavoriteActivity Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/DeleteFavoriteActivity")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DeleteFavoriteActivityInputSet
    ####
    def new_input_set()
      return DeleteFavoriteActivityInputSet.new()
    end

    def make_result_set()
      return DeleteFavoriteActivityResultSet.new()
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
      results = DeleteFavoriteActivityResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the DeleteFavoriteActivity
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DeleteFavoriteActivityInputSet < Choreography::InputSet

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
      # Set the value of the ActivityId input for this Choreo. 
      # 
      # @param Integer - (required, integer) The id of the activity you want to delete from your favorites list.
      ###

      def set_ActivityId(value)
        set_input("ActivityId", value)
      end
      #### 
      # Set the value of the ConsumerKey input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the DeleteFavoriteActivity Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DeleteFavoriteActivityResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class DeleteFavoriteActivity



  ##############################################################################
  #
  # DeleteFavoriteFood
  #
  # Deletes a specified food from a user's favorite foods list.
  #
  ##############################################################################

  class DeleteFavoriteFood < Choreography

    ####
    #  Create a new instance of the DeleteFavoriteFood Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/DeleteFavoriteFood")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DeleteFavoriteFoodInputSet
    ####
    def new_input_set()
      return DeleteFavoriteFoodInputSet.new()
    end

    def make_result_set()
      return DeleteFavoriteFoodResultSet.new()
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
      results = DeleteFavoriteFoodResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the DeleteFavoriteFood
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DeleteFavoriteFoodInputSet < Choreography::InputSet

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
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the FoodId input for this Choreo. 
      # 
      # @param Integer - (required, integer) The id of the food to delete from you favorites list.
      ###

      def set_FoodId(value)
        set_input("FoodId", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the DeleteFavoriteFood Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DeleteFavoriteFoodResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class DeleteFavoriteFood



  ##############################################################################
  #
  # DeleteFoodLog
  #
  # Deletes a specified food log entry.
  #
  ##############################################################################

  class DeleteFoodLog < Choreography

    ####
    #  Create a new instance of the DeleteFoodLog Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/DeleteFoodLog")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DeleteFoodLogInputSet
    ####
    def new_input_set()
      return DeleteFoodLogInputSet.new()
    end

    def make_result_set()
      return DeleteFoodLogResultSet.new()
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
      results = DeleteFoodLogResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the DeleteFoodLog
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DeleteFoodLogInputSet < Choreography::InputSet

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
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the FoodLogId input for this Choreo. 
      # 
      # @param Integer - (required, integer) The id of the food log you want to delete. The Id is returned in the LogFood response.
      ###

      def set_FoodLogId(value)
        set_input("FoodLogId", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the DeleteFoodLog Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DeleteFoodLogResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class DeleteFoodLog



  ##############################################################################
  #
  # DeleteWaterLog
  #
  # Deletes a specified water log entry.
  #
  ##############################################################################

  class DeleteWaterLog < Choreography

    ####
    #  Create a new instance of the DeleteWaterLog Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/DeleteWaterLog")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DeleteWaterLogInputSet
    ####
    def new_input_set()
      return DeleteWaterLogInputSet.new()
    end

    def make_result_set()
      return DeleteWaterLogResultSet.new()
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
      results = DeleteWaterLogResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the DeleteWaterLog
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DeleteWaterLogInputSet < Choreography::InputSet

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
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end
      #### 
      # Set the value of the WaterLogId input for this Choreo. 
      # 
      # @param Integer - (required, integer) The id of the water log you want to delete. The Id is returned in the LogWater response.
      ###

      def set_WaterLogId(value)
        set_input("WaterLogId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the DeleteWaterLog Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DeleteWaterLogResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class DeleteWaterLog




  module Devices



    ##############################################################################
    #
    # GetAlarms
    #
    # Retrieves the list of Fitbit device alarms for a specific device.
    #
    ##############################################################################

    class GetAlarms < Choreography

      ####
      #  Create a new instance of the GetAlarms Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Devices/GetAlarms")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetAlarmsInputSet
      ####
      def new_input_set()
        return GetAlarmsInputSet.new()
      end

      def make_result_set()
        return GetAlarmsResultSet.new()
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
        results = GetAlarmsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetAlarms
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetAlarmsInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the DeviceID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the device you would like to manage the alarm on.
        ###

        def set_DeviceID(value)
          set_input("DeviceID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetAlarms Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetAlarmsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetAlarms



    ##############################################################################
    #
    # GetDevices
    #
    # Retrieves the list of Fitbit devices for a user.
    #
    ##############################################################################

    class GetDevices < Choreography

      ####
      #  Create a new instance of the GetDevices Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Devices/GetDevices")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetDevicesInputSet
      ####
      def new_input_set()
        return GetDevicesInputSet.new()
      end

      def make_result_set()
        return GetDevicesResultSet.new()
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
        results = GetDevicesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetDevices
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetDevicesInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetDevices Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetDevicesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetDevices




  end # module Devices

  module Foods



    ##############################################################################
    #
    # AddFavoriteFood
    #
    # Adds a specified food to a user's favorite food list.
    #
    ##############################################################################

    class AddFavoriteFood < Choreography

      ####
      #  Create a new instance of the AddFavoriteFood Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Foods/AddFavoriteFood")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddFavoriteFoodInputSet
      ####
      def new_input_set()
        return AddFavoriteFoodInputSet.new()
      end

      def make_result_set()
        return AddFavoriteFoodResultSet.new()
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
        results = AddFavoriteFoodResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddFavoriteFood
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddFavoriteFoodInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the FoodID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the food you want to make a favorite.
        ###

        def set_FoodID(value)
          set_input("FoodID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddFavoriteFood Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddFavoriteFoodResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddFavoriteFood



    ##############################################################################
    #
    # CreateFood
    #
    # Create new private food for a user.
    #
    ##############################################################################

    class CreateFood < Choreography

      ####
      #  Create a new instance of the CreateFood Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Foods/CreateFood")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateFoodInputSet
      ####
      def new_input_set()
        return CreateFoodInputSet.new()
      end

      def make_result_set()
        return CreateFoodResultSet.new()
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
        results = CreateFoodResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateFood
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateFoodInputSet < Choreography::InputSet

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
        # Set the value of the Calories input for this Choreo. 
        # 
        # @param Integer - (required, integer) The number of calories per serving size.
        ###

        def set_Calories(value)
          set_input("Calories", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) A description for the food entry.
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the FormType input for this Choreo. 
        # 
        # @param String - (optional, string) Form type; (LIQUID or DRY).
        ###

        def set_FormType(value)
          set_input("FormType", value)
        end
        #### 
        # Set the value of the MeasurementUnitID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The default measurement unit.
        ###

        def set_MeasurementUnitID(value)
          set_input("MeasurementUnitID", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (required, string) The name of the food.
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ServingSize input for this Choreo. 
        # 
        # @param Integer - (required, integer) The default serving size.
        ###

        def set_ServingSize(value)
          set_input("ServingSize", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateFood Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateFoodResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateFood



    ##############################################################################
    #
    # DeleteFavoriteFood
    #
    # Deletes a specified food from a user's favorite foods list.
    #
    ##############################################################################

    class DeleteFavoriteFood < Choreography

      ####
      #  Create a new instance of the DeleteFavoriteFood Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Foods/DeleteFavoriteFood")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteFavoriteFoodInputSet
      ####
      def new_input_set()
        return DeleteFavoriteFoodInputSet.new()
      end

      def make_result_set()
        return DeleteFavoriteFoodResultSet.new()
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
        results = DeleteFavoriteFoodResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteFavoriteFood
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteFavoriteFoodInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the FoodID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the food to delete from you favorites list.
        ###

        def set_FoodID(value)
          set_input("FoodID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteFavoriteFood Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteFavoriteFoodResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteFavoriteFood



    ##############################################################################
    #
    # DeleteFoodLog
    #
    # Deletes a specified food log entry.
    #
    ##############################################################################

    class DeleteFoodLog < Choreography

      ####
      #  Create a new instance of the DeleteFoodLog Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Foods/DeleteFoodLog")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteFoodLogInputSet
      ####
      def new_input_set()
        return DeleteFoodLogInputSet.new()
      end

      def make_result_set()
        return DeleteFoodLogResultSet.new()
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
        results = DeleteFoodLogResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteFoodLog
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteFoodLogInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the FoodLogID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the food log you want to delete. The Id is returned in the LogFood response.
        ###

        def set_FoodLogID(value)
          set_input("FoodLogID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteFoodLog Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteFoodLogResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteFoodLog



    ##############################################################################
    #
    # DeleteWaterLog
    #
    # Deletes a specified water log entry.
    #
    ##############################################################################

    class DeleteWaterLog < Choreography

      ####
      #  Create a new instance of the DeleteWaterLog Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Foods/DeleteWaterLog")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteWaterLogInputSet
      ####
      def new_input_set()
        return DeleteWaterLogInputSet.new()
      end

      def make_result_set()
        return DeleteWaterLogResultSet.new()
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
        results = DeleteWaterLogResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteWaterLog
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteWaterLogInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end
        #### 
        # Set the value of the WaterLogID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the water log you want to delete. The Id is returned in the LogWater response.
        ###

        def set_WaterLogID(value)
          set_input("WaterLogID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteWaterLog Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteWaterLogResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteWaterLog



    ##############################################################################
    #
    # GetFavoriteFoods
    #
    # Gets a list of a user's favorite foods.
    #
    ##############################################################################

    class GetFavoriteFoods < Choreography

      ####
      #  Create a new instance of the GetFavoriteFoods Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Foods/GetFavoriteFoods")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetFavoriteFoodsInputSet
      ####
      def new_input_set()
        return GetFavoriteFoodsInputSet.new()
      end

      def make_result_set()
        return GetFavoriteFoodsResultSet.new()
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
        results = GetFavoriteFoodsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetFavoriteFoods
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetFavoriteFoodsInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetFavoriteFoods Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetFavoriteFoodsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetFavoriteFoods



    ##############################################################################
    #
    # GetFoodGoal
    #
    # Gets a user's current daily calorie consumption goal.
    #
    ##############################################################################

    class GetFoodGoal < Choreography

      ####
      #  Create a new instance of the GetFoodGoal Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Foods/GetFoodGoal")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetFoodGoalInputSet
      ####
      def new_input_set()
        return GetFoodGoalInputSet.new()
      end

      def make_result_set()
        return GetFoodGoalResultSet.new()
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
        results = GetFoodGoalResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetFoodGoal
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetFoodGoalInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetFoodGoal Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetFoodGoalResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetFoodGoal



    ##############################################################################
    #
    # GetFoodUnits
    #
    # Get a list of all valid Fitbit food units.
    #
    ##############################################################################

    class GetFoodUnits < Choreography

      ####
      #  Create a new instance of the GetFoodUnits Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Foods/GetFoodUnits")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetFoodUnitsInputSet
      ####
      def new_input_set()
        return GetFoodUnitsInputSet.new()
      end

      def make_result_set()
        return GetFoodUnitsResultSet.new()
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
        results = GetFoodUnitsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetFoodUnits
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetFoodUnitsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (optional, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetFoodUnits Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetFoodUnitsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetFoodUnits



    ##############################################################################
    #
    # GetFoods
    #
    # Gets a summary and list of a user's food log entries for a specified date.
    #
    ##############################################################################

    class GetFoods < Choreography

      ####
      #  Create a new instance of the GetFoods Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Foods/GetFoods")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetFoodsInputSet
      ####
      def new_input_set()
        return GetFoodsInputSet.new()
      end

      def make_result_set()
        return GetFoodsResultSet.new()
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
        results = GetFoodsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetFoods
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetFoodsInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, date) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd).
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetFoods Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetFoodsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetFoods



    ##############################################################################
    #
    # GetFrequentFoods
    #
    # Gets a list of a user's frequent foods.
    #
    ##############################################################################

    class GetFrequentFoods < Choreography

      ####
      #  Create a new instance of the GetFrequentFoods Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Foods/GetFrequentFoods")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetFrequentFoodsInputSet
      ####
      def new_input_set()
        return GetFrequentFoodsInputSet.new()
      end

      def make_result_set()
        return GetFrequentFoodsResultSet.new()
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
        results = GetFrequentFoodsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetFrequentFoods
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetFrequentFoodsInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetFrequentFoods Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetFrequentFoodsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetFrequentFoods



    ##############################################################################
    #
    # GetMeals
    #
    # Get a list of meals that a user has created in his or her food log.
    #
    ##############################################################################

    class GetMeals < Choreography

      ####
      #  Create a new instance of the GetMeals Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Foods/GetMeals")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetMealsInputSet
      ####
      def new_input_set()
        return GetMealsInputSet.new()
      end

      def make_result_set()
        return GetMealsResultSet.new()
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
        results = GetMealsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetMeals
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetMealsInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetMeals Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetMealsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetMeals



    ##############################################################################
    #
    # GetRecentFoods
    #
    # Gets a list of a user's recent foods.
    #
    ##############################################################################

    class GetRecentFoods < Choreography

      ####
      #  Create a new instance of the GetRecentFoods Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Foods/GetRecentFoods")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetRecentFoodsInputSet
      ####
      def new_input_set()
        return GetRecentFoodsInputSet.new()
      end

      def make_result_set()
        return GetRecentFoodsResultSet.new()
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
        results = GetRecentFoodsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetRecentFoods
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetRecentFoodsInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetRecentFoods Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetRecentFoodsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetRecentFoods



    ##############################################################################
    #
    # GetWater
    #
    # Gets a summary and list of a user's water log entries for a given day.
    #
    ##############################################################################

    class GetWater < Choreography

      ####
      #  Create a new instance of the GetWater Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Foods/GetWater")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetWaterInputSet
      ####
      def new_input_set()
        return GetWaterInputSet.new()
      end

      def make_result_set()
        return GetWaterResultSet.new()
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
        results = GetWaterResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetWater
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetWaterInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, date) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd).
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetWater Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetWaterResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetWater



    ##############################################################################
    #
    # LogFood
    #
    # Log a new food entry for a particular date.
    #
    ##############################################################################

    class LogFood < Choreography

      ####
      #  Create a new instance of the LogFood Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Foods/LogFood")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LogFoodInputSet
      ####
      def new_input_set()
        return LogFoodInputSet.new()
      end

      def make_result_set()
        return LogFoodResultSet.new()
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
        results = LogFoodResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LogFood
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LogFoodInputSet < Choreography::InputSet

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
        # Set the value of the Amount input for this Choreo. 
        # 
        # @param Integer - (required, integer) The amount of food consumed formatted like X.XX. Note that this input corresponds with the UnitId input.
        ###

        def set_Amount(value)
          set_input("Amount", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, date) The date that corresponds with the new log entry (in the format yyyy-MM-dd).
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the Favorite input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to add food to favorites after creating log entry. Defaults to 0 for false.
        ###

        def set_Favorite(value)
          set_input("Favorite", value)
        end
        #### 
        # Set the value of the FoodID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the food to create a log entry for.
        ###

        def set_FoodID(value)
          set_input("FoodID", value)
        end
        #### 
        # Set the value of the MealType input for this Choreo. 
        # 
        # @param String - (required, string) The type of meal. Valid values: Breakfast, Morning Snack, Lunch, Afternoon Snack, Dinner, Anytime.
        ###

        def set_MealType(value)
          set_input("MealType", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UnitID input for this Choreo. 
        # 
        # @param Integer - (required, integer) This id can be retrieved through other calls such as: Get Foods (Recent, Frequent, Favorite), Search Foods or Get Food Units.
        ###

        def set_UnitID(value)
          set_input("UnitID", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LogFood Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LogFoodResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class LogFood



    ##############################################################################
    #
    # LogWater
    #
    # Log a new water entry for a particular date.
    #
    ##############################################################################

    class LogWater < Choreography

      ####
      #  Create a new instance of the LogWater Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Foods/LogWater")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LogWaterInputSet
      ####
      def new_input_set()
        return LogWaterInputSet.new()
      end

      def make_result_set()
        return LogWaterResultSet.new()
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
        results = LogWaterResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LogWater
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LogWaterInputSet < Choreography::InputSet

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
        # Set the value of the Amount input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The amount of water consumed. Corresponds to the Unit input.
        ###

        def set_Amount(value)
          set_input("Amount", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, date) The date that corresponds with the new log entry (in the format yyyy-MM-dd).
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Unit input for this Choreo. 
        # 
        # @param String - (required, string) Unit of measurement for the water entry. Valid values: 'ml', 'fl oz', or 'cup'.
        ###

        def set_Unit(value)
          set_input("Unit", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LogWater Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LogWaterResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class LogWater



    ##############################################################################
    #
    # SearchFoods
    #
    # Search public foods in the Fibit database and private user created foods by keyword search.
    #
    ##############################################################################

    class SearchFoods < Choreography

      ####
      #  Create a new instance of the SearchFoods Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Foods/SearchFoods")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchFoodsInputSet
      ####
      def new_input_set()
        return SearchFoodsInputSet.new()
      end

      def make_result_set()
        return SearchFoodsResultSet.new()
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
        results = SearchFoodsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchFoods
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchFoodsInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (required, string) The search query (i.e. artichoke).
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchFoods Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchFoodsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchFoods



    ##############################################################################
    #
    # UpdateFoodGoal
    #
    # Updates a user's current daily calorie consumption goal or Food Plan.
    #
    ##############################################################################

    class UpdateFoodGoal < Choreography

      ####
      #  Create a new instance of the UpdateFoodGoal Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Foods/UpdateFoodGoal")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateFoodGoalInputSet
      ####
      def new_input_set()
        return UpdateFoodGoalInputSet.new()
      end

      def make_result_set()
        return UpdateFoodGoalResultSet.new()
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
        results = UpdateFoodGoalResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateFoodGoal
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateFoodGoalInputSet < Choreography::InputSet

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
        # Set the value of the Calories input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The calorie consumption goal; either calories or intensity should be provided.
        ###

        def set_Calories(value)
          set_input("Calories", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Intensity input for this Choreo. 
        # 
        # @param String - (conditional, string) Food Plan intensity; (MAINTENANCE, EASIER, MEDIUM, KINDAHARD, HARDER); either calories or intensity should be provided.
        ###

        def set_Intensity(value)
          set_input("Intensity", value)
        end
        #### 
        # Set the value of the Personalized input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Food Plan type; true or false.
        ###

        def set_Personalized(value)
          set_input("Personalized", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateFoodGoal Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateFoodGoalResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateFoodGoal




  end # module Foods
  ##############################################################################
  #
  # GetActivities
  #
  # Gets a summary and list of a user's activities and activity log entries for a specified date.
  #
  ##############################################################################

  class GetActivities < Choreography

    ####
    #  Create a new instance of the GetActivities Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/GetActivities")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetActivitiesInputSet
    ####
    def new_input_set()
      return GetActivitiesInputSet.new()
    end

    def make_result_set()
      return GetActivitiesResultSet.new()
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
      results = GetActivitiesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetActivities
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetActivitiesInputSet < Choreography::InputSet

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
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (required, date) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd).
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetActivities Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetActivitiesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetActivities



  ##############################################################################
  #
  # GetBodyMeasurements
  #
  # Gets a summary of a user's body measurements for a specified date.
  #
  ##############################################################################

  class GetBodyMeasurements < Choreography

    ####
    #  Create a new instance of the GetBodyMeasurements Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/GetBodyMeasurements")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetBodyMeasurementsInputSet
    ####
    def new_input_set()
      return GetBodyMeasurementsInputSet.new()
    end

    def make_result_set()
      return GetBodyMeasurementsResultSet.new()
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
      results = GetBodyMeasurementsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetBodyMeasurements
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetBodyMeasurementsInputSet < Choreography::InputSet

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
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (required, date) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd).
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetBodyMeasurements Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetBodyMeasurementsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetBodyMeasurements



  ##############################################################################
  #
  # GetFavoriteActivities
  #
  # Gets a list of a user's favorite activities.
  #
  ##############################################################################

  class GetFavoriteActivities < Choreography

    ####
    #  Create a new instance of the GetFavoriteActivities Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/GetFavoriteActivities")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetFavoriteActivitiesInputSet
    ####
    def new_input_set()
      return GetFavoriteActivitiesInputSet.new()
    end

    def make_result_set()
      return GetFavoriteActivitiesResultSet.new()
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
      results = GetFavoriteActivitiesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetFavoriteActivities
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetFavoriteActivitiesInputSet < Choreography::InputSet

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
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetFavoriteActivities Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetFavoriteActivitiesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetFavoriteActivities



  ##############################################################################
  #
  # GetFavoriteFoods
  #
  # Gets a list of a user's favorite foods.
  #
  ##############################################################################

  class GetFavoriteFoods < Choreography

    ####
    #  Create a new instance of the GetFavoriteFoods Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/GetFavoriteFoods")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetFavoriteFoodsInputSet
    ####
    def new_input_set()
      return GetFavoriteFoodsInputSet.new()
    end

    def make_result_set()
      return GetFavoriteFoodsResultSet.new()
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
      results = GetFavoriteFoodsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetFavoriteFoods
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetFavoriteFoodsInputSet < Choreography::InputSet

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
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetFavoriteFoods Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetFavoriteFoodsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetFavoriteFoods



  ##############################################################################
  #
  # GetFoods
  #
  # Gets a summary and list of a user's food log entries for a specified date.
  #
  ##############################################################################

  class GetFoods < Choreography

    ####
    #  Create a new instance of the GetFoods Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/GetFoods")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetFoodsInputSet
    ####
    def new_input_set()
      return GetFoodsInputSet.new()
    end

    def make_result_set()
      return GetFoodsResultSet.new()
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
      results = GetFoodsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetFoods
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetFoodsInputSet < Choreography::InputSet

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
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (required, date) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd).
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetFoods Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetFoodsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetFoods



  ##############################################################################
  #
  # GetFrequentActivities
  #
  # Gets a list of a user's frequent activities.
  #
  ##############################################################################

  class GetFrequentActivities < Choreography

    ####
    #  Create a new instance of the GetFrequentActivities Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/GetFrequentActivities")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetFrequentActivitiesInputSet
    ####
    def new_input_set()
      return GetFrequentActivitiesInputSet.new()
    end

    def make_result_set()
      return GetFrequentActivitiesResultSet.new()
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
      results = GetFrequentActivitiesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetFrequentActivities
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetFrequentActivitiesInputSet < Choreography::InputSet

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
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetFrequentActivities Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetFrequentActivitiesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetFrequentActivities



  ##############################################################################
  #
  # GetFrequentFoods
  #
  # Gets a list of a user's frequent foods.
  #
  ##############################################################################

  class GetFrequentFoods < Choreography

    ####
    #  Create a new instance of the GetFrequentFoods Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/GetFrequentFoods")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetFrequentFoodsInputSet
    ####
    def new_input_set()
      return GetFrequentFoodsInputSet.new()
    end

    def make_result_set()
      return GetFrequentFoodsResultSet.new()
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
      results = GetFrequentFoodsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetFrequentFoods
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetFrequentFoodsInputSet < Choreography::InputSet

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
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetFrequentFoods Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetFrequentFoodsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetFrequentFoods



  ##############################################################################
  #
  # GetRecentActivities
  #
  # Gets a list of a user's recent activities.
  #
  ##############################################################################

  class GetRecentActivities < Choreography

    ####
    #  Create a new instance of the GetRecentActivities Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/GetRecentActivities")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetRecentActivitiesInputSet
    ####
    def new_input_set()
      return GetRecentActivitiesInputSet.new()
    end

    def make_result_set()
      return GetRecentActivitiesResultSet.new()
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
      results = GetRecentActivitiesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetRecentActivities
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetRecentActivitiesInputSet < Choreography::InputSet

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
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetRecentActivities Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetRecentActivitiesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetRecentActivities



  ##############################################################################
  #
  # GetRecentFoods
  #
  # Gets a list of a user's recent foods.
  #
  ##############################################################################

  class GetRecentFoods < Choreography

    ####
    #  Create a new instance of the GetRecentFoods Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/GetRecentFoods")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetRecentFoodsInputSet
    ####
    def new_input_set()
      return GetRecentFoodsInputSet.new()
    end

    def make_result_set()
      return GetRecentFoodsResultSet.new()
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
      results = GetRecentFoodsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetRecentFoods
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetRecentFoodsInputSet < Choreography::InputSet

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
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetRecentFoods Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetRecentFoodsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetRecentFoods



  ##############################################################################
  #
  # GetSleep
  #
  # Gets a summary a list of a user's sleep log entries for a specified date.
  #
  ##############################################################################

  class GetSleep < Choreography

    ####
    #  Create a new instance of the GetSleep Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/GetSleep")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetSleepInputSet
    ####
    def new_input_set()
      return GetSleepInputSet.new()
    end

    def make_result_set()
      return GetSleepResultSet.new()
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
      results = GetSleepResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetSleep
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetSleepInputSet < Choreography::InputSet

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
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (required, date) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd).
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetSleep Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetSleepResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetSleep



  ##############################################################################
  #
  # GetTimeSeriesByDateRange
  #
  # Gets time series data for a given resource based on a date range you specify.
  #
  ##############################################################################

  class GetTimeSeriesByDateRange < Choreography

    ####
    #  Create a new instance of the GetTimeSeriesByDateRange Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/GetTimeSeriesByDateRange")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetTimeSeriesByDateRangeInputSet
    ####
    def new_input_set()
      return GetTimeSeriesByDateRangeInputSet.new()
    end

    def make_result_set()
      return GetTimeSeriesByDateRangeResultSet.new()
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
      results = GetTimeSeriesByDateRangeResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetTimeSeriesByDateRange
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetTimeSeriesByDateRangeInputSet < Choreography::InputSet

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
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the EndDate input for this Choreo. 
      # 
      # @param String - (required, date) The end date of the date range for the data you want to retrieve (in the format yyyy-MM-dd). You can also specify the value 'today'.
      ###

      def set_EndDate(value)
        set_input("EndDate", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the ResourcePath input for this Choreo. 
      # 
      # @param String - (optional, string) The resource path that you want to access (for example: activities/log/distance). See Choreo documentation for a full list of resource paths.
      ###

      def set_ResourcePath(value)
        set_input("ResourcePath", value)
      end
      #### 
      # Set the value of the StartDate input for this Choreo. 
      # 
      # @param String - (required, date) The start date of the date range for the data you want to retrieve (in the format yyyy-MM-dd). You can also specify the value 'today'.
      ###

      def set_StartDate(value)
        set_input("StartDate", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetTimeSeriesByDateRange Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetTimeSeriesByDateRangeResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetTimeSeriesByDateRange



  ##############################################################################
  #
  # GetTimeSeriesByPeriod
  #
  # Gets time series data for a given resource based on a date range period you specify.
  #
  ##############################################################################

  class GetTimeSeriesByPeriod < Choreography

    ####
    #  Create a new instance of the GetTimeSeriesByPeriod Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/GetTimeSeriesByPeriod")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetTimeSeriesByPeriodInputSet
    ####
    def new_input_set()
      return GetTimeSeriesByPeriodInputSet.new()
    end

    def make_result_set()
      return GetTimeSeriesByPeriodResultSet.new()
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
      results = GetTimeSeriesByPeriodResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetTimeSeriesByPeriod
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetTimeSeriesByPeriodInputSet < Choreography::InputSet

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
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the EndDate input for this Choreo. 
      # 
      # @param String - (required, date) The end date of the period for the data you want to retrieve (in the format yyyy-MM-dd). You can also specify the value 'today'.
      ###

      def set_EndDate(value)
        set_input("EndDate", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the Period input for this Choreo. 
      # 
      # @param String - (optional, string) The date range period. Valid values are: 1d, 7d, 30d, 1w, 1m, 3m, 6m, 1y, max. Defaults to 'max'.
      ###

      def set_Period(value)
        set_input("Period", value)
      end
      #### 
      # Set the value of the ResourcePath input for this Choreo. 
      # 
      # @param String - (optional, string) The resource path that you want to access (for example: activities/log/distance). See Choreo documentation for a full list of resource paths.
      ###

      def set_ResourcePath(value)
        set_input("ResourcePath", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetTimeSeriesByPeriod Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetTimeSeriesByPeriodResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetTimeSeriesByPeriod



  ##############################################################################
  #
  # GetUserInfo
  #
  # Gets a user's profile data.
  #
  ##############################################################################

  class GetUserInfo < Choreography

    ####
    #  Create a new instance of the GetUserInfo Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/GetUserInfo")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetUserInfoInputSet
    ####
    def new_input_set()
      return GetUserInfoInputSet.new()
    end

    def make_result_set()
      return GetUserInfoResultSet.new()
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
      results = GetUserInfoResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetUserInfo
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetUserInfoInputSet < Choreography::InputSet

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
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetUserInfo Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetUserInfoResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetUserInfo




  module Glucose



    ##############################################################################
    #
    # GetGlucose
    #
    # Gets a list of user's blood glucose and HbA1C measurements for a given day.
    #
    ##############################################################################

    class GetGlucose < Choreography

      ####
      #  Create a new instance of the GetGlucose Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Glucose/GetGlucose")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetGlucoseInputSet
      ####
      def new_input_set()
        return GetGlucoseInputSet.new()
      end

      def make_result_set()
        return GetGlucoseResultSet.new()
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
        results = GetGlucoseResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetGlucose
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetGlucoseInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, date) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd).
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetGlucose Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetGlucoseResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetGlucose



    ##############################################################################
    #
    # LogGlucose
    #
    # Creates log entry for a blood glucose measurement and/or HbA1c measurement.
    #
    ##############################################################################

    class LogGlucose < Choreography

      ####
      #  Create a new instance of the LogGlucose Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Glucose/LogGlucose")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LogGlucoseInputSet
      ####
      def new_input_set()
        return LogGlucoseInputSet.new()
      end

      def make_result_set()
        return LogGlucoseResultSet.new()
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
        results = LogGlucoseResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LogGlucose
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LogGlucoseInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, date) The date that corresponds with the log entry (in the format yyyy-MM-dd).
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the Glucose input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) Glucose measurement; in the format X.X, required with tracker parameter, otherwise optional.
        ###

        def set_Glucose(value)
          set_input("Glucose", value)
        end
        #### 
        # Set the value of the HBA1C input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) HbA1c measurement; in the format X.X, either hba1c or tracker should be provided (or both).
        ###

        def set_HBA1C(value)
          set_input("HBA1C", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Time input for this Choreo. 
        # 
        # @param String - (optional, string) Time of the measurement; hours and minutes in the format HH:mm.
        ###

        def set_Time(value)
          set_input("Time", value)
        end
        #### 
        # Set the value of the Tracker input for this Choreo. 
        # 
        # @param String - (conditional, string) Glucose tracker name; predefined or custom tracker name (matches tracker name on the website, e.g. "Afternoon").
        ###

        def set_Tracker(value)
          set_input("Tracker", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LogGlucose Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LogGlucoseResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class LogGlucose




  end # module Glucose

  module Heart



    ##############################################################################
    #
    # DeleteHeartRateLog
    #
    # Deletes user's heart rate log entry with the given id.
    #
    ##############################################################################

    class DeleteHeartRateLog < Choreography

      ####
      #  Create a new instance of the DeleteHeartRateLog Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Heart/DeleteHeartRateLog")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteHeartRateLogInputSet
      ####
      def new_input_set()
        return DeleteHeartRateLogInputSet.new()
      end

      def make_result_set()
        return DeleteHeartRateLogResultSet.new()
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
        results = DeleteHeartRateLogResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteHeartRateLog
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteHeartRateLogInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the HeartRateLogID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the heart rate log you want to delete.
        ###

        def set_HeartRateLogID(value)
          set_input("HeartRateLogID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteHeartRateLog Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteHeartRateLogResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteHeartRateLog



    ##############################################################################
    #
    # GetHeartRate
    #
    # Gets average values and a list of user's heart rate log entries for a given day.
    #
    ##############################################################################

    class GetHeartRate < Choreography

      ####
      #  Create a new instance of the GetHeartRate Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Heart/GetHeartRate")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetHeartRateInputSet
      ####
      def new_input_set()
        return GetHeartRateInputSet.new()
      end

      def make_result_set()
        return GetHeartRateResultSet.new()
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
        results = GetHeartRateResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetHeartRate
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetHeartRateInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, date) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd).
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetHeartRate Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetHeartRateResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetHeartRate



    ##############################################################################
    #
    # LogHeartRate
    #
    # Creates log entry for a heart rate measurement.
    #
    ##############################################################################

    class LogHeartRate < Choreography

      ####
      #  Create a new instance of the LogHeartRate Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Heart/LogHeartRate")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LogHeartRateInputSet
      ####
      def new_input_set()
        return LogHeartRateInputSet.new()
      end

      def make_result_set()
        return LogHeartRateResultSet.new()
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
        results = LogHeartRateResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LogHeartRate
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LogHeartRateInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, date) The date that corresponds with the log entry (in the format yyyy-MM-dd).
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the HeartRate input for this Choreo. 
        # 
        # @param Integer - (required, integer) Heart rate measurement.
        ###

        def set_HeartRate(value)
          set_input("HeartRate", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Time input for this Choreo. 
        # 
        # @param String - (optional, string) Time of the measurement; hours and minutes in the format HH:mm.
        ###

        def set_Time(value)
          set_input("Time", value)
        end
        #### 
        # Set the value of the Tracker input for this Choreo. 
        # 
        # @param String - (required, string) Heart rate tracker name; predefined or custom tracker name (matches tracker name on the website).
        ###

        def set_Tracker(value)
          set_input("Tracker", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LogHeartRate Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LogHeartRateResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class LogHeartRate




  end # module Heart
  ##############################################################################
  #
  # LogActivity
  #
  # Log a new activity for a particular date.
  #
  ##############################################################################

  class LogActivity < Choreography

    ####
    #  Create a new instance of the LogActivity Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/LogActivity")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return LogActivityInputSet
    ####
    def new_input_set()
      return LogActivityInputSet.new()
    end

    def make_result_set()
      return LogActivityResultSet.new()
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
      results = LogActivityResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the LogActivity
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class LogActivityInputSet < Choreography::InputSet

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
      # Set the value of the ActivityId input for this Choreo. 
      # 
      # @param Integer - (required, integer) This can be the id of the activity, directory activity, or intensity level activity.
      ###

      def set_ActivityId(value)
        set_input("ActivityId", value)
      end
      #### 
      # Set the value of the ConsumerKey input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (required, date) The date that corresponds with the new log entry (in the format yyyy-MM-dd).
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the DistanceUnit input for this Choreo. 
      # 
      # @param String - (optional, string) Corresponds with the Distance parameter (i.e. Mile). See Choreo documentation for links to unit charts.
      ###

      def set_DistanceUnit(value)
        set_input("DistanceUnit", value)
      end
      #### 
      # Set the value of the Distance input for this Choreo. 
      # 
      # @param BigDecimal - (optional, decimal) The activity distance. Used when activityId corresponds to 'Running'  or 'Walking' for example.
      ###

      def set_Distance(value)
        set_input("Distance", value)
      end
      #### 
      # Set the value of the DurationMilliseconds input for this Choreo. 
      # 
      # @param Integer - (required, integer) The duration of the activity in milliseconds.
      ###

      def set_DurationMilliseconds(value)
        set_input("DurationMilliseconds", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the StartTime input for this Choreo. 
      # 
      # @param String - (required, string) The hour and minutes for the start of the activity formatted like HH:mm.
      ###

      def set_StartTime(value)
        set_input("StartTime", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the LogActivity Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class LogActivityResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class LogActivity



  ##############################################################################
  #
  # LogBodyMeasurements
  #
  # Log a new weight for a particular date.
  #
  ##############################################################################

  class LogBodyMeasurements < Choreography

    ####
    #  Create a new instance of the LogBodyMeasurements Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/LogBodyMeasurements")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return LogBodyMeasurementsInputSet
    ####
    def new_input_set()
      return LogBodyMeasurementsInputSet.new()
    end

    def make_result_set()
      return LogBodyMeasurementsResultSet.new()
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
      results = LogBodyMeasurementsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the LogBodyMeasurements
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class LogBodyMeasurementsInputSet < Choreography::InputSet

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
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (required, date) The date that corresponds with the new log entry (in the format yyyy-MM-dd).
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end
      #### 
      # Set the value of the Weight input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) A new value (in pounds) to log for weight. In the format of X.XX.
      ###

      def set_Weight(value)
        set_input("Weight", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the LogBodyMeasurements Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class LogBodyMeasurementsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class LogBodyMeasurements



  ##############################################################################
  #
  # LogFood
  #
  # Log a new food entry for a particular date.
  #
  ##############################################################################

  class LogFood < Choreography

    ####
    #  Create a new instance of the LogFood Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/LogFood")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return LogFoodInputSet
    ####
    def new_input_set()
      return LogFoodInputSet.new()
    end

    def make_result_set()
      return LogFoodResultSet.new()
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
      results = LogFoodResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the LogFood
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class LogFoodInputSet < Choreography::InputSet

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
      # Set the value of the Amount input for this Choreo. 
      # 
      # @param Integer - (required, integer) The amount of food consumed formatted like X.XX. Note that this input corresponds with the UnitId input.
      ###

      def set_Amount(value)
        set_input("Amount", value)
      end
      #### 
      # Set the value of the ConsumerKey input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (required, date) The date that corresponds with the new log entry (in the format yyyy-MM-dd).
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the Favorite input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Set to 1 to add food to favorites after creating log entry. Defaults to 0 for false.
      ###

      def set_Favorite(value)
        set_input("Favorite", value)
      end
      #### 
      # Set the value of the FoodId input for this Choreo. 
      # 
      # @param Integer - (required, integer) The id of the food to create a log entry for.
      ###

      def set_FoodId(value)
        set_input("FoodId", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the MealType input for this Choreo. 
      # 
      # @param String - (required, string) The type of meal. Valid values: Breakfast, Morning Snack, Lunch, Afternoon Snack, Dinner, Anytime.
      ###

      def set_MealType(value)
        set_input("MealType", value)
      end
      #### 
      # Set the value of the UnitId input for this Choreo. 
      # 
      # @param Integer - (required, integer) This id can be retrieved through other calls such as: Get Foods (Recent, Frequent, Favorite), Search Foods or Get Food Units.
      ###

      def set_UnitId(value)
        set_input("UnitId", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the LogFood Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class LogFoodResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class LogFood



  ##############################################################################
  #
  # LogWater
  #
  # Log a new water entry for a particular date.
  #
  ##############################################################################

  class LogWater < Choreography

    ####
    #  Create a new instance of the LogWater Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/LogWater")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return LogWaterInputSet
    ####
    def new_input_set()
      return LogWaterInputSet.new()
    end

    def make_result_set()
      return LogWaterResultSet.new()
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
      results = LogWaterResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the LogWater
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class LogWaterInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved during the OAuth process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the AccessokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
      ###

      def set_AccessokenSecret(value)
        set_input("AccessokenSecret", value)
      end
      #### 
      # Set the value of the Amount input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) The amount of water consumed. Corresponds to the Unit input.
      ###

      def set_Amount(value)
        set_input("Amount", value)
      end
      #### 
      # Set the value of the ConsumerKey input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (required, date) The date that corresponds with the new log entry (in the format yyyy-MM-dd).
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the Unit input for this Choreo. 
      # 
      # @param String - (required, string) Unit of measurement for the water entry. Valid values: 'ml', 'fl oz', or 'cup'.
      ###

      def set_Unit(value)
        set_input("Unit", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the LogWater Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class LogWaterResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class LogWater




  module OAuth



    ##############################################################################
    #
    # FinalizeOAuth
    #
    # Completes the OAuth process by retrieving a Fitbit access token, token secret and encoded user id (UserID) for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
    #
    ##############################################################################

    class FinalizeOAuth < Choreography

      ####
      #  Create a new instance of the FinalizeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/OAuth/FinalizeOAuth")
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
        # @param String - (required, string) The callback token returned by the InitializeOAuth Choreo. Used to retrieve the callback data after the user authorizes.
        ###

        def set_CallbackID(value)
          set_input("CallbackID", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
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
      	# Retrieve the value for the "UserID" output from this Choreo execution
      	#
      	# @return String - (string) The user's encoded id associated with the access token that is being retrieved.
      	####
      	def get_UserID()
      	  return @outputs["UserID"]
      	end
      	####
      	# Retrieve the value for the "AccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The Access Token retrieved during the OAuth process.
      	####
      	def get_AccessToken()
      	  return @outputs["AccessToken"]
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
        super(session, "/Library/Fitbit/OAuth/InitializeOAuth")
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
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
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
      	####
      	# Retrieve the value for the "CallbackID" output from this Choreo execution
      	#
      	# @return String - (string) An ID used to retrieve the callback data that Temboo stores once your application's user authorizes.
      	####
      	def get_CallbackID()
      	  return @outputs["CallbackID"]
      	end
      end

    end # class InitializeOAuth




  end # module OAuth

  module Profile



    ##############################################################################
    #
    # GetUserInfo
    #
    # Gets a user's profile data.
    #
    ##############################################################################

    class GetUserInfo < Choreography

      ####
      #  Create a new instance of the GetUserInfo Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Profile/GetUserInfo")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetUserInfoInputSet
      ####
      def new_input_set()
        return GetUserInfoInputSet.new()
      end

      def make_result_set()
        return GetUserInfoResultSet.new()
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
        results = GetUserInfoResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetUserInfo
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetUserInfoInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetUserInfo Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetUserInfoResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetUserInfo



    ##############################################################################
    #
    # UpdateUserInfo
    #
    # Updates a user's profile data.
    #
    ##############################################################################

    class UpdateUserInfo < Choreography

      ####
      #  Create a new instance of the UpdateUserInfo Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Profile/UpdateUserInfo")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateUserInfoInputSet
      ####
      def new_input_set()
        return UpdateUserInfoInputSet.new()
      end

      def make_result_set()
        return UpdateUserInfoResultSet.new()
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
        results = UpdateUserInfoResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateUserInfo
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateUserInfoInputSet < Choreography::InputSet

        #### 
        # Set the value of the AboutMe input for this Choreo. 
        # 
        # @param String - (optional, string) The user's About Me string.
        ###

        def set_AboutMe(value)
          set_input("AboutMe", value)
        end
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
        # Set the value of the Birthday input for this Choreo. 
        # 
        # @param String - (optional, date) Date of Birth; in the format yyyy-MM-dd.
        ###

        def set_Birthday(value)
          set_input("Birthday", value)
        end
        #### 
        # Set the value of the City input for this Choreo. 
        # 
        # @param String - (optional, string) The user's city information.
        ###

        def set_City(value)
          set_input("City", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Country input for this Choreo. 
        # 
        # @param String - (optional, string) The two-character code for the user's country.
        ###

        def set_Country(value)
          set_input("Country", value)
        end
        #### 
        # Set the value of the FoodLocale input for this Choreo. 
        # 
        # @param String - (optional, string) Food Database Locale; in the format "xx_XX".
        ###

        def set_FoodLocale(value)
          set_input("FoodLocale", value)
        end
        #### 
        # Set the value of the FullName input for this Choreo. 
        # 
        # @param String - (optional, string) The user's full name.
        ###

        def set_FullName(value)
          set_input("FullName", value)
        end
        #### 
        # Set the value of the Gender input for this Choreo. 
        # 
        # @param String - (optional, string) The user's gender (MALE/FEMALE/NA).
        ###

        def set_Gender(value)
          set_input("Gender", value)
        end
        #### 
        # Set the value of the GlucoseUnit input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The blood glucose unit of measurement being used. Valid values are: en_US, any,  METRIC.
        ###

        def set_GlucoseUnit(value)
          set_input("GlucoseUnit", value)
        end
        #### 
        # Set the value of the HeightUnit input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The height unit being used. Valid values are: en_US, any,  METRIC.
        ###

        def set_HeightUnit(value)
          set_input("HeightUnit", value)
        end
        #### 
        # Set the value of the Height input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The user's height; in the format X.XX (inches).
        ###

        def set_Height(value)
          set_input("Height", value)
        end
        #### 
        # Set the value of the Locale input for this Choreo. 
        # 
        # @param String - (optional, string) Locale of website (country/language); one of the locales, currently – (en_US, fr_FR, de_DE, es_ES, en_GB, en_AU, en_NZ, ja_JP).
        ###

        def set_Locale(value)
          set_input("Locale", value)
        end
        #### 
        # Set the value of the Nickname input for this Choreo. 
        # 
        # @param String - (optional, string) The user's nickname.
        ###

        def set_Nickname(value)
          set_input("Nickname", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) The two-character state abbreviation for the user.
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the StrideLengthRunning input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Running stride length; in the format X.XX.
        ###

        def set_StrideLengthRunning(value)
          set_input("StrideLengthRunning", value)
        end
        #### 
        # Set the value of the StrideLengthWalking input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Walking stride length; in the format X.XX.
        ###

        def set_StrideLengthWalking(value)
          set_input("StrideLengthWalking", value)
        end
        #### 
        # Set the value of the Timezone input for this Choreo. 
        # 
        # @param String - (optional, string) The user's timezone; in the format "America/Los_Angeles"
        ###

        def set_Timezone(value)
          set_input("Timezone", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end
        #### 
        # Set the value of the WaterUnit input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The water unit being used. Valid values are: en_US, any,  METRIC.
        ###

        def set_WaterUnit(value)
          set_input("WaterUnit", value)
        end
        #### 
        # Set the value of the WeightUnit input for this Choreo. 
        # 
        # @param String - (optional, string) The weight unit being used. Valid values are: en_US, any,  METRIC.
        ###

        def set_WeightUnit(value)
          set_input("WeightUnit", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateUserInfo Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateUserInfoResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateUserInfo




  end # module Profile
  ##############################################################################
  #
  # SearchFoods
  #
  # Search public foods in the Fibit database and private user created foods by keyword search.
  #
  ##############################################################################

  class SearchFoods < Choreography

    ####
    #  Create a new instance of the SearchFoods Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Fitbit/SearchFoods")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchFoodsInputSet
    ####
    def new_input_set()
      return SearchFoodsInputSet.new()
    end

    def make_result_set()
      return SearchFoodsResultSet.new()
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
      results = SearchFoodsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchFoods
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchFoodsInputSet < Choreography::InputSet

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
      # @param String - (required, string) The Consumer Key provided by Fitbit.
      ###

      def set_ConsumerKey(value)
        set_input("ConsumerKey", value)
      end
      #### 
      # Set the value of the ConsumerSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Consumer Secret provided by Fitbit.
      ###

      def set_ConsumerSecret(value)
        set_input("ConsumerSecret", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to xml.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the Query input for this Choreo. 
      # 
      # @param String - (required, string) The search query (i.e. artichoke).
      ###

      def set_Query(value)
        set_input("Query", value)
      end
      #### 
      # Set the value of the UserId input for this Choreo. 
      # 
      # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
      ###

      def set_UserId(value)
        set_input("UserId", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchFoods Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchFoodsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Fitbit.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchFoods




  module Sleep



    ##############################################################################
    #
    # DeleteSleepLog
    #
    # Delete user's sleep log entry with the given id.
    #
    ##############################################################################

    class DeleteSleepLog < Choreography

      ####
      #  Create a new instance of the DeleteSleepLog Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Sleep/DeleteSleepLog")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteSleepLogInputSet
      ####
      def new_input_set()
        return DeleteSleepLogInputSet.new()
      end

      def make_result_set()
        return DeleteSleepLogResultSet.new()
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
        results = DeleteSleepLogResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteSleepLog
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteSleepLogInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SleepLogID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the sleep log you want to delete.
        ###

        def set_SleepLogID(value)
          set_input("SleepLogID", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteSleepLog Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteSleepLogResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit. Note that for a successful execution, no content is returned and this output variable should be empty.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteSleepLog



    ##############################################################################
    #
    # GetSleep
    #
    # Gets a summary and list of a user's sleep log entries for a specified date.
    #
    ##############################################################################

    class GetSleep < Choreography

      ####
      #  Create a new instance of the GetSleep Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Sleep/GetSleep")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetSleepInputSet
      ####
      def new_input_set()
        return GetSleepInputSet.new()
      end

      def make_result_set()
        return GetSleepResultSet.new()
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
        results = GetSleepResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetSleep
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetSleepInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, date) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd).
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetSleep Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetSleepResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetSleep



    ##############################################################################
    #
    # LogSleep
    #
    # Creates log entry for sleep.
    #
    ##############################################################################

    class LogSleep < Choreography

      ####
      #  Create a new instance of the LogSleep Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Sleep/LogSleep")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LogSleepInputSet
      ####
      def new_input_set()
        return LogSleepInputSet.new()
      end

      def make_result_set()
        return LogSleepResultSet.new()
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
        results = LogSleepResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LogSleep
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LogSleepInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, date) The date that corresponds with the log entry you want to create (in the format yyyy-MM-dd).
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the Duration input for this Choreo. 
        # 
        # @param String - (required, string) The sleep duration in milliseconds.
        ###

        def set_Duration(value)
          set_input("Duration", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the StartTime input for this Choreo. 
        # 
        # @param String - (required, string) The sleep start time; hours and minutes in the format HH:mm.
        ###

        def set_StartTime(value)
          set_input("StartTime", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LogSleep Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LogSleepResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class LogSleep




  end # module Sleep

  module Social



    ##############################################################################
    #
    # AcceptInvite
    #
    # Accepts or rejects an invite to become friends with inviting user.
    #
    ##############################################################################

    class AcceptInvite < Choreography

      ####
      #  Create a new instance of the AcceptInvite Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Social/AcceptInvite")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AcceptInviteInputSet
      ####
      def new_input_set()
        return AcceptInviteInputSet.new()
      end

      def make_result_set()
        return AcceptInviteResultSet.new()
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
        results = AcceptInviteResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AcceptInvite
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AcceptInviteInputSet < Choreography::InputSet

        #### 
        # Set the value of the Accept input for this Choreo. 
        # 
        # @param Boolean - (required, boolean) Accept or reject an invite; (true or false).
        ###

        def set_Accept(value)
          set_input("Accept", value)
        end
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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the FromUserID input for this Choreo. 
        # 
        # @param String - (required, string) The user's id to indicate user to accept or reject invite from.
        ###

        def set_FromUserID(value)
          set_input("FromUserID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AcceptInvite Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AcceptInviteResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AcceptInvite



    ##############################################################################
    #
    # CreateInvite
    #
    # Invites a user to become friends with authorized user.
    #
    ##############################################################################

    class CreateInvite < Choreography

      ####
      #  Create a new instance of the CreateInvite Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Social/CreateInvite")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateInviteInputSet
      ####
      def new_input_set()
        return CreateInviteInputSet.new()
      end

      def make_result_set()
        return CreateInviteResultSet.new()
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
        results = CreateInviteResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateInvite
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateInviteInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the InvitedUserEmail input for this Choreo. 
        # 
        # @param String - (conditional, string) The email address of the user to invite; user can be a Fitbit member already. Required unless providing the InvitedUserID.
        ###

        def set_InvitedUserEmail(value)
          set_input("InvitedUserEmail", value)
        end
        #### 
        # Set the value of the InvitedUserID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Fitbit user id of the user to send an invite to. Required unless providing the InvitedUserEmail.
        ###

        def set_InvitedUserID(value)
          set_input("InvitedUserID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateInvite Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateInviteResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateInvite



    ##############################################################################
    #
    # GetBadges
    #
    # Gets a user's badges.
    #
    ##############################################################################

    class GetBadges < Choreography

      ####
      #  Create a new instance of the GetBadges Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Social/GetBadges")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetBadgesInputSet
      ####
      def new_input_set()
        return GetBadgesInputSet.new()
      end

      def make_result_set()
        return GetBadgesResultSet.new()
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
        results = GetBadgesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetBadges
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetBadgesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Access Token Secret retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (conditional, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetBadges Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetBadgesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetBadges



    ##############################################################################
    #
    # GetFriends
    #
    # Gets user's friends.
    #
    ##############################################################################

    class GetFriends < Choreography

      ####
      #  Create a new instance of the GetFriends Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Social/GetFriends")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetFriendsInputSet
      ####
      def new_input_set()
        return GetFriendsInputSet.new()
      end

      def make_result_set()
        return GetFriendsResultSet.new()
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
        results = GetFriendsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetFriends
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetFriendsInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetFriends Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetFriendsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetFriends



    ##############################################################################
    #
    # GetFriendsLeaderboard
    #
    # Gets a user's friends leaderboard.
    #
    ##############################################################################

    class GetFriendsLeaderboard < Choreography

      ####
      #  Create a new instance of the GetFriendsLeaderboard Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Social/GetFriendsLeaderboard")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetFriendsLeaderboardInputSet
      ####
      def new_input_set()
        return GetFriendsLeaderboardInputSet.new()
      end

      def make_result_set()
        return GetFriendsLeaderboardResultSet.new()
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
        results = GetFriendsLeaderboardResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetFriendsLeaderboard
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetFriendsLeaderboardInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetFriendsLeaderboard Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetFriendsLeaderboardResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetFriendsLeaderboard



    ##############################################################################
    #
    # GetInvites
    #
    # Retrieve the list of invites to become freinds for a user.
    #
    ##############################################################################

    class GetInvites < Choreography

      ####
      #  Create a new instance of the GetInvites Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Social/GetInvites")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetInvitesInputSet
      ####
      def new_input_set()
        return GetInvitesInputSet.new()
      end

      def make_result_set()
        return GetInvitesResultSet.new()
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
        results = GetInvitesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetInvites
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetInvitesInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetInvites Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetInvitesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetInvites




  end # module Social

  module Statistics



    ##############################################################################
    #
    # GetActivityStats
    #
    # Gets user's activity statistics.
    #
    ##############################################################################

    class GetActivityStats < Choreography

      ####
      #  Create a new instance of the GetActivityStats Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Statistics/GetActivityStats")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetActivityStatsInputSet
      ####
      def new_input_set()
        return GetActivityStatsInputSet.new()
      end

      def make_result_set()
        return GetActivityStatsResultSet.new()
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
        results = GetActivityStatsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetActivityStats
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetActivityStatsInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetActivityStats Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetActivityStatsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetActivityStats



    ##############################################################################
    #
    # GetTimeSeriesByDateRange
    #
    # Gets time series data for a given resource based on a date range you specify.
    #
    ##############################################################################

    class GetTimeSeriesByDateRange < Choreography

      ####
      #  Create a new instance of the GetTimeSeriesByDateRange Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Statistics/GetTimeSeriesByDateRange")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTimeSeriesByDateRangeInputSet
      ####
      def new_input_set()
        return GetTimeSeriesByDateRangeInputSet.new()
      end

      def make_result_set()
        return GetTimeSeriesByDateRangeResultSet.new()
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
        results = GetTimeSeriesByDateRangeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTimeSeriesByDateRange
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTimeSeriesByDateRangeInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the EndDate input for this Choreo. 
        # 
        # @param String - (required, date) The end date of the date range for the data you want to retrieve (in the format yyyy-MM-dd). You can also specify the value 'today'.
        ###

        def set_EndDate(value)
          set_input("EndDate", value)
        end
        #### 
        # Set the value of the ResourcePath input for this Choreo. 
        # 
        # @param String - (required, string) The resource path that you want to access (for example: activities/log/distance). See Choreo documentation for a full list of resource paths.
        ###

        def set_ResourcePath(value)
          set_input("ResourcePath", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the StartDate input for this Choreo. 
        # 
        # @param String - (required, date) The start date of the date range for the data you want to retrieve (in the format yyyy-MM-dd). You can also specify the value 'today'.
        ###

        def set_StartDate(value)
          set_input("StartDate", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTimeSeriesByDateRange Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTimeSeriesByDateRangeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTimeSeriesByDateRange



    ##############################################################################
    #
    # GetTimeSeriesByPeriod
    #
    # Gets time series data for a given resource based on a date range period you specify.
    #
    ##############################################################################

    class GetTimeSeriesByPeriod < Choreography

      ####
      #  Create a new instance of the GetTimeSeriesByPeriod Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Fitbit/Statistics/GetTimeSeriesByPeriod")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTimeSeriesByPeriodInputSet
      ####
      def new_input_set()
        return GetTimeSeriesByPeriodInputSet.new()
      end

      def make_result_set()
        return GetTimeSeriesByPeriodResultSet.new()
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
        results = GetTimeSeriesByPeriodResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTimeSeriesByPeriod
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTimeSeriesByPeriodInputSet < Choreography::InputSet

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
        # @param String - (required, string) The Consumer Key provided by Fitbit.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Fitbit.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the EndDate input for this Choreo. 
        # 
        # @param String - (required, date) The end date of the period for the data you want to retrieve (in the format yyyy-MM-dd). You can also specify the value 'today'.
        ###

        def set_EndDate(value)
          set_input("EndDate", value)
        end
        #### 
        # Set the value of the Period input for this Choreo. 
        # 
        # @param String - (optional, string) The date range period. Valid values are: 1d, 7d, 30d, 1w, 1m, 3m, 6m, 1y, max. Defaults to 'max'.
        ###

        def set_Period(value)
          set_input("Period", value)
        end
        #### 
        # Set the value of the ResourcePath input for this Choreo. 
        # 
        # @param String - (required, string) The resource path that you want to access (for example: activities/log/distance). See Choreo documentation for a full list of resource paths.
        ###

        def set_ResourcePath(value)
          set_input("ResourcePath", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that you want the response to be in: xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTimeSeriesByPeriod Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTimeSeriesByPeriodResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Fitbit.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTimeSeriesByPeriod




  end # module Statistics

end # module Fitbit