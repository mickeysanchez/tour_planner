require "temboo"

module Klout




  module Identity



    ##############################################################################
    #
    # ByGooglePlusID
    #
    # Performs a lookup for a user's identity using a Google+ ID.
    #
    ##############################################################################

    class ByGooglePlusID < Choreography

      ####
      #  Create a new instance of the ByGooglePlusID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Klout/Identity/ByGooglePlusID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ByGooglePlusIDInputSet
      ####
      def new_input_set()
        return ByGooglePlusIDInputSet.new()
      end

      def make_result_set()
        return ByGooglePlusIDResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ByGooglePlusIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ByGooglePlusID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ByGooglePlusIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Klout.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the GooglePlusID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The numeric ID for a Google+ user.
        ###

        def set_GooglePlusID(value)
          set_input("GooglePlusID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ByGooglePlusID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ByGooglePlusIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Klout.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ByGooglePlusID



    ##############################################################################
    #
    # ByKloutID
    #
    # Performs a lookup for a user's identity using a Klout ID.
    #
    ##############################################################################

    class ByKloutID < Choreography

      ####
      #  Create a new instance of the ByKloutID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Klout/Identity/ByKloutID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ByKloutIDInputSet
      ####
      def new_input_set()
        return ByKloutIDInputSet.new()
      end

      def make_result_set()
        return ByKloutIDResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ByKloutIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ByKloutID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ByKloutIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Klout.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the KloutID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The numeric ID for a Klout user.
        ###

        def set_KloutID(value)
          set_input("KloutID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ByKloutID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ByKloutIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Klout.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ByKloutID



    ##############################################################################
    #
    # ByTwitterID
    #
    # Performs a lookup for a user's identity using a Twitter ID.
    #
    ##############################################################################

    class ByTwitterID < Choreography

      ####
      #  Create a new instance of the ByTwitterID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Klout/Identity/ByTwitterID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ByTwitterIDInputSet
      ####
      def new_input_set()
        return ByTwitterIDInputSet.new()
      end

      def make_result_set()
        return ByTwitterIDResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ByTwitterIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ByTwitterID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ByTwitterIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Klout.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the TwitterID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The numeric ID for a Twitter user.
        ###

        def set_TwitterID(value)
          set_input("TwitterID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ByTwitterID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ByTwitterIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Klout.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ByTwitterID



    ##############################################################################
    #
    # ByTwitterScreenName
    #
    # Performs a lookup for a user's identity using a Twitter screen name.
    #
    ##############################################################################

    class ByTwitterScreenName < Choreography

      ####
      #  Create a new instance of the ByTwitterScreenName Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Klout/Identity/ByTwitterScreenName")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ByTwitterScreenNameInputSet
      ####
      def new_input_set()
        return ByTwitterScreenNameInputSet.new()
      end

      def make_result_set()
        return ByTwitterScreenNameResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ByTwitterScreenNameResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ByTwitterScreenName
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ByTwitterScreenNameInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Klout.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (required, string) The screen name for a Twitter user.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ByTwitterScreenName Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ByTwitterScreenNameResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Klout.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ByTwitterScreenName



    ##############################################################################
    #
    # IDSwitch
    #
    # 
    #
    ##############################################################################

    class IDSwitch < Choreography

      ####
      #  Create a new instance of the IDSwitch Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Klout/Identity/IDSwitch")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return IDSwitchInputSet
      ####
      def new_input_set()
        return IDSwitchInputSet.new()
      end

      def make_result_set()
        return IDSwitchResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = IDSwitchResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the IDSwitch
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class IDSwitchInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Klout.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the GooglePlusID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The numeric id for a Google Plus user.
        ###

        def set_GooglePlusID(value)
          set_input("GooglePlusID", value)
        end
        #### 
        # Set the value of the KloutID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The numeric ID for a Klout user.
        ###

        def set_KloutID(value)
          set_input("KloutID", value)
        end
        #### 
        # Set the value of the TwitterID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The numeric ID for a Twitter user.
        ###

        def set_TwitterID(value)
          set_input("TwitterID", value)
        end
        #### 
        # Set the value of the TwitterScreenName input for this Choreo. 
        # 
        # @param String - (conditional, string) The screen name of a Twitter user.
        ###

        def set_TwitterScreenName(value)
          set_input("TwitterScreenName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the IDSwitch Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class IDSwitchResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Klout.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class IDSwitch




  end # module Identity

  module User



    ##############################################################################
    #
    # Influence
    #
    # Retrieves a user's influencers and influencees.
    #
    ##############################################################################

    class Influence < Choreography

      ####
      #  Create a new instance of the Influence Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Klout/User/Influence")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return InfluenceInputSet
      ####
      def new_input_set()
        return InfluenceInputSet.new()
      end

      def make_result_set()
        return InfluenceResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = InfluenceResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Influence
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class InfluenceInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Klout.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the KloutID input for this Choreo. 
        # 
        # @param String - (required, string) The id for a Klout user to retrieve influencers and influencees for.
        ###

        def set_KloutID(value)
          set_input("KloutID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Influence Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class InfluenceResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Klout.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Influence



    ##############################################################################
    #
    # Score
    #
    # Retrieves a user's Klout Score and deltas.
    #
    ##############################################################################

    class Score < Choreography

      ####
      #  Create a new instance of the Score Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Klout/User/Score")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ScoreInputSet
      ####
      def new_input_set()
        return ScoreInputSet.new()
      end

      def make_result_set()
        return ScoreResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ScoreResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Score
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ScoreInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Klout.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the KloutID input for this Choreo. 
        # 
        # @param String - (required, string) The id for a Klout user to retrieve a score for.
        ###

        def set_KloutID(value)
          set_input("KloutID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Score Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ScoreResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Klout.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Score



    ##############################################################################
    #
    # ShowUser
    #
    # Retrieves information for a specified Klout user.
    #
    ##############################################################################

    class ShowUser < Choreography

      ####
      #  Create a new instance of the ShowUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Klout/User/ShowUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ShowUserInputSet
      ####
      def new_input_set()
        return ShowUserInputSet.new()
      end

      def make_result_set()
        return ShowUserResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ShowUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ShowUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ShowUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Klout.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the KloutID input for this Choreo. 
        # 
        # @param String - (required, string) The id for a Klout user to retrieve.
        ###

        def set_KloutID(value)
          set_input("KloutID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ShowUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ShowUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Klout.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ShowUser



    ##############################################################################
    #
    # Topics
    #
    # Retrieves a user's topics. 
    #
    ##############################################################################

    class Topics < Choreography

      ####
      #  Create a new instance of the Topics Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Klout/User/Topics")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return TopicsInputSet
      ####
      def new_input_set()
        return TopicsInputSet.new()
      end

      def make_result_set()
        return TopicsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = TopicsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Topics
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class TopicsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Klout.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the KloutID input for this Choreo. 
        # 
        # @param String - (required, string) The id for a Klout user to retrieve topics for.
        ###

        def set_KloutID(value)
          set_input("KloutID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Topics Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class TopicsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Klout.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Topics




  end # module User

end # module Klout