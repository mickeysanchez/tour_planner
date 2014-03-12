require "temboo"

module LastFm




  module Album



    ##############################################################################
    #
    # AddTags
    #
    # Tags an album using a list of user supplied tags. 
    #
    ##############################################################################

    class AddTags < Choreography

      ####
      #  Create a new instance of the AddTags Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Album/AddTags")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddTagsInputSet
      ####
      def new_input_set()
        return AddTagsInputSet.new()
      end

      def make_result_set()
        return AddTagsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = AddTagsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddTags
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddTagsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Secret.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the Album input for this Choreo. 
        # 
        # @param String - (string) The album name.
        ###

        def set_Album(value)
          set_input("Album", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (string) The artist name.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the SessionKey input for this Choreo. 
        # 
        # @param String - (string) The session key retrieved in the last step of the authorization process.
        ###

        def set_SessionKey(value)
          set_input("SessionKey", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (string) A comma delimited list of user supplied tags to apply to this album. Accepts a maximum of 10 tags.
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddTags Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddTagsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddTags



    ##############################################################################
    #
    # GetBuyLinks
    #
    # Retrieves a list of Buy Links for a particular Album.
    #
    ##############################################################################

    class GetBuyLinks < Choreography

      ####
      #  Create a new instance of the GetBuyLinks Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Album/GetBuyLinks")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetBuyLinksInputSet
      ####
      def new_input_set()
        return GetBuyLinksInputSet.new()
      end

      def make_result_set()
        return GetBuyLinksResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetBuyLinksResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetBuyLinks
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetBuyLinksInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Album input for this Choreo. 
        # 
        # @param String - (conditional, string) The album name. Required unless providing MbID.
        ###

        def set_Album(value)
          set_input("Album", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (conditional, string) The artist name. Required unless providing MbID.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the AutoCorrect input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
        ###

        def set_AutoCorrect(value)
          set_input("AutoCorrect", value)
        end
        #### 
        # Set the value of the Country input for this Choreo. 
        # 
        # @param String - (optional, string) A country name, as defined by the ISO 3166-1 country names standard.
        ###

        def set_Country(value)
          set_input("Country", value)
        end
        #### 
        # Set the value of the MbID input for this Choreo. 
        # 
        # @param String - (conditional, string) The musicbrainz id for the album. Required unless providing the Album and Artist.
        ###

        def set_MbID(value)
          set_input("MbID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetBuyLinks Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetBuyLinksResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetBuyLinks



    ##############################################################################
    #
    # GetInfo
    #
    # Retrieves the metadata for an album on Last.fm using the album and artist name or a musicbrainz id.
    #
    ##############################################################################

    class GetInfo < Choreography

      ####
      #  Create a new instance of the GetInfo Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Album/GetInfo")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetInfoInputSet
      ####
      def new_input_set()
        return GetInfoInputSet.new()
      end

      def make_result_set()
        return GetInfoResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetInfoResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetInfo
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetInfoInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Album input for this Choreo. 
        # 
        # @param String - (conditional, string) The album name. Required unless providing MbID.
        ###

        def set_Album(value)
          set_input("Album", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (conditional, string) The artist name. Required unless providing MbID.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the AutoCorrect input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
        ###

        def set_AutoCorrect(value)
          set_input("AutoCorrect", value)
        end
        #### 
        # Set the value of the Language input for this Choreo. 
        # 
        # @param String - (optional, string) The language to return the biography in, expressed as an ISO 639 alpha-2 code.
        ###

        def set_Language(value)
          set_input("Language", value)
        end
        #### 
        # Set the value of the MbID input for this Choreo. 
        # 
        # @param String - (conditional, string) The musicbrainz id for the album. Required unless providing the Album and Artist.
        ###

        def set_MbID(value)
          set_input("MbID", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (optional, string) The username for the context of the request. If supplied, the user's playcount for this album is included in the response.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetInfo Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetInfoResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetInfo



    ##############################################################################
    #
    # GetShouts
    #
    # Retrieves a list of shouts for a specified album.
    #
    ##############################################################################

    class GetShouts < Choreography

      ####
      #  Create a new instance of the GetShouts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Album/GetShouts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetShoutsInputSet
      ####
      def new_input_set()
        return GetShoutsInputSet.new()
      end

      def make_result_set()
        return GetShoutsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetShoutsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetShouts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetShoutsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Album input for this Choreo. 
        # 
        # @param String - (conditional, string) The album title. Required unless providing MbID.
        ###

        def set_Album(value)
          set_input("Album", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (conditional, string) The artist name. Required unless providing MbID.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the AutoCorrect input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
        ###

        def set_AutoCorrect(value)
          set_input("AutoCorrect", value)
        end
        #### 
        # Set the value of the MbID input for this Choreo. 
        # 
        # @param String - (conditional, string) The musicbrainz id for the album. Required unless providing the Album and Artist.
        ###

        def set_MbID(value)
          set_input("MbID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to fetch. Defaults to first page.
        ###

        def set_Page(value)
          set_input("Page", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetShouts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetShoutsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetShouts



    ##############################################################################
    #
    # GetTags
    #
    # Retrieves the tags applied by an individual user to an album on Last.fm.
    #
    ##############################################################################

    class GetTags < Choreography

      ####
      #  Create a new instance of the GetTags Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Album/GetTags")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTagsInputSet
      ####
      def new_input_set()
        return GetTagsInputSet.new()
      end

      def make_result_set()
        return GetTagsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetTagsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTags
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTagsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Album input for this Choreo. 
        # 
        # @param String - (conditional, string) The album name. Required unless providing MbID.
        ###

        def set_Album(value)
          set_input("Album", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (conditional, string) The artist name. Required unless providing MbID.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the AutoCorrect input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
        ###

        def set_AutoCorrect(value)
          set_input("AutoCorrect", value)
        end
        #### 
        # Set the value of the MbID input for this Choreo. 
        # 
        # @param String - (conditional, string) The musicbrainz id for the album. Required unless providing the Album and Artist.
        ###

        def set_MbID(value)
          set_input("MbID", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (required, string) The last.fm username to lookup.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTags Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTagsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTags



    ##############################################################################
    #
    # GetTopTags
    #
    # Retrieves a list of the top tags for an album on Last.fm, ordered by popularity. 
    #
    ##############################################################################

    class GetTopTags < Choreography

      ####
      #  Create a new instance of the GetTopTags Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Album/GetTopTags")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTopTagsInputSet
      ####
      def new_input_set()
        return GetTopTagsInputSet.new()
      end

      def make_result_set()
        return GetTopTagsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetTopTagsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTopTags
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTopTagsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Album input for this Choreo. 
        # 
        # @param String - (conditional, string) The album name. Required unless providing MbID.
        ###

        def set_Album(value)
          set_input("Album", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (conditional, string) The artist name. Required unless providing MbID.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the AutoCorrect input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
        ###

        def set_AutoCorrect(value)
          set_input("AutoCorrect", value)
        end
        #### 
        # Set the value of the MbID input for this Choreo. 
        # 
        # @param String - (conditional, string) The musicbrainz id for the album. Required unless providing the Album and Artist.
        ###

        def set_MbID(value)
          set_input("MbID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTopTags Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTopTagsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTopTags



    ##############################################################################
    #
    # RemoveTag
    #
    # Removes a user's tag from a specified album.
    #
    ##############################################################################

    class RemoveTag < Choreography

      ####
      #  Create a new instance of the RemoveTag Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Album/RemoveTag")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RemoveTagInputSet
      ####
      def new_input_set()
        return RemoveTagInputSet.new()
      end

      def make_result_set()
        return RemoveTagResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RemoveTagResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RemoveTag
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RemoveTagInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Secret.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the Album input for this Choreo. 
        # 
        # @param String - (string) The album name.
        ###

        def set_Album(value)
          set_input("Album", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (string) The artist name.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the SessionKey input for this Choreo. 
        # 
        # @param String - (string) The session key retrieved in the last step of the authorization process.
        ###

        def set_SessionKey(value)
          set_input("SessionKey", value)
        end
        #### 
        # Set the value of the Tag input for this Choreo. 
        # 
        # @param String - (string) A single user tag to remove from this album.
        ###

        def set_Tag(value)
          set_input("Tag", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RemoveTag Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RemoveTagResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RemoveTag



    ##############################################################################
    #
    # Search
    #
    # Searches for an album by name. Returns album matches sorted by relevance.
    #
    ##############################################################################

    class Search < Choreography

      ####
      #  Create a new instance of the Search Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Album/Search")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchInputSet
      ####
      def new_input_set()
        return SearchInputSet.new()
      end

      def make_result_set()
        return SearchResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = SearchResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Search
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Album input for this Choreo. 
        # 
        # @param String - (string) The album name.
        ###

        def set_Album(value)
          set_input("Album", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 30.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to fetch. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Search Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Search



    ##############################################################################
    #
    # Share
    #
    # Allows you to share an album with one or more Last.fm users or other friends.
    #
    ##############################################################################

    class Share < Choreography

      ####
      #  Create a new instance of the Share Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Album/Share")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ShareInputSet
      ####
      def new_input_set()
        return ShareInputSet.new()
      end

      def make_result_set()
        return ShareResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ShareResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Share
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ShareInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Secret.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the Album input for this Choreo. 
        # 
        # @param String - (string) The album name.
        ###

        def set_Album(value)
          set_input("Album", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (string) The artist name.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the Message input for this Choreo. 
        # 
        # @param String - (optional, string) An optional message to send with the recommendation. If not supplied a default message will be used.
        ###

        def set_Message(value)
          set_input("Message", value)
        end
        #### 
        # Set the value of the Public input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Optionally show in the sharing users activity feed. Defaults to 0 (false).
        ###

        def set_Public(value)
          set_input("Public", value)
        end
        #### 
        # Set the value of the Recipient input for this Choreo. 
        # 
        # @param String - (string) A comma delimited list of email addresses or Last.fm usernames. Maximum is 10.
        ###

        def set_Recipient(value)
          set_input("Recipient", value)
        end
        #### 
        # Set the value of the SessionKey input for this Choreo. 
        # 
        # @param String - (string) The session key retrieved in the last step of the authorization process.
        ###

        def set_SessionKey(value)
          set_input("SessionKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Share Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ShareResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Share




  end # module Album

  module Artist



    ##############################################################################
    #
    # AddTags
    #
    # Tags an artist with one or more user supplied tags. 
    #
    ##############################################################################

    class AddTags < Choreography

      ####
      #  Create a new instance of the AddTags Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Artist/AddTags")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddTagsInputSet
      ####
      def new_input_set()
        return AddTagsInputSet.new()
      end

      def make_result_set()
        return AddTagsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = AddTagsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddTags
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddTagsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Secret.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (string) The artist name.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the SessionKey input for this Choreo. 
        # 
        # @param String - (string) The session key retrieved in the last step of the authorization process.
        ###

        def set_SessionKey(value)
          set_input("SessionKey", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (string) A comma delimited list of user supplied tags to apply to this artist. Accepts a maximum of 10 tags.
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddTags Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddTagsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddTags



    ##############################################################################
    #
    # GetCorrection
    #
    # Allows you to check whether the supplied artist has a correction to a canonical artist.
    #
    ##############################################################################

    class GetCorrection < Choreography

      ####
      #  Create a new instance of the GetCorrection Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Artist/GetCorrection")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCorrectionInputSet
      ####
      def new_input_set()
        return GetCorrectionInputSet.new()
      end

      def make_result_set()
        return GetCorrectionResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetCorrectionResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCorrection
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCorrectionInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (string) The artist name to correct.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCorrection Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCorrectionResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCorrection



    ##############################################################################
    #
    # GetEvents
    #
    # Retrieves a list of upcoming events for this artist.
    #
    ##############################################################################

    class GetEvents < Choreography

      ####
      #  Create a new instance of the GetEvents Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Artist/GetEvents")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetEventsInputSet
      ####
      def new_input_set()
        return GetEventsInputSet.new()
      end

      def make_result_set()
        return GetEventsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetEventsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetEvents
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetEventsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (conditional, string) The artist name. Required unless providing MbID.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the AutoCorrect input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
        ###

        def set_AutoCorrect(value)
          set_input("AutoCorrect", value)
        end
        #### 
        # Set the value of the FestivalsOnly input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Whether only festivals should be returned, or all events. Defaults to 0 (false).
        ###

        def set_FestivalsOnly(value)
          set_input("FestivalsOnly", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the MbID input for this Choreo. 
        # 
        # @param String - (conditional, string) The musicbrainz id for the artist. Required unless providing Artist.
        ###

        def set_MbID(value)
          set_input("MbID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to fetch. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetEvents Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetEventsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetEvents



    ##############################################################################
    #
    # GetImages
    #
    # Retrieves a list of images for a specified artist in a variety of sizes. 
    #
    ##############################################################################

    class GetImages < Choreography

      ####
      #  Create a new instance of the GetImages Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Artist/GetImages")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetImagesInputSet
      ####
      def new_input_set()
        return GetImagesInputSet.new()
      end

      def make_result_set()
        return GetImagesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetImagesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetImages
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetImagesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (conditional, string) The artist name. Required unless providing MbID.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the AutoCorrect input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
        ###

        def set_AutoCorrect(value)
          set_input("AutoCorrect", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the MbID input for this Choreo. 
        # 
        # @param String - (optional, string) The musicbrainz id for the artist. Required unless providing Artist.
        ###

        def set_MbID(value)
          set_input("MbID", value)
        end
        #### 
        # Set the value of the Order input for this Choreo. 
        # 
        # @param String - (optional, string) Sort ordering can be either 'popularity' (default) or 'dateadded'.
        ###

        def set_Order(value)
          set_input("Order", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetImages Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetImagesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetImages



    ##############################################################################
    #
    # GetInfo
    #
    # Retrieves the metadata for an artist including biographical data.
    #
    ##############################################################################

    class GetInfo < Choreography

      ####
      #  Create a new instance of the GetInfo Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Artist/GetInfo")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetInfoInputSet
      ####
      def new_input_set()
        return GetInfoInputSet.new()
      end

      def make_result_set()
        return GetInfoResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetInfoResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetInfo
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetInfoInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (conditional, string) The artist name. Required unless providing MbID.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the AutoCorrect input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
        ###

        def set_AutoCorrect(value)
          set_input("AutoCorrect", value)
        end
        #### 
        # Set the value of the Language input for this Choreo. 
        # 
        # @param String - (optional, string) The language to return the biography in, expressed as an ISO 639 alpha-2 code.
        ###

        def set_Language(value)
          set_input("Language", value)
        end
        #### 
        # Set the value of the MbID input for this Choreo. 
        # 
        # @param String - (conditional, string) The musicbrainz id for the artist. Required unless providing Artist.
        ###

        def set_MbID(value)
          set_input("MbID", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (optional, string) The username for the context of the request. If supplied, the user's playcount for this artist is included in the response.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetInfo Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetInfoResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetInfo



    ##############################################################################
    #
    # GetPastEvents
    #
    # Retrieves a paginated list of all the events this artist has played at in the past.
    #
    ##############################################################################

    class GetPastEvents < Choreography

      ####
      #  Create a new instance of the GetPastEvents Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Artist/GetPastEvents")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetPastEventsInputSet
      ####
      def new_input_set()
        return GetPastEventsInputSet.new()
      end

      def make_result_set()
        return GetPastEventsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetPastEventsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetPastEvents
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetPastEventsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (conditional, string) The artist name. Required unless providing MbID.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the AutoCorrect input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
        ###

        def set_AutoCorrect(value)
          set_input("AutoCorrect", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the MbID input for this Choreo. 
        # 
        # @param String - (optional, string) The musicbrainz id for the artist. Required unless providing Artist.
        ###

        def set_MbID(value)
          set_input("MbID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetPastEvents Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetPastEventsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetPastEvents



    ##############################################################################
    #
    # GetPodcast
    #
    # Retrieves a podcast of free mp3s based on a specified artist.
    #
    ##############################################################################

    class GetPodcast < Choreography

      ####
      #  Create a new instance of the GetPodcast Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Artist/GetPodcast")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetPodcastInputSet
      ####
      def new_input_set()
        return GetPodcastInputSet.new()
      end

      def make_result_set()
        return GetPodcastResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetPodcastResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetPodcast
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetPodcastInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (conditional, string) The artist name. Required unless providing MbID.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the AutoCorrect input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
        ###

        def set_AutoCorrect(value)
          set_input("AutoCorrect", value)
        end
        #### 
        # Set the value of the MbID input for this Choreo. 
        # 
        # @param String - (optional, string) The musicbrainz id for the artist. Required unless providing Artist.
        ###

        def set_MbID(value)
          set_input("MbID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetPodcast Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetPodcastResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetPodcast



    ##############################################################################
    #
    # GetShouts
    #
    # Retrieves a list of shouts for a specified artist.
    #
    ##############################################################################

    class GetShouts < Choreography

      ####
      #  Create a new instance of the GetShouts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Artist/GetShouts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetShoutsInputSet
      ####
      def new_input_set()
        return GetShoutsInputSet.new()
      end

      def make_result_set()
        return GetShoutsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetShoutsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetShouts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetShoutsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (conditional, string) The artist name. Required unless providing MbID.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the AutoCorrect input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
        ###

        def set_AutoCorrect(value)
          set_input("AutoCorrect", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the MbID input for this Choreo. 
        # 
        # @param String - (conditional, string) The musicbrainz id for the artist. Required unless providing Artist.
        ###

        def set_MbID(value)
          set_input("MbID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to fetch. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetShouts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetShoutsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetShouts



    ##############################################################################
    #
    # GetSimilar
    #
    # Retrieves a list of all the artists similar to the specified artist.
    #
    ##############################################################################

    class GetSimilar < Choreography

      ####
      #  Create a new instance of the GetSimilar Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Artist/GetSimilar")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetSimilarInputSet
      ####
      def new_input_set()
        return GetSimilarInputSet.new()
      end

      def make_result_set()
        return GetSimilarResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetSimilarResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetSimilar
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetSimilarInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (conditional, string) The artist name. Required unless providing MbID.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the AutoCorrect input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
        ###

        def set_AutoCorrect(value)
          set_input("AutoCorrect", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the MbID input for this Choreo. 
        # 
        # @param String - (conditional, string) The musicbrainz id for the artist. Required unless providing Artist.
        ###

        def set_MbID(value)
          set_input("MbID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetSimilar Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetSimilarResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetSimilar



    ##############################################################################
    #
    # GetTags
    #
    # Retrieves the tags applied by an individual user to an artist on Last.fm.
    #
    ##############################################################################

    class GetTags < Choreography

      ####
      #  Create a new instance of the GetTags Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Artist/GetTags")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTagsInputSet
      ####
      def new_input_set()
        return GetTagsInputSet.new()
      end

      def make_result_set()
        return GetTagsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetTagsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTags
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTagsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (conditional, string) The artist name. Required unless providing MbID.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the AutoCorrect input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
        ###

        def set_AutoCorrect(value)
          set_input("AutoCorrect", value)
        end
        #### 
        # Set the value of the MbID input for this Choreo. 
        # 
        # @param String - (conditional, string) The musicbrainz id for the artist. Required unless providing Artist.
        ###

        def set_MbID(value)
          set_input("MbID", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (required, string) The last.fm username to use for the lookup.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTags Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTagsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTags



    ##############################################################################
    #
    # GetTopAlbums
    #
    # Retrieves the top albums for an artist on Last.fm, ordered by popularity.
    #
    ##############################################################################

    class GetTopAlbums < Choreography

      ####
      #  Create a new instance of the GetTopAlbums Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Artist/GetTopAlbums")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTopAlbumsInputSet
      ####
      def new_input_set()
        return GetTopAlbumsInputSet.new()
      end

      def make_result_set()
        return GetTopAlbumsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetTopAlbumsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTopAlbums
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTopAlbumsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (conditional, string) The artist name. Required unless providing MbID.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the AutoCorrect input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
        ###

        def set_AutoCorrect(value)
          set_input("AutoCorrect", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the MbID input for this Choreo. 
        # 
        # @param String - (conditional, string) The musicbrainz id for the artist. Required unless providing Artist.
        ###

        def set_MbID(value)
          set_input("MbID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTopAlbums Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTopAlbumsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTopAlbums



    ##############################################################################
    #
    # GetTopFans
    #
    # Retrieves the top fans for an artist on Last.fm, based on listening data.
    #
    ##############################################################################

    class GetTopFans < Choreography

      ####
      #  Create a new instance of the GetTopFans Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Artist/GetTopFans")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTopFansInputSet
      ####
      def new_input_set()
        return GetTopFansInputSet.new()
      end

      def make_result_set()
        return GetTopFansResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetTopFansResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTopFans
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTopFansInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (conditional, string) The artist name. Required unless providing MbID.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the AutoCorrect input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
        ###

        def set_AutoCorrect(value)
          set_input("AutoCorrect", value)
        end
        #### 
        # Set the value of the MbID input for this Choreo. 
        # 
        # @param String - (conditional, string) The musicbrainz id for the artist. Required unless providing Artist.
        ###

        def set_MbID(value)
          set_input("MbID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTopFans Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTopFansResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTopFans



    ##############################################################################
    #
    # GetTopTags
    #
    # Retrieves the top tags for an artist on Last.fm, ordered by popularity.
    #
    ##############################################################################

    class GetTopTags < Choreography

      ####
      #  Create a new instance of the GetTopTags Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Artist/GetTopTags")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTopTagsInputSet
      ####
      def new_input_set()
        return GetTopTagsInputSet.new()
      end

      def make_result_set()
        return GetTopTagsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetTopTagsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTopTags
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTopTagsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (conditional, string) The artist name. Required unless providing MbID.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the AutoCorrect input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
        ###

        def set_AutoCorrect(value)
          set_input("AutoCorrect", value)
        end
        #### 
        # Set the value of the MbID input for this Choreo. 
        # 
        # @param String - (conditional, string) The musicbrainz id for the artist. Required unless providing Artist.
        ###

        def set_MbID(value)
          set_input("MbID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTopTags Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTopTagsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTopTags



    ##############################################################################
    #
    # GetTopTracks
    #
    # Retrieves the top tracks by an artist on Last.fm, ordered by popularity.
    #
    ##############################################################################

    class GetTopTracks < Choreography

      ####
      #  Create a new instance of the GetTopTracks Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Artist/GetTopTracks")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTopTracksInputSet
      ####
      def new_input_set()
        return GetTopTracksInputSet.new()
      end

      def make_result_set()
        return GetTopTracksResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetTopTracksResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTopTracks
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTopTracksInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (conditional, string) The artist name. Required unless providing MbID.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the AutoCorrect input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
        ###

        def set_AutoCorrect(value)
          set_input("AutoCorrect", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the MbID input for this Choreo. 
        # 
        # @param String - (conditional, string) The musicbrainz id for the artist. Required unless providing Artist.
        ###

        def set_MbID(value)
          set_input("MbID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to fetch. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTopTracks Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTopTracksResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTopTracks



    ##############################################################################
    #
    # RemoveTag
    #
    # Removes a user's tag from an artist.
    #
    ##############################################################################

    class RemoveTag < Choreography

      ####
      #  Create a new instance of the RemoveTag Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Artist/RemoveTag")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RemoveTagInputSet
      ####
      def new_input_set()
        return RemoveTagInputSet.new()
      end

      def make_result_set()
        return RemoveTagResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RemoveTagResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RemoveTag
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RemoveTagInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Secret.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (string) The artist name.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the SessionKey input for this Choreo. 
        # 
        # @param String - (string) The session key retrieved in the last step of the authorization process.
        ###

        def set_SessionKey(value)
          set_input("SessionKey", value)
        end
        #### 
        # Set the value of the Tag input for this Choreo. 
        # 
        # @param String - (string) A single user tag to remove from this artist.
        ###

        def set_Tag(value)
          set_input("Tag", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RemoveTag Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RemoveTagResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RemoveTag



    ##############################################################################
    #
    # Search
    #
    # Searches for an artist by name. Returns artist matches sorted by relevance.
    #
    ##############################################################################

    class Search < Choreography

      ####
      #  Create a new instance of the Search Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Artist/Search")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchInputSet
      ####
      def new_input_set()
        return SearchInputSet.new()
      end

      def make_result_set()
        return SearchResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = SearchResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Search
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (string) The artist name.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 30.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to fetch. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Search Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Search



    ##############################################################################
    #
    # Share
    #
    # Allows you to share an artist with Last.fm users or other friends.
    #
    ##############################################################################

    class Share < Choreography

      ####
      #  Create a new instance of the Share Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Artist/Share")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ShareInputSet
      ####
      def new_input_set()
        return ShareInputSet.new()
      end

      def make_result_set()
        return ShareResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ShareResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Share
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ShareInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Secret.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (string) The artist name.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the Message input for this Choreo. 
        # 
        # @param String - (optional, string) An optional message to send with the recommendation. If not supplied a default message will be used.
        ###

        def set_Message(value)
          set_input("Message", value)
        end
        #### 
        # Set the value of the Public input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Optionally show in the sharing users activity feed. Defaults to 0 (false).
        ###

        def set_Public(value)
          set_input("Public", value)
        end
        #### 
        # Set the value of the Recipient input for this Choreo. 
        # 
        # @param String - (string) A comma delimited list of email addresses or Last.fm usernames. Maximum is 10.
        ###

        def set_Recipient(value)
          set_input("Recipient", value)
        end
        #### 
        # Set the value of the SessionKey input for this Choreo. 
        # 
        # @param String - (string) The session key retrieved in the last step of the authorization process.
        ###

        def set_SessionKey(value)
          set_input("SessionKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Share Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ShareResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Share



    ##############################################################################
    #
    # Shout
    #
    # Creates a message in an artist's shoutbox.
    #
    ##############################################################################

    class Shout < Choreography

      ####
      #  Create a new instance of the Shout Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Artist/Shout")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ShoutInputSet
      ####
      def new_input_set()
        return ShoutInputSet.new()
      end

      def make_result_set()
        return ShoutResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ShoutResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Shout
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ShoutInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Secret.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (string) The artist name.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the Message input for this Choreo. 
        # 
        # @param String - (optional, string) An optional message to send with the recommendation. If not supplied a default message will be used.
        ###

        def set_Message(value)
          set_input("Message", value)
        end
        #### 
        # Set the value of the SessionKey input for this Choreo. 
        # 
        # @param String - (string) The session key retrieved in the last step of the authorization process.
        ###

        def set_SessionKey(value)
          set_input("SessionKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Shout Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ShoutResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Shout




  end # module Artist

  module Tasteometer



    ##############################################################################
    #
    # CompareArtists
    #
    # Retrieves a Tasteometer score from two artist inputs.
    #
    ##############################################################################

    class CompareArtists < Choreography

      ####
      #  Create a new instance of the CompareArtists Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Tasteometer/CompareArtists")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CompareArtistsInputSet
      ####
      def new_input_set()
        return CompareArtistsInputSet.new()
      end

      def make_result_set()
        return CompareArtistsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CompareArtistsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CompareArtists
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CompareArtistsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Artist1 input for this Choreo. 
        # 
        # @param String - (string) The first artist to compare.
        ###

        def set_Artist1(value)
          set_input("Artist1", value)
        end
        #### 
        # Set the value of the Artist2 input for this Choreo. 
        # 
        # @param String - (string) The second artist to compare.
        ###

        def set_Artist2(value)
          set_input("Artist2", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) How many shared artists to display. Defaults to 5.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CompareArtists Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CompareArtistsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CompareArtists



    ##############################################################################
    #
    # CompareUsers
    #
    # Retrieves a Tasteometer score from two user inputs, along with a list of shared artists.
    #
    ##############################################################################

    class CompareUsers < Choreography

      ####
      #  Create a new instance of the CompareUsers Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/Tasteometer/CompareUsers")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CompareUsersInputSet
      ####
      def new_input_set()
        return CompareUsersInputSet.new()
      end

      def make_result_set()
        return CompareUsersResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CompareUsersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CompareUsers
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CompareUsersInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) How many shared artists to display. Defaults to 5.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the User1 input for this Choreo. 
        # 
        # @param String - (string) The first user to compare.
        ###

        def set_User1(value)
          set_input("User1", value)
        end
        #### 
        # Set the value of the User2 input for this Choreo. 
        # 
        # @param String - (string) The second user to compare.
        ###

        def set_User2(value)
          set_input("User2", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CompareUsers Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CompareUsersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CompareUsers




  end # module Tasteometer

  module User



    ##############################################################################
    #
    # GetArtistTracks
    #
    # Retrieves a list of tracks by a given artist scrobbled by this user, including scrobble time.
    #
    ##############################################################################

    class GetArtistTracks < Choreography

      ####
      #  Create a new instance of the GetArtistTracks Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetArtistTracks")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetArtistTracksInputSet
      ####
      def new_input_set()
        return GetArtistTracksInputSet.new()
      end

      def make_result_set()
        return GetArtistTracksResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetArtistTracksResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetArtistTracks
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetArtistTracksInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Artist input for this Choreo. 
        # 
        # @param String - (required, string) The artist name you are interested in.
        ###

        def set_Artist(value)
          set_input("Artist", value)
        end
        #### 
        # Set the value of the EndTimestamp input for this Choreo. 
        # 
        # @param String - (optional, date) A unix timestamp to end at.
        ###

        def set_EndTimestamp(value)
          set_input("EndTimestamp", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to fetch. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the StartTimestamp input for this Choreo. 
        # 
        # @param String - (optional, date) A unix timestamp to start at.
        ###

        def set_StartTimestamp(value)
          set_input("StartTimestamp", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (required, string) The last.fm username to fetch the recent tracks of.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetArtistTracks Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetArtistTracksResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetArtistTracks



    ##############################################################################
    #
    # GetBannedTracks
    #
    # Retrieves a list of the tracks banned by a particular user.
    #
    ##############################################################################

    class GetBannedTracks < Choreography

      ####
      #  Create a new instance of the GetBannedTracks Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetBannedTracks")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetBannedTracksInputSet
      ####
      def new_input_set()
        return GetBannedTracksInputSet.new()
      end

      def make_result_set()
        return GetBannedTracksResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetBannedTracksResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetBannedTracks
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetBannedTracksInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to fetch. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (string) The user name associated with the banned tracks you want to retrieve.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetBannedTracks Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetBannedTracksResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetBannedTracks



    ##############################################################################
    #
    # GetEvents
    #
    # Retrieves a list of upcoming events that a user is attending.
    #
    ##############################################################################

    class GetEvents < Choreography

      ####
      #  Create a new instance of the GetEvents Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetEvents")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetEventsInputSet
      ####
      def new_input_set()
        return GetEventsInputSet.new()
      end

      def make_result_set()
        return GetEventsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetEventsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetEvents
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetEventsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the FestivalsOnly input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Whether only festivals should be returned, or all events. Defaults to 0 to return all events.
        ###

        def set_FestivalsOnly(value)
          set_input("FestivalsOnly", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to fetch. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (string) The user to fetch the events for.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetEvents Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetEventsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetEvents



    ##############################################################################
    #
    # GetFriends
    #
    # Retrieves a list of the user's friends on Last.fm.
    #
    ##############################################################################

    class GetFriends < Choreography

      ####
      #  Create a new instance of the GetFriends Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetFriends")
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
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to fetch. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the RecentTracks input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Whether or not to include information about friends' recent listening in the response. Defaults to 0 for false.
        ###

        def set_RecentTracks(value)
          set_input("RecentTracks", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (string) The last.fm username to fetch the friends of.
        ###

        def set_User(value)
          set_input("User", value)
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
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetFriends



    ##############################################################################
    #
    # GetInfo
    #
    # Get information about a user profile.
    #
    ##############################################################################

    class GetInfo < Choreography

      ####
      #  Create a new instance of the GetInfo Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetInfo")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetInfoInputSet
      ####
      def new_input_set()
        return GetInfoInputSet.new()
      end

      def make_result_set()
        return GetInfoResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetInfoResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetInfo
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetInfoInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (required, string) The user to fetch info for.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetInfo Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetInfoResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetInfo



    ##############################################################################
    #
    # GetLovedTracks
    #
    # Retrieves a list of the last 50 tracks loved by a user.
    #
    ##############################################################################

    class GetLovedTracks < Choreography

      ####
      #  Create a new instance of the GetLovedTracks Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetLovedTracks")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetLovedTracksInputSet
      ####
      def new_input_set()
        return GetLovedTracksInputSet.new()
      end

      def make_result_set()
        return GetLovedTracksResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetLovedTracksResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLovedTracks
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetLovedTracksInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to fetch. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (string) The user name to fetch the loved tracks for.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLovedTracks Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetLovedTracksResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetLovedTracks



    ##############################################################################
    #
    # GetNeighbours
    #
    # Retrieves a list of a user's neighbours on Last.fm. 
    #
    ##############################################################################

    class GetNeighbours < Choreography

      ####
      #  Create a new instance of the GetNeighbours Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetNeighbours")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetNeighboursInputSet
      ####
      def new_input_set()
        return GetNeighboursInputSet.new()
      end

      def make_result_set()
        return GetNeighboursResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetNeighboursResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetNeighbours
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetNeighboursInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (string) The last.fm username to fetch the neighbours of.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetNeighbours Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetNeighboursResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetNeighbours



    ##############################################################################
    #
    # GetNewReleases
    #
    # Retrieves a list of forthcoming releases based on a user's musical taste. 
    #
    ##############################################################################

    class GetNewReleases < Choreography

      ####
      #  Create a new instance of the GetNewReleases Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetNewReleases")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetNewReleasesInputSet
      ####
      def new_input_set()
        return GetNewReleasesInputSet.new()
      end

      def make_result_set()
        return GetNewReleasesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetNewReleasesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetNewReleases
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetNewReleasesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the UserRecommendations input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) If 1, the feed contains new releases based on Last.fm's artist recommendations for this user. Otherwise, it is based on their library.
        ###

        def set_UserRecommendations(value)
          set_input("UserRecommendations", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (string) The Last.fm username.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetNewReleases Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetNewReleasesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetNewReleases



    ##############################################################################
    #
    # GetPastEvents
    #
    # Retrieves a paginated list of all events a user has attended in the past. 
    #
    ##############################################################################

    class GetPastEvents < Choreography

      ####
      #  Create a new instance of the GetPastEvents Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetPastEvents")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetPastEventsInputSet
      ####
      def new_input_set()
        return GetPastEventsInputSet.new()
      end

      def make_result_set()
        return GetPastEventsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetPastEventsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetPastEvents
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetPastEventsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to fetch. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (string) The username to fetch the events for.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetPastEvents Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetPastEventsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetPastEvents



    ##############################################################################
    #
    # GetPersonalTags
    #
    # Retrieves a user's personal tags.
    #
    ##############################################################################

    class GetPersonalTags < Choreography

      ####
      #  Create a new instance of the GetPersonalTags Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetPersonalTags")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetPersonalTagsInputSet
      ####
      def new_input_set()
        return GetPersonalTagsInputSet.new()
      end

      def make_result_set()
        return GetPersonalTagsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetPersonalTagsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetPersonalTags
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetPersonalTagsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to fetch. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Tag input for this Choreo. 
        # 
        # @param String - (string) The tag you're interested in.
        ###

        def set_Tag(value)
          set_input("Tag", value)
        end
        #### 
        # Set the value of the TaggingType input for this Choreo. 
        # 
        # @param String - (string) The type of items which have been tagged. Valid values are: artist, album, track.
        ###

        def set_TaggingType(value)
          set_input("TaggingType", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (string) The user who performed the taggings.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetPersonalTags Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetPersonalTagsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetPersonalTags



    ##############################################################################
    #
    # GetPlaylists
    #
    # Retrieves a list of a user's playlists on Last.fm. 
    #
    ##############################################################################

    class GetPlaylists < Choreography

      ####
      #  Create a new instance of the GetPlaylists Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetPlaylists")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetPlaylistsInputSet
      ####
      def new_input_set()
        return GetPlaylistsInputSet.new()
      end

      def make_result_set()
        return GetPlaylistsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetPlaylistsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetPlaylists
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetPlaylistsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (required, string) The last.fm username to fetch the playlists of.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetPlaylists Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetPlaylistsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetPlaylists



    ##############################################################################
    #
    # GetRecentStations
    #
    # Retrieves a list of the recent Stations listened to by this user.
    #
    ##############################################################################

    class GetRecentStations < Choreography

      ####
      #  Create a new instance of the GetRecentStations Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetRecentStations")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetRecentStationsInputSet
      ####
      def new_input_set()
        return GetRecentStationsInputSet.new()
      end

      def make_result_set()
        return GetRecentStationsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetRecentStationsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetRecentStations
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetRecentStationsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Secret.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 10. Maximum is 25.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to fetch. Defaults to first page.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the SessionKey input for this Choreo. 
        # 
        # @param String - (required, string) The session key retrieved in the last step of the authorization process.
        ###

        def set_SessionKey(value)
          set_input("SessionKey", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (required, string) The last.fm username to fetch the recent Stations of.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetRecentStations Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetRecentStationsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetRecentStations



    ##############################################################################
    #
    # GetRecentTracks
    #
    # Get a list of the recent tracks listened to by this user.
    #
    ##############################################################################

    class GetRecentTracks < Choreography

      ####
      #  Create a new instance of the GetRecentTracks Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetRecentTracks")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetRecentTracksInputSet
      ####
      def new_input_set()
        return GetRecentTracksInputSet.new()
      end

      def make_result_set()
        return GetRecentTracksResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetRecentTracksResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetRecentTracks
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetRecentTracksInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the EndTimestamp input for this Choreo. 
        # 
        # @param String - (optional, date) End timestamp of a range - only display scrobbles before this time, in UNIX timestamp format. This must be in the UTC time zone.
        ###

        def set_EndTimestamp(value)
          set_input("EndTimestamp", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 50. Maximum is 200.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to fetch. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the StartTimestamp input for this Choreo. 
        # 
        # @param String - (optional, date) Beginning timestamp of a range - only display scrobbles after this time, in UNIX timestamp format. This must be in the UTC time zone.
        ###

        def set_StartTimestamp(value)
          set_input("StartTimestamp", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (string) The last.fm username to fetch the recent tracks of.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetRecentTracks Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetRecentTracksResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetRecentTracks



    ##############################################################################
    #
    # GetRecommendedArtists
    #
    # Retrieves Last.fm artist recommendations for a user.
    #
    ##############################################################################

    class GetRecommendedArtists < Choreography

      ####
      #  Create a new instance of the GetRecommendedArtists Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetRecommendedArtists")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetRecommendedArtistsInputSet
      ####
      def new_input_set()
        return GetRecommendedArtistsInputSet.new()
      end

      def make_result_set()
        return GetRecommendedArtistsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetRecommendedArtistsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetRecommendedArtists
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetRecommendedArtistsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Secret.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to fetch. Defaults to first page.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the SessionKey input for this Choreo. 
        # 
        # @param String - (string) The session key retrieved in the last step of the authorization process.
        ###

        def set_SessionKey(value)
          set_input("SessionKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetRecommendedArtists Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetRecommendedArtistsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetRecommendedArtists



    ##############################################################################
    #
    # GetRecommendedEvents
    #
    # Retrieves a paginated list of all events recommended to a user by Last.fm, based on their listening profile. 
    #
    ##############################################################################

    class GetRecommendedEvents < Choreography

      ####
      #  Create a new instance of the GetRecommendedEvents Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetRecommendedEvents")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetRecommendedEventsInputSet
      ####
      def new_input_set()
        return GetRecommendedEventsInputSet.new()
      end

      def make_result_set()
        return GetRecommendedEventsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetRecommendedEventsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetRecommendedEvents
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetRecommendedEventsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Secret.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to fetch. Defaults to first page.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the SessionKey input for this Choreo. 
        # 
        # @param String - (string) The session key retrieved in the last step of the authorization process.
        ###

        def set_SessionKey(value)
          set_input("SessionKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetRecommendedEvents Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetRecommendedEventsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetRecommendedEvents



    ##############################################################################
    #
    # GetShouts
    #
    # Retrieves a list of shouts for a specified user.
    #
    ##############################################################################

    class GetShouts < Choreography

      ####
      #  Create a new instance of the GetShouts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetShouts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetShoutsInputSet
      ####
      def new_input_set()
        return GetShoutsInputSet.new()
      end

      def make_result_set()
        return GetShoutsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetShoutsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetShouts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetShoutsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 50. Maximum is 200.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to fetch. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (string) The last.fm username to fetch shouts for.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetShouts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetShoutsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetShouts



    ##############################################################################
    #
    # GetTopAlbums
    #
    # Retrieves the top albums listened to by a user.
    #
    ##############################################################################

    class GetTopAlbums < Choreography

      ####
      #  Create a new instance of the GetTopAlbums Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetTopAlbums")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTopAlbumsInputSet
      ####
      def new_input_set()
        return GetTopAlbumsInputSet.new()
      end

      def make_result_set()
        return GetTopAlbumsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetTopAlbumsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTopAlbums
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTopAlbumsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to fetch. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Period input for this Choreo. 
        # 
        # @param String - (optional, string) The time period over which to retrieve top albums for. Valid values are: overall, 7day, 3month, 6month, 12month. Defaults to 'overall'.
        ###

        def set_Period(value)
          set_input("Period", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (string) The Last.fm username to fetch top albums for.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTopAlbums Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTopAlbumsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTopAlbums



    ##############################################################################
    #
    # GetTopArtists
    #
    # Retrieves the top artists listened to by a user.
    #
    ##############################################################################

    class GetTopArtists < Choreography

      ####
      #  Create a new instance of the GetTopArtists Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetTopArtists")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTopArtistsInputSet
      ####
      def new_input_set()
        return GetTopArtistsInputSet.new()
      end

      def make_result_set()
        return GetTopArtistsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetTopArtistsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTopArtists
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTopArtistsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to fetch. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Period input for this Choreo. 
        # 
        # @param String - (optional, string) The time period over which to retrieve top artists for. Valid values are: overall, 7day, 3month, 6month, 12month. Defaults to 'overall'.
        ###

        def set_Period(value)
          set_input("Period", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (string) The Last.fm username to fetch top artists for.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTopArtists Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTopArtistsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTopArtists



    ##############################################################################
    #
    # GetTopTags
    #
    # Retrieves the top tags used by a user. 
    #
    ##############################################################################

    class GetTopTags < Choreography

      ####
      #  Create a new instance of the GetTopTags Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetTopTags")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTopTagsInputSet
      ####
      def new_input_set()
        return GetTopTagsInputSet.new()
      end

      def make_result_set()
        return GetTopTagsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetTopTagsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTopTags
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTopTagsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limit the number of tags returned. Defaults to 10.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (string) The Last.fm username to fetch top tags for.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTopTags Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTopTagsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTopTags



    ##############################################################################
    #
    # GetTopTracks
    #
    # Retrieves the top tracks listened to by a user.
    #
    ##############################################################################

    class GetTopTracks < Choreography

      ####
      #  Create a new instance of the GetTopTracks Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetTopTracks")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTopTracksInputSet
      ####
      def new_input_set()
        return GetTopTracksInputSet.new()
      end

      def make_result_set()
        return GetTopTracksResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetTopTracksResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTopTracks
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTopTracksInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to fetch per page. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number to fetch. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Period input for this Choreo. 
        # 
        # @param String - (optional, string) The time period over which to retrieve top tracks for. Valid values are: overall, 7day, 3month, 6month, 12month. Defaults to 'overall'.
        ###

        def set_Period(value)
          set_input("Period", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (string) The Last.fm username to fetch top tracks for.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTopTracks Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTopTracksResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTopTracks



    ##############################################################################
    #
    # GetWeeklyAlbumChart
    #
    # Retrieves an album chart for a user profile, for a given date range.
    #
    ##############################################################################

    class GetWeeklyAlbumChart < Choreography

      ####
      #  Create a new instance of the GetWeeklyAlbumChart Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetWeeklyAlbumChart")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetWeeklyAlbumChartInputSet
      ####
      def new_input_set()
        return GetWeeklyAlbumChartInputSet.new()
      end

      def make_result_set()
        return GetWeeklyAlbumChartResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetWeeklyAlbumChartResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetWeeklyAlbumChart
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetWeeklyAlbumChartInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the EndTimestamp input for this Choreo. 
        # 
        # @param String - (optional, date) End timestamp at which the chart should end on, in UNIX timestamp format. This must be in the UTC time zone.
        ###

        def set_EndTimestamp(value)
          set_input("EndTimestamp", value)
        end
        #### 
        # Set the value of the StartTimestamp input for this Choreo. 
        # 
        # @param String - (optional, date) Beginning timestamp at which the chart should start from, in UNIX timestamp format. This must be in the UTC time zone.
        ###

        def set_StartTimestamp(value)
          set_input("StartTimestamp", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (string) The last.fm username to fetch the charts of.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetWeeklyAlbumChart Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetWeeklyAlbumChartResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetWeeklyAlbumChart



    ##############################################################################
    #
    # GetWeeklyArtistChart
    #
    # Retrieves an artist chart for a user profile, for a given date range.
    #
    ##############################################################################

    class GetWeeklyArtistChart < Choreography

      ####
      #  Create a new instance of the GetWeeklyArtistChart Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetWeeklyArtistChart")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetWeeklyArtistChartInputSet
      ####
      def new_input_set()
        return GetWeeklyArtistChartInputSet.new()
      end

      def make_result_set()
        return GetWeeklyArtistChartResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetWeeklyArtistChartResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetWeeklyArtistChart
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetWeeklyArtistChartInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the EndTimestamp input for this Choreo. 
        # 
        # @param String - (optional, date) End timestamp at which the chart should end on, in UNIX timestamp format. This must be in the UTC time zone.
        ###

        def set_EndTimestamp(value)
          set_input("EndTimestamp", value)
        end
        #### 
        # Set the value of the StartTimestamp input for this Choreo. 
        # 
        # @param String - (optional, date) Beginning timestamp at which the chart should start from, in UNIX timestamp format. This must be in the UTC time zone.
        ###

        def set_StartTimestamp(value)
          set_input("StartTimestamp", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (string) The last.fm username to fetch the charts of.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetWeeklyArtistChart Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetWeeklyArtistChartResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetWeeklyArtistChart



    ##############################################################################
    #
    # GetWeeklyChartList
    #
    # Retrieves a list of available charts for this user, expressed as date ranges which can be sent to the chart services.
    #
    ##############################################################################

    class GetWeeklyChartList < Choreography

      ####
      #  Create a new instance of the GetWeeklyChartList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetWeeklyChartList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetWeeklyChartListInputSet
      ####
      def new_input_set()
        return GetWeeklyChartListInputSet.new()
      end

      def make_result_set()
        return GetWeeklyChartListResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetWeeklyChartListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetWeeklyChartList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetWeeklyChartListInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (string) The last.fm username to fetch the charts of.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetWeeklyChartList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetWeeklyChartListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetWeeklyChartList



    ##############################################################################
    #
    # GetWeeklyTrackChart
    #
    # Retrieves a track chart for a user profile, for a given date range.
    #
    ##############################################################################

    class GetWeeklyTrackChart < Choreography

      ####
      #  Create a new instance of the GetWeeklyTrackChart Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/GetWeeklyTrackChart")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetWeeklyTrackChartInputSet
      ####
      def new_input_set()
        return GetWeeklyTrackChartInputSet.new()
      end

      def make_result_set()
        return GetWeeklyTrackChartResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetWeeklyTrackChartResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetWeeklyTrackChart
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetWeeklyTrackChartInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the EndTimestamp input for this Choreo. 
        # 
        # @param String - (optional, date) End timestamp at which the chart should end on, in UNIX timestamp format. This must be in the UTC time zone.
        ###

        def set_EndTimestamp(value)
          set_input("EndTimestamp", value)
        end
        #### 
        # Set the value of the StartTimestamp input for this Choreo. 
        # 
        # @param String - (optional, date) Beginning timestamp at which the chart should start from, in UNIX timestamp format. This must be in the UTC time zone.
        ###

        def set_StartTimestamp(value)
          set_input("StartTimestamp", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (string) The last.fm username to fetch the charts of.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetWeeklyTrackChart Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetWeeklyTrackChartResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (XML) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetWeeklyTrackChart



    ##############################################################################
    #
    # Shout
    #
    # Creates a message in a user's shoutbox 
    #
    ##############################################################################

    class Shout < Choreography

      ####
      #  Create a new instance of the Shout Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/LastFm/User/Shout")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ShoutInputSet
      ####
      def new_input_set()
        return ShoutInputSet.new()
      end

      def make_result_set()
        return ShoutResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ShoutResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Shout
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ShoutInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Key.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) Your Last.fm API Secret.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the Message input for this Choreo. 
        # 
        # @param String - (required, string) The message to post to the shoutbox.
        ###

        def set_Message(value)
          set_input("Message", value)
        end
        #### 
        # Set the value of the SessionKey input for this Choreo. 
        # 
        # @param String - (required, string) The session key retrieved in the last step of the authorization process.
        ###

        def set_SessionKey(value)
          set_input("SessionKey", value)
        end
        #### 
        # Set the value of the User input for this Choreo. 
        # 
        # @param String - (required, string) The name of the user to shout on.
        ###

        def set_User(value)
          set_input("User", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Shout Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ShoutResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Last.fm.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Shout




  end # module User

end # module LastFm