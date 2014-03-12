require "temboo"

module DonorsChoose



  ##############################################################################
  #
  # AppliedLearning
  #
  # Returns results for projects within the Applied Learning category.
  #
  ##############################################################################

  class AppliedLearning < Choreography

    ####
    #  Create a new instance of the AppliedLearning Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/DonorsChoose/AppliedLearning")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return AppliedLearningInputSet
    ####
    def new_input_set()
      return AppliedLearningInputSet.new()
    end

    def make_result_set()
      return AppliedLearningResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = AppliedLearningResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the AppliedLearning
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class AppliedLearningInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (optional, string) The APIKey provided by DonorsChoose.org. Defaults to the test  APIKey 'DONORSCHOOSE'.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Index input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of the first row to return in the result. For example, if index=10, the results could show rows 10-59.
      ###

      def set_Index(value)
        set_input("Index", value)
      end
      #### 
      # Set the value of the Max input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The max number of projects to return. Can return up to 50 rows at a time. Defaults to 10 when left empty.
      ###

      def set_Max(value)
        set_input("Max", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the ShowCounts input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Set to 1 to return facet counts in the response
      ###

      def set_ShowCounts(value)
        set_input("ShowCounts", value)
      end
      #### 
      # Set the value of the ShowSynopsis input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Set to 1 to show the synopsis for each project listing
      ###

      def set_ShowSynopsis(value)
        set_input("ShowSynopsis", value)
      end
      #### 
      # Set the value of the Subject input for this Choreo. 
      # 
      # @param String - (optional, string) Enter a sub-category of Applied Learning. When left empty, all Applied Learning projects are returned.
      ###

      def set_Subject(value)
        set_input("Subject", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the AppliedLearning Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class AppliedLearningResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from DonorsChoose.org
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class AppliedLearning



  ##############################################################################
  #
  # DonateToProject
  #
  # Makes a donation to a specified DonorsChoose.org project.
  #
  ##############################################################################

  class DonateToProject < Choreography

    ####
    #  Create a new instance of the DonateToProject Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/DonorsChoose/DonateToProject")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DonateToProjectInputSet
    ####
    def new_input_set()
      return DonateToProjectInputSet.new()
    end

    def make_result_set()
      return DonateToProjectResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = DonateToProjectResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the DonateToProject
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DonateToProjectInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The APIKey provided by DonorsChoose.org.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the APIPassword input for this Choreo. 
      # 
      # @param String - (required, string) Your DonorsChoose.org API password. This is only required when performing transactions.
      ###

      def set_APIPassword(value)
        set_input("APIPassword", value)
      end
      #### 
      # Set the value of the Address1 input for this Choreo. 
      # 
      # @param String - (optional, string) Line one of the donor's address.
      ###

      def set_Address1(value)
        set_input("Address1", value)
      end
      #### 
      # Set the value of the Address2 input for this Choreo. 
      # 
      # @param String - (optional, string) Line two of the donor's address.
      ###

      def set_Address2(value)
        set_input("Address2", value)
      end
      #### 
      # Set the value of the Amount input for this Choreo. 
      # 
      # @param Integer - (required, integer) The donation amount. Must be a whole number.
      ###

      def set_Amount(value)
        set_input("Amount", value)
      end
      #### 
      # Set the value of the Callback input for this Choreo. 
      # 
      # @param String - (optional, string) To wrap the response in a callback function, include the name in this input.
      ###

      def set_Callback(value)
        set_input("Callback", value)
      end
      #### 
      # Set the value of the City input for this Choreo. 
      # 
      # @param String - (optional, string) The donor's city.
      ###

      def set_City(value)
        set_input("City", value)
      end
      #### 
      # Set the value of the Email input for this Choreo. 
      # 
      # @param String - (required, string) The email address of the person who is making the donation.
      ###

      def set_Email(value)
        set_input("Email", value)
      end
      #### 
      # Set the value of the FirstName input for this Choreo. 
      # 
      # @param String - (optional, string) The first name of the donor.
      ###

      def set_FirstName(value)
        set_input("FirstName", value)
      end
      #### 
      # Set the value of the LastName input for this Choreo. 
      # 
      # @param String - (optional, string) The last name of the donor.
      ###

      def set_LastName(value)
        set_input("LastName", value)
      end
      #### 
      # Set the value of the ProposalId input for this Choreo. 
      # 
      # @param Integer - (required, integer) The ID of the project that will receive the donation.
      ###

      def set_ProposalId(value)
        set_input("ProposalId", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the Salutation input for this Choreo. 
      # 
      # @param String - (optional, string) Hwo the donor wants to be acknowledged on donorschoose.org.
      ###

      def set_Salutation(value)
        set_input("Salutation", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) The donor's state.
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Zip input for this Choreo. 
      # 
      # @param String - (optional, string) The donor's five-digit zip code.
      ###

      def set_Zip(value)
        set_input("Zip", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the DonateToProject Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DonateToProjectResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from DonorsChoose.org.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class DonateToProject



  ##############################################################################
  #
  # HealthAndSports
  #
  # Returns results for projects within the Health and Sports category.
  #
  ##############################################################################

  class HealthAndSports < Choreography

    ####
    #  Create a new instance of the HealthAndSports Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/DonorsChoose/HealthAndSports")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return HealthAndSportsInputSet
    ####
    def new_input_set()
      return HealthAndSportsInputSet.new()
    end

    def make_result_set()
      return HealthAndSportsResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = HealthAndSportsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the HealthAndSports
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class HealthAndSportsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (optional, string) The APIKey provided by DonorsChoose.org. Defaults to the test  APIKey 'DONORSCHOOSE'.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Index input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of the first row to return in the result. For example, if index=10, the results could show rows 10-59.
      ###

      def set_Index(value)
        set_input("Index", value)
      end
      #### 
      # Set the value of the Max input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The max number of projects to return. Can return up to 50 rows at a time. Defaults to 10 when left empty.
      ###

      def set_Max(value)
        set_input("Max", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the ShowCounts input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Set to 1 to return facet counts in the response
      ###

      def set_ShowCounts(value)
        set_input("ShowCounts", value)
      end
      #### 
      # Set the value of the ShowSynopsis input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Set to 1 to show the synopsis for each project listing
      ###

      def set_ShowSynopsis(value)
        set_input("ShowSynopsis", value)
      end
      #### 
      # Set the value of the Subject input for this Choreo. 
      # 
      # @param String - (optional, string) Enter a sub-category of Health & Sports. When left empty, all Health & Sports projects are returned.
      ###

      def set_Subject(value)
        set_input("Subject", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the HealthAndSports Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class HealthAndSportsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from DonorsChoose.org
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class HealthAndSports



  ##############################################################################
  #
  # HistoryAndCivics
  #
  # Returns results for projects within the History and Civics category.
  #
  ##############################################################################

  class HistoryAndCivics < Choreography

    ####
    #  Create a new instance of the HistoryAndCivics Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/DonorsChoose/HistoryAndCivics")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return HistoryAndCivicsInputSet
    ####
    def new_input_set()
      return HistoryAndCivicsInputSet.new()
    end

    def make_result_set()
      return HistoryAndCivicsResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = HistoryAndCivicsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the HistoryAndCivics
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class HistoryAndCivicsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (optional, string) The APIKey provided by DonorsChoose.org. Defaults to the test  APIKey 'DONORSCHOOSE'.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Index input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of the first row to return in the result. For example, if index=10, the results could show rows 10-59.
      ###

      def set_Index(value)
        set_input("Index", value)
      end
      #### 
      # Set the value of the Max input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The max number of projects to return. Can return up to 50 rows at a time. Defaults to 10 when left empty.
      ###

      def set_Max(value)
        set_input("Max", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the ShowCounts input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Set to 1 to return facet counts in the response
      ###

      def set_ShowCounts(value)
        set_input("ShowCounts", value)
      end
      #### 
      # Set the value of the ShowSynopsis input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Set to 1 to show the synopsis for each project listing
      ###

      def set_ShowSynopsis(value)
        set_input("ShowSynopsis", value)
      end
      #### 
      # Set the value of the Subject input for this Choreo. 
      # 
      # @param String - (optional, string) Enter a sub-category of History & Civics. When left empty, all History & Civics projects are returned.
      ###

      def set_Subject(value)
        set_input("Subject", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the HistoryAndCivics Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class HistoryAndCivicsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from DonorsChoose.org
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class HistoryAndCivics



  ##############################################################################
  #
  # LiteracyAndLanguage
  #
  # Returns results for projects within the Literacy and Language category.
  #
  ##############################################################################

  class LiteracyAndLanguage < Choreography

    ####
    #  Create a new instance of the LiteracyAndLanguage Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/DonorsChoose/LiteracyAndLanguage")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return LiteracyAndLanguageInputSet
    ####
    def new_input_set()
      return LiteracyAndLanguageInputSet.new()
    end

    def make_result_set()
      return LiteracyAndLanguageResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = LiteracyAndLanguageResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the LiteracyAndLanguage
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class LiteracyAndLanguageInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (optional, string) The APIKey provided by DonorsChoose.org. Defaults to the test  APIKey 'DONORSCHOOSE'.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Index input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of the first row to return in the result. For example, if index=10, the results could show rows 10-59.
      ###

      def set_Index(value)
        set_input("Index", value)
      end
      #### 
      # Set the value of the Max input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The max number of projects to return. Can return up to 50 rows at a time. Defaults to 10 when left empty.
      ###

      def set_Max(value)
        set_input("Max", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the ShowCounts input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Set to 1 to return facet counts in the response
      ###

      def set_ShowCounts(value)
        set_input("ShowCounts", value)
      end
      #### 
      # Set the value of the ShowSynopsis input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Set to 1 to show the synopsis for each project listing
      ###

      def set_ShowSynopsis(value)
        set_input("ShowSynopsis", value)
      end
      #### 
      # Set the value of the Subject input for this Choreo. 
      # 
      # @param String - (optional, string) Enter a sub-category of Literacy & Language. When left empty, all Literacy & Language projects are returned.
      ###

      def set_Subject(value)
        set_input("Subject", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the LiteracyAndLanguage Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class LiteracyAndLanguageResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from DonorsChoose.org
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class LiteracyAndLanguage



  ##############################################################################
  #
  # MathAndScience
  #
  # Returns results for projects within the Math and Science category.
  #
  ##############################################################################

  class MathAndScience < Choreography

    ####
    #  Create a new instance of the MathAndScience Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/DonorsChoose/MathAndScience")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return MathAndScienceInputSet
    ####
    def new_input_set()
      return MathAndScienceInputSet.new()
    end

    def make_result_set()
      return MathAndScienceResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = MathAndScienceResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the MathAndScience
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class MathAndScienceInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (optional, string) The APIKey provided by DonorsChoose.org. Defaults to the test  APIKey 'DONORSCHOOSE'.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Index input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of the first row to return in the result. For example, if index=10, the results could show rows 10-59.
      ###

      def set_Index(value)
        set_input("Index", value)
      end
      #### 
      # Set the value of the Max input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The max number of projects to return. Can return up to 50 rows at a time. Defaults to 10 when left empty.
      ###

      def set_Max(value)
        set_input("Max", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the ShowSynopsis input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Set to 1 to show the synopsis for each project listing
      ###

      def set_ShowSynopsis(value)
        set_input("ShowSynopsis", value)
      end
      #### 
      # Set the value of the Subject input for this Choreo. 
      # 
      # @param String - (optional, string) Enter a sub-category of Math & Science. When left empty, all Math & Science projects are returned.
      ###

      def set_Subject(value)
        set_input("Subject", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the MathAndScience Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class MathAndScienceResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from DonorsChoose.org
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class MathAndScience



  ##############################################################################
  #
  # MusicAndTheArts
  #
  # Returns results for projects within the Music and The Arts category.
  #
  ##############################################################################

  class MusicAndTheArts < Choreography

    ####
    #  Create a new instance of the MusicAndTheArts Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/DonorsChoose/MusicAndTheArts")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return MusicAndTheArtsInputSet
    ####
    def new_input_set()
      return MusicAndTheArtsInputSet.new()
    end

    def make_result_set()
      return MusicAndTheArtsResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = MusicAndTheArtsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the MusicAndTheArts
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class MusicAndTheArtsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (optional, string) The APIKey provided by DonorsChoose.org. Defaults to the test  APIKey 'DONORSCHOOSE'.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Index input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of the first row to return in the result. For example, if index=10, the results could show rows 10-59.
      ###

      def set_Index(value)
        set_input("Index", value)
      end
      #### 
      # Set the value of the Max input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The max number of projects to return. Can return up to 50 rows at a time. Defaults to 10 when left empty.
      ###

      def set_Max(value)
        set_input("Max", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the ShowCounts input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Set to 1 to return facet counts in the response
      ###

      def set_ShowCounts(value)
        set_input("ShowCounts", value)
      end
      #### 
      # Set the value of the ShowSynopsis input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Set to 1 to show the synopsis for each project listing
      ###

      def set_ShowSynopsis(value)
        set_input("ShowSynopsis", value)
      end
      #### 
      # Set the value of the Subject input for this Choreo. 
      # 
      # @param String - (optional, string) Enter a sub-category of Music & The Arts. When left empty, all Art & Music projects are returned.
      ###

      def set_Subject(value)
        set_input("Subject", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the MusicAndTheArts Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class MusicAndTheArtsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from DonorsChoose.org
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class MusicAndTheArts



  ##############################################################################
  #
  # SearchBySubject
  #
  # Sub-Choreo used for all other thin wrapper Choreos for Donor's Choose API.
  #
  ##############################################################################

  class SearchBySubject < Choreography

    ####
    #  Create a new instance of the SearchBySubject Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/DonorsChoose/SearchBySubject")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchBySubjectInputSet
    ####
    def new_input_set()
      return SearchBySubjectInputSet.new()
    end

    def make_result_set()
      return SearchBySubjectResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = SearchBySubjectResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchBySubject
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchBySubjectInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - 
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Index input for this Choreo. 
      # 
      # @param String - 
      ###

      def set_Index(value)
        set_input("Index", value)
      end
      #### 
      # Set the value of the Keywords input for this Choreo. 
      # 
      # @param String - 
      ###

      def set_Keywords(value)
        set_input("Keywords", value)
      end
      #### 
      # Set the value of the Max input for this Choreo. 
      # 
      # @param String - 
      ###

      def set_Max(value)
        set_input("Max", value)
      end
      #### 
      # Set the value of the ShowCounts input for this Choreo. 
      # 
      # @param String - 
      ###

      def set_ShowCounts(value)
        set_input("ShowCounts", value)
      end
      #### 
      # Set the value of the ShowSynopsis input for this Choreo. 
      # 
      # @param String - 
      ###

      def set_ShowSynopsis(value)
        set_input("ShowSynopsis", value)
      end
      #### 
      # Set the value of the SubjectCategory input for this Choreo. 
      # 
      # @param String - 
      ###

      def set_SubjectCategory(value)
        set_input("SubjectCategory", value)
      end
      #### 
      # Set the value of the Subject input for this Choreo. 
      # 
      # @param String - 
      ###

      def set_Subject(value)
        set_input("Subject", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchBySubject Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchBySubjectResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - 
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchBySubject



  ##############################################################################
  #
  # SearchProjectsByKeyword
  #
  # Allows you to projects subjects by keyword.
  #
  ##############################################################################

  class SearchProjectsByKeyword < Choreography

    ####
    #  Create a new instance of the SearchProjectsByKeyword Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/DonorsChoose/SearchProjectsByKeyword")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchProjectsByKeywordInputSet
    ####
    def new_input_set()
      return SearchProjectsByKeywordInputSet.new()
    end

    def make_result_set()
      return SearchProjectsByKeywordResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = SearchProjectsByKeywordResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchProjectsByKeyword
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchProjectsByKeywordInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (optional, string) The APIKey provided by DonorsChoose.org. Defaults to the test  APIKey 'DONORSCHOOSE'.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Keyword input for this Choreo. 
      # 
      # @param String - (required, string) Allows you to search for subjects using keyword search
      ###

      def set_Keyword(value)
        set_input("Keyword", value)
      end
      #### 
      # Set the value of the Max input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The max number of projects to return. Can return up to 50 rows at a time. Defaults to 10 when left empty.
      ###

      def set_Max(value)
        set_input("Max", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchProjectsByKeyword Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchProjectsByKeywordResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from DonorsChoose.org
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchProjectsByKeyword



  ##############################################################################
  #
  # SpecialNeeds
  #
  # Returns results for projects within the Special Needs category.
  #
  ##############################################################################

  class SpecialNeeds < Choreography

    ####
    #  Create a new instance of the SpecialNeeds Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/DonorsChoose/SpecialNeeds")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SpecialNeedsInputSet
    ####
    def new_input_set()
      return SpecialNeedsInputSet.new()
    end

    def make_result_set()
      return SpecialNeedsResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = SpecialNeedsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SpecialNeeds
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SpecialNeedsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (optional, string) The APIKey provided by DonorsChoose.org. Defaults to the test  APIKey 'DONORSCHOOSE'.
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the Index input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of the first row to return in the result. For example, if index=10, the results could show rows 10-59.
      ###

      def set_Index(value)
        set_input("Index", value)
      end
      #### 
      # Set the value of the Max input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The max number of projects to return. Can return up to 50 rows at a time. Defaults to 10 when left empty.
      ###

      def set_Max(value)
        set_input("Max", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the ShowSynopsis input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Set to 1 to show the synopsis for each project listing
      ###

      def set_ShowSynopsis(value)
        set_input("ShowSynopsis", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SpecialNeeds Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SpecialNeedsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from DonorsChoose.org
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SpecialNeeds




end # module DonorsChoose