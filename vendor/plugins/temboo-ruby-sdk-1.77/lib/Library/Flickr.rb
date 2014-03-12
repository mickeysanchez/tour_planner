require "temboo"

module Flickr




  module Favorites



    ##############################################################################
    #
    # AddFavorite
    #
    # Adds a photo to a user's favorites list.
    #
    ##############################################################################

    class AddFavorite < Choreography

      ####
      #  Create a new instance of the AddFavorite Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Favorites/AddFavorite")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddFavoriteInputSet
      ####
      def new_input_set()
        return AddFavoriteInputSet.new()
      end

      def make_result_set()
        return AddFavoriteResultSet.new()
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
        results = AddFavoriteResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddFavorite
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddFavoriteInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the PhotoId input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the photo to add a favorites list.
        ###

        def set_PhotoId(value)
          set_input("PhotoId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddFavorite Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddFavoriteResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddFavorite



    ##############################################################################
    #
    # AddToFavorites
    #
    # Adds a photo to a user's favorites list.
    #
    ##############################################################################

    class AddToFavorites < Choreography

      ####
      #  Create a new instance of the AddToFavorites Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Favorites/AddToFavorites")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddToFavoritesInputSet
      ####
      def new_input_set()
        return AddToFavoritesInputSet.new()
      end

      def make_result_set()
        return AddToFavoritesResultSet.new()
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
        results = AddToFavoritesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddToFavorites
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddToFavoritesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the PhotoID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the photo to add a favorites list.
        ###

        def set_PhotoID(value)
          set_input("PhotoID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddToFavorites Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddToFavoritesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddToFavorites



    ##############################################################################
    #
    # GetContext
    #
    # Returns next and previous favorites for a photo in a user's favorites.
    #
    ##############################################################################

    class GetContext < Choreography

      ####
      #  Create a new instance of the GetContext Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Favorites/GetContext")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetContextInputSet
      ####
      def new_input_set()
        return GetContextInputSet.new()
      end

      def make_result_set()
        return GetContextResultSet.new()
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
        results = GetContextResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetContext
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetContextInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the PhotoId input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the photo to fetch the context for.
        ###

        def set_PhotoId(value)
          set_input("PhotoId", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (conditional, string) The user who counts the photo as a favorite.
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetContext Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetContextResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetContext



    ##############################################################################
    #
    # GetContextForFavorite
    #
    # Returns next and previous favorites for a photo in a user's favorites.
    #
    ##############################################################################

    class GetContextForFavorite < Choreography

      ####
      #  Create a new instance of the GetContextForFavorite Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Favorites/GetContextForFavorite")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetContextForFavoriteInputSet
      ####
      def new_input_set()
        return GetContextForFavoriteInputSet.new()
      end

      def make_result_set()
        return GetContextForFavoriteResultSet.new()
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
        results = GetContextForFavoriteResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetContextForFavorite
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetContextForFavoriteInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the PhotoID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the photo to fetch the context for.
        ###

        def set_PhotoID(value)
          set_input("PhotoID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (required, string) The user who counts the photo as a favorite.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetContextForFavorite Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetContextForFavoriteResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetContextForFavorite



    ##############################################################################
    #
    # GetList
    #
    # Returns a list of the user's favorite photos.
    #
    ##############################################################################

    class GetList < Choreography

      ####
      #  Create a new instance of the GetList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Favorites/GetList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetListInputSet
      ####
      def new_input_set()
        return GetListInputSet.new()
      end

      def make_result_set()
        return GetListResultSet.new()
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
        results = GetListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetListInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the Extras input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-delimited list of extra information to fetch for each returned record. See Choreo documentation for accepted values.
        ###

        def set_Extras(value)
          set_input("Extras", value)
        end
        #### 
        # Set the value of the MaxFaveDate input for this Choreo. 
        # 
        # @param String - (optional, date) Maximum date that a photo was favorited on. The date should be in the form of a unix timestamp.
        ###

        def set_MaxFaveDate(value)
          set_input("MaxFaveDate", value)
        end
        #### 
        # Set the value of the MinFaveDate input for this Choreo. 
        # 
        # @param String - (optional, date) Minimum date that a photo was favorited on. The date should be in the form of a unix timestamp.
        ###

        def set_MinFaveDate(value)
          set_input("MinFaveDate", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to return. Used for paging through many results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of photos to return per page. Defaults to 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (required, string) The NSID of the user to fetch the favorites list for. If this argument is omitted, the favorites list for the calling user is returned.
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetList



    ##############################################################################
    #
    # GetPublicList
    #
    # Returns a list of favorite public photos for the given user.
    #
    ##############################################################################

    class GetPublicList < Choreography

      ####
      #  Create a new instance of the GetPublicList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Favorites/GetPublicList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetPublicListInputSet
      ####
      def new_input_set()
        return GetPublicListInputSet.new()
      end

      def make_result_set()
        return GetPublicListResultSet.new()
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
        results = GetPublicListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetPublicList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetPublicListInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Extras input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-delimited list of extra information to fetch for each returned record. See Choreo documentation for accepted values.
        ###

        def set_Extras(value)
          set_input("Extras", value)
        end
        #### 
        # Set the value of the MaxFaveDate input for this Choreo. 
        # 
        # @param String - (optional, date) Maximum date that a photo was favorited on. The date should be in the form of a unix timestamp.
        ###

        def set_MaxFaveDate(value)
          set_input("MaxFaveDate", value)
        end
        #### 
        # Set the value of the MinFaveDate input for this Choreo. 
        # 
        # @param String - (optional, date) Minimum date that a photo was favorited on. The date should be in the form of a unix timestamp.
        ###

        def set_MinFaveDate(value)
          set_input("MinFaveDate", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to return. Used for paging through many results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of photos to return per page. Defaults to 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (required, string) The user to fetch the favorites list for.
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetPublicList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetPublicListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetPublicList



    ##############################################################################
    #
    # ListFavorites
    #
    # Returns a list of the user's favorite photos.
    #
    ##############################################################################

    class ListFavorites < Choreography

      ####
      #  Create a new instance of the ListFavorites Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Favorites/ListFavorites")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListFavoritesInputSet
      ####
      def new_input_set()
        return ListFavoritesInputSet.new()
      end

      def make_result_set()
        return ListFavoritesResultSet.new()
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
        results = ListFavoritesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListFavorites
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListFavoritesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the Extras input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-delimited list of extra information to fetch for each returned record. See Choreo documentation for accepted values.
        ###

        def set_Extras(value)
          set_input("Extras", value)
        end
        #### 
        # Set the value of the MaxFaveDate input for this Choreo. 
        # 
        # @param String - (optional, date) Maximum date that a photo was favorited on. The date should be in the form of a unix timestamp.
        ###

        def set_MaxFaveDate(value)
          set_input("MaxFaveDate", value)
        end
        #### 
        # Set the value of the MinFaveDate input for this Choreo. 
        # 
        # @param String - (optional, date) Minimum date that a photo was favorited on. The date should be in the form of a unix timestamp.
        ###

        def set_MinFaveDate(value)
          set_input("MinFaveDate", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to return. Used for paging through many results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of photos to return per page. Defaults to 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (required, string) The NSID of the user to fetch the favorites list for. If this argument is omitted, the favorites list for the calling user is returned.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListFavorites Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListFavoritesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListFavorites



    ##############################################################################
    #
    # ListPublicFavorites
    #
    # Returns a list of favorite public photos for the given user.
    #
    ##############################################################################

    class ListPublicFavorites < Choreography

      ####
      #  Create a new instance of the ListPublicFavorites Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Favorites/ListPublicFavorites")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListPublicFavoritesInputSet
      ####
      def new_input_set()
        return ListPublicFavoritesInputSet.new()
      end

      def make_result_set()
        return ListPublicFavoritesResultSet.new()
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
        results = ListPublicFavoritesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListPublicFavorites
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListPublicFavoritesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Extras input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-delimited list of extra information to fetch for each returned record. See Choreo documentation for accepted values.
        ###

        def set_Extras(value)
          set_input("Extras", value)
        end
        #### 
        # Set the value of the MaxFaveDate input for this Choreo. 
        # 
        # @param String - (optional, date) Maximum date that a photo was favorited on. The date should be in the form of a unix timestamp.
        ###

        def set_MaxFaveDate(value)
          set_input("MaxFaveDate", value)
        end
        #### 
        # Set the value of the MinFaveDate input for this Choreo. 
        # 
        # @param String - (optional, date) Minimum date that a photo was favorited on. The date should be in the form of a unix timestamp.
        ###

        def set_MinFaveDate(value)
          set_input("MinFaveDate", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to return. Used for paging through many results.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of photos to return per page. Defaults to 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (required, string) The user to fetch the favorites list for.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListPublicFavorites Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListPublicFavoritesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListPublicFavorites



    ##############################################################################
    #
    # Remove
    #
    # Removes a photo from a user's favorites list.
    #
    ##############################################################################

    class Remove < Choreography

      ####
      #  Create a new instance of the Remove Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Favorites/Remove")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RemoveInputSet
      ####
      def new_input_set()
        return RemoveInputSet.new()
      end

      def make_result_set()
        return RemoveResultSet.new()
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
        results = RemoveResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Remove
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RemoveInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the PhotoId input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the photo to remove from the user's favorites.
        ###

        def set_PhotoId(value)
          set_input("PhotoId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Remove Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RemoveResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Remove



    ##############################################################################
    #
    # RemoveFromFavorites
    #
    # Removes a photo from a user's favorites list.
    #
    ##############################################################################

    class RemoveFromFavorites < Choreography

      ####
      #  Create a new instance of the RemoveFromFavorites Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Favorites/RemoveFromFavorites")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RemoveFromFavoritesInputSet
      ####
      def new_input_set()
        return RemoveFromFavoritesInputSet.new()
      end

      def make_result_set()
        return RemoveFromFavoritesResultSet.new()
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
        results = RemoveFromFavoritesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RemoveFromFavorites
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RemoveFromFavoritesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the PhotoID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the photo to remove from the user's favorites.
        ###

        def set_PhotoID(value)
          set_input("PhotoID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RemoveFromFavorites Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RemoveFromFavoritesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RemoveFromFavorites




  end # module Favorites

  module Galleries



    ##############################################################################
    #
    # CreateGallery
    #
    # Add a comment to a specified photo on Flickr.
    #
    ##############################################################################

    class CreateGallery < Choreography

      ####
      #  Create a new instance of the CreateGallery Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Galleries/CreateGallery")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateGalleryInputSet
      ####
      def new_input_set()
        return CreateGalleryInputSet.new()
      end

      def make_result_set()
        return CreateGalleryResultSet.new()
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
        results = CreateGalleryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateGallery
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateGalleryInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (required, string) The text of the comment you are adding.
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the PrimaryPhotoID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the photo to add a comment to.
        ###

        def set_PrimaryPhotoID(value)
          set_input("PrimaryPhotoID", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (required, string) The name of the gallery.
        ###

        def set_Title(value)
          set_input("Title", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateGallery Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateGalleryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateGallery



    ##############################################################################
    #
    # CreatePhotoGallery
    #
    # Creates a new photo gallery.
    #
    ##############################################################################

    class CreatePhotoGallery < Choreography

      ####
      #  Create a new instance of the CreatePhotoGallery Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Galleries/CreatePhotoGallery")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreatePhotoGalleryInputSet
      ####
      def new_input_set()
        return CreatePhotoGalleryInputSet.new()
      end

      def make_result_set()
        return CreatePhotoGalleryResultSet.new()
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
        results = CreatePhotoGalleryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreatePhotoGallery
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreatePhotoGalleryInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (required, string) A short description for the gallery.
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the PrimaryPhotoID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The first photo to add to your gallery.
        ###

        def set_PrimaryPhotoID(value)
          set_input("PrimaryPhotoID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (required, string) The name of the gallery.
        ###

        def set_Title(value)
          set_input("Title", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreatePhotoGallery Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreatePhotoGalleryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreatePhotoGallery



    ##############################################################################
    #
    # GetGalleryList
    #
    # Get a gallery list for a specfied user.
    #
    ##############################################################################

    class GetGalleryList < Choreography

      ####
      #  Create a new instance of the GetGalleryList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Galleries/GetGalleryList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetGalleryListInputSet
      ####
      def new_input_set()
        return GetGalleryListInputSet.new()
      end

      def make_result_set()
        return GetGalleryListResultSet.new()
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
        results = GetGalleryListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetGalleryList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetGalleryListInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the GalleriesPerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specify the number of galleries that are to be returned per page.  If null, defaults to 100 galleries returned.  Maximum is 500.
        ###

        def set_GalleriesPerPage(value)
          set_input("GalleriesPerPage", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Enter the number of results pages to be returned.  Default is: 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) Provide the NSID for the user whose gallery list(s) are to be retreived.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetGalleryList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetGalleryListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetGalleryList



    ##############################################################################
    #
    # ListGalleries
    #
    # Get a gallery list for a specfied user.
    #
    ##############################################################################

    class ListGalleries < Choreography

      ####
      #  Create a new instance of the ListGalleries Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Galleries/ListGalleries")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListGalleriesInputSet
      ####
      def new_input_set()
        return ListGalleriesInputSet.new()
      end

      def make_result_set()
        return ListGalleriesResultSet.new()
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
        results = ListGalleriesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListGalleries
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListGalleriesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Enter the number of results pages to be returned.  Default is: 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specify the number of galleries that are to be returned per page.  If null, defaults to 100 galleries returned.  Maximum is 500.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (required, string) Provide the NSID for the user whose gallery list(s) are to be retreived.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListGalleries Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListGalleriesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListGalleries




  end # module Galleries

  module Geo



    ##############################################################################
    #
    # GetLocation
    #
    # Retrieves geo data (including latitude and longitude coordinates) for a specified photo.
    #
    ##############################################################################

    class GetLocation < Choreography

      ####
      #  Create a new instance of the GetLocation Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Geo/GetLocation")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetLocationInputSet
      ####
      def new_input_set()
        return GetLocationInputSet.new()
      end

      def make_result_set()
        return GetLocationResultSet.new()
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
        results = GetLocationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLocation
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetLocationInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the PhotoId input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the photo that you want to get the location for.
        ###

        def set_PhotoId(value)
          set_input("PhotoId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLocation Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetLocationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetLocation



    ##############################################################################
    #
    # GetPhotoLocation
    #
    # Retrieves geo data (including latitude and longitude coordinates) for a specified photo.
    #
    ##############################################################################

    class GetPhotoLocation < Choreography

      ####
      #  Create a new instance of the GetPhotoLocation Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Geo/GetPhotoLocation")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetPhotoLocationInputSet
      ####
      def new_input_set()
        return GetPhotoLocationInputSet.new()
      end

      def make_result_set()
        return GetPhotoLocationResultSet.new()
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
        results = GetPhotoLocationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetPhotoLocation
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetPhotoLocationInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the PhotoID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the photo that you want to get the location for.
        ###

        def set_PhotoID(value)
          set_input("PhotoID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetPhotoLocation Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetPhotoLocationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetPhotoLocation



    ##############################################################################
    #
    # ListPhotosForLocation
    #
    # Return a list of the user's photos for a specified location.
    #
    ##############################################################################

    class ListPhotosForLocation < Choreography

      ####
      #  Create a new instance of the ListPhotosForLocation Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Geo/ListPhotosForLocation")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListPhotosForLocationInputSet
      ####
      def new_input_set()
        return ListPhotosForLocationInputSet.new()
      end

      def make_result_set()
        return ListPhotosForLocationResultSet.new()
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
        results = ListPhotosForLocationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListPhotosForLocation
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListPhotosForLocationInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the Accuracy input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Recorded accuracy level of the location information. Current range is 1-16. Defaults to 16 if not specified.
        ###

        def set_Accuracy(value)
          set_input("Accuracy", value)
        end
        #### 
        # Set the value of the Extras input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-delimited list of extra information to retrieve for each returned record. See Choreo documentation for accepted values.
        ###

        def set_Extras(value)
          set_input("Extras", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The latitude whose valid range is -90 to 90. Anything more than 6 decimal places will be truncated.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The longitude whose valid range is -180 to 180. Anything more than 6 decimal places will be truncated.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to return. Used for paging through many results. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of photos to return per page. If this argument is omitted, it defaults to 100. The maximum allowed value is 500.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListPhotosForLocation Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListPhotosForLocationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListPhotosForLocation



    ##############################################################################
    #
    # PhotosForLocation
    #
    # Return a list of the user's photos for a specified location.
    #
    ##############################################################################

    class PhotosForLocation < Choreography

      ####
      #  Create a new instance of the PhotosForLocation Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Geo/PhotosForLocation")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PhotosForLocationInputSet
      ####
      def new_input_set()
        return PhotosForLocationInputSet.new()
      end

      def make_result_set()
        return PhotosForLocationResultSet.new()
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
        results = PhotosForLocationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the PhotosForLocation
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PhotosForLocationInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the Accuracy input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Recorded accuracy level of the location information. Current range is 1-16. Defaults to 16 if not specified.
        ###

        def set_Accuracy(value)
          set_input("Accuracy", value)
        end
        #### 
        # Set the value of the Extras input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-delimited list of extra information to retrieve for each returned record. See Choreo documentation for accepted values.
        ###

        def set_Extras(value)
          set_input("Extras", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The latitude whose valid range is -90 to 90. Anything more than 6 decimal places will be truncated.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The longitude whose valid range is -180 to 180. Anything more than 6 decimal places will be truncated.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to return. Used for paging through many results. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of photos to return per page. If this argument is omitted, it defaults to 100. The maximum allowed value is 500.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the PhotosForLocation Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PhotosForLocationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class PhotosForLocation



    ##############################################################################
    #
    # SetLocation
    #
    # Sets the geo data (including latitude and longitude) for a specified photo.
    #
    ##############################################################################

    class SetLocation < Choreography

      ####
      #  Create a new instance of the SetLocation Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Geo/SetLocation")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SetLocationInputSet
      ####
      def new_input_set()
        return SetLocationInputSet.new()
      end

      def make_result_set()
        return SetLocationResultSet.new()
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
        results = SetLocationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SetLocation
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SetLocationInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the Accuracy input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Recorded accuracy level of the location information. Current range is 1-16. Defaults to 16 if not specified.
        ###

        def set_Accuracy(value)
          set_input("Accuracy", value)
        end
        #### 
        # Set the value of the Context input for this Choreo. 
        # 
        # @param String - (optional, string) A numeric value representing the photo's location beyond latitude and longitude. For example, you can indicate that a photo was taken "indoors" or "outdoors". Set to 1 for indoors or 2 for outdoors.
        ###

        def set_Context(value)
          set_input("Context", value)
        end
        #### 
        # Set the value of the Extras input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-delimited list of extra information to retrieve for each returned record. See Choreo documentation for accepted values.
        ###

        def set_Extras(value)
          set_input("Extras", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The latitude whose valid range is -90 to 90. Anything more than 6 decimal places will be truncated.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The longitude whose valid range is -180 to 180. Anything more than 6 decimal places will be truncated.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to return. Used for paging through many results. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of photos to return per page. If this argument is omitted, it defaults to 100. The maximum allowed value is 500.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the PhotoID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the photo to set location data for.
        ###

        def set_PhotoID(value)
          set_input("PhotoID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SetLocation Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SetLocationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SetLocation



    ##############################################################################
    #
    # SetPhotoLocation
    #
    # Sets the geo data (including latitude and longitude) for a specified photo.
    #
    ##############################################################################

    class SetPhotoLocation < Choreography

      ####
      #  Create a new instance of the SetPhotoLocation Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Geo/SetPhotoLocation")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SetPhotoLocationInputSet
      ####
      def new_input_set()
        return SetPhotoLocationInputSet.new()
      end

      def make_result_set()
        return SetPhotoLocationResultSet.new()
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
        results = SetPhotoLocationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SetPhotoLocation
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SetPhotoLocationInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the Accuracy input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Recorded accuracy level of the location information. Current range is 1-16. Defaults to 16 if not specified.
        ###

        def set_Accuracy(value)
          set_input("Accuracy", value)
        end
        #### 
        # Set the value of the Context input for this Choreo. 
        # 
        # @param String - (optional, string) A numeric value representing the photo's location beyond latitude and longitude. For example, you can indicate that a photo was taken "indoors" or "outdoors". Set to 1 for indoors or 2 for outdoors.
        ###

        def set_Context(value)
          set_input("Context", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The latitude whose valid range is -90 to 90. Anything more than 6 decimal places will be truncated.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The longitude whose valid range is -180 to 180. Anything more than 6 decimal places will be truncated.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the PhotoID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the photo to set location data for.
        ###

        def set_PhotoID(value)
          set_input("PhotoID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SetPhotoLocation Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SetPhotoLocationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SetPhotoLocation




  end # module Geo

  module OAuth



    ##############################################################################
    #
    # FinalizeOAuth
    #
    # Completes the OAuth process by retrieving a Flickr access token, token secret, user ID and username for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
    #
    ##############################################################################

    class FinalizeOAuth < Choreography

      ####
      #  Create a new instance of the FinalizeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/OAuth/FinalizeOAuth")
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
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
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
        # Set the value of the OAuthTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Token Secret retrieved during the OAuth process. This is returned by the InitializeOAuth Choreo.
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
      	# @return String - (string) The Flickr NSID (user ID) associated with the access token that is being retrieved.
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
      	####
      	# Retrieve the value for the "Username" output from this Choreo execution
      	#
      	# @return String - (string) The Username associated with the access token that is being retrieved.
      	####
      	def get_Username()
      	  return @outputs["Username"]
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
        super(session, "/Library/Flickr/OAuth/InitializeOAuth")
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
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
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

  module People



    ##############################################################################
    #
    # FindByEmail
    #
    # Obtain a user's NSID by providing their email address.
    #
    ##############################################################################

    class FindByEmail < Choreography

      ####
      #  Create a new instance of the FindByEmail Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/People/FindByEmail")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FindByEmailInputSet
      ####
      def new_input_set()
        return FindByEmailInputSet.new()
      end

      def make_result_set()
        return FindByEmailResultSet.new()
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
        results = FindByEmailResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FindByEmail
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FindByEmailInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the FindEmail input for this Choreo. 
        # 
        # @param String - (required, string) Enter the email of the user being sought.
        ###

        def set_FindEmail(value)
          set_input("FindEmail", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FindByEmail Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FindByEmailResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FindByEmail



    ##############################################################################
    #
    # FindPeopleByEmail
    #
    # Obtain a user's NSID by providing their email address.
    #
    ##############################################################################

    class FindPeopleByEmail < Choreography

      ####
      #  Create a new instance of the FindPeopleByEmail Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/People/FindPeopleByEmail")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FindPeopleByEmailInputSet
      ####
      def new_input_set()
        return FindPeopleByEmailInputSet.new()
      end

      def make_result_set()
        return FindPeopleByEmailResultSet.new()
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
        results = FindPeopleByEmailResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FindPeopleByEmail
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FindPeopleByEmailInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the FindEmail input for this Choreo. 
        # 
        # @param String - (required, string) Enter the email of the user being sought.
        ###

        def set_FindEmail(value)
          set_input("FindEmail", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FindPeopleByEmail Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FindPeopleByEmailResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FindPeopleByEmail



    ##############################################################################
    #
    # GetListOfPeople
    #
    # Retrieve a list of people in a given photo.
    #
    ##############################################################################

    class GetListOfPeople < Choreography

      ####
      #  Create a new instance of the GetListOfPeople Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/People/GetListOfPeople")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetListOfPeopleInputSet
      ####
      def new_input_set()
        return GetListOfPeopleInputSet.new()
      end

      def make_result_set()
        return GetListOfPeopleResultSet.new()
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
        results = GetListOfPeopleResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetListOfPeople
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetListOfPeopleInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the PhotoID input for this Choreo. 
        # 
        # @param String - (required, string) Enter the ID of a photo for which people will be listed.
        ###

        def set_PhotoID(value)
          set_input("PhotoID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetListOfPeople Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetListOfPeopleResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetListOfPeople




  end # module People

  module PhotoComments



    ##############################################################################
    #
    # AddComment
    #
    # Add a comment to a specified photo on Flickr.
    #
    ##############################################################################

    class AddComment < Choreography

      ####
      #  Create a new instance of the AddComment Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/PhotoComments/AddComment")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddCommentInputSet
      ####
      def new_input_set()
        return AddCommentInputSet.new()
      end

      def make_result_set()
        return AddCommentResultSet.new()
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
        results = AddCommentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddComment
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddCommentInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the CommentText input for this Choreo. 
        # 
        # @param String - (required, string) The text of the comment you are adding.
        ###

        def set_CommentText(value)
          set_input("CommentText", value)
        end
        #### 
        # Set the value of the PhotoId input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the photo to add a comment to
        ###

        def set_PhotoId(value)
          set_input("PhotoId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddComment Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddCommentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddComment



    ##############################################################################
    #
    # AddTags
    #
    # Add a tag to a specified photo on Flickr.
    #
    ##############################################################################

    class AddTags < Choreography

      ####
      #  Create a new instance of the AddTags Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/PhotoComments/AddTags")
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
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the PhotoId input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the photo to add tags to.
        ###

        def set_PhotoId(value)
          set_input("PhotoId", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (required, string) The tags to add to the photo. Multiple tags can be separated by spaces.
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
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddTags



    ##############################################################################
    #
    # DeleteComment
    #
    # Delete a specified comment from a photo on Flickr.
    #
    ##############################################################################

    class DeleteComment < Choreography

      ####
      #  Create a new instance of the DeleteComment Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/PhotoComments/DeleteComment")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteCommentInputSet
      ####
      def new_input_set()
        return DeleteCommentInputSet.new()
      end

      def make_result_set()
        return DeleteCommentResultSet.new()
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
        results = DeleteCommentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteComment
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteCommentInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the CommentId input for this Choreo. 
        # 
        # @param String - (required, string) The unique id of the comment that you want to delete
        ###

        def set_CommentId(value)
          set_input("CommentId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteComment Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteCommentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteComment



    ##############################################################################
    #
    # GetComments
    #
    # Retrieves comments for a given photo on Flickr.
    #
    ##############################################################################

    class GetComments < Choreography

      ####
      #  Create a new instance of the GetComments Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/PhotoComments/GetComments")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCommentsInputSet
      ####
      def new_input_set()
        return GetCommentsInputSet.new()
      end

      def make_result_set()
        return GetCommentsResultSet.new()
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
        results = GetCommentsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetComments
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCommentsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the MaxCommentDate input for this Choreo. 
        # 
        # @param String - (optional, date) The maximum date that a a comment was created. Should be formatted as a unix timestamp.
        ###

        def set_MaxCommentDate(value)
          set_input("MaxCommentDate", value)
        end
        #### 
        # Set the value of the MinCommentDate input for this Choreo. 
        # 
        # @param String - (optional, date) The minimum date that a a comment was created. Should be formatted as a unix timestamp.
        ###

        def set_MinCommentDate(value)
          set_input("MinCommentDate", value)
        end
        #### 
        # Set the value of the PhotoId input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the photo to retrieve comments for.
        ###

        def set_PhotoId(value)
          set_input("PhotoId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetComments Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCommentsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetComments



    ##############################################################################
    #
    # LeaveComment
    #
    # Add a comment to a specified photo on Flickr.
    #
    ##############################################################################

    class LeaveComment < Choreography

      ####
      #  Create a new instance of the LeaveComment Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/PhotoComments/LeaveComment")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LeaveCommentInputSet
      ####
      def new_input_set()
        return LeaveCommentInputSet.new()
      end

      def make_result_set()
        return LeaveCommentResultSet.new()
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
        results = LeaveCommentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LeaveComment
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LeaveCommentInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the CommentText input for this Choreo. 
        # 
        # @param String - (required, string) The text of the comment you are adding.
        ###

        def set_CommentText(value)
          set_input("CommentText", value)
        end
        #### 
        # Set the value of the PhotoID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the photo to add a comment to
        ###

        def set_PhotoID(value)
          set_input("PhotoID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LeaveComment Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LeaveCommentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class LeaveComment



    ##############################################################################
    #
    # ListComments
    #
    # Retrieves comments for a given photo on Flickr.
    #
    ##############################################################################

    class ListComments < Choreography

      ####
      #  Create a new instance of the ListComments Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/PhotoComments/ListComments")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListCommentsInputSet
      ####
      def new_input_set()
        return ListCommentsInputSet.new()
      end

      def make_result_set()
        return ListCommentsResultSet.new()
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
        results = ListCommentsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListComments
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListCommentsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the MaxCommentDate input for this Choreo. 
        # 
        # @param String - (optional, date) The maximum date that a a comment was created. Should be formatted as a unix timestamp.
        ###

        def set_MaxCommentDate(value)
          set_input("MaxCommentDate", value)
        end
        #### 
        # Set the value of the MinCommentDate input for this Choreo. 
        # 
        # @param String - (optional, date) The minimum date that a a comment was created. Should be formatted as a unix timestamp.
        ###

        def set_MinCommentDate(value)
          set_input("MinCommentDate", value)
        end
        #### 
        # Set the value of the PhotoID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the photo to retrieve comments for.
        ###

        def set_PhotoID(value)
          set_input("PhotoID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListComments Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListCommentsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListComments



    ##############################################################################
    #
    # RemoveComment
    #
    # Delete a specified comment from a photo on Flickr.
    #
    ##############################################################################

    class RemoveComment < Choreography

      ####
      #  Create a new instance of the RemoveComment Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/PhotoComments/RemoveComment")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RemoveCommentInputSet
      ####
      def new_input_set()
        return RemoveCommentInputSet.new()
      end

      def make_result_set()
        return RemoveCommentResultSet.new()
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
        results = RemoveCommentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RemoveComment
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RemoveCommentInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the CommentID input for this Choreo. 
        # 
        # @param String - (required, string) The unique id of the comment that you want to delete
        ###

        def set_CommentID(value)
          set_input("CommentID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RemoveComment Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RemoveCommentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RemoveComment




  end # module PhotoComments

  module PhotoSets



    ##############################################################################
    #
    # GetList
    #
    # Returns the photosets belonging to the specified user.
    #
    ##############################################################################

    class GetList < Choreography

      ####
      #  Create a new instance of the GetList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/PhotoSets/GetList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetListInputSet
      ####
      def new_input_set()
        return GetListInputSet.new()
      end

      def make_result_set()
        return GetListResultSet.new()
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
        results = GetListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetListInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to get. Currently, if this is not provided, all sets are returned, but this behaviour may change in future.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of sets to get per page. If paging is enabled, the maximum number of sets per page is 500.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetList



    ##############################################################################
    #
    # GetPhotos
    #
    # Retrieves the list of photos in a set.
    #
    ##############################################################################

    class GetPhotos < Choreography

      ####
      #  Create a new instance of the GetPhotos Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/PhotoSets/GetPhotos")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetPhotosInputSet
      ####
      def new_input_set()
        return GetPhotosInputSet.new()
      end

      def make_result_set()
        return GetPhotosResultSet.new()
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
        results = GetPhotosResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetPhotos
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetPhotosInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the Media input for this Choreo. 
        # 
        # @param String - (optional, string) Filter results by media type. Possible values are all (default), photos or videos
        ###

        def set_Media(value)
          set_input("Media", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to return. If this argument is omitted, it defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of photos to return per page. Defaults to 500. The maximum allowed value is 500.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the PhotoSetID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the photo set.
        ###

        def set_PhotoSetID(value)
          set_input("PhotoSetID", value)
        end
        #### 
        # Set the value of the PrivacyFilter input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Valid values are: 1 (public photos), 2 (private photos visible to friends), 3 (private photos visible to family), 4 (private photos visible to friends and family), 5 (completely private photos).
        ###

        def set_PrivacyFilter(value)
          set_input("PrivacyFilter", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetPhotos Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetPhotosResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetPhotos



    ##############################################################################
    #
    # ListPhotos
    #
    # Retrieves the list of photos in a set.
    #
    ##############################################################################

    class ListPhotos < Choreography

      ####
      #  Create a new instance of the ListPhotos Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/PhotoSets/ListPhotos")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListPhotosInputSet
      ####
      def new_input_set()
        return ListPhotosInputSet.new()
      end

      def make_result_set()
        return ListPhotosResultSet.new()
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
        results = ListPhotosResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListPhotos
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListPhotosInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (optional, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).  Required when accessing a protected resource.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (optional, string) The Access Token Secret retrieved during the OAuth process. Required when accessing a protected resource.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Extras input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-delimited list of extra information to fetch for each returned record.
        ###

        def set_Extras(value)
          set_input("Extras", value)
        end
        #### 
        # Set the value of the Media input for this Choreo. 
        # 
        # @param String - (optional, string) Filter results by media type. Possible values are all (default), photos or videos
        ###

        def set_Media(value)
          set_input("Media", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to return. If this argument is omitted, it defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of photos to return per page. Defaults to 500. The maximum allowed value is 500.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the PhotoSetID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the photo set.
        ###

        def set_PhotoSetID(value)
          set_input("PhotoSetID", value)
        end
        #### 
        # Set the value of the PrivacyFilter input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Valid values are: 1 (public photos), 2 (private photos visible to friends), 3 (private photos visible to family), 4 (private photos visible to friends and family), 5 (completely private photos).
        ###

        def set_PrivacyFilter(value)
          set_input("PrivacyFilter", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListPhotos Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListPhotosResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListPhotos



    ##############################################################################
    #
    # ListSets
    #
    # Returns the photosets belonging to the specified user.
    #
    ##############################################################################

    class ListSets < Choreography

      ####
      #  Create a new instance of the ListSets Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/PhotoSets/ListSets")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListSetsInputSet
      ####
      def new_input_set()
        return ListSetsInputSet.new()
      end

      def make_result_set()
        return ListSetsResultSet.new()
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
        results = ListSetsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListSets
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListSetsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret). Required when accessing a protected resource or when UserID is not provided.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Access Token Secret retrieved during the OAuth process. Required when accessing a protected resource or when UserID is not provided.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource or when UserID is not provided.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to get. Currently, if this is not provided, all sets are returned, but this behaviour may change in future.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of sets to get per page. If paging is enabled, the maximum number of sets per page is 500.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (conditional, string) The NSID of the user to get a photoset list for. When OAuth parameters are passed, the authenticated user is assumed.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListSets Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListSetsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListSets




  end # module PhotoSets

  module Photos



    ##############################################################################
    #
    # AddTags
    #
    # Add a tag to a specified photo on Flickr.
    #
    ##############################################################################

    class AddTags < Choreography

      ####
      #  Create a new instance of the AddTags Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Photos/AddTags")
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
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the PhotoID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the photo to add tags to.
        ###

        def set_PhotoID(value)
          set_input("PhotoID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (required, string) The tags to add to the photo. Multiple tags can be separated by spaces.
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
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddTags



    ##############################################################################
    #
    # Delete
    #
    # Delete a photo from Flickr.
    #
    ##############################################################################

    class Delete < Choreography

      ####
      #  Create a new instance of the Delete Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Photos/Delete")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteInputSet
      ####
      def new_input_set()
        return DeleteInputSet.new()
      end

      def make_result_set()
        return DeleteResultSet.new()
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
        results = DeleteResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Delete
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # @param String - (optional, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the PhotoID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the photo that you want to delete.
        ###

        def set_PhotoID(value)
          set_input("PhotoID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Delete Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Delete



    ##############################################################################
    #
    # DeletePhoto
    #
    # Delete a photo from Flickr.
    #
    ##############################################################################

    class DeletePhoto < Choreography

      ####
      #  Create a new instance of the DeletePhoto Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Photos/DeletePhoto")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeletePhotoInputSet
      ####
      def new_input_set()
        return DeletePhotoInputSet.new()
      end

      def make_result_set()
        return DeletePhotoResultSet.new()
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
        results = DeletePhotoResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeletePhoto
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeletePhotoInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # @param String - (optional, string) The Access Token retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the PhotoId input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the photo that you want to delete.
        ###

        def set_PhotoId(value)
          set_input("PhotoId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeletePhoto Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeletePhotoResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeletePhoto



    ##############################################################################
    #
    # Download
    #
    # Retrieves a photo from a constructed source URL and returns the file content as Base64 encoded data.
    #
    ##############################################################################

    class Download < Choreography

      ####
      #  Create a new instance of the Download Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Photos/Download")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DownloadInputSet
      ####
      def new_input_set()
        return DownloadInputSet.new()
      end

      def make_result_set()
        return DownloadResultSet.new()
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
        results = DownloadResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Download
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DownloadInputSet < Choreography::InputSet

        #### 
        # Set the value of the FarmID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The farm id associated with the photo. Required unless providing the URL.
        ###

        def set_FarmID(value)
          set_input("FarmID", value)
        end
        #### 
        # Set the value of the ImageType input for this Choreo. 
        # 
        # @param String - (optional, string) The image type. Valid values are: jpg, png, or gif. Defaults to "jpg".
        ###

        def set_ImageType(value)
          set_input("ImageType", value)
        end
        #### 
        # Set the value of the PhotoID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The id of the photo you to download.
        ###

        def set_PhotoID(value)
          set_input("PhotoID", value)
        end
        #### 
        # Set the value of the Secret input for this Choreo. 
        # 
        # @param String - (conditional, string) The secret associated with the photo. Required unless providing the URL.
        ###

        def set_Secret(value)
          set_input("Secret", value)
        end
        #### 
        # Set the value of the ServerID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The server id associated with the photo. Required unless providing the URL.
        ###

        def set_ServerID(value)
          set_input("ServerID", value)
        end
        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (conditional, string) The url to download the photo from. Required unless providing the Secret, ServerID, and FarmID parameters.
        ###

        def set_URL(value)
          set_input("URL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Download Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DownloadResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (string) The Base64 encoded image content.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Download



    ##############################################################################
    #
    # GetBase64EncodedPhoto
    #
    # Retrieves a photo from a constructed source URL and returns the file content as Base64 encoded data.
    #
    ##############################################################################

    class GetBase64EncodedPhoto < Choreography

      ####
      #  Create a new instance of the GetBase64EncodedPhoto Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Photos/GetBase64EncodedPhoto")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetBase64EncodedPhotoInputSet
      ####
      def new_input_set()
        return GetBase64EncodedPhotoInputSet.new()
      end

      def make_result_set()
        return GetBase64EncodedPhotoResultSet.new()
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
        results = GetBase64EncodedPhotoResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetBase64EncodedPhoto
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetBase64EncodedPhotoInputSet < Choreography::InputSet

        #### 
        # Set the value of the FarmID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The farm id associated with the photo. This is returned by many API methods associated with photo details.
        ###

        def set_FarmID(value)
          set_input("FarmID", value)
        end
        #### 
        # Set the value of the ImageType input for this Choreo. 
        # 
        # @param String - (optional, string) The image type. Valid values are: jpg, png, or gif. Defaults to "jpg".
        ###

        def set_ImageType(value)
          set_input("ImageType", value)
        end
        #### 
        # Set the value of the PhotoID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the photo you to download.
        ###

        def set_PhotoID(value)
          set_input("PhotoID", value)
        end
        #### 
        # Set the value of the Secret input for this Choreo. 
        # 
        # @param String - (required, string) The secret associated with the photo. This is returned by many API methods associated with photo details.
        ###

        def set_Secret(value)
          set_input("Secret", value)
        end
        #### 
        # Set the value of the ServerID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The server id associated with the photo. This is returned by many API methods associated with photo details.
        ###

        def set_ServerID(value)
          set_input("ServerID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetBase64EncodedPhoto Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetBase64EncodedPhotoResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (string) The Base64 encoded image content.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetBase64EncodedPhoto



    ##############################################################################
    #
    # GetPublicPhotos
    #
    # Obtain a list of public photos for a given user.
    #
    ##############################################################################

    class GetPublicPhotos < Choreography

      ####
      #  Create a new instance of the GetPublicPhotos Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Photos/GetPublicPhotos")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetPublicPhotosInputSet
      ####
      def new_input_set()
        return GetPublicPhotosInputSet.new()
      end

      def make_result_set()
        return GetPublicPhotosResultSet.new()
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
        results = GetPublicPhotosResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetPublicPhotos
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetPublicPhotosInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Extras input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list returning additional photo information such as: license, description, date_upload, date_taken.  Additional options are listed on this method's API doc page.
        ###

        def set_Extras(value)
          set_input("Extras", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specify the page of photos that is to be returned.  If unspecified, the first page is returned.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specify how many photos to display per page. Default is set to: 100. The mamimum allowed value is: 500.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the SafeSearch input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specify a safe search setting by entering: 1 (for safe), 2 (moderate), 3 (restricted).  Default is set to: 1 (safe).
        ###

        def set_SafeSearch(value)
          set_input("SafeSearch", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (required, string) Enter the NSID of the user whose public photos are being retrieved.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetPublicPhotos Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetPublicPhotosResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response in XML from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetPublicPhotos



    ##############################################################################
    #
    # GetRecentPhotos
    #
    # Retrieve public photos that have been recently uploaded to Flickr.
    #
    ##############################################################################

    class GetRecentPhotos < Choreography

      ####
      #  Create a new instance of the GetRecentPhotos Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Photos/GetRecentPhotos")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetRecentPhotosInputSet
      ####
      def new_input_set()
        return GetRecentPhotosInputSet.new()
      end

      def make_result_set()
        return GetRecentPhotosResultSet.new()
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
        results = GetRecentPhotosResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetRecentPhotos
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetRecentPhotosInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Extras input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list returning additional photo information such as: license, description, date_upload, date_taken.  Additional options are listed on this method's API doc page.
        ###

        def set_Extras(value)
          set_input("Extras", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specify the page of photos that is to be returned.  If unspecified, the first page is returned.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specify how many photos to display per page. Default is set to: 100. The mamimum allowed value is: 500.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetRecentPhotos Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetRecentPhotosResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response in XML from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetRecentPhotos



    ##############################################################################
    #
    # GetWithGeoData
    #
    # Returns a list of your geo-tagged photos.
    #
    ##############################################################################

    class GetWithGeoData < Choreography

      ####
      #  Create a new instance of the GetWithGeoData Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Photos/GetWithGeoData")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetWithGeoDataInputSet
      ####
      def new_input_set()
        return GetWithGeoDataInputSet.new()
      end

      def make_result_set()
        return GetWithGeoDataResultSet.new()
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
        results = GetWithGeoDataResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetWithGeoData
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetWithGeoDataInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the Extras input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-delimited list of extra information to retrieve for each returned record. See Choreo documentation for accepted values.
        ###

        def set_Extras(value)
          set_input("Extras", value)
        end
        #### 
        # Set the value of the MaxTakenDate input for this Choreo. 
        # 
        # @param String - (optional, date) Photos with an taken date less than or equal to this value will be returned. The date should be in the form of a mysql datetime.
        ###

        def set_MaxTakenDate(value)
          set_input("MaxTakenDate", value)
        end
        #### 
        # Set the value of the MaxUploadDate input for this Choreo. 
        # 
        # @param String - (optional, date) Photos with an upload date less than or equal to this value will be returned. The date should be in the form of a unix timestamp.
        ###

        def set_MaxUploadDate(value)
          set_input("MaxUploadDate", value)
        end
        #### 
        # Set the value of the Media input for this Choreo. 
        # 
        # @param String - (optional, string) Filter results by media type. Possible values are all (default), photos or videos.
        ###

        def set_Media(value)
          set_input("Media", value)
        end
        #### 
        # Set the value of the MinTakenDate input for this Choreo. 
        # 
        # @param String - (optional, date) Photos with an taken date greater than or equal to this value will be returned. The date should be in the form of a mysql datetime.
        ###

        def set_MinTakenDate(value)
          set_input("MinTakenDate", value)
        end
        #### 
        # Set the value of the MinUploadDate input for this Choreo. 
        # 
        # @param String - (optional, date) Photos with an upload date greater than or equal to this value will be returned. The date should be in the form of a unix timestamp.
        ###

        def set_MinUploadDate(value)
          set_input("MinUploadDate", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to return. Used for paging through many results. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of photos to return per page. If this argument is omitted, it defaults to 100. The maximum allowed value is 500.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the PrivacyFilter input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Valid values are: 1 (public photos), 2 (private photos visible to friends), 3 (private photos visible to family), 4 (private photos visible to friends and family), 5 (completely private photos).
        ###

        def set_PrivacyFilter(value)
          set_input("PrivacyFilter", value)
        end
        #### 
        # Set the value of the Sort input for this Choreo. 
        # 
        # @param String - (optional, any) The sort order. Deafults to date-posted-desc. Accepted values are: date-posted-asc, date-posted-desc, date-taken-asc, date-taken-desc, interestingness-desc, and interestingness-asc.
        ###

        def set_Sort(value)
          set_input("Sort", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetWithGeoData Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetWithGeoDataResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetWithGeoData



    ##############################################################################
    #
    # GetWithoutGeoData
    #
    # Returns a list of your photos which haven't been geo-tagged.
    #
    ##############################################################################

    class GetWithoutGeoData < Choreography

      ####
      #  Create a new instance of the GetWithoutGeoData Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Photos/GetWithoutGeoData")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetWithoutGeoDataInputSet
      ####
      def new_input_set()
        return GetWithoutGeoDataInputSet.new()
      end

      def make_result_set()
        return GetWithoutGeoDataResultSet.new()
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
        results = GetWithoutGeoDataResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetWithoutGeoData
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetWithoutGeoDataInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the Extras input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-delimited list of extra information to retrieve for each returned record. See Choreo documentation for accepted values.
        ###

        def set_Extras(value)
          set_input("Extras", value)
        end
        #### 
        # Set the value of the MaxTakenDate input for this Choreo. 
        # 
        # @param String - (optional, date) Photos with an taken date less than or equal to this value will be returned. The date should be in the form of a mysql datetime.
        ###

        def set_MaxTakenDate(value)
          set_input("MaxTakenDate", value)
        end
        #### 
        # Set the value of the MaxUploadDate input for this Choreo. 
        # 
        # @param String - (optional, date) Photos with an upload date less than or equal to this value will be returned. The date should be in the form of a unix timestamp.
        ###

        def set_MaxUploadDate(value)
          set_input("MaxUploadDate", value)
        end
        #### 
        # Set the value of the Media input for this Choreo. 
        # 
        # @param String - (optional, string) Filter results by media type. Possible values are all (default), photos or videos.
        ###

        def set_Media(value)
          set_input("Media", value)
        end
        #### 
        # Set the value of the MinTakenDate input for this Choreo. 
        # 
        # @param String - (optional, date) Photos with an taken date greater than or equal to this value will be returned. The date should be in the form of a mysql datetime.
        ###

        def set_MinTakenDate(value)
          set_input("MinTakenDate", value)
        end
        #### 
        # Set the value of the MinUploadDate input for this Choreo. 
        # 
        # @param String - (optional, date) Photos with an upload date greater than or equal to this value will be returned. The date should be in the form of a unix timestamp.
        ###

        def set_MinUploadDate(value)
          set_input("MinUploadDate", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to return. Used for paging through many results. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of photos to return per page. If this argument is omitted, it defaults to 100. The maximum allowed value is 500.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the PrivacyFilter input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Valid values are: 1 (public photos), 2 (private photos visible to friends), 3 (private photos visible to family), 4 (private photos visible to friends and family), 5 (completely private photos).
        ###

        def set_PrivacyFilter(value)
          set_input("PrivacyFilter", value)
        end
        #### 
        # Set the value of the Sort input for this Choreo. 
        # 
        # @param String - (optional, any) The sort order. Deafults to date-posted-desc. Accepted values are: date-posted-asc, date-posted-desc, date-taken-asc, date-taken-desc, interestingness-desc, and interestingness-asc.
        ###

        def set_Sort(value)
          set_input("Sort", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetWithoutGeoData Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetWithoutGeoDataResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetWithoutGeoData



    ##############################################################################
    #
    # ListGeoTaggedPhotos
    #
    # Returns a list of your geo-tagged photos.
    #
    ##############################################################################

    class ListGeoTaggedPhotos < Choreography

      ####
      #  Create a new instance of the ListGeoTaggedPhotos Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Photos/ListGeoTaggedPhotos")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListGeoTaggedPhotosInputSet
      ####
      def new_input_set()
        return ListGeoTaggedPhotosInputSet.new()
      end

      def make_result_set()
        return ListGeoTaggedPhotosResultSet.new()
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
        results = ListGeoTaggedPhotosResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListGeoTaggedPhotos
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListGeoTaggedPhotosInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the Extras input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-delimited list of extra information to retrieve for each returned record. See Choreo documentation for accepted values.
        ###

        def set_Extras(value)
          set_input("Extras", value)
        end
        #### 
        # Set the value of the MaxTakenDate input for this Choreo. 
        # 
        # @param String - (optional, date) Photos with an taken date less than or equal to this value will be returned. The date should be in the form of a mysql datetime.
        ###

        def set_MaxTakenDate(value)
          set_input("MaxTakenDate", value)
        end
        #### 
        # Set the value of the MaxUploadDate input for this Choreo. 
        # 
        # @param String - (optional, date) Photos with an upload date less than or equal to this value will be returned. The date should be in the form of a unix timestamp.
        ###

        def set_MaxUploadDate(value)
          set_input("MaxUploadDate", value)
        end
        #### 
        # Set the value of the Media input for this Choreo. 
        # 
        # @param String - (optional, string) Filter results by media type. Possible values are all (default), photos or videos.
        ###

        def set_Media(value)
          set_input("Media", value)
        end
        #### 
        # Set the value of the MinTakenDate input for this Choreo. 
        # 
        # @param String - (optional, date) Photos with an taken date greater than or equal to this value will be returned. The date should be in the form of a mysql datetime.
        ###

        def set_MinTakenDate(value)
          set_input("MinTakenDate", value)
        end
        #### 
        # Set the value of the MinUploadDate input for this Choreo. 
        # 
        # @param String - (optional, date) Photos with an upload date greater than or equal to this value will be returned. The date should be in the form of a unix timestamp.
        ###

        def set_MinUploadDate(value)
          set_input("MinUploadDate", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to return. Used for paging through many results. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of photos to return per page. If this argument is omitted, it defaults to 100. The maximum allowed value is 500.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the PrivacyFilter input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Valid values are: 1 (public photos), 2 (private photos visible to friends), 3 (private photos visible to family), 4 (private photos visible to friends and family), 5 (completely private photos).
        ###

        def set_PrivacyFilter(value)
          set_input("PrivacyFilter", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Sort input for this Choreo. 
        # 
        # @param String - (optional, string) The sort order. Accepted values are: date-posted-asc, date-posted-desc, date-taken-asc, date-taken-desc, interestingness-desc, and interestingness-asc.
        ###

        def set_Sort(value)
          set_input("Sort", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListGeoTaggedPhotos Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListGeoTaggedPhotosResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListGeoTaggedPhotos



    ##############################################################################
    #
    # ListPeople
    #
    # Retrieve a list of people in a given photo.
    #
    ##############################################################################

    class ListPeople < Choreography

      ####
      #  Create a new instance of the ListPeople Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Photos/ListPeople")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListPeopleInputSet
      ####
      def new_input_set()
        return ListPeopleInputSet.new()
      end

      def make_result_set()
        return ListPeopleResultSet.new()
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
        results = ListPeopleResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListPeople
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListPeopleInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the PhotoID input for this Choreo. 
        # 
        # @param String - (required, string) Enter the ID of a photo for which people will be listed.
        ###

        def set_PhotoID(value)
          set_input("PhotoID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListPeople Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListPeopleResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListPeople



    ##############################################################################
    #
    # ListPhotosWithoutGeoTags
    #
    # Returns a list of your photos which haven't been geo-tagged.
    #
    ##############################################################################

    class ListPhotosWithoutGeoTags < Choreography

      ####
      #  Create a new instance of the ListPhotosWithoutGeoTags Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Photos/ListPhotosWithoutGeoTags")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListPhotosWithoutGeoTagsInputSet
      ####
      def new_input_set()
        return ListPhotosWithoutGeoTagsInputSet.new()
      end

      def make_result_set()
        return ListPhotosWithoutGeoTagsResultSet.new()
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
        results = ListPhotosWithoutGeoTagsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListPhotosWithoutGeoTags
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListPhotosWithoutGeoTagsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the Extras input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-delimited list of extra information to retrieve for each returned record. See Choreo documentation for accepted values.
        ###

        def set_Extras(value)
          set_input("Extras", value)
        end
        #### 
        # Set the value of the MaxTakenDate input for this Choreo. 
        # 
        # @param String - (optional, date) Photos with an taken date less than or equal to this value will be returned. The date should be in the form of a mysql datetime.
        ###

        def set_MaxTakenDate(value)
          set_input("MaxTakenDate", value)
        end
        #### 
        # Set the value of the MaxUploadDate input for this Choreo. 
        # 
        # @param String - (optional, date) Photos with an upload date less than or equal to this value will be returned. The date should be in the form of a unix timestamp.
        ###

        def set_MaxUploadDate(value)
          set_input("MaxUploadDate", value)
        end
        #### 
        # Set the value of the Media input for this Choreo. 
        # 
        # @param String - (optional, string) Filter results by media type. Possible values are all (default), photos or videos.
        ###

        def set_Media(value)
          set_input("Media", value)
        end
        #### 
        # Set the value of the MinTakenDate input for this Choreo. 
        # 
        # @param String - (optional, date) Photos with an taken date greater than or equal to this value will be returned. The date should be in the form of a mysql datetime.
        ###

        def set_MinTakenDate(value)
          set_input("MinTakenDate", value)
        end
        #### 
        # Set the value of the MinUploadDate input for this Choreo. 
        # 
        # @param String - (optional, date) Photos with an upload date greater than or equal to this value will be returned. The date should be in the form of a unix timestamp.
        ###

        def set_MinUploadDate(value)
          set_input("MinUploadDate", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to return. Used for paging through many results. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of photos to return per page. If this argument is omitted, it defaults to 100. The maximum allowed value is 500.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the PrivacyFilter input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Valid values are: 1 (public photos), 2 (private photos visible to friends), 3 (private photos visible to family), 4 (private photos visible to friends and family), 5 (completely private photos).
        ###

        def set_PrivacyFilter(value)
          set_input("PrivacyFilter", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) 
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Sort input for this Choreo. 
        # 
        # @param String - (optional, string) The sort order. Accepted values are: date-posted-asc, date-posted-desc, date-taken-asc, date-taken-desc, interestingness-desc, and interestingness-asc.
        ###

        def set_Sort(value)
          set_input("Sort", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListPhotosWithoutGeoTags Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListPhotosWithoutGeoTagsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListPhotosWithoutGeoTags



    ##############################################################################
    #
    # ListPublicPhotos
    #
    # Obtain a list of public photos for a given user.
    #
    ##############################################################################

    class ListPublicPhotos < Choreography

      ####
      #  Create a new instance of the ListPublicPhotos Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Photos/ListPublicPhotos")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListPublicPhotosInputSet
      ####
      def new_input_set()
        return ListPublicPhotosInputSet.new()
      end

      def make_result_set()
        return ListPublicPhotosResultSet.new()
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
        results = ListPublicPhotosResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListPublicPhotos
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListPublicPhotosInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Extras input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list returning additional photo information such as: license, description, date_upload, date_taken.  Additional options are listed on this method's API doc page.
        ###

        def set_Extras(value)
          set_input("Extras", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specify the page of photos that is to be returned.  If unspecified, the first page is returned.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specify how many photos to display per page. Default is set to: 100. The mamimum allowed value is: 500.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SafeSearch input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specify a safe search setting by entering: 1 (for safe), 2 (moderate), 3 (restricted).  Default is set to: 1 (safe).
        ###

        def set_SafeSearch(value)
          set_input("SafeSearch", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (required, string) Enter the NSID of the user whose public photos are being retrieved.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListPublicPhotos Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListPublicPhotosResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListPublicPhotos



    ##############################################################################
    #
    # ListRecentPhotos
    #
    # Retrieve public photos that have been recently uploaded to Flickr.
    #
    ##############################################################################

    class ListRecentPhotos < Choreography

      ####
      #  Create a new instance of the ListRecentPhotos Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Photos/ListRecentPhotos")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListRecentPhotosInputSet
      ####
      def new_input_set()
        return ListRecentPhotosInputSet.new()
      end

      def make_result_set()
        return ListRecentPhotosResultSet.new()
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
        results = ListRecentPhotosResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListRecentPhotos
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListRecentPhotosInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Extras input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list returning additional photo information such as: license, description, date_upload, date_taken.  Additional options are listed on this method's API doc page.
        ###

        def set_Extras(value)
          set_input("Extras", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specify the page of photos that is to be returned.  If unspecified, the first page is returned.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specify how many photos to display per page. Default is set to: 100. The mamimum allowed value is: 500.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListRecentPhotos Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListRecentPhotosResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListRecentPhotos



    ##############################################################################
    #
    # Search
    #
    # Returns a list of photos matching a search criteria.
    #
    ##############################################################################

    class Search < Choreography

      ####
      #  Create a new instance of the Search Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Photos/Search")
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
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Accuracy input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The accuracy level of the location information. Current range is 1-16. World level is 1, Country is ~3, Region is ~6, City is ~11, Street is ~16.
        ###

        def set_Accuracy(value)
          set_input("Accuracy", value)
        end
        #### 
        # Set the value of the BoundingBox input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-delimited list of 4 values defining the Bounding Box of the area that will be searched. These values represent the coordinates of the bottom-left corner and top-right corner of the box.
        ###

        def set_BoundingBox(value)
          set_input("BoundingBox", value)
        end
        #### 
        # Set the value of the ContentType input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The content type setting. 1 = photos only, 2 = screenshots only, 3 = other, 4 = photos and screenshots, 5 = screenshots and other, 6 = photos and other, 7 = all.
        ###

        def set_ContentType(value)
          set_input("ContentType", value)
        end
        #### 
        # Set the value of the Extras input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-delimited list of extra information to fetch for each returned record. See documentation for more details on supported fields.
        ###

        def set_Extras(value)
          set_input("Extras", value)
        end
        #### 
        # Set the value of the GeoContext input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A numeric value representing the photo's location info beyond latitude and longitude. 0 = not defined, 1 = indoors, 2 = outdoors.
        ###

        def set_GeoContext(value)
          set_input("GeoContext", value)
        end
        #### 
        # Set the value of the GroupID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of a group who's pool to search. If specified, only matching photos posted to the group's pool will be returned.
        ###

        def set_GroupID(value)
          set_input("GroupID", value)
        end
        #### 
        # Set the value of the InGallery input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Limits the search to only photos that are in a gallery. Default is false.
        ###

        def set_InGallery(value)
          set_input("InGallery", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) A valid latitude, in decimal format, for performing geo queries (not required if providing another limiting search parameter).
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) A valid longitude, in decimal format, for performing geo queries (not required if providing another limiting search parameter).
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the MaxTakenDate input for this Choreo. 
        # 
        # @param String - (optional, date) The maximum taken date. Photos with an taken date less than or equal to this value will be returned. The date can be in the form of a mysql datetime or unix timestamp.
        ###

        def set_MaxTakenDate(value)
          set_input("MaxTakenDate", value)
        end
        #### 
        # Set the value of the MaxUploadDate input for this Choreo. 
        # 
        # @param String - (optional, date) The maximum upload date. Photos with an upload date less than or equal to this value will be returned. The date can be in the form of a unix timestamp or mysql datetime.
        ###

        def set_MaxUploadDate(value)
          set_input("MaxUploadDate", value)
        end
        #### 
        # Set the value of the Media input for this Choreo. 
        # 
        # @param String - (optional, string) Filter results by media type. Valid values are all (default), photos or videos.
        ###

        def set_Media(value)
          set_input("Media", value)
        end
        #### 
        # Set the value of the MinTakenDate input for this Choreo. 
        # 
        # @param String - (optional, date) The minimum taken date. Photos with a taken date greater than or equal to this value will be returned. The date can be in the form of a mysql datetime or unix timestamp.
        ###

        def set_MinTakenDate(value)
          set_input("MinTakenDate", value)
        end
        #### 
        # Set the value of the MinUploadDate input for this Choreo. 
        # 
        # @param String - (optional, date) The minimum upload date. Photos with an upload date greater than or equal to this value will be returned. The date can be in the form of a unix timestamp or mysql datetime.
        ###

        def set_MinUploadDate(value)
          set_input("MinUploadDate", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to return. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of photos to return per page. Defaults to 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the PlaceID input for this Choreo. 
        # 
        # @param String - (optional, string) A Flickr place id.
        ###

        def set_PlaceID(value)
          set_input("PlaceID", value)
        end
        #### 
        # Set the value of the RadiusUnits input for this Choreo. 
        # 
        # @param String - (optional, string) The unit of measure when doing radial geo queries. Valid values are: "mi" (miles) and "km" (kilometers). The default is "km".
        ###

        def set_RadiusUnits(value)
          set_input("RadiusUnits", value)
        end
        #### 
        # Set the value of the Radius input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A valid radius used for geo queries, greater than zero and less than 20 miles (or 32 kilometers). Defaults to 5 (km).
        ###

        def set_Radius(value)
          set_input("Radius", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Sort input for this Choreo. 
        # 
        # @param String - (optional, string) Defaults to date-posted-desc unless performing a geo query. Valid values are: date-posted-asc, date-posted-desc, date-taken-asc, date-taken-desc, interestingness-desc, interestingness-asc, relevance.
        ###

        def set_Sort(value)
          set_input("Sort", value)
        end
        #### 
        # Set the value of the TagMode input for this Choreo. 
        # 
        # @param String - (optional, string) Use the mode 'any' to search using an OR combination of tags. Use 'all' for an AND combnation. Defaults to 'any'.
        ###

        def set_TagMode(value)
          set_input("TagMode", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-delimited list of tags. Photos with one or more of the tags listed will be returned. You can exclude results that match a term by prepending it with a hyphen.
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end
        #### 
        # Set the value of the Text input for this Choreo. 
        # 
        # @param String - (conditional, string) A keyword search against photo titles, descriptions, or tags. Prepend search term with a hyphen to exclude. Not required if providing another limiting search parameter.
        ###

        def set_Text(value)
          set_input("Text", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The ID of the user who's photo to search. If this parameter isn't passed, all public photos will be searched. A value of "me" will search against the authenticated user's photos.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end
        #### 
        # Set the value of the WOEID input for this Choreo. 
        # 
        # @param String - (optional, string) The unique 'Where on Earth ID' that uniquely represents spatial entities.
        ###

        def set_WOEID(value)
          set_input("WOEID", value)
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
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Search



    ##############################################################################
    #
    # SearchPhotos
    #
    # Returns a list of photos matching a search criteria.
    #
    ##############################################################################

    class SearchPhotos < Choreography

      ####
      #  Create a new instance of the SearchPhotos Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Photos/SearchPhotos")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchPhotosInputSet
      ####
      def new_input_set()
        return SearchPhotosInputSet.new()
      end

      def make_result_set()
        return SearchPhotosResultSet.new()
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
        results = SearchPhotosResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchPhotos
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchPhotosInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Accuracy input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The accuracy level of the location information. Current range is 1-16. World level is 1, Country is ~3, Region is ~6, City is ~11, Street is ~16.
        ###

        def set_Accuracy(value)
          set_input("Accuracy", value)
        end
        #### 
        # Set the value of the BoundingBox input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-delimited list of 4 values defining the Bounding Box of the area that will be searched. These values represent the coordinates of the bottom-left corner and top-right corner of the box.
        ###

        def set_BoundingBox(value)
          set_input("BoundingBox", value)
        end
        #### 
        # Set the value of the ContentType input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The content type setting. 1 = photos only, 2 = screenshots only, 3 = other, 4 = photos and screenshots, 5 = screenshots and other, 6 = photos and other, 7 = all.
        ###

        def set_ContentType(value)
          set_input("ContentType", value)
        end
        #### 
        # Set the value of the Extras input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-delimited list of extra information to fetch for each returned record. See documentation for more details on supported fields.
        ###

        def set_Extras(value)
          set_input("Extras", value)
        end
        #### 
        # Set the value of the GeoContext input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A numeric value representing the photo's location info beyond latitude and longitude. 0 = not defined, 1 = indoors, 2 = outdoors.
        ###

        def set_GeoContext(value)
          set_input("GeoContext", value)
        end
        #### 
        # Set the value of the GroupID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of a group who's pool to search. If specified, only matching photos posted to the group's pool will be returned.
        ###

        def set_GroupID(value)
          set_input("GroupID", value)
        end
        #### 
        # Set the value of the InGallery input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Limits the search to only photos that are in a gallery. Default is false.
        ###

        def set_InGallery(value)
          set_input("InGallery", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) A valid latitude, in decimal format, for performing geo queries (not required if providing another limiting search parameter).
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) A valid longitude, in decimal format, for performing geo queries (not required if providing another limiting search parameter).
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the MaxTakenDate input for this Choreo. 
        # 
        # @param String - (optional, date) The maximum taken date. Photos with an taken date less than or equal to this value will be returned. The date can be in the form of a mysql datetime or unix timestamp.
        ###

        def set_MaxTakenDate(value)
          set_input("MaxTakenDate", value)
        end
        #### 
        # Set the value of the MaxUploadDate input for this Choreo. 
        # 
        # @param String - (optional, date) The maximum upload date. Photos with an upload date less than or equal to this value will be returned. The date can be in the form of a unix timestamp or mysql datetime.
        ###

        def set_MaxUploadDate(value)
          set_input("MaxUploadDate", value)
        end
        #### 
        # Set the value of the Media input for this Choreo. 
        # 
        # @param String - (optional, string) Filter results by media type. Valid values are all (default), photos or videos.
        ###

        def set_Media(value)
          set_input("Media", value)
        end
        #### 
        # Set the value of the MinTakenDate input for this Choreo. 
        # 
        # @param String - (optional, date) The minimum taken date. Photos with a taken date greater than or equal to this value will be returned. The date can be in the form of a mysql datetime or unix timestamp.
        ###

        def set_MinTakenDate(value)
          set_input("MinTakenDate", value)
        end
        #### 
        # Set the value of the MinUploadDate input for this Choreo. 
        # 
        # @param String - (optional, date) The minimum upload date. Photos with an upload date greater than or equal to this value will be returned. The date can be in the form of a unix timestamp or mysql datetime.
        ###

        def set_MinUploadDate(value)
          set_input("MinUploadDate", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to return. Defaults to 1.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of photos to return per page. Defaults to 100.
        ###

        def set_PerPage(value)
          set_input("PerPage", value)
        end
        #### 
        # Set the value of the PlaceID input for this Choreo. 
        # 
        # @param String - (optional, string) A Flickr place id.
        ###

        def set_PlaceID(value)
          set_input("PlaceID", value)
        end
        #### 
        # Set the value of the RadiusUnits input for this Choreo. 
        # 
        # @param String - (optional, string) The unit of measure when doing radial geo queries. Valid values are: "mi" (miles) and "km" (kilometers). The default is "km".
        ###

        def set_RadiusUnits(value)
          set_input("RadiusUnits", value)
        end
        #### 
        # Set the value of the Radius input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A valid radius used for geo queries, greater than zero and less than 20 miles (or 32 kilometers). Defaults to 5 (km).
        ###

        def set_Radius(value)
          set_input("Radius", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Sort input for this Choreo. 
        # 
        # @param String - (optional, string) Defaults to date-posted-desc unless performing a geo query. Valid values are: date-posted-asc, date-posted-desc, date-taken-asc, date-taken-desc, interestingness-desc, interestingness-asc, relevance.
        ###

        def set_Sort(value)
          set_input("Sort", value)
        end
        #### 
        # Set the value of the TagMode input for this Choreo. 
        # 
        # @param String - (optional, string) Use the mode 'any' to search using an OR combination of tags. Use 'all' for an AND combnation. Defaults to 'any'.
        ###

        def set_TagMode(value)
          set_input("TagMode", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-delimited list of tags. Photos with one or more of the tags listed will be returned. You can exclude results that match a term by prepending it with a hyphen.
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end
        #### 
        # Set the value of the Text input for this Choreo. 
        # 
        # @param String - (conditional, string) A keyword search against photo titles, descriptions, or tags. Prepend search term with a hyphen to exclude. Not required if providing another limiting search parameter.
        ###

        def set_Text(value)
          set_input("Text", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) The ID of the user who's photo to search. If this parameter isn't passed, all public photos will be searched. A value of "me" will search against the authenticated user's photos.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end
        #### 
        # Set the value of the WOEID input for this Choreo. 
        # 
        # @param String - (optional, string) The unique 'Where on Earth ID' that uniquely represents spatial entities.
        ###

        def set_WOEID(value)
          set_input("WOEID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchPhotos Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchPhotosResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchPhotos



    ##############################################################################
    #
    # Upload
    #
    # Uploads a photo to Flickr.
    #
    ##############################################################################

    class Upload < Choreography

      ####
      #  Create a new instance of the Upload Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Photos/Upload")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UploadInputSet
      ####
      def new_input_set()
        return UploadInputSet.new()
      end

      def make_result_set()
        return UploadResultSet.new()
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
        results = UploadResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Upload
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UploadInputSet < Choreography::InputSet

        #### 
        # Set the value of the ImageFileContents input for this Choreo. 
        # 
        # @param String - (conditional, string) The base-64 encoded file contents to upload. Required unless using the URL input.
        ###

        def set_ImageFileContents(value)
          set_input("ImageFileContents", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the ContentType input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The type of content you are uploading. Set to 1 for Photo, 2 for Screenshot, or 3 for Other. Defaults to 1.
        ###

        def set_ContentType(value)
          set_input("ContentType", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) A description for the photo.
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the Hidden input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set to 1 to allow photos to appear in global search results, 2 to be hidden from public searches. Defaults to 2.
        ###

        def set_Hidden(value)
          set_input("Hidden", value)
        end
        #### 
        # Set the value of the IsFamily input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 0 for no, 1 for yes. Specifies who can view the photo. Defaults to 0.
        ###

        def set_IsFamily(value)
          set_input("IsFamily", value)
        end
        #### 
        # Set the value of the IsFriend input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 0 for no, 1 for yes. Specifies who can view the photo. Defaults to 0.
        ###

        def set_IsFriend(value)
          set_input("IsFriend", value)
        end
        #### 
        # Set the value of the IsPublic input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 0 for no, 1 for yes. Specifies who can view the photo. Defaults to 0.
        ###

        def set_IsPublic(value)
          set_input("IsPublic", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SafetyLevel input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set value to 1 for Safe, 2 for Moderate, or 3 for Restricted. Defaults to 1.
        ###

        def set_SafetyLevel(value)
          set_input("SafetyLevel", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (optional, string) A list of tags to apply to the photo. Separate multiple tags with spaces.
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (optional, string) The title of the photo you're uploading.
        ###

        def set_Title(value)
          set_input("Title", value)
        end
        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (conditional, string) A url for a photo to upload to Flickr. Required unless specifying the ImageFileContents.
        ###

        def set_URL(value)
          set_input("URL", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - (optional, vault file) A vault file path can be specified as an alternative to using ImageFileContents input. Required if ImageFileContents is not specified.
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Upload Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UploadResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Upload



    ##############################################################################
    #
    # UploadPhoto
    #
    # Uploads a photo to Flickr.
    #
    ##############################################################################

    class UploadPhoto < Choreography

      ####
      #  Create a new instance of the UploadPhoto Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Photos/UploadPhoto")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UploadPhotoInputSet
      ####
      def new_input_set()
        return UploadPhotoInputSet.new()
      end

      def make_result_set()
        return UploadPhotoResultSet.new()
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
        results = UploadPhotoResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UploadPhoto
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UploadPhotoInputSet < Choreography::InputSet

        #### 
        # Set the value of the ImageFileContents input for this Choreo. 
        # 
        # @param String - (conditional, string) The base-64 encoded file contents to upload. Required unless using the VaultFile input alias (an advanced option used when running Choreos in the Temboo Designer).
        ###

        def set_ImageFileContents(value)
          set_input("ImageFileContents", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the ContentType input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The type of content you are uploading. Set to 1 for Photo, 2 for Screenshot, or 3 for Other. Defaults to 1.
        ###

        def set_ContentType(value)
          set_input("ContentType", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) A description for the photo.
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the Hidden input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set to 1 to allow photos to appear in global search results, 2 to be hidden from public searches. Defaults to 2.
        ###

        def set_Hidden(value)
          set_input("Hidden", value)
        end
        #### 
        # Set the value of the IsFamily input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 0 for no, 1 for yes. Specifies who can view the photo. Defaults to 0.
        ###

        def set_IsFamily(value)
          set_input("IsFamily", value)
        end
        #### 
        # Set the value of the IsFriend input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 0 for no, 1 for yes. Specifies who can view the photo. Defaults to 0.
        ###

        def set_IsFriend(value)
          set_input("IsFriend", value)
        end
        #### 
        # Set the value of the IsPublic input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 0 for no, 1 for yes. Specifies who can view the photo. Defaults to 0.
        ###

        def set_IsPublic(value)
          set_input("IsPublic", value)
        end
        #### 
        # Set the value of the SafetyLevel input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Set value to 1 for Safe, 2 for Moderate, or 3 for Restricted. Defaults to 1.
        ###

        def set_SafetyLevel(value)
          set_input("SafetyLevel", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (optional, string) A list of tags to apply to the photo. Separate multiple tags with spaces.
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (optional, string) The title of the photo you're uploading.
        ###

        def set_Title(value)
          set_input("Title", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - (optional, vault file) A vault file path can be specified as an alternative to using ImageFileContents input. Required if ImageFileContents is not specified.
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UploadPhoto Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UploadPhotoResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UploadPhoto




  end # module Photos

  module Places



    ##############################################################################
    #
    # Find
    #
    # Returns a list of place IDs for a query string.
    #
    ##############################################################################

    class Find < Choreography

      ####
      #  Create a new instance of the Find Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Places/Find")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FindInputSet
      ####
      def new_input_set()
        return FindInputSet.new()
      end

      def make_result_set()
        return FindResultSet.new()
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
        results = FindResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Find
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FindInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
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
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (required, string) The query string to use for place ID lookups.
        ###

        def set_Query(value)
          set_input("Query", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Find Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FindResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Find



    ##############################################################################
    #
    # FindByCoordinates
    #
    # Returns a place ID for a given latitude, longitude and accuracy.
    #
    ##############################################################################

    class FindByCoordinates < Choreography

      ####
      #  Create a new instance of the FindByCoordinates Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Places/FindByCoordinates")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FindByCoordinatesInputSet
      ####
      def new_input_set()
        return FindByCoordinatesInputSet.new()
      end

      def make_result_set()
        return FindByCoordinatesResultSet.new()
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
        results = FindByCoordinatesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FindByCoordinates
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FindByCoordinatesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Accuracy input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Recorded accuracy level of the location information. Valid range is 1-16. The default is 16.
        ###

        def set_Accuracy(value)
          set_input("Accuracy", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The latitude whose valid range is -90 to 90. Anything more than 4 decimal places will be truncated.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The longitude whose valid range is -180 to 180. Anything more than 4 decimal places will be truncated.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) 
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FindByCoordinates Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FindByCoordinatesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FindByCoordinates



    ##############################################################################
    #
    # FindByKeyword
    #
    # Returns a list of place IDs for a query string.
    #
    ##############################################################################

    class FindByKeyword < Choreography

      ####
      #  Create a new instance of the FindByKeyword Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Places/FindByKeyword")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FindByKeywordInputSet
      ####
      def new_input_set()
        return FindByKeywordInputSet.new()
      end

      def make_result_set()
        return FindByKeywordResultSet.new()
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
        results = FindByKeywordResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FindByKeyword
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FindByKeywordInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (required, string) The query string to use for place ID lookups.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FindByKeyword Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FindByKeywordResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FindByKeyword



    ##############################################################################
    #
    # FindByLatLon
    #
    # Returns a place ID for a given latitude, longitude and accuracy.
    #
    ##############################################################################

    class FindByLatLon < Choreography

      ####
      #  Create a new instance of the FindByLatLon Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Places/FindByLatLon")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FindByLatLonInputSet
      ####
      def new_input_set()
        return FindByLatLonInputSet.new()
      end

      def make_result_set()
        return FindByLatLonResultSet.new()
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
        results = FindByLatLonResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FindByLatLon
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FindByLatLonInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the Accuracy input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Recorded accuracy level of the location information. Valid range is 1-16. The default is 16.
        ###

        def set_Accuracy(value)
          set_input("Accuracy", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The latitude whose valid range is -90 to 90. Anything more than 4 decimal places will be truncated.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The longitude whose valid range is -180 to 180. Anything more than 4 decimal places will be truncated.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FindByLatLon Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FindByLatLonResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FindByLatLon



    ##############################################################################
    #
    # FindByURL
    #
    # Obtain geo-location information for a place using its flickr.com/places URL.
    #
    ##############################################################################

    class FindByURL < Choreography

      ####
      #  Create a new instance of the FindByURL Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Places/FindByURL")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FindByURLInputSet
      ####
      def new_input_set()
        return FindByURLInputSet.new()
      end

      def make_result_set()
        return FindByURLResultSet.new()
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
        results = FindByURLResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FindByURL
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FindByURLInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (required, string) Enter a flickr.com/places URL in the following form: /country/region/city. For example: /USA/NewYork/Rochester.
        ###

        def set_URL(value)
          set_input("URL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FindByURL Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FindByURLResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FindByURL



    ##############################################################################
    #
    # GetInfoByURL
    #
    # Obtain geo-location information for a place using its flickr.com/places URL.
    #
    ##############################################################################

    class GetInfoByURL < Choreography

      ####
      #  Create a new instance of the GetInfoByURL Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Places/GetInfoByURL")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetInfoByURLInputSet
      ####
      def new_input_set()
        return GetInfoByURLInputSet.new()
      end

      def make_result_set()
        return GetInfoByURLResultSet.new()
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
        results = GetInfoByURLResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetInfoByURL
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetInfoByURLInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (required, string) Enter a flickr.com/places URL in the following form: /country/region/city. For example: /USA/NewYork/Rochester.
        ###

        def set_URL(value)
          set_input("URL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetInfoByURL Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetInfoByURLResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetInfoByURL




  end # module Places

  module Tags



    ##############################################################################
    #
    # GetListPhoto
    #
    # Retrieves the tag list for a given photo.
    #
    ##############################################################################

    class GetListPhoto < Choreography

      ####
      #  Create a new instance of the GetListPhoto Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Tags/GetListPhoto")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetListPhotoInputSet
      ####
      def new_input_set()
        return GetListPhotoInputSet.new()
      end

      def make_result_set()
        return GetListPhotoResultSet.new()
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
        results = GetListPhotoResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetListPhoto
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetListPhotoInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the PhotoId input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the photo to return tags for.
        ###

        def set_PhotoId(value)
          set_input("PhotoId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetListPhoto Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetListPhotoResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetListPhoto



    ##############################################################################
    #
    # GetListUser
    #
    # Retrieves the tag list for a given user (or the currently logged in user).
    #
    ##############################################################################

    class GetListUser < Choreography

      ####
      #  Create a new instance of the GetListUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Tags/GetListUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetListUserInputSet
      ####
      def new_input_set()
        return GetListUserInputSet.new()
      end

      def make_result_set()
        return GetListUserResultSet.new()
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
        results = GetListUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetListUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetListUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The NSID of the user to fetch the tag list for. If not provided, the authenticated user is assumed.
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetListUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetListUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetListUser



    ##############################################################################
    #
    # GetListUserPopular
    #
    # Retrieves the popular tags for a given user (or the currently logged in user).
    #
    ##############################################################################

    class GetListUserPopular < Choreography

      ####
      #  Create a new instance of the GetListUserPopular Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Tags/GetListUserPopular")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetListUserPopularInputSet
      ####
      def new_input_set()
        return GetListUserPopularInputSet.new()
      end

      def make_result_set()
        return GetListUserPopularResultSet.new()
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
        results = GetListUserPopularResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetListUserPopular
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetListUserPopularInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
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
        # @param Integer - (optional, integer) Number of popular tags to return. defaults to 10 when this argument is not present.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The NSID of the user to fetch the tag list for. If not provided, the authenticated user is assumed.
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetListUserPopular Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetListUserPopularResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (xml) The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetListUserPopular



    ##############################################################################
    #
    # ListPhotoTags
    #
    # Retrieves the tag list for a given photo.
    #
    ##############################################################################

    class ListPhotoTags < Choreography

      ####
      #  Create a new instance of the ListPhotoTags Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Tags/ListPhotoTags")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListPhotoTagsInputSet
      ####
      def new_input_set()
        return ListPhotoTagsInputSet.new()
      end

      def make_result_set()
        return ListPhotoTagsResultSet.new()
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
        results = ListPhotoTagsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListPhotoTags
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListPhotoTagsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (optional, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret). Required when accessing a protected resource.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (optional, string) The Access Token Secret retrieved during the OAuth process. Required when accessing a protected resource.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the PhotoID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The id of the photo to return tags for.
        ###

        def set_PhotoID(value)
          set_input("PhotoID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListPhotoTags Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListPhotoTagsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListPhotoTags



    ##############################################################################
    #
    # ListPopularTags
    #
    # Retrieves the popular tags for a given user (or the currently logged in user).
    #
    ##############################################################################

    class ListPopularTags < Choreography

      ####
      #  Create a new instance of the ListPopularTags Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Tags/ListPopularTags")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListPopularTagsInputSet
      ####
      def new_input_set()
        return ListPopularTagsInputSet.new()
      end

      def make_result_set()
        return ListPopularTagsResultSet.new()
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
        results = ListPopularTagsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListPopularTags
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListPopularTagsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret). Required unless UserID is provided.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Access Token Secret retrieved during the OAuth process. Required unless UserID is provided.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (conditional, string) The Access Token retrieved during the OAuth process. Required unless UserID is provided.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of popular tags to return. defaults to 10 when this argument is not present.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (conditional, string) The NSID of the user to fetch the tag list for. Required unless providing all OAuth parameters. When OAuth parameters are passed, the authenticated user is assumed.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListPopularTags Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListPopularTagsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListPopularTags



    ##############################################################################
    #
    # ListUserTags
    #
    # Retrieves the tag list for a given user (or the currently logged in user).
    #
    ##############################################################################

    class ListUserTags < Choreography

      ####
      #  Create a new instance of the ListUserTags Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Flickr/Tags/ListUserTags")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListUserTagsInputSet
      ####
      def new_input_set()
        return ListUserTagsInputSet.new()
      end

      def make_result_set()
        return ListUserTagsResultSet.new()
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
        results = ListUserTagsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListUserTags
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListUserTagsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the APISecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret). Required unless UserID is provided.
        ###

        def set_APISecret(value)
          set_input("APISecret", value)
        end
        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Access Token Secret retrieved during the OAuth process. Required unless UserID is provided.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (conditional, string) The Access Token retrieved during the OAuth process. Required unless UserID is provided.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (conditional, string) The NSID of the user to fetch the tag list for. Required unless providing all OAuth parameters. When OAuth parameters are passed, the authenticated user is assumed.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListUserTags Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListUserTagsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Flickr.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListUserTags




  end # module Tags

end # module Flickr