require "temboo"

module LinkedIn




  module Companies



    ##############################################################################
    #
    # CompaniesFollowed
    #
    # Returns a list of companies followed by the current user.
    #
    ##############################################################################

    class CompaniesFollowed < Choreography

      ####
      #  Create a new instance of the CompaniesFollowed Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LinkedIn/Companies/CompaniesFollowed")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CompaniesFollowedInputSet
      ####
      def new_input_set()
        return CompaniesFollowedInputSet.new()
      end

      def make_result_set()
        return CompaniesFollowedResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CompaniesFollowedResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CompaniesFollowed
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CompaniesFollowedInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CompaniesFollowed Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CompaniesFollowedResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LinkedIn.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CompaniesFollowed



    ##############################################################################
    #
    # GetCompanyProfileByEmailDomain
    #
    # Retrieve a company profile by email domain.
    #
    ##############################################################################

    class GetCompanyProfileByEmailDomain < Choreography

      ####
      #  Create a new instance of the GetCompanyProfileByEmailDomain Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LinkedIn/Companies/GetCompanyProfileByEmailDomain")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCompanyProfileByEmailDomainInputSet
      ####
      def new_input_set()
        return GetCompanyProfileByEmailDomainInputSet.new()
      end

      def make_result_set()
        return GetCompanyProfileByEmailDomainResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetCompanyProfileByEmailDomainResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCompanyProfileByEmailDomain
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCompanyProfileByEmailDomainInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # Set the value of the EmailDomain input for this Choreo. 
        # 
        # @param String - (required, string) An email domain used to search for a company (i.e. apple.com).
        ###

        def set_EmailDomain(value)
          set_input("EmailDomain", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCompanyProfileByEmailDomain Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCompanyProfileByEmailDomainResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LinkedIn.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCompanyProfileByEmailDomain



    ##############################################################################
    #
    # GetCompanyProfileByID
    #
    # Retrieve a company profile by ID.
    #
    ##############################################################################

    class GetCompanyProfileByID < Choreography

      ####
      #  Create a new instance of the GetCompanyProfileByID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LinkedIn/Companies/GetCompanyProfileByID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCompanyProfileByIDInputSet
      ####
      def new_input_set()
        return GetCompanyProfileByIDInputSet.new()
      end

      def make_result_set()
        return GetCompanyProfileByIDResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetCompanyProfileByIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCompanyProfileByID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCompanyProfileByIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # Set the value of the CompanyID input for this Choreo. 
        # 
        # @param Integer - (required, integer) A LinkedIn assigned ID associated with the company that you want to retrieve.
        ###

        def set_CompanyID(value)
          set_input("CompanyID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCompanyProfileByID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCompanyProfileByIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LinkedIn.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCompanyProfileByID



    ##############################################################################
    #
    # GetCompanyProfileByName
    #
    # Retrieve a company profile by entering a company's universal-name.
    #
    ##############################################################################

    class GetCompanyProfileByName < Choreography

      ####
      #  Create a new instance of the GetCompanyProfileByName Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LinkedIn/Companies/GetCompanyProfileByName")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCompanyProfileByNameInputSet
      ####
      def new_input_set()
        return GetCompanyProfileByNameInputSet.new()
      end

      def make_result_set()
        return GetCompanyProfileByNameResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetCompanyProfileByNameResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCompanyProfileByName
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCompanyProfileByNameInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # Set the value of the CompanyName input for this Choreo. 
        # 
        # @param Integer - (required, integer) The unique string identifier for a company.
        ###

        def set_CompanyName(value)
          set_input("CompanyName", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCompanyProfileByName Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCompanyProfileByNameResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LinkedIn.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCompanyProfileByName



    ##############################################################################
    #
    # GetCompanyProfiles
    #
    # Retrieve multiple company profiles using a given list of company IDs or names.
    #
    ##############################################################################

    class GetCompanyProfiles < Choreography

      ####
      #  Create a new instance of the GetCompanyProfiles Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LinkedIn/Companies/GetCompanyProfiles")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCompanyProfilesInputSet
      ####
      def new_input_set()
        return GetCompanyProfilesInputSet.new()
      end

      def make_result_set()
        return GetCompanyProfilesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetCompanyProfilesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCompanyProfiles
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCompanyProfilesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # Set the value of the Companies input for this Choreo. 
        # 
        # @param String - (required, string) A comma separated list of company IDs or universal-name key/value pairs. IDs and names can be mixed also. For example: 812686,universal-name=linkedin,universal-name=apple.
        ###

        def set_Companies(value)
          set_input("Companies", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCompanyProfiles Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCompanyProfilesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LinkedIn.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCompanyProfiles



    ##############################################################################
    #
    # SuggestedCompaniesToFollow
    #
    # Returns a list of suggested companies to be followed by this user.
    #
    ##############################################################################

    class SuggestedCompaniesToFollow < Choreography

      ####
      #  Create a new instance of the SuggestedCompaniesToFollow Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LinkedIn/Companies/SuggestedCompaniesToFollow")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SuggestedCompaniesToFollowInputSet
      ####
      def new_input_set()
        return SuggestedCompaniesToFollowInputSet.new()
      end

      def make_result_set()
        return SuggestedCompaniesToFollowResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = SuggestedCompaniesToFollowResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SuggestedCompaniesToFollow
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SuggestedCompaniesToFollowInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SuggestedCompaniesToFollow Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SuggestedCompaniesToFollowResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LinkedIn.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SuggestedCompaniesToFollow




  end # module Companies

  module Jobs



    ##############################################################################
    #
    # BookmarkAJob
    #
    # Bookmark a job listed on LinkedIn.
    #
    ##############################################################################

    class BookmarkAJob < Choreography

      ####
      #  Create a new instance of the BookmarkAJob Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LinkedIn/Jobs/BookmarkAJob")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return BookmarkAJobInputSet
      ####
      def new_input_set()
        return BookmarkAJobInputSet.new()
      end

      def make_result_set()
        return BookmarkAJobResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = BookmarkAJobResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the BookmarkAJob
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class BookmarkAJobInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # Set the value of the JobID input for this Choreo. 
        # 
        # @param Integer - (required, integer) Enter a LinkedIn job ID.
        ###

        def set_JobID(value)
          set_input("JobID", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the BookmarkAJob Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class BookmarkAJobResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LinkedIn. Note that for a successful request, an empty response body is returned.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class BookmarkAJob



    ##############################################################################
    #
    # DeleteJobBookmark
    #
    # Delete a job bookmark by specifying a job ID.
    #
    ##############################################################################

    class DeleteJobBookmark < Choreography

      ####
      #  Create a new instance of the DeleteJobBookmark Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LinkedIn/Jobs/DeleteJobBookmark")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteJobBookmarkInputSet
      ####
      def new_input_set()
        return DeleteJobBookmarkInputSet.new()
      end

      def make_result_set()
        return DeleteJobBookmarkResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteJobBookmarkResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteJobBookmark
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteJobBookmarkInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # Set the value of the JobID input for this Choreo. 
        # 
        # @param Integer - (required, integer) Enter a LinkedIn job ID.
        ###

        def set_JobID(value)
          set_input("JobID", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteJobBookmark Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteJobBookmarkResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LinkedIn. Note that for a successful request, an empty response body is returned.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteJobBookmark



    ##############################################################################
    #
    # GetBookmarkedJobs
    #
    # Retrieve a list of bookmarked jobs for the current user.
    #
    ##############################################################################

    class GetBookmarkedJobs < Choreography

      ####
      #  Create a new instance of the GetBookmarkedJobs Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LinkedIn/Jobs/GetBookmarkedJobs")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetBookmarkedJobsInputSet
      ####
      def new_input_set()
        return GetBookmarkedJobsInputSet.new()
      end

      def make_result_set()
        return GetBookmarkedJobsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetBookmarkedJobsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetBookmarkedJobs
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetBookmarkedJobsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetBookmarkedJobs Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetBookmarkedJobsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LinkedIn.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetBookmarkedJobs



    ##############################################################################
    #
    # GetJobs
    #
    # Retrieve a listed LinkedIn job.
    #
    ##############################################################################

    class GetJobs < Choreography

      ####
      #  Create a new instance of the GetJobs Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LinkedIn/Jobs/GetJobs")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetJobsInputSet
      ####
      def new_input_set()
        return GetJobsInputSet.new()
      end

      def make_result_set()
        return GetJobsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetJobsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetJobs
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetJobsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # Set the value of the JobID input for this Choreo. 
        # 
        # @param Integer - (required, integer) A LinkedIn assigned job ID.
        ###

        def set_JobID(value)
          set_input("JobID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetJobs Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetJobsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LinkedIn.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetJobs



    ##############################################################################
    #
    # GetSuggestedJobs
    #
    # Get a list of job suggestions for the current user.
    #
    ##############################################################################

    class GetSuggestedJobs < Choreography

      ####
      #  Create a new instance of the GetSuggestedJobs Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LinkedIn/Jobs/GetSuggestedJobs")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetSuggestedJobsInputSet
      ####
      def new_input_set()
        return GetSuggestedJobsInputSet.new()
      end

      def make_result_set()
        return GetSuggestedJobsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetSuggestedJobsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetSuggestedJobs
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetSuggestedJobsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetSuggestedJobs Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetSuggestedJobsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LinkedIn.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetSuggestedJobs



    ##############################################################################
    #
    # SearchJobsByJobTitle
    #
    # Retrieve jobs matching specified job title.
    #
    ##############################################################################

    class SearchJobsByJobTitle < Choreography

      ####
      #  Create a new instance of the SearchJobsByJobTitle Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LinkedIn/Jobs/SearchJobsByJobTitle")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchJobsByJobTitleInputSet
      ####
      def new_input_set()
        return SearchJobsByJobTitleInputSet.new()
      end

      def make_result_set()
        return SearchJobsByJobTitleResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = SearchJobsByJobTitleResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchJobsByJobTitle
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchJobsByJobTitleInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specify the number of jobs to be returned.  Default is 10.  The maximum is 20.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the JobTitle input for this Choreo. 
        # 
        # @param Integer - (required, integer) Search by job title.
        ###

        def set_JobTitle(value)
          set_input("JobTitle", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end
        #### 
        # Set the value of the Sort input for this Choreo. 
        # 
        # @param String - (optional, string) Specify the ordering of results. Enter R (for relationship from job to member); DA (dated posted in ascending order); DO (job posted in descending order).
        ###

        def set_Sort(value)
          set_input("Sort", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchJobsByJobTitle Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchJobsByJobTitleResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LinkedIn.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchJobsByJobTitle



    ##############################################################################
    #
    # SearchJobsByKeywords
    #
    # Retrieve jobs matching the specified keyword(s).
    #
    ##############################################################################

    class SearchJobsByKeywords < Choreography

      ####
      #  Create a new instance of the SearchJobsByKeywords Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LinkedIn/Jobs/SearchJobsByKeywords")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchJobsByKeywordsInputSet
      ####
      def new_input_set()
        return SearchJobsByKeywordsInputSet.new()
      end

      def make_result_set()
        return SearchJobsByKeywordsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = SearchJobsByKeywordsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchJobsByKeywords
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchJobsByKeywordsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specify the number of jobs to be returned.  Default is 10.  The maximum is 20.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the Keywords input for this Choreo. 
        # 
        # @param String - (required, string) Limit search by specified keyword(s).
        ###

        def set_Keywords(value)
          set_input("Keywords", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end
        #### 
        # Set the value of the Sort input for this Choreo. 
        # 
        # @param String - (optional, string) Specify the ordering of results. Enter R (for relationship from job to member); DA (dated posted in ascending order); DO (job posted in descending order).
        ###

        def set_Sort(value)
          set_input("Sort", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchJobsByKeywords Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchJobsByKeywordsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LinkedIn.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchJobsByKeywords



    ##############################################################################
    #
    # SearchJobsByZipcodeAndCountryCode
    #
    # Retrieve jobs filtered by zipcode (postal code) and country code.
    #
    ##############################################################################

    class SearchJobsByZipcodeAndCountryCode < Choreography

      ####
      #  Create a new instance of the SearchJobsByZipcodeAndCountryCode Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LinkedIn/Jobs/SearchJobsByZipcodeAndCountryCode")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchJobsByZipcodeAndCountryCodeInputSet
      ####
      def new_input_set()
        return SearchJobsByZipcodeAndCountryCodeInputSet.new()
      end

      def make_result_set()
        return SearchJobsByZipcodeAndCountryCodeResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = SearchJobsByZipcodeAndCountryCodeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchJobsByZipcodeAndCountryCode
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchJobsByZipcodeAndCountryCodeInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specify the number of jobs to be returned.  Default is 10.  The maximum is 20.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the CountryCode input for this Choreo. 
        # 
        # @param String - (optional, string) Enter an ISO 3166 country code.  Default is set to U.S. (US).
        ###

        def set_CountryCode(value)
          set_input("CountryCode", value)
        end
        #### 
        # Set the value of the PostalCode input for this Choreo. 
        # 
        # @param Integer - (required, integer) Enter a postal (zip) code.  Don't forget to also set the CountryCode variable.
        ###

        def set_PostalCode(value)
          set_input("PostalCode", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end
        #### 
        # Set the value of the Sort input for this Choreo. 
        # 
        # @param String - (optional, string) Specify the ordering of results. Enter R (for relationship from job to member); DA (dated posted in ascending order); DO (job posted in descending order).
        ###

        def set_Sort(value)
          set_input("Sort", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchJobsByZipcodeAndCountryCode Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchJobsByZipcodeAndCountryCodeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LinkedIn.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchJobsByZipcodeAndCountryCode




  end # module Jobs

  module OAuth



    ##############################################################################
    #
    # FinalizeOAuth
    #
    # Completes the OAuth process by retrieving a LinkedIn access token and access token secret for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
    #
    ##############################################################################

    class FinalizeOAuth < Choreography

      ####
      #  Create a new instance of the FinalizeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LinkedIn/OAuth/FinalizeOAuth")
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
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # Set the value of the OAuthTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The OAuthTokenSecret returned by the InitializeOAuth Choreo.
        ###

        def set_OAuthTokenSecret(value)
          set_input("OAuthTokenSecret", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
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
      	# Retrieve the value for the "Expires" output from this Choreo execution
      	#
      	# @return String - (integer) The expiration time in seconds of the access token retrieved.
      	####
      	def get_Expires()
      	  return @outputs["Expires"]
      	end
      	####
      	# Retrieve the value for the "AccessTokenSecret" output from this Choreo execution
      	#
      	# @return String - (string) The Access Token Secret retrieved during the OAuth process.
      	####
      	def get_AccessTokenSecret()
      	  return @outputs["AccessTokenSecret"]
      	end
      	####
      	# Retrieve the value for the "AccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The Access Token retrieved during the OAuth process.
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
    # Generates an authorization URL that an application can use to complete the first step in the OAuth process.
    #
    ##############################################################################

    class InitializeOAuth < Choreography

      ####
      #  Create a new instance of the InitializeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LinkedIn/OAuth/InitializeOAuth")
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
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # @param String - (optional, string) Used to specify a list of member permissions that you need. If blank, defaults to r_basicprofile. Specify multiple scopes by adding a space between different parameters. Ex: "r_fullprofile r_network".
        ###

        def set_Scope(value)
          set_input("Scope", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
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
      	# @return String - (string) The temporary OAuth Token Secret that can be exchanged for a final token secret using the FinalizeOAuth Choreo.
      	####
      	def get_OAuthTokenSecret()
      	  return @outputs["OAuthTokenSecret"]
      	end
      end

    end # class InitializeOAuth




  end # module OAuth

  module PeopleAndConnections



    ##############################################################################
    #
    # GetConnectionsByMemberID
    #
    # Retrieve all connections linked to a  member ID.
    #
    ##############################################################################

    class GetConnectionsByMemberID < Choreography

      ####
      #  Create a new instance of the GetConnectionsByMemberID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LinkedIn/PeopleAndConnections/GetConnectionsByMemberID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetConnectionsByMemberIDInputSet
      ####
      def new_input_set()
        return GetConnectionsByMemberIDInputSet.new()
      end

      def make_result_set()
        return GetConnectionsByMemberIDResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetConnectionsByMemberIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetConnectionsByMemberID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetConnectionsByMemberIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # Set the value of the MemberID input for this Choreo. 
        # 
        # @param Integer - (required, integer) Enter a LinkedIn Member ID.
        ###

        def set_MemberID(value)
          set_input("MemberID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetConnectionsByMemberID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetConnectionsByMemberIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LinkedIn.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetConnectionsByMemberID



    ##############################################################################
    #
    # GetMemberProfile
    #
    # Returns the standard default profile of the current user.
    #
    ##############################################################################

    class GetMemberProfile < Choreography

      ####
      #  Create a new instance of the GetMemberProfile Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LinkedIn/PeopleAndConnections/GetMemberProfile")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetMemberProfileInputSet
      ####
      def new_input_set()
        return GetMemberProfileInputSet.new()
      end

      def make_result_set()
        return GetMemberProfileResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetMemberProfileResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetMemberProfile
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetMemberProfileInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetMemberProfile Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetMemberProfileResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LinkedIn.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetMemberProfile



    ##############################################################################
    #
    # GetUserConnections
    #
    # Returns a list of connections associated with the profile of the current user.
    #
    ##############################################################################

    class GetUserConnections < Choreography

      ####
      #  Create a new instance of the GetUserConnections Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LinkedIn/PeopleAndConnections/GetUserConnections")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetUserConnectionsInputSet
      ####
      def new_input_set()
        return GetUserConnectionsInputSet.new()
      end

      def make_result_set()
        return GetUserConnectionsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetUserConnectionsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetUserConnections
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetUserConnectionsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetUserConnections Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetUserConnectionsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LinkedIn.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetUserConnections



    ##############################################################################
    #
    # SendMessage
    #
    # Sends a message to a connected member given the member's personID.
    #
    ##############################################################################

    class SendMessage < Choreography

      ####
      #  Create a new instance of the SendMessage Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LinkedIn/PeopleAndConnections/SendMessage")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SendMessageInputSet
      ####
      def new_input_set()
        return SendMessageInputSet.new()
      end

      def make_result_set()
        return SendMessageResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = SendMessageResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SendMessage
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SendMessageInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # Set the value of the Body input for this Choreo. 
        # 
        # @param String - (required, multiline) Message body. Cannot contain any HTML.
        ###

        def set_Body(value)
          set_input("Body", value)
        end
        #### 
        # Set the value of the Recipients input for this Choreo. 
        # 
        # @param String - (required, string) Comma-separated list of recipients by personID. For sending to 'self', put in a tilda (~). Ex.: "~",  "~,XtdrgWytGD".
        ###

        def set_Recipients(value)
          set_input("Recipients", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end
        #### 
        # Set the value of the Subject input for this Choreo. 
        # 
        # @param String - (required, string) Subject line of message.
        ###

        def set_Subject(value)
          set_input("Subject", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SendMessage Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SendMessageResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The Response Status Code from LinkedIn. For a successful message, the status code should be 201.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class SendMessage




  end # module PeopleAndConnections

  module ShareAndSocialStream



    ##############################################################################
    #
    # CreateShare
    #
    # Allows you to share content on behalf of a LinkedIn member.
    #
    ##############################################################################

    class CreateShare < Choreography

      ####
      #  Create a new instance of the CreateShare Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LinkedIn/ShareAndSocialStream/CreateShare")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateShareInputSet
      ####
      def new_input_set()
        return CreateShareInputSet.new()
      end

      def make_result_set()
        return CreateShareResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateShareResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateShare
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateShareInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # Set the value of the Comment input for this Choreo. 
        # 
        # @param String - (conditional, string) The text of the member's comment. Required unless providing Title and URL for a shared post.
        ###

        def set_Comment(value)
          set_input("Comment", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) A description of the shared content.
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the ImageURL input for this Choreo. 
        # 
        # @param String - (optional, string) The URL for the image of the shared content.
        ###

        def set_ImageURL(value)
          set_input("ImageURL", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (conditional, string) The title of the shared content. Required unless providing a Comment.
        ###

        def set_Title(value)
          set_input("Title", value)
        end
        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (conditional, string) The URL for the shared content. Required unless providing a Comment.
        ###

        def set_URL(value)
          set_input("URL", value)
        end
        #### 
        # Set the value of the Visibility input for this Choreo. 
        # 
        # @param String - (optional, string) Determines if the post will be visible to everyone, or only those who are connected to you. Valid values are: "anyone" or "connections-only" (the default).
        ###

        def set_Visibility(value)
          set_input("Visibility", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateShare Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateShareResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LinkedIn.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateShare



    ##############################################################################
    #
    # GetShare
    #
    # Retrieves a newly created shared item.
    #
    ##############################################################################

    class GetShare < Choreography

      ####
      #  Create a new instance of the GetShare Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LinkedIn/ShareAndSocialStream/GetShare")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetShareInputSet
      ####
      def new_input_set()
        return GetShareInputSet.new()
      end

      def make_result_set()
        return GetShareResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetShareResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetShare
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetShareInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end
        #### 
        # Set the value of the UpdateKey input for this Choreo. 
        # 
        # @param String - (required, string) The UpdateKey used to retrieve the share. This is returned by the CreateShare Choreo.
        ###

        def set_UpdateKey(value)
          set_input("UpdateKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetShare Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetShareResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from LinkedIn.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetShare




  end # module ShareAndSocialStream

end # module LinkedIn