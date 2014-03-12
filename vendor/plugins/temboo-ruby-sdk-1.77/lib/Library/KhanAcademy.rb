require "temboo"

module KhanAcademy




  module Badges



    ##############################################################################
    #
    # AllCategories
    #
    # Retrieves all the badge categories in Khan Academy.
    #
    ##############################################################################

    class AllCategories < Choreography

      ####
      #  Create a new instance of the AllCategories Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/KhanAcademy/Badges/AllCategories")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AllCategoriesInputSet
      ####
      def new_input_set()
        return AllCategoriesInputSet.new()
      end

      def make_result_set()
        return AllCategoriesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = AllCategoriesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AllCategories
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AllCategoriesInputSet < Choreography::InputSet


      end

      ####
      # A ResultSet with methods tailored to the values returned by the AllCategories Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AllCategoriesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Khan Academy.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AllCategories



    ##############################################################################
    #
    # BadgesByCategory
    #
    # Retrieves all badges for a specific category.
    #
    ##############################################################################

    class BadgesByCategory < Choreography

      ####
      #  Create a new instance of the BadgesByCategory Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/KhanAcademy/Badges/BadgesByCategory")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return BadgesByCategoryInputSet
      ####
      def new_input_set()
        return BadgesByCategoryInputSet.new()
      end

      def make_result_set()
        return BadgesByCategoryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = BadgesByCategoryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the BadgesByCategory
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class BadgesByCategoryInputSet < Choreography::InputSet

        #### 
        # Set the value of the CategoryID input for this Choreo. 
        # 
        # @param String - (required, string) The category of badges to retrieve. A full list of CategoryIds can be obtained by running the AllCategories Choreo.
        ###

        def set_CategoryID(value)
          set_input("CategoryID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the BadgesByCategory Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class BadgesByCategoryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Khan Academy.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class BadgesByCategory



    ##############################################################################
    #
    # GetBadges
    #
    # Retrieves a list of all badges, and if a user is logged in, retrieves additional information about the badges that user has earned.
    #
    ##############################################################################

    class GetBadges < Choreography

      ####
      #  Create a new instance of the GetBadges Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/KhanAcademy/Badges/GetBadges")
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
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (optional, string) The Consumer Key provided by Khan Academy.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (optional, string) The OAuth Consumer Secret provided by Khan Academy.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (optional, string) The email address (coach or student ID) of user. If not provided, defaults to currently logged in user in the case when authentication credentials are provided.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the OAuthTokenSecret input for this Choreo. 
        # 
        # @param String - (optional, string) The OAuth Token Secret retrieved during the OAuth process.
        ###

        def set_OAuthTokenSecret(value)
          set_input("OAuthTokenSecret", value)
        end
        #### 
        # Set the value of the OAuthToken input for this Choreo. 
        # 
        # @param String - (optional, string) The OAuth Token retrieved during the OAuth process.
        ###

        def set_OAuthToken(value)
          set_input("OAuthToken", value)
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
      	# @return String - (json) The response from Khan Academy.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetBadges




  end # module Badges

  module Exercises



    ##############################################################################
    #
    # AllExercises
    #
    # Retrieves a list of all exercises in the Khan Academy library.
    #
    ##############################################################################

    class AllExercises < Choreography

      ####
      #  Create a new instance of the AllExercises Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/KhanAcademy/Exercises/AllExercises")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AllExercisesInputSet
      ####
      def new_input_set()
        return AllExercisesInputSet.new()
      end

      def make_result_set()
        return AllExercisesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = AllExercisesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AllExercises
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AllExercisesInputSet < Choreography::InputSet


      end

      ####
      # A ResultSet with methods tailored to the values returned by the AllExercises Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AllExercisesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Khan Academy.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AllExercises



    ##############################################################################
    #
    # GetExercise
    #
    # Retrieves the specified exercise.
    #
    ##############################################################################

    class GetExercise < Choreography

      ####
      #  Create a new instance of the GetExercise Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/KhanAcademy/Exercises/GetExercise")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetExerciseInputSet
      ####
      def new_input_set()
        return GetExerciseInputSet.new()
      end

      def make_result_set()
        return GetExerciseResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetExerciseResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetExercise
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetExerciseInputSet < Choreography::InputSet

        #### 
        # Set the value of the ExerciseName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the exercise to retrieve (e.g. logarithms_1)
        ###

        def set_ExerciseName(value)
          set_input("ExerciseName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetExercise Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetExerciseResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Khan Academy.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetExercise



    ##############################################################################
    #
    # GetExerciseFollowUp
    #
    # Retrieves all exercises which have the specified exercise as a prerequisite.
    #
    ##############################################################################

    class GetExerciseFollowUp < Choreography

      ####
      #  Create a new instance of the GetExerciseFollowUp Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/KhanAcademy/Exercises/GetExerciseFollowUp")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetExerciseFollowUpInputSet
      ####
      def new_input_set()
        return GetExerciseFollowUpInputSet.new()
      end

      def make_result_set()
        return GetExerciseFollowUpResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetExerciseFollowUpResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetExerciseFollowUp
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetExerciseFollowUpInputSet < Choreography::InputSet

        #### 
        # Set the value of the ExerciseName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the exercise to retrieve (e.g. logarithms_1)
        ###

        def set_ExerciseName(value)
          set_input("ExerciseName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetExerciseFollowUp Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetExerciseFollowUpResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Khan Academy.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetExerciseFollowUp



    ##############################################################################
    #
    # GetExerciseVideos
    #
    # Retrieves all videos associated with a given exercise.
    #
    ##############################################################################

    class GetExerciseVideos < Choreography

      ####
      #  Create a new instance of the GetExerciseVideos Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/KhanAcademy/Exercises/GetExerciseVideos")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetExerciseVideosInputSet
      ####
      def new_input_set()
        return GetExerciseVideosInputSet.new()
      end

      def make_result_set()
        return GetExerciseVideosResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetExerciseVideosResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetExerciseVideos
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetExerciseVideosInputSet < Choreography::InputSet

        #### 
        # Set the value of the ExerciseName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the exercise to retrieve (e.g. logarithms_1)
        ###

        def set_ExerciseName(value)
          set_input("ExerciseName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetExerciseVideos Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetExerciseVideosResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Khan Academy.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetExerciseVideos




  end # module Exercises

  module OAuth



    ##############################################################################
    #
    # FinalizeOAuth
    #
    # Completes the OAuth process by retrieving a Khan Academy OAuth token and token secret for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
    #
    ##############################################################################

    class FinalizeOAuth < Choreography

      ####
      #  Create a new instance of the FinalizeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/KhanAcademy/OAuth/FinalizeOAuth")
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
        # @param String - (required, string) The Consumer Key provided by Khan Academy.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Consumer Secret provided by Khan Academy.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
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
      	# Retrieve the value for the "OAuthToken" output from this Choreo execution
      	#
      	# @return String - (string) The OAuth Token retrieved during the OAuth process.
      	####
      	def get_OAuthToken()
      	  return @outputs["OAuthToken"]
      	end
      	####
      	# Retrieve the value for the "OAuthTokenSecret" output from this Choreo execution
      	#
      	# @return String - (string) The OAuth Token Secret retrieved during the OAuth process.
      	####
      	def get_OAuthTokenSecret()
      	  return @outputs["OAuthTokenSecret"]
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
        super(session, "/Library/KhanAcademy/OAuth/InitializeOAuth")
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
        # @param String - (required, string) The Consumer Key provided by Khan Academy.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Consumer Secret provided by Khan Academy.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
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

  module Topics



    ##############################################################################
    #
    # GetTopicExercises
    #
    # Retrieves a list of all exercises for a given topic.
    #
    ##############################################################################

    class GetTopicExercises < Choreography

      ####
      #  Create a new instance of the GetTopicExercises Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/KhanAcademy/Topics/GetTopicExercises")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTopicExercisesInputSet
      ####
      def new_input_set()
        return GetTopicExercisesInputSet.new()
      end

      def make_result_set()
        return GetTopicExercisesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetTopicExercisesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTopicExercises
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTopicExercisesInputSet < Choreography::InputSet

        #### 
        # Set the value of the TopicID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the topic.
        ###

        def set_TopicID(value)
          set_input("TopicID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTopicExercises Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTopicExercisesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Khan Academy.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTopicExercises



    ##############################################################################
    #
    # GetTopicVideos
    #
    # Retreievs a list of all videos for a given topic.
    #
    ##############################################################################

    class GetTopicVideos < Choreography

      ####
      #  Create a new instance of the GetTopicVideos Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/KhanAcademy/Topics/GetTopicVideos")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTopicVideosInputSet
      ####
      def new_input_set()
        return GetTopicVideosInputSet.new()
      end

      def make_result_set()
        return GetTopicVideosResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetTopicVideosResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTopicVideos
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTopicVideosInputSet < Choreography::InputSet

        #### 
        # Set the value of the TopicID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the topic.
        ###

        def set_TopicID(value)
          set_input("TopicID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTopicVideos Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTopicVideosResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Khan Academy.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTopicVideos



    ##############################################################################
    #
    # TopicData
    #
    # Retrieves topic data for a given topic, including an abbreviated list of all its sub-topics.
    #
    ##############################################################################

    class TopicData < Choreography

      ####
      #  Create a new instance of the TopicData Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/KhanAcademy/Topics/TopicData")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return TopicDataInputSet
      ####
      def new_input_set()
        return TopicDataInputSet.new()
      end

      def make_result_set()
        return TopicDataResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = TopicDataResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the TopicData
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class TopicDataInputSet < Choreography::InputSet

        #### 
        # Set the value of the TopicID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the topic.
        ###

        def set_TopicID(value)
          set_input("TopicID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the TopicData Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class TopicDataResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Khan Academy.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class TopicData



    ##############################################################################
    #
    # TopicTree
    #
    # Retrieves the hierarchical organization of all topics in the Khan Academy library.
    #
    ##############################################################################

    class TopicTree < Choreography

      ####
      #  Create a new instance of the TopicTree Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/KhanAcademy/Topics/TopicTree")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return TopicTreeInputSet
      ####
      def new_input_set()
        return TopicTreeInputSet.new()
      end

      def make_result_set()
        return TopicTreeResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = TopicTreeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the TopicTree
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class TopicTreeInputSet < Choreography::InputSet


      end

      ####
      # A ResultSet with methods tailored to the values returned by the TopicTree Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class TopicTreeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Khan Academy.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class TopicTree




  end # module Topics

  module Users



    ##############################################################################
    #
    # CurrentUser
    #
    # Retrieves user data about a specified user.
    #
    ##############################################################################

    class CurrentUser < Choreography

      ####
      #  Create a new instance of the CurrentUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/KhanAcademy/Users/CurrentUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CurrentUserInputSet
      ####
      def new_input_set()
        return CurrentUserInputSet.new()
      end

      def make_result_set()
        return CurrentUserResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CurrentUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CurrentUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CurrentUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Khan Academy.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Consumer Secret provided by Khan Academy.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (optional, string) The email address (coach or student ID) of user. If not provided, defaults to currently logged in user.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the OAuthTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Token Secret retrieved during the OAuth process.
        ###

        def set_OAuthTokenSecret(value)
          set_input("OAuthTokenSecret", value)
        end
        #### 
        # Set the value of the OAuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Token retrieved during the OAuth process.
        ###

        def set_OAuthToken(value)
          set_input("OAuthToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CurrentUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CurrentUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Khan Academy.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CurrentUser



    ##############################################################################
    #
    # GetExercise
    #
    # Retrieves user data for a given excercise, such as number of problems attempted, current streak, longest streak, etc.
    #
    ##############################################################################

    class GetExercise < Choreography

      ####
      #  Create a new instance of the GetExercise Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/KhanAcademy/Users/GetExercise")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetExerciseInputSet
      ####
      def new_input_set()
        return GetExerciseInputSet.new()
      end

      def make_result_set()
        return GetExerciseResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetExerciseResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetExercise
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetExerciseInputSet < Choreography::InputSet

        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Khan Academy.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Consumer Secret provided by Khan Academy.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (optional, string) The email address (coach or student ID) of user. If not provided, defaults to currently logged in user.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ExerciseName input for this Choreo. 
        # 
        # @param String - (required, string) The exercise for which you want to retrieve follwow up exercises (e.g. "simplifying_fractions").
        ###

        def set_ExerciseName(value)
          set_input("ExerciseName", value)
        end
        #### 
        # Set the value of the OAuthTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Token Secret retrieved during the OAuth process.
        ###

        def set_OAuthTokenSecret(value)
          set_input("OAuthTokenSecret", value)
        end
        #### 
        # Set the value of the OAuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Token retrieved during the OAuth process.
        ###

        def set_OAuthToken(value)
          set_input("OAuthToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetExercise Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetExerciseResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Khan Academy.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetExercise



    ##############################################################################
    #
    # GetExerciseFollowUp
    #
    # Retrieves user data about all excercises which have the specified excercise as a prerequisite.
    #
    ##############################################################################

    class GetExerciseFollowUp < Choreography

      ####
      #  Create a new instance of the GetExerciseFollowUp Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/KhanAcademy/Users/GetExerciseFollowUp")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetExerciseFollowUpInputSet
      ####
      def new_input_set()
        return GetExerciseFollowUpInputSet.new()
      end

      def make_result_set()
        return GetExerciseFollowUpResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetExerciseFollowUpResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetExerciseFollowUp
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetExerciseFollowUpInputSet < Choreography::InputSet

        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Khan Academy.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Consumer Secret provided by Khan Academy.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (optional, string) The email address (coach or student ID) of user. If not provided, defaults to currently logged in user.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the ExerciseName input for this Choreo. 
        # 
        # @param String - (required, string) The exercise for which you want to retrieve follwow up exercises (e.g. "simplifying_fractions").
        ###

        def set_ExerciseName(value)
          set_input("ExerciseName", value)
        end
        #### 
        # Set the value of the OAuthTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Token Secret retrieved during the OAuth process.
        ###

        def set_OAuthTokenSecret(value)
          set_input("OAuthTokenSecret", value)
        end
        #### 
        # Set the value of the OAuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Token retrieved during the OAuth process.
        ###

        def set_OAuthToken(value)
          set_input("OAuthToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetExerciseFollowUp Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetExerciseFollowUpResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Khan Academy.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetExerciseFollowUp



    ##############################################################################
    #
    # GetExerciseLog
    #
    # Retrieves user data about a specific excercise, such as when the problem was done, if the answer was correct, etc.
    #
    ##############################################################################

    class GetExerciseLog < Choreography

      ####
      #  Create a new instance of the GetExerciseLog Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/KhanAcademy/Users/GetExerciseLog")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetExerciseLogInputSet
      ####
      def new_input_set()
        return GetExerciseLogInputSet.new()
      end

      def make_result_set()
        return GetExerciseLogResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetExerciseLogResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetExerciseLog
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetExerciseLogInputSet < Choreography::InputSet

        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Khan Academy.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Consumer Secret provided by Khan Academy.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (optional, string) The email address (coach or student ID) of user. If not provided, defaults to currently logged in user.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the EndTime input for this Choreo. 
        # 
        # @param String - (optional, string) The date/time to end searching for logs in UTC format: YYYY-mm-ddTHH:MM:SS (e.g., 2011-10-18T02:41:53).
        ###

        def set_EndTime(value)
          set_input("EndTime", value)
        end
        #### 
        # Set the value of the ExerciseName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the exercise for which you want to retrieve information (e.g. scientific_notation).
        ###

        def set_ExerciseName(value)
          set_input("ExerciseName", value)
        end
        #### 
        # Set the value of the OAuthTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Token Secret retrieved during the OAuth process.
        ###

        def set_OAuthTokenSecret(value)
          set_input("OAuthTokenSecret", value)
        end
        #### 
        # Set the value of the OAuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Token retrieved during the OAuth process.
        ###

        def set_OAuthToken(value)
          set_input("OAuthToken", value)
        end
        #### 
        # Set the value of the StartTime input for this Choreo. 
        # 
        # @param String - (optional, string) The date/time to start searching for logs in UTC format: YYYY-mm-ddTHH:MM:SS (e.g., 2011-10-18T02:41:53).
        ###

        def set_StartTime(value)
          set_input("StartTime", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetExerciseLog Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetExerciseLogResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Khan Academy.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetExerciseLog



    ##############################################################################
    #
    # GetUserExercises
    #
    # Retrieves data about all excercises engaged by a specific user.
    #
    ##############################################################################

    class GetUserExercises < Choreography

      ####
      #  Create a new instance of the GetUserExercises Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/KhanAcademy/Users/GetUserExercises")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetUserExercisesInputSet
      ####
      def new_input_set()
        return GetUserExercisesInputSet.new()
      end

      def make_result_set()
        return GetUserExercisesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetUserExercisesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetUserExercises
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetUserExercisesInputSet < Choreography::InputSet

        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Khan Academy.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Consumer Secret provided by Khan Academy.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (optional, string) The email address (coach or student ID) of user. If not provided, defaults to currently logged in user.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the OAuthTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Token Secret retrieved during the OAuth process.
        ###

        def set_OAuthTokenSecret(value)
          set_input("OAuthTokenSecret", value)
        end
        #### 
        # Set the value of the OAuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Token retrieved during the OAuth process.
        ###

        def set_OAuthToken(value)
          set_input("OAuthToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetUserExercises Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetUserExercisesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Khan Academy.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetUserExercises



    ##############################################################################
    #
    # GetUserVideos
    #
    # Retrieves data about all videos watched by a specific user.
    #
    ##############################################################################

    class GetUserVideos < Choreography

      ####
      #  Create a new instance of the GetUserVideos Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/KhanAcademy/Users/GetUserVideos")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetUserVideosInputSet
      ####
      def new_input_set()
        return GetUserVideosInputSet.new()
      end

      def make_result_set()
        return GetUserVideosResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetUserVideosResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetUserVideos
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetUserVideosInputSet < Choreography::InputSet

        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Khan Academy.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Consumer Secret provided by Khan Academy.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (optional, string) The email address (coach or student ID) of user. If not provided, defaults to currently logged in user.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the EndTime input for this Choreo. 
        # 
        # @param String - (optional, string) The date/time to end searching for logs in UTC format: YYYY-mm-ddTHH:MM:SS (e.g., 2011-10-18T02:41:53).
        ###

        def set_EndTime(value)
          set_input("EndTime", value)
        end
        #### 
        # Set the value of the OAuthTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Token Secret retrieved during the OAuth process.
        ###

        def set_OAuthTokenSecret(value)
          set_input("OAuthTokenSecret", value)
        end
        #### 
        # Set the value of the OAuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Token retrieved during the OAuth process.
        ###

        def set_OAuthToken(value)
          set_input("OAuthToken", value)
        end
        #### 
        # Set the value of the StartTime input for this Choreo. 
        # 
        # @param String - (optional, string) The date/time to start searching for logs in UTC format: YYYY-mm-ddTHH:MM:SS (e.g., 2011-10-18T02:41:53).
        ###

        def set_StartTime(value)
          set_input("StartTime", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetUserVideos Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetUserVideosResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Khan Academy.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetUserVideos



    ##############################################################################
    #
    # GetVideo
    #
    # Retrieves user data about a specific video, such as amount of video watched, points received, etc.
    #
    ##############################################################################

    class GetVideo < Choreography

      ####
      #  Create a new instance of the GetVideo Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/KhanAcademy/Users/GetVideo")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetVideoInputSet
      ####
      def new_input_set()
        return GetVideoInputSet.new()
      end

      def make_result_set()
        return GetVideoResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetVideoResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetVideo
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetVideoInputSet < Choreography::InputSet

        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Khan Academy.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Consumer Secret provided by Khan Academy.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (optional, string) The email address (coach or student ID) of user. If not provided, defaults to currently logged in user.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the OAuthTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Token Secret retrieved during the OAuth process.
        ###

        def set_OAuthTokenSecret(value)
          set_input("OAuthTokenSecret", value)
        end
        #### 
        # Set the value of the OAuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Token retrieved during the OAuth process.
        ###

        def set_OAuthToken(value)
          set_input("OAuthToken", value)
        end
        #### 
        # Set the value of the YouTubeID input for this Choreo. 
        # 
        # @param String - (required, string) The YouTube ID of the video for which you want to retrieve information.
        ###

        def set_YouTubeID(value)
          set_input("YouTubeID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetVideo Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetVideoResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Khan Academy.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetVideo



    ##############################################################################
    #
    # GetVideoLog
    #
    # Retrieves user log data about a specific video, such as when the log of watching a video was started, how long the session lasted, etc.
    #
    ##############################################################################

    class GetVideoLog < Choreography

      ####
      #  Create a new instance of the GetVideoLog Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/KhanAcademy/Users/GetVideoLog")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetVideoLogInputSet
      ####
      def new_input_set()
        return GetVideoLogInputSet.new()
      end

      def make_result_set()
        return GetVideoLogResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetVideoLogResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetVideoLog
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetVideoLogInputSet < Choreography::InputSet

        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Khan Academy.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Consumer Secret provided by Khan Academy.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (optional, string) The email address (coach or student ID) of user. If not provided, defaults to currently logged in user.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the EndTime input for this Choreo. 
        # 
        # @param String - (optional, string) The date/time to end searching for logs in UTC format: YYYY-mm-ddTHH:MM:SS (e.g., 2011-10-18T02:41:53).
        ###

        def set_EndTime(value)
          set_input("EndTime", value)
        end
        #### 
        # Set the value of the OAuthTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Token Secret retrieved during the OAuth process.
        ###

        def set_OAuthTokenSecret(value)
          set_input("OAuthTokenSecret", value)
        end
        #### 
        # Set the value of the OAuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Token retrieved during the OAuth process.
        ###

        def set_OAuthToken(value)
          set_input("OAuthToken", value)
        end
        #### 
        # Set the value of the StartTime input for this Choreo. 
        # 
        # @param String - (optional, string) The date/time to start searching for logs in UTC format: YYYY-mm-ddTHH:MM:SS (e.g., 2011-10-18T02:41:53).
        ###

        def set_StartTime(value)
          set_input("StartTime", value)
        end
        #### 
        # Set the value of the YouTubeID input for this Choreo. 
        # 
        # @param String - (required, string) The YouTube ID of the video for which you want to retrieve information.
        ###

        def set_YouTubeID(value)
          set_input("YouTubeID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetVideoLog Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetVideoLogResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Khan Academy.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetVideoLog




  end # module Users

  module Videos



    ##############################################################################
    #
    # GetVideoByReadableID
    #
    # Retrieves video data for a given video according to its readable ID.
    #
    ##############################################################################

    class GetVideoByReadableID < Choreography

      ####
      #  Create a new instance of the GetVideoByReadableID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/KhanAcademy/Videos/GetVideoByReadableID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetVideoByReadableIDInputSet
      ####
      def new_input_set()
        return GetVideoByReadableIDInputSet.new()
      end

      def make_result_set()
        return GetVideoByReadableIDResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetVideoByReadableIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetVideoByReadableID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetVideoByReadableIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the ReadableID input for this Choreo. 
        # 
        # @param String - (required, string) The ReadableID of the video for which you want to retrieve information (e.g. adding-subtracting-negative-numbers).
        ###

        def set_ReadableID(value)
          set_input("ReadableID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetVideoByReadableID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetVideoByReadableIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Khan Academy.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetVideoByReadableID



    ##############################################################################
    #
    # GetVideoExercises
    #
    # Retrieves all the exercises associated with a given video.
    #
    ##############################################################################

    class GetVideoExercises < Choreography

      ####
      #  Create a new instance of the GetVideoExercises Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/KhanAcademy/Videos/GetVideoExercises")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetVideoExercisesInputSet
      ####
      def new_input_set()
        return GetVideoExercisesInputSet.new()
      end

      def make_result_set()
        return GetVideoExercisesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetVideoExercisesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetVideoExercises
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetVideoExercisesInputSet < Choreography::InputSet

        #### 
        # Set the value of the YouTubeID input for this Choreo. 
        # 
        # @param String - (required, string) The Youtube ID of the video for which you want data.
        ###

        def set_YouTubeID(value)
          set_input("YouTubeID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetVideoExercises Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetVideoExercisesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Khan Academy.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetVideoExercises




  end # module Videos

end # module KhanAcademy