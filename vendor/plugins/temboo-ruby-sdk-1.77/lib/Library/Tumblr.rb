require "temboo"

module Tumblr




  module Blog



    ##############################################################################
    #
    # RetrieveBlogFollowers
    #
    # Retrieves the count of followers for a specified Tumblr blog.
    #
    ##############################################################################

    class RetrieveBlogFollowers < Choreography

      ####
      #  Create a new instance of the RetrieveBlogFollowers Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Blog/RetrieveBlogFollowers")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveBlogFollowersInputSet
      ####
      def new_input_set()
        return RetrieveBlogFollowersInputSet.new()
      end

      def make_result_set()
        return RetrieveBlogFollowersResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveBlogFollowersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveBlogFollowers
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveBlogFollowersInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the BaseHostname input for this Choreo. 
        # 
        # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com)
        ###

        def set_BaseHostname(value)
          set_input("BaseHostname", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return: 1 - 20. Defaults to 20.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The result to start at. Defaults to 0.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveBlogFollowers Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveBlogFollowersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveBlogFollowers



    ##############################################################################
    #
    # RetrieveBlogInfo
    #
    # Returns general information about the blog, such as the title, number of posts, and other high-level data.
    #
    ##############################################################################

    class RetrieveBlogInfo < Choreography

      ####
      #  Create a new instance of the RetrieveBlogInfo Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Blog/RetrieveBlogInfo")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveBlogInfoInputSet
      ####
      def new_input_set()
        return RetrieveBlogInfoInputSet.new()
      end

      def make_result_set()
        return RetrieveBlogInfoResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveBlogInfoResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveBlogInfo
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveBlogInfoInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the BaseHostname input for this Choreo. 
        # 
        # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
        ###

        def set_BaseHostname(value)
          set_input("BaseHostname", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveBlogInfo Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveBlogInfoResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveBlogInfo




  end # module Blog
  ##############################################################################
  #
  # CreateChatPost
  #
  # Creates a new chat post for a specified Tumblr blog.
  #
  ##############################################################################

  class CreateChatPost < Choreography

    ####
    #  Create a new instance of the CreateChatPost Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/CreateChatPost")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CreateChatPostInputSet
    ####
    def new_input_set()
      return CreateChatPostInputSet.new()
    end

    def make_result_set()
      return CreateChatPostResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = CreateChatPostResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CreateChatPost
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CreateChatPostInputSet < Choreography::InputSet

      #### 
      # Set the value of the Conversation input for this Choreo. 
      # 
      # @param String - (required, string) The text of the conversation/chat, with dialogue labels (no HTML).
      ###

      def set_Conversation(value)
        set_input("Conversation", value)
      end
      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
      # Set the value of the BaseHostname input for this Choreo. 
      # 
      # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
      ###

      def set_BaseHostname(value)
        set_input("BaseHostname", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the Markdown input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
      ###

      def set_Markdown(value)
        set_input("Markdown", value)
      end
      #### 
      # Set the value of the SecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
      ###

      def set_SecretKey(value)
        set_input("SecretKey", value)
      end
      #### 
      # Set the value of the Slug input for this Choreo. 
      # 
      # @param String - (optional, string) Adds a short text summary to the end of the post URL.
      ###

      def set_Slug(value)
        set_input("Slug", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Tags input for this Choreo. 
      # 
      # @param String - (optional, string) Comma-separated tags for this post.
      ###

      def set_Tags(value)
        set_input("Tags", value)
      end
      #### 
      # Set the value of the Title input for this Choreo. 
      # 
      # @param String - (optional, string) The title of the chat.
      ###

      def set_Title(value)
        set_input("Title", value)
      end
      #### 
      # Set the value of the Tweet input for this Choreo. 
      # 
      # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
      ###

      def set_Tweet(value)
        set_input("Tweet", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreateChatPost Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreateChatPostResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreateChatPost



  ##############################################################################
  #
  # CreateLinkPost
  #
  # Creates a new link post for a specified Tumblr blog.
  #
  ##############################################################################

  class CreateLinkPost < Choreography

    ####
    #  Create a new instance of the CreateLinkPost Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/CreateLinkPost")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CreateLinkPostInputSet
    ####
    def new_input_set()
      return CreateLinkPostInputSet.new()
    end

    def make_result_set()
      return CreateLinkPostResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = CreateLinkPostResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CreateLinkPost
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CreateLinkPostInputSet < Choreography::InputSet

      #### 
      # Set the value of the URL input for this Choreo. 
      # 
      # @param String - (required, string) The link you want to post.
      ###

      def set_URL(value)
        set_input("URL", value)
      end
      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
      # Set the value of the BaseHostname input for this Choreo. 
      # 
      # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
      ###

      def set_BaseHostname(value)
        set_input("BaseHostname", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the Description input for this Choreo. 
      # 
      # @param String - (optional, string) A user-supplied description. HTML is allowed.
      ###

      def set_Description(value)
        set_input("Description", value)
      end
      #### 
      # Set the value of the Markdown input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
      ###

      def set_Markdown(value)
        set_input("Markdown", value)
      end
      #### 
      # Set the value of the SecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
      ###

      def set_SecretKey(value)
        set_input("SecretKey", value)
      end
      #### 
      # Set the value of the Slug input for this Choreo. 
      # 
      # @param String - (optional, string) Adds a short text summary to the end of the post URL.
      ###

      def set_Slug(value)
        set_input("Slug", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Tags input for this Choreo. 
      # 
      # @param String - (optional, string) Comma-separated tags for this post.
      ###

      def set_Tags(value)
        set_input("Tags", value)
      end
      #### 
      # Set the value of the Title input for this Choreo. 
      # 
      # @param String - (optional, string) The title of the page the link points to. HTML entities should be escaped.
      ###

      def set_Title(value)
        set_input("Title", value)
      end
      #### 
      # Set the value of the Tweet input for this Choreo. 
      # 
      # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
      ###

      def set_Tweet(value)
        set_input("Tweet", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreateLinkPost Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreateLinkPostResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreateLinkPost



  ##############################################################################
  #
  # CreatePhotoPostWithImageFile
  #
  # Creates a new photo post using a an image that you specify.
  #
  ##############################################################################

  class CreatePhotoPostWithImageFile < Choreography

    ####
    #  Create a new instance of the CreatePhotoPostWithImageFile Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/CreatePhotoPostWithImageFile")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CreatePhotoPostWithImageFileInputSet
    ####
    def new_input_set()
      return CreatePhotoPostWithImageFileInputSet.new()
    end

    def make_result_set()
      return CreatePhotoPostWithImageFileResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = CreatePhotoPostWithImageFileResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CreatePhotoPostWithImageFile
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CreatePhotoPostWithImageFileInputSet < Choreography::InputSet

      #### 
      # Set the value of the Data input for this Choreo. 
      # 
      # @param String - (conditional, string) The base64 ecoded contents of the image you want to post.
      ###

      def set_Data(value)
        set_input("Data", value)
      end
      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
      # Set the value of the BaseHostname input for this Choreo. 
      # 
      # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
      ###

      def set_BaseHostname(value)
        set_input("BaseHostname", value)
      end
      #### 
      # Set the value of the Caption input for this Choreo. 
      # 
      # @param String - (optional, string) The user-supplied caption. HTML is allowed.
      ###

      def set_Caption(value)
        set_input("Caption", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the Link input for this Choreo. 
      # 
      # @param String - (optional, string) The "click-through URL" for the photo.
      ###

      def set_Link(value)
        set_input("Link", value)
      end
      #### 
      # Set the value of the Markdown input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
      ###

      def set_Markdown(value)
        set_input("Markdown", value)
      end
      #### 
      # Set the value of the SecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
      ###

      def set_SecretKey(value)
        set_input("SecretKey", value)
      end
      #### 
      # Set the value of the Slug input for this Choreo. 
      # 
      # @param String - (optional, string) Adds a short text summary to the end of the post URL.
      ###

      def set_Slug(value)
        set_input("Slug", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Tags input for this Choreo. 
      # 
      # @param String - (optional, string) Comma-separated tags for this post.
      ###

      def set_Tags(value)
        set_input("Tags", value)
      end
      #### 
      # Set the value of the Tweet input for this Choreo. 
      # 
      # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
      ###

      def set_Tweet(value)
        set_input("Tweet", value)
      end
      #### 
      # Set the value of the VaultFile input for this Choreo. 
      # 
      # @param TembooPath - (optional, vault file) A path to an image in the vault that you want to post. Required unless specifying the image contents in the Data input.
      ###

      def set_VaultFile(value)
        set_alias("VaultFile", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreatePhotoPostWithImageFile Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreatePhotoPostWithImageFileResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreatePhotoPostWithImageFile



  ##############################################################################
  #
  # CreatePhotoPostWithURL
  #
  # Creates a new photo post using a specified source image URL.
  #
  ##############################################################################

  class CreatePhotoPostWithURL < Choreography

    ####
    #  Create a new instance of the CreatePhotoPostWithURL Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/CreatePhotoPostWithURL")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CreatePhotoPostWithURLInputSet
    ####
    def new_input_set()
      return CreatePhotoPostWithURLInputSet.new()
    end

    def make_result_set()
      return CreatePhotoPostWithURLResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = CreatePhotoPostWithURLResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CreatePhotoPostWithURL
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CreatePhotoPostWithURLInputSet < Choreography::InputSet

      #### 
      # Set the value of the Source input for this Choreo. 
      # 
      # @param String - (required, string) The photo source URL.
      ###

      def set_Source(value)
        set_input("Source", value)
      end
      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
      # Set the value of the BaseHostname input for this Choreo. 
      # 
      # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
      ###

      def set_BaseHostname(value)
        set_input("BaseHostname", value)
      end
      #### 
      # Set the value of the Caption input for this Choreo. 
      # 
      # @param String - (optional, string) The user-supplied caption. HTML is allowed.
      ###

      def set_Caption(value)
        set_input("Caption", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the Link input for this Choreo. 
      # 
      # @param String - (optional, string) The "click-through URL" for the photo.
      ###

      def set_Link(value)
        set_input("Link", value)
      end
      #### 
      # Set the value of the Markdown input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
      ###

      def set_Markdown(value)
        set_input("Markdown", value)
      end
      #### 
      # Set the value of the SecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
      ###

      def set_SecretKey(value)
        set_input("SecretKey", value)
      end
      #### 
      # Set the value of the Slug input for this Choreo. 
      # 
      # @param String - (optional, string) Adds a short text summary to the end of the post URL.
      ###

      def set_Slug(value)
        set_input("Slug", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Tags input for this Choreo. 
      # 
      # @param String - (optional, string) Comma-separated tags for this post.
      ###

      def set_Tags(value)
        set_input("Tags", value)
      end
      #### 
      # Set the value of the Tweet input for this Choreo. 
      # 
      # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
      ###

      def set_Tweet(value)
        set_input("Tweet", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreatePhotoPostWithURL Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreatePhotoPostWithURLResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreatePhotoPostWithURL



  ##############################################################################
  #
  # CreateQuotePost
  #
  # Creates a new text post for a specified Tumblr blog.
  #
  ##############################################################################

  class CreateQuotePost < Choreography

    ####
    #  Create a new instance of the CreateQuotePost Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/CreateQuotePost")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CreateQuotePostInputSet
    ####
    def new_input_set()
      return CreateQuotePostInputSet.new()
    end

    def make_result_set()
      return CreateQuotePostResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = CreateQuotePostResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CreateQuotePost
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CreateQuotePostInputSet < Choreography::InputSet

      #### 
      # Set the value of the Quote input for this Choreo. 
      # 
      # @param String - (required, string) The full text of the quote. HTML entities must be escaped.
      ###

      def set_Quote(value)
        set_input("Quote", value)
      end
      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
      # Set the value of the BaseHostname input for this Choreo. 
      # 
      # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
      ###

      def set_BaseHostname(value)
        set_input("BaseHostname", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the Markdown input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
      ###

      def set_Markdown(value)
        set_input("Markdown", value)
      end
      #### 
      # Set the value of the SecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
      ###

      def set_SecretKey(value)
        set_input("SecretKey", value)
      end
      #### 
      # Set the value of the Slug input for this Choreo. 
      # 
      # @param String - (optional, string) Adds a short text summary to the end of the post URL.
      ###

      def set_Slug(value)
        set_input("Slug", value)
      end
      #### 
      # Set the value of the Source input for this Choreo. 
      # 
      # @param String - (optional, string) The cited source of the quote. HTML is allowed.
      ###

      def set_Source(value)
        set_input("Source", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Tags input for this Choreo. 
      # 
      # @param String - (optional, string) Comma-separated tags for this post.
      ###

      def set_Tags(value)
        set_input("Tags", value)
      end
      #### 
      # Set the value of the Tweet input for this Choreo. 
      # 
      # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
      ###

      def set_Tweet(value)
        set_input("Tweet", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreateQuotePost Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreateQuotePostResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreateQuotePost



  ##############################################################################
  #
  # CreateTextPost
  #
  # Creates a new quote post for a specified Tumblr blog.
  #
  ##############################################################################

  class CreateTextPost < Choreography

    ####
    #  Create a new instance of the CreateTextPost Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/CreateTextPost")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CreateTextPostInputSet
    ####
    def new_input_set()
      return CreateTextPostInputSet.new()
    end

    def make_result_set()
      return CreateTextPostResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = CreateTextPostResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CreateTextPost
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CreateTextPostInputSet < Choreography::InputSet

      #### 
      # Set the value of the Body input for this Choreo. 
      # 
      # @param String - (required, string) The full post body, HTML allowed.
      ###

      def set_Body(value)
        set_input("Body", value)
      end
      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
      # Set the value of the BaseHostname input for this Choreo. 
      # 
      # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
      ###

      def set_BaseHostname(value)
        set_input("BaseHostname", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the Markdown input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
      ###

      def set_Markdown(value)
        set_input("Markdown", value)
      end
      #### 
      # Set the value of the SecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
      ###

      def set_SecretKey(value)
        set_input("SecretKey", value)
      end
      #### 
      # Set the value of the Slug input for this Choreo. 
      # 
      # @param String - (optional, string) Adds a short text summary to the end of the post URL.
      ###

      def set_Slug(value)
        set_input("Slug", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Tags input for this Choreo. 
      # 
      # @param String - (optional, string) Comma-separated tags for this post.
      ###

      def set_Tags(value)
        set_input("Tags", value)
      end
      #### 
      # Set the value of the Title input for this Choreo. 
      # 
      # @param String - (optional, string) The optional title of the post. HTML entities must be escaped.
      ###

      def set_Title(value)
        set_input("Title", value)
      end
      #### 
      # Set the value of the Tweet input for this Choreo. 
      # 
      # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
      ###

      def set_Tweet(value)
        set_input("Tweet", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreateTextPost Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreateTextPostResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreateTextPost



  ##############################################################################
  #
  # DeletePost
  #
  # Deletes a specified post from a Tumblr blog.
  #
  ##############################################################################

  class DeletePost < Choreography

    ####
    #  Create a new instance of the DeletePost Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/DeletePost")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DeletePostInputSet
    ####
    def new_input_set()
      return DeletePostInputSet.new()
    end

    def make_result_set()
      return DeletePostResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = DeletePostResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the DeletePost
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DeletePostInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
      # Set the value of the BaseHostname input for this Choreo. 
      # 
      # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
      ###

      def set_BaseHostname(value)
        set_input("BaseHostname", value)
      end
      #### 
      # Set the value of the ID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The ID of the post you want to delete.
      ###

      def set_ID(value)
        set_input("ID", value)
      end
      #### 
      # Set the value of the SecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
      ###

      def set_SecretKey(value)
        set_input("SecretKey", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the DeletePost Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DeletePostResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class DeletePost



  ##############################################################################
  #
  # EditChatPost
  #
  # Updates a specified chat post on a Tumblr blog.
  #
  ##############################################################################

  class EditChatPost < Choreography

    ####
    #  Create a new instance of the EditChatPost Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/EditChatPost")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return EditChatPostInputSet
    ####
    def new_input_set()
      return EditChatPostInputSet.new()
    end

    def make_result_set()
      return EditChatPostResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = EditChatPostResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the EditChatPost
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class EditChatPostInputSet < Choreography::InputSet

      #### 
      # Set the value of the Conversation input for this Choreo. 
      # 
      # @param String - (required, string) The text of the conversation/chat, with dialogue labels (no HTML).
      ###

      def set_Conversation(value)
        set_input("Conversation", value)
      end
      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
      # Set the value of the BaseHostname input for this Choreo. 
      # 
      # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
      ###

      def set_BaseHostname(value)
        set_input("BaseHostname", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the ID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The ID of the post you want to edit.
      ###

      def set_ID(value)
        set_input("ID", value)
      end
      #### 
      # Set the value of the Markdown input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
      ###

      def set_Markdown(value)
        set_input("Markdown", value)
      end
      #### 
      # Set the value of the SecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
      ###

      def set_SecretKey(value)
        set_input("SecretKey", value)
      end
      #### 
      # Set the value of the Slug input for this Choreo. 
      # 
      # @param String - (optional, string) Adds a short text summary to the end of the post URL.
      ###

      def set_Slug(value)
        set_input("Slug", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Tags input for this Choreo. 
      # 
      # @param String - (optional, string) Comma-separated tags for this post.
      ###

      def set_Tags(value)
        set_input("Tags", value)
      end
      #### 
      # Set the value of the Title input for this Choreo. 
      # 
      # @param String - (optional, string) The title of the chat.
      ###

      def set_Title(value)
        set_input("Title", value)
      end
      #### 
      # Set the value of the Tweet input for this Choreo. 
      # 
      # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
      ###

      def set_Tweet(value)
        set_input("Tweet", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the EditChatPost Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class EditChatPostResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class EditChatPost



  ##############################################################################
  #
  # EditLinkPost
  #
  # Updates a specified link post on a Tumblr blog.
  #
  ##############################################################################

  class EditLinkPost < Choreography

    ####
    #  Create a new instance of the EditLinkPost Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/EditLinkPost")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return EditLinkPostInputSet
    ####
    def new_input_set()
      return EditLinkPostInputSet.new()
    end

    def make_result_set()
      return EditLinkPostResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = EditLinkPostResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the EditLinkPost
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class EditLinkPostInputSet < Choreography::InputSet

      #### 
      # Set the value of the URL input for this Choreo. 
      # 
      # @param String - (required, string) The link you want to post.
      ###

      def set_URL(value)
        set_input("URL", value)
      end
      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
      # Set the value of the BaseHostname input for this Choreo. 
      # 
      # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
      ###

      def set_BaseHostname(value)
        set_input("BaseHostname", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the Description input for this Choreo. 
      # 
      # @param String - (optional, string) A user-supplied description. HTML is allowed.
      ###

      def set_Description(value)
        set_input("Description", value)
      end
      #### 
      # Set the value of the ID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The ID of the post you want to edit.
      ###

      def set_ID(value)
        set_input("ID", value)
      end
      #### 
      # Set the value of the Markdown input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
      ###

      def set_Markdown(value)
        set_input("Markdown", value)
      end
      #### 
      # Set the value of the SecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
      ###

      def set_SecretKey(value)
        set_input("SecretKey", value)
      end
      #### 
      # Set the value of the Slug input for this Choreo. 
      # 
      # @param String - (optional, string) Adds a short text summary to the end of the post URL.
      ###

      def set_Slug(value)
        set_input("Slug", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Tags input for this Choreo. 
      # 
      # @param String - (optional, string) Comma-separated tags for this post.
      ###

      def set_Tags(value)
        set_input("Tags", value)
      end
      #### 
      # Set the value of the Title input for this Choreo. 
      # 
      # @param String - (optional, string) The title of the page the link points to. HTML entities should be escaped.
      ###

      def set_Title(value)
        set_input("Title", value)
      end
      #### 
      # Set the value of the Tweet input for this Choreo. 
      # 
      # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
      ###

      def set_Tweet(value)
        set_input("Tweet", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the EditLinkPost Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class EditLinkPostResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class EditLinkPost



  ##############################################################################
  #
  # EditPhotoPostWithImageFile
  #
  # Updates a specified photo post on a Tumblr blog using a provided image file.
  #
  ##############################################################################

  class EditPhotoPostWithImageFile < Choreography

    ####
    #  Create a new instance of the EditPhotoPostWithImageFile Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/EditPhotoPostWithImageFile")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return EditPhotoPostWithImageFileInputSet
    ####
    def new_input_set()
      return EditPhotoPostWithImageFileInputSet.new()
    end

    def make_result_set()
      return EditPhotoPostWithImageFileResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = EditPhotoPostWithImageFileResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the EditPhotoPostWithImageFile
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class EditPhotoPostWithImageFileInputSet < Choreography::InputSet

      #### 
      # Set the value of the Data input for this Choreo. 
      # 
      # @param String - (conditional, string) The base64 ecoded contents of the image you want to post.
      ###

      def set_Data(value)
        set_input("Data", value)
      end
      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
      # Set the value of the BaseHostname input for this Choreo. 
      # 
      # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
      ###

      def set_BaseHostname(value)
        set_input("BaseHostname", value)
      end
      #### 
      # Set the value of the Caption input for this Choreo. 
      # 
      # @param String - (optional, string) The user-supplied caption. HTML is allowed.
      ###

      def set_Caption(value)
        set_input("Caption", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the ID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The ID of the post you want to edit.
      ###

      def set_ID(value)
        set_input("ID", value)
      end
      #### 
      # Set the value of the Link input for this Choreo. 
      # 
      # @param String - (optional, string) The "click-through URL" for the photo.
      ###

      def set_Link(value)
        set_input("Link", value)
      end
      #### 
      # Set the value of the Markdown input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
      ###

      def set_Markdown(value)
        set_input("Markdown", value)
      end
      #### 
      # Set the value of the SecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
      ###

      def set_SecretKey(value)
        set_input("SecretKey", value)
      end
      #### 
      # Set the value of the Slug input for this Choreo. 
      # 
      # @param String - (optional, string) Adds a short text summary to the end of the post URL.
      ###

      def set_Slug(value)
        set_input("Slug", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Tags input for this Choreo. 
      # 
      # @param String - (optional, string) Comma-separated tags for this post.
      ###

      def set_Tags(value)
        set_input("Tags", value)
      end
      #### 
      # Set the value of the Tweet input for this Choreo. 
      # 
      # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
      ###

      def set_Tweet(value)
        set_input("Tweet", value)
      end
      #### 
      # Set the value of the VaultFile input for this Choreo. 
      # 
      # @param TembooPath - (optional, vault file) A path to an image in the vault that you want to post. Required unless specifying the image contents in the Data input.
      ###

      def set_VaultFile(value)
        set_alias("VaultFile", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the EditPhotoPostWithImageFile Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class EditPhotoPostWithImageFileResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class EditPhotoPostWithImageFile



  ##############################################################################
  #
  # EditPhotoPostWithURL
  #
  # Updates a specified photo post on a Tumblr blog using an image source link.
  #
  ##############################################################################

  class EditPhotoPostWithURL < Choreography

    ####
    #  Create a new instance of the EditPhotoPostWithURL Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/EditPhotoPostWithURL")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return EditPhotoPostWithURLInputSet
    ####
    def new_input_set()
      return EditPhotoPostWithURLInputSet.new()
    end

    def make_result_set()
      return EditPhotoPostWithURLResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = EditPhotoPostWithURLResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the EditPhotoPostWithURL
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class EditPhotoPostWithURLInputSet < Choreography::InputSet

      #### 
      # Set the value of the Source input for this Choreo. 
      # 
      # @param String - (required, string) The photo source URL.
      ###

      def set_Source(value)
        set_input("Source", value)
      end
      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
      # Set the value of the BaseHostname input for this Choreo. 
      # 
      # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
      ###

      def set_BaseHostname(value)
        set_input("BaseHostname", value)
      end
      #### 
      # Set the value of the Caption input for this Choreo. 
      # 
      # @param String - (optional, string) The user-supplied caption. HTML is allowed.
      ###

      def set_Caption(value)
        set_input("Caption", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the ID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The ID of the post you want to edit.
      ###

      def set_ID(value)
        set_input("ID", value)
      end
      #### 
      # Set the value of the Link input for this Choreo. 
      # 
      # @param String - (optional, string) The "click-through URL" for the photo.
      ###

      def set_Link(value)
        set_input("Link", value)
      end
      #### 
      # Set the value of the Markdown input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
      ###

      def set_Markdown(value)
        set_input("Markdown", value)
      end
      #### 
      # Set the value of the SecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
      ###

      def set_SecretKey(value)
        set_input("SecretKey", value)
      end
      #### 
      # Set the value of the Slug input for this Choreo. 
      # 
      # @param String - (optional, string) Adds a short text summary to the end of the post URL.
      ###

      def set_Slug(value)
        set_input("Slug", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Tags input for this Choreo. 
      # 
      # @param String - (optional, string) Comma-separated tags for this post.
      ###

      def set_Tags(value)
        set_input("Tags", value)
      end
      #### 
      # Set the value of the Tweet input for this Choreo. 
      # 
      # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
      ###

      def set_Tweet(value)
        set_input("Tweet", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the EditPhotoPostWithURL Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class EditPhotoPostWithURLResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class EditPhotoPostWithURL



  ##############################################################################
  #
  # EditQuotePost
  #
  # Updates a specified quote post on a Tumblr blog.
  #
  ##############################################################################

  class EditQuotePost < Choreography

    ####
    #  Create a new instance of the EditQuotePost Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/EditQuotePost")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return EditQuotePostInputSet
    ####
    def new_input_set()
      return EditQuotePostInputSet.new()
    end

    def make_result_set()
      return EditQuotePostResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = EditQuotePostResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the EditQuotePost
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class EditQuotePostInputSet < Choreography::InputSet

      #### 
      # Set the value of the Quote input for this Choreo. 
      # 
      # @param String - (required, string) The full text of the quote. HTML entities must be escpaed.
      ###

      def set_Quote(value)
        set_input("Quote", value)
      end
      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
      # Set the value of the BaseHostname input for this Choreo. 
      # 
      # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
      ###

      def set_BaseHostname(value)
        set_input("BaseHostname", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the ID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The ID of the post you want to edit.
      ###

      def set_ID(value)
        set_input("ID", value)
      end
      #### 
      # Set the value of the Markdown input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
      ###

      def set_Markdown(value)
        set_input("Markdown", value)
      end
      #### 
      # Set the value of the SecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
      ###

      def set_SecretKey(value)
        set_input("SecretKey", value)
      end
      #### 
      # Set the value of the Slug input for this Choreo. 
      # 
      # @param String - (optional, string) Adds a short text summary to the end of the post URL.
      ###

      def set_Slug(value)
        set_input("Slug", value)
      end
      #### 
      # Set the value of the Source input for this Choreo. 
      # 
      # @param String - (optional, string) The cited source of the quote. HTML is allowed.
      ###

      def set_Source(value)
        set_input("Source", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Tags input for this Choreo. 
      # 
      # @param String - (optional, string) Comma-separated tags for this post.
      ###

      def set_Tags(value)
        set_input("Tags", value)
      end
      #### 
      # Set the value of the Tweet input for this Choreo. 
      # 
      # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
      ###

      def set_Tweet(value)
        set_input("Tweet", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the EditQuotePost Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class EditQuotePostResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class EditQuotePost



  ##############################################################################
  #
  # EditTextPost
  #
  # Updates a specified text post on a Tumblr blog.
  #
  ##############################################################################

  class EditTextPost < Choreography

    ####
    #  Create a new instance of the EditTextPost Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/EditTextPost")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return EditTextPostInputSet
    ####
    def new_input_set()
      return EditTextPostInputSet.new()
    end

    def make_result_set()
      return EditTextPostResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = EditTextPostResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the EditTextPost
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class EditTextPostInputSet < Choreography::InputSet

      #### 
      # Set the value of the Body input for this Choreo. 
      # 
      # @param String - (required, string) The full post body, HTML allowed.
      ###

      def set_Body(value)
        set_input("Body", value)
      end
      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
      # Set the value of the BaseHostname input for this Choreo. 
      # 
      # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
      ###

      def set_BaseHostname(value)
        set_input("BaseHostname", value)
      end
      #### 
      # Set the value of the Date input for this Choreo. 
      # 
      # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
      ###

      def set_Date(value)
        set_input("Date", value)
      end
      #### 
      # Set the value of the ID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The ID of the post you want to edit.
      ###

      def set_ID(value)
        set_input("ID", value)
      end
      #### 
      # Set the value of the Markdown input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
      ###

      def set_Markdown(value)
        set_input("Markdown", value)
      end
      #### 
      # Set the value of the SecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
      ###

      def set_SecretKey(value)
        set_input("SecretKey", value)
      end
      #### 
      # Set the value of the Slug input for this Choreo. 
      # 
      # @param String - (optional, string) Adds a short text summary to the end of the post URL.
      ###

      def set_Slug(value)
        set_input("Slug", value)
      end
      #### 
      # Set the value of the State input for this Choreo. 
      # 
      # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
      ###

      def set_State(value)
        set_input("State", value)
      end
      #### 
      # Set the value of the Tags input for this Choreo. 
      # 
      # @param String - (optional, string) Comma-separated tags for this post.
      ###

      def set_Tags(value)
        set_input("Tags", value)
      end
      #### 
      # Set the value of the Title input for this Choreo. 
      # 
      # @param String - (optional, string) The optional title of the post. HTML entities must be escaped.
      ###

      def set_Title(value)
        set_input("Title", value)
      end
      #### 
      # Set the value of the Tweet input for this Choreo. 
      # 
      # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
      ###

      def set_Tweet(value)
        set_input("Tweet", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the EditTextPost Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class EditTextPostResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class EditTextPost



  ##############################################################################
  #
  # GetUserInformation
  #
  # Retrieves the user information associated with a given set of Tumblr Oauth credentials.
  #
  ##############################################################################

  class GetUserInformation < Choreography

    ####
    #  Create a new instance of the GetUserInformation Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/GetUserInformation")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetUserInformationInputSet
    ####
    def new_input_set()
      return GetUserInformationInputSet.new()
    end

    def make_result_set()
      return GetUserInformationResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetUserInformationResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetUserInformation
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetUserInformationInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
      # Set the value of the SecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
      ###

      def set_SecretKey(value)
        set_input("SecretKey", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetUserInformation Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetUserInformationResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetUserInformation



  ##############################################################################
  #
  # LikePost
  #
  # Allows a user to like a specified post.
  #
  ##############################################################################

  class LikePost < Choreography

    ####
    #  Create a new instance of the LikePost Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/LikePost")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return LikePostInputSet
    ####
    def new_input_set()
      return LikePostInputSet.new()
    end

    def make_result_set()
      return LikePostResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = LikePostResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the LikePost
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class LikePostInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
      # Set the value of the ID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The ID of the post you want to like.
      ###

      def set_ID(value)
        set_input("ID", value)
      end
      #### 
      # Set the value of the ReblogKey input for this Choreo. 
      # 
      # @param String - (required, string) The reblog key for the post id. This can be retrieved with the RetrievePublishedPosts Choreo.
      ###

      def set_ReblogKey(value)
        set_input("ReblogKey", value)
      end
      #### 
      # Set the value of the SecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
      ###

      def set_SecretKey(value)
        set_input("SecretKey", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the LikePost Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class LikePostResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class LikePost




  module OAuth



    ##############################################################################
    #
    # FinalizeOAuth
    #
    # Completes the OAuth process by retrieving a Tumblr access token and access token secret for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
    #
    ##############################################################################

    class FinalizeOAuth < Choreography

      ####
      #  Create a new instance of the FinalizeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/OAuth/FinalizeOAuth")
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
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        # @param String - (required, string) The oauth_token_secret retrieved during the OAuth process. This is returned by the InitializeOAuth Choreo.
        ###

        def set_OAuthTokenSecret(value)
          set_input("OAuthTokenSecret", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
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
        super(session, "/Library/Tumblr/OAuth/InitializeOAuth")
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
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
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
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
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
      	# Retrieve the value for the "AuthorizationURL" output from this Choreo execution
      	#
      	# @return String - (string) The authorization URL that the application's user needs to go to in order to grant access to your application.
      	####
      	def get_AuthorizationURL()
      	  return @outputs["AuthorizationURL"]
      	end
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
      end

    end # class InitializeOAuth




  end # module OAuth

  module Post



    ##############################################################################
    #
    # CreateAudioPostWithURL
    #
    # Creates a new audio post using a specified external URL.
    #
    ##############################################################################

    class CreateAudioPostWithURL < Choreography

      ####
      #  Create a new instance of the CreateAudioPostWithURL Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Post/CreateAudioPostWithURL")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateAudioPostWithURLInputSet
      ####
      def new_input_set()
        return CreateAudioPostWithURLInputSet.new()
      end

      def make_result_set()
        return CreateAudioPostWithURLResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateAudioPostWithURLResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateAudioPostWithURL
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateAudioPostWithURLInputSet < Choreography::InputSet

        #### 
        # Set the value of the ExternalURL input for this Choreo. 
        # 
        # @param String - (required, string) The URL of the site that hosts the audio file (not Tumblr).
        ###

        def set_ExternalURL(value)
          set_input("ExternalURL", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the BaseHostname input for this Choreo. 
        # 
        # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
        ###

        def set_BaseHostname(value)
          set_input("BaseHostname", value)
        end
        #### 
        # Set the value of the Caption input for this Choreo. 
        # 
        # @param String - (optional, string) The user-supplied caption. HTML is allowed.
        ###

        def set_Caption(value)
          set_input("Caption", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the Markdown input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
        ###

        def set_Markdown(value)
          set_input("Markdown", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) Adds a short text summary to the end of the post URL.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-separated tags for this post.
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end
        #### 
        # Set the value of the Tweet input for this Choreo. 
        # 
        # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
        ###

        def set_Tweet(value)
          set_input("Tweet", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateAudioPostWithURL Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateAudioPostWithURLResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateAudioPostWithURL



    ##############################################################################
    #
    # CreateChatPost
    #
    # Creates a new chat post for a specified Tumblr blog.
    #
    ##############################################################################

    class CreateChatPost < Choreography

      ####
      #  Create a new instance of the CreateChatPost Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Post/CreateChatPost")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateChatPostInputSet
      ####
      def new_input_set()
        return CreateChatPostInputSet.new()
      end

      def make_result_set()
        return CreateChatPostResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateChatPostResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateChatPost
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateChatPostInputSet < Choreography::InputSet

        #### 
        # Set the value of the Conversation input for this Choreo. 
        # 
        # @param String - (required, multiline) The text of the conversation/chat, with dialogue labels (ex: Speaker: Dialogue.)(no HTML). Use separate lines for new lines as well as for a new speaker (include dialogue labels).
        ###

        def set_Conversation(value)
          set_input("Conversation", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the BaseHostname input for this Choreo. 
        # 
        # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
        ###

        def set_BaseHostname(value)
          set_input("BaseHostname", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the Markdown input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
        ###

        def set_Markdown(value)
          set_input("Markdown", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) Adds a short text summary to the end of the post URL.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-separated tags for this post.
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (optional, string) The title of the chat.
        ###

        def set_Title(value)
          set_input("Title", value)
        end
        #### 
        # Set the value of the Tweet input for this Choreo. 
        # 
        # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
        ###

        def set_Tweet(value)
          set_input("Tweet", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateChatPost Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateChatPostResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (string) The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateChatPost



    ##############################################################################
    #
    # CreateLinkPost
    #
    # Creates a new link post for a specified Tumblr blog.
    #
    ##############################################################################

    class CreateLinkPost < Choreography

      ####
      #  Create a new instance of the CreateLinkPost Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Post/CreateLinkPost")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateLinkPostInputSet
      ####
      def new_input_set()
        return CreateLinkPostInputSet.new()
      end

      def make_result_set()
        return CreateLinkPostResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateLinkPostResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateLinkPost
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateLinkPostInputSet < Choreography::InputSet

        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (required, string) The link you want to post.
        ###

        def set_URL(value)
          set_input("URL", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the BaseHostname input for this Choreo. 
        # 
        # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
        ###

        def set_BaseHostname(value)
          set_input("BaseHostname", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) A user-supplied description. HTML is allowed.
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the Markdown input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
        ###

        def set_Markdown(value)
          set_input("Markdown", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) Adds a short text summary to the end of the post URL.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-separated tags for this post.
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (optional, string) The title of the page the link points to. HTML entities should be escaped.
        ###

        def set_Title(value)
          set_input("Title", value)
        end
        #### 
        # Set the value of the Tweet input for this Choreo. 
        # 
        # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
        ###

        def set_Tweet(value)
          set_input("Tweet", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateLinkPost Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateLinkPostResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateLinkPost



    ##############################################################################
    #
    # CreatePhotoPostWithImageFile
    #
    # Creates a new photo post using an image file that you specify.
    #
    ##############################################################################

    class CreatePhotoPostWithImageFile < Choreography

      ####
      #  Create a new instance of the CreatePhotoPostWithImageFile Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Post/CreatePhotoPostWithImageFile")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreatePhotoPostWithImageFileInputSet
      ####
      def new_input_set()
        return CreatePhotoPostWithImageFileInputSet.new()
      end

      def make_result_set()
        return CreatePhotoPostWithImageFileResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreatePhotoPostWithImageFileResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreatePhotoPostWithImageFile
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreatePhotoPostWithImageFileInputSet < Choreography::InputSet

        #### 
        # Set the value of the Data input for this Choreo. 
        # 
        # @param String - (conditional, string) The Base64-encoded contents of the image you want to post. Required UNLESS uploading a file from a URL using the DataFromURL input variable.
        ###

        def set_Data(value)
          set_input("Data", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the BaseHostname input for this Choreo. 
        # 
        # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
        ###

        def set_BaseHostname(value)
          set_input("BaseHostname", value)
        end
        #### 
        # Set the value of the Caption input for this Choreo. 
        # 
        # @param String - (optional, string) The user-supplied caption. HTML is allowed.
        ###

        def set_Caption(value)
          set_input("Caption", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the Link input for this Choreo. 
        # 
        # @param String - (optional, string) The "click-through URL" for the photo.
        ###

        def set_Link(value)
          set_input("Link", value)
        end
        #### 
        # Set the value of the Markdown input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
        ###

        def set_Markdown(value)
          set_input("Markdown", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) Adds a short text summary to the end of the post URL.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-separated tags for this post.
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end
        #### 
        # Set the value of the Tweet input for this Choreo. 
        # 
        # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
        ###

        def set_Tweet(value)
          set_input("Tweet", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - (optional, vault file) A path to an image in the vault that you want to post. Required unless specifying the image contents in the Data input.
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreatePhotoPostWithImageFile Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreatePhotoPostWithImageFileResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreatePhotoPostWithImageFile



    ##############################################################################
    #
    # CreatePhotoPostWithURL
    #
    # Creates a new photo post using a specified source image URL.
    #
    ##############################################################################

    class CreatePhotoPostWithURL < Choreography

      ####
      #  Create a new instance of the CreatePhotoPostWithURL Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Post/CreatePhotoPostWithURL")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreatePhotoPostWithURLInputSet
      ####
      def new_input_set()
        return CreatePhotoPostWithURLInputSet.new()
      end

      def make_result_set()
        return CreatePhotoPostWithURLResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreatePhotoPostWithURLResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreatePhotoPostWithURL
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreatePhotoPostWithURLInputSet < Choreography::InputSet

        #### 
        # Set the value of the Source input for this Choreo. 
        # 
        # @param String - (required, string) The photo source URL.
        ###

        def set_Source(value)
          set_input("Source", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the BaseHostname input for this Choreo. 
        # 
        # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
        ###

        def set_BaseHostname(value)
          set_input("BaseHostname", value)
        end
        #### 
        # Set the value of the Caption input for this Choreo. 
        # 
        # @param String - (optional, string) The user-supplied caption. HTML is allowed.
        ###

        def set_Caption(value)
          set_input("Caption", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the Link input for this Choreo. 
        # 
        # @param String - (optional, string) The "click-through URL" for the photo.
        ###

        def set_Link(value)
          set_input("Link", value)
        end
        #### 
        # Set the value of the Markdown input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
        ###

        def set_Markdown(value)
          set_input("Markdown", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) Adds a short text summary to the end of the post URL.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-separated tags for this post.
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end
        #### 
        # Set the value of the Tweet input for this Choreo. 
        # 
        # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
        ###

        def set_Tweet(value)
          set_input("Tweet", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreatePhotoPostWithURL Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreatePhotoPostWithURLResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreatePhotoPostWithURL



    ##############################################################################
    #
    # CreateQuotePost
    #
    # Creates a new text post for a specified Tumblr blog.
    #
    ##############################################################################

    class CreateQuotePost < Choreography

      ####
      #  Create a new instance of the CreateQuotePost Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Post/CreateQuotePost")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateQuotePostInputSet
      ####
      def new_input_set()
        return CreateQuotePostInputSet.new()
      end

      def make_result_set()
        return CreateQuotePostResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateQuotePostResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateQuotePost
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateQuotePostInputSet < Choreography::InputSet

        #### 
        # Set the value of the Quote input for this Choreo. 
        # 
        # @param String - (required, string) The full text of the quote.
        ###

        def set_Quote(value)
          set_input("Quote", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the BaseHostname input for this Choreo. 
        # 
        # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
        ###

        def set_BaseHostname(value)
          set_input("BaseHostname", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the Markdown input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
        ###

        def set_Markdown(value)
          set_input("Markdown", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) Adds a short text summary to the end of the post URL.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end
        #### 
        # Set the value of the Source input for this Choreo. 
        # 
        # @param String - (optional, string) The cited source of the quote. HTML is allowed.
        ###

        def set_Source(value)
          set_input("Source", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-separated tags for this post.
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end
        #### 
        # Set the value of the Tweet input for this Choreo. 
        # 
        # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
        ###

        def set_Tweet(value)
          set_input("Tweet", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateQuotePost Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateQuotePostResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateQuotePost



    ##############################################################################
    #
    # CreateTextPost
    #
    # Creates a new quote post for a specified Tumblr blog.
    #
    ##############################################################################

    class CreateTextPost < Choreography

      ####
      #  Create a new instance of the CreateTextPost Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Post/CreateTextPost")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateTextPostInputSet
      ####
      def new_input_set()
        return CreateTextPostInputSet.new()
      end

      def make_result_set()
        return CreateTextPostResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateTextPostResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateTextPost
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateTextPostInputSet < Choreography::InputSet

        #### 
        # Set the value of the Body input for this Choreo. 
        # 
        # @param String - (required, string) The full post body, HTML allowed.
        ###

        def set_Body(value)
          set_input("Body", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the BaseHostname input for this Choreo. 
        # 
        # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
        ###

        def set_BaseHostname(value)
          set_input("BaseHostname", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the Markdown input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
        ###

        def set_Markdown(value)
          set_input("Markdown", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) Adds a short text summary to the end of the post URL.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-separated tags for this post.
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (optional, string) The optional title of the post. HTML entities must be escaped.
        ###

        def set_Title(value)
          set_input("Title", value)
        end
        #### 
        # Set the value of the Tweet input for this Choreo. 
        # 
        # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
        ###

        def set_Tweet(value)
          set_input("Tweet", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateTextPost Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateTextPostResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The format that the response should be in. Can be set to xml or json. Defaults to json.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateTextPost



    ##############################################################################
    #
    # CreateVideoPostWithURL
    #
    # Creates a new video post using specified HTML embed code.
    #
    ##############################################################################

    class CreateVideoPostWithURL < Choreography

      ####
      #  Create a new instance of the CreateVideoPostWithURL Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Post/CreateVideoPostWithURL")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateVideoPostWithURLInputSet
      ####
      def new_input_set()
        return CreateVideoPostWithURLInputSet.new()
      end

      def make_result_set()
        return CreateVideoPostWithURLResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateVideoPostWithURLResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateVideoPostWithURL
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateVideoPostWithURLInputSet < Choreography::InputSet

        #### 
        # Set the value of the Embed input for this Choreo. 
        # 
        # @param String - (required, string) The HTML embed code for the video (not hosted by Tumblr).
        ###

        def set_Embed(value)
          set_input("Embed", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the BaseHostname input for this Choreo. 
        # 
        # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
        ###

        def set_BaseHostname(value)
          set_input("BaseHostname", value)
        end
        #### 
        # Set the value of the Caption input for this Choreo. 
        # 
        # @param String - (optional, string) The user-supplied caption. HTML is allowed.
        ###

        def set_Caption(value)
          set_input("Caption", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the Markdown input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
        ###

        def set_Markdown(value)
          set_input("Markdown", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) Adds a short text summary to the end of the post URL.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-separated tags for this post.
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end
        #### 
        # Set the value of the Tweet input for this Choreo. 
        # 
        # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
        ###

        def set_Tweet(value)
          set_input("Tweet", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateVideoPostWithURL Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateVideoPostWithURLResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateVideoPostWithURL



    ##############################################################################
    #
    # DeletePost
    #
    # Deletes a specified post from a Tumblr blog.
    #
    ##############################################################################

    class DeletePost < Choreography

      ####
      #  Create a new instance of the DeletePost Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Post/DeletePost")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeletePostInputSet
      ####
      def new_input_set()
        return DeletePostInputSet.new()
      end

      def make_result_set()
        return DeletePostResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeletePostResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeletePost
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeletePostInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the BaseHostname input for this Choreo. 
        # 
        # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
        ###

        def set_BaseHostname(value)
          set_input("BaseHostname", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the post you want to delete.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeletePost Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeletePostResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeletePost



    ##############################################################################
    #
    # EditAudioPostWithURL
    #
    # Updates a specified audio post on a Tumblr blog using a specified external URL.
    #
    ##############################################################################

    class EditAudioPostWithURL < Choreography

      ####
      #  Create a new instance of the EditAudioPostWithURL Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Post/EditAudioPostWithURL")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return EditAudioPostWithURLInputSet
      ####
      def new_input_set()
        return EditAudioPostWithURLInputSet.new()
      end

      def make_result_set()
        return EditAudioPostWithURLResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = EditAudioPostWithURLResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the EditAudioPostWithURL
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class EditAudioPostWithURLInputSet < Choreography::InputSet

        #### 
        # Set the value of the ExternalURL input for this Choreo. 
        # 
        # @param String - (required, string) The URL of the site that hosts the audio file (not Tumblr).
        ###

        def set_ExternalURL(value)
          set_input("ExternalURL", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the BaseHostname input for this Choreo. 
        # 
        # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
        ###

        def set_BaseHostname(value)
          set_input("BaseHostname", value)
        end
        #### 
        # Set the value of the Caption input for this Choreo. 
        # 
        # @param String - (optional, string) The user-supplied caption. HTML is allowed.
        ###

        def set_Caption(value)
          set_input("Caption", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the post you want to edit.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Markdown input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
        ###

        def set_Markdown(value)
          set_input("Markdown", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) Adds a short text summary to the end of the post URL.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-separated tags for this post.
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end
        #### 
        # Set the value of the Tweet input for this Choreo. 
        # 
        # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
        ###

        def set_Tweet(value)
          set_input("Tweet", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the EditAudioPostWithURL Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class EditAudioPostWithURLResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class EditAudioPostWithURL



    ##############################################################################
    #
    # EditChatPost
    #
    # Updates a specified chat post on a Tumblr blog.
    #
    ##############################################################################

    class EditChatPost < Choreography

      ####
      #  Create a new instance of the EditChatPost Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Post/EditChatPost")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return EditChatPostInputSet
      ####
      def new_input_set()
        return EditChatPostInputSet.new()
      end

      def make_result_set()
        return EditChatPostResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = EditChatPostResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the EditChatPost
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class EditChatPostInputSet < Choreography::InputSet

        #### 
        # Set the value of the Conversation input for this Choreo. 
        # 
        # @param String - (required, multiline) The text of the conversation/chat, with dialogue labels (ex: Speaker: Dialogue.)(no HTML). Use separate lines for new lines as well as for a new speaker (include dialogue labels).
        ###

        def set_Conversation(value)
          set_input("Conversation", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the BaseHostname input for this Choreo. 
        # 
        # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
        ###

        def set_BaseHostname(value)
          set_input("BaseHostname", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the post you want to edit.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Markdown input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
        ###

        def set_Markdown(value)
          set_input("Markdown", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) Adds a short text summary to the end of the post URL.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-separated tags for this post.
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (optional, string) The title of the chat.
        ###

        def set_Title(value)
          set_input("Title", value)
        end
        #### 
        # Set the value of the Tweet input for this Choreo. 
        # 
        # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
        ###

        def set_Tweet(value)
          set_input("Tweet", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the EditChatPost Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class EditChatPostResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class EditChatPost



    ##############################################################################
    #
    # EditLinkPost
    #
    # Updates a specified link post on a Tumblr blog.
    #
    ##############################################################################

    class EditLinkPost < Choreography

      ####
      #  Create a new instance of the EditLinkPost Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Post/EditLinkPost")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return EditLinkPostInputSet
      ####
      def new_input_set()
        return EditLinkPostInputSet.new()
      end

      def make_result_set()
        return EditLinkPostResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = EditLinkPostResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the EditLinkPost
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class EditLinkPostInputSet < Choreography::InputSet

        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (required, string) The link you want to post.
        ###

        def set_URL(value)
          set_input("URL", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the BaseHostname input for this Choreo. 
        # 
        # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
        ###

        def set_BaseHostname(value)
          set_input("BaseHostname", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) A user-supplied description. HTML is allowed.
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the post you want to edit.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Markdown input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
        ###

        def set_Markdown(value)
          set_input("Markdown", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, multiline) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) Adds a short text summary to the end of the post URL.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-separated tags for this post.
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (optional, string) The title of the page the link points to. HTML entities should be escaped.
        ###

        def set_Title(value)
          set_input("Title", value)
        end
        #### 
        # Set the value of the Tweet input for this Choreo. 
        # 
        # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
        ###

        def set_Tweet(value)
          set_input("Tweet", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the EditLinkPost Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class EditLinkPostResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class EditLinkPost



    ##############################################################################
    #
    # EditPhotoPostWithImageFile
    #
    # Updates a specified photo post on a Tumblr blog using a provided image file.
    #
    ##############################################################################

    class EditPhotoPostWithImageFile < Choreography

      ####
      #  Create a new instance of the EditPhotoPostWithImageFile Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Post/EditPhotoPostWithImageFile")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return EditPhotoPostWithImageFileInputSet
      ####
      def new_input_set()
        return EditPhotoPostWithImageFileInputSet.new()
      end

      def make_result_set()
        return EditPhotoPostWithImageFileResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = EditPhotoPostWithImageFileResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the EditPhotoPostWithImageFile
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class EditPhotoPostWithImageFileInputSet < Choreography::InputSet

        #### 
        # Set the value of the Data input for this Choreo. 
        # 
        # @param String - (conditional, string) The Base64-encoded contents of the image you want to post.
        ###

        def set_Data(value)
          set_input("Data", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the BaseHostname input for this Choreo. 
        # 
        # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
        ###

        def set_BaseHostname(value)
          set_input("BaseHostname", value)
        end
        #### 
        # Set the value of the Caption input for this Choreo. 
        # 
        # @param String - (optional, string) The user-supplied caption. HTML is allowed.
        ###

        def set_Caption(value)
          set_input("Caption", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the post you want to edit.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Link input for this Choreo. 
        # 
        # @param String - (optional, string) The "click-through URL" for the photo.
        ###

        def set_Link(value)
          set_input("Link", value)
        end
        #### 
        # Set the value of the Markdown input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
        ###

        def set_Markdown(value)
          set_input("Markdown", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) Adds a short text summary to the end of the post URL.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-separated tags for this post.
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end
        #### 
        # Set the value of the Tweet input for this Choreo. 
        # 
        # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
        ###

        def set_Tweet(value)
          set_input("Tweet", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - (optional, vault file) A path to an image in the vault that you want to post. Required unless specifying the image contents in the Data input.
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the EditPhotoPostWithImageFile Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class EditPhotoPostWithImageFileResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class EditPhotoPostWithImageFile



    ##############################################################################
    #
    # EditPhotoPostWithURL
    #
    # Updates a specified audio post on a Tumblr blog using a specified source image URL.
    #
    ##############################################################################

    class EditPhotoPostWithURL < Choreography

      ####
      #  Create a new instance of the EditPhotoPostWithURL Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Post/EditPhotoPostWithURL")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return EditPhotoPostWithURLInputSet
      ####
      def new_input_set()
        return EditPhotoPostWithURLInputSet.new()
      end

      def make_result_set()
        return EditPhotoPostWithURLResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = EditPhotoPostWithURLResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the EditPhotoPostWithURL
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class EditPhotoPostWithURLInputSet < Choreography::InputSet

        #### 
        # Set the value of the Source input for this Choreo. 
        # 
        # @param String - (required, string) The photo source URL.
        ###

        def set_Source(value)
          set_input("Source", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the BaseHostname input for this Choreo. 
        # 
        # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
        ###

        def set_BaseHostname(value)
          set_input("BaseHostname", value)
        end
        #### 
        # Set the value of the Caption input for this Choreo. 
        # 
        # @param String - (optional, string) The user-supplied caption. HTML is allowed.
        ###

        def set_Caption(value)
          set_input("Caption", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the post you want to edit.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Link input for this Choreo. 
        # 
        # @param String - (optional, string) The "click-through URL" for the photo.
        ###

        def set_Link(value)
          set_input("Link", value)
        end
        #### 
        # Set the value of the Markdown input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
        ###

        def set_Markdown(value)
          set_input("Markdown", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) Adds a short text summary to the end of the post URL.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-separated tags for this post.
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end
        #### 
        # Set the value of the Tweet input for this Choreo. 
        # 
        # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
        ###

        def set_Tweet(value)
          set_input("Tweet", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the EditPhotoPostWithURL Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class EditPhotoPostWithURLResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class EditPhotoPostWithURL



    ##############################################################################
    #
    # EditQuotePost
    #
    # Updates a specified quote post on a Tumblr blog.
    #
    ##############################################################################

    class EditQuotePost < Choreography

      ####
      #  Create a new instance of the EditQuotePost Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Post/EditQuotePost")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return EditQuotePostInputSet
      ####
      def new_input_set()
        return EditQuotePostInputSet.new()
      end

      def make_result_set()
        return EditQuotePostResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = EditQuotePostResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the EditQuotePost
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class EditQuotePostInputSet < Choreography::InputSet

        #### 
        # Set the value of the Quote input for this Choreo. 
        # 
        # @param String - (required, string) The full text of the quote. HTML entities must be escpaed.
        ###

        def set_Quote(value)
          set_input("Quote", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the BaseHostname input for this Choreo. 
        # 
        # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
        ###

        def set_BaseHostname(value)
          set_input("BaseHostname", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the post you want to edit.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Markdown input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
        ###

        def set_Markdown(value)
          set_input("Markdown", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, any) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) Adds a short text summary to the end of the post URL.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end
        #### 
        # Set the value of the Source input for this Choreo. 
        # 
        # @param String - (optional, string) The cited source of the quote. HTML is allowed.
        ###

        def set_Source(value)
          set_input("Source", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-separated tags for this post.
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end
        #### 
        # Set the value of the Tweet input for this Choreo. 
        # 
        # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
        ###

        def set_Tweet(value)
          set_input("Tweet", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the EditQuotePost Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class EditQuotePostResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class EditQuotePost



    ##############################################################################
    #
    # EditTextPost
    #
    # Updates a specified text post on a Tumblr blog.
    #
    ##############################################################################

    class EditTextPost < Choreography

      ####
      #  Create a new instance of the EditTextPost Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Post/EditTextPost")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return EditTextPostInputSet
      ####
      def new_input_set()
        return EditTextPostInputSet.new()
      end

      def make_result_set()
        return EditTextPostResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = EditTextPostResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the EditTextPost
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class EditTextPostInputSet < Choreography::InputSet

        #### 
        # Set the value of the Body input for this Choreo. 
        # 
        # @param String - (required, string) The full post body, HTML allowed.
        ###

        def set_Body(value)
          set_input("Body", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the BaseHostname input for this Choreo. 
        # 
        # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
        ###

        def set_BaseHostname(value)
          set_input("BaseHostname", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the post you want to edit.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Markdown input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
        ###

        def set_Markdown(value)
          set_input("Markdown", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) Adds a short text summary to the end of the post URL.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-separated tags for this post.
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (optional, string) The optional title of the post. HTML entities must be escaped.
        ###

        def set_Title(value)
          set_input("Title", value)
        end
        #### 
        # Set the value of the Tweet input for this Choreo. 
        # 
        # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
        ###

        def set_Tweet(value)
          set_input("Tweet", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the EditTextPost Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class EditTextPostResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class EditTextPost



    ##############################################################################
    #
    # EditVideoPostWithURL
    #
    # Updates a specified video post on a Tumblr blog using specified HTML embed code.
    #
    ##############################################################################

    class EditVideoPostWithURL < Choreography

      ####
      #  Create a new instance of the EditVideoPostWithURL Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Post/EditVideoPostWithURL")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return EditVideoPostWithURLInputSet
      ####
      def new_input_set()
        return EditVideoPostWithURLInputSet.new()
      end

      def make_result_set()
        return EditVideoPostWithURLResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = EditVideoPostWithURLResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the EditVideoPostWithURL
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class EditVideoPostWithURLInputSet < Choreography::InputSet

        #### 
        # Set the value of the Embed input for this Choreo. 
        # 
        # @param String - (required, string) The HTML embed code for the video (not hosted by Tumblr).
        ###

        def set_Embed(value)
          set_input("Embed", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the BaseHostname input for this Choreo. 
        # 
        # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
        ###

        def set_BaseHostname(value)
          set_input("BaseHostname", value)
        end
        #### 
        # Set the value of the Caption input for this Choreo. 
        # 
        # @param String - (optional, string) The user-supplied caption. HTML is allowed.
        ###

        def set_Caption(value)
          set_input("Caption", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the post you want to edit.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Markdown input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
        ###

        def set_Markdown(value)
          set_input("Markdown", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) Adds a short text summary to the end of the post URL.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end
        #### 
        # Set the value of the State input for this Choreo. 
        # 
        # @param String - (optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
        ###

        def set_State(value)
          set_input("State", value)
        end
        #### 
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-separated tags for this post.
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end
        #### 
        # Set the value of the Tweet input for this Choreo. 
        # 
        # @param String - (optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
        ###

        def set_Tweet(value)
          set_input("Tweet", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the EditVideoPostWithURL Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class EditVideoPostWithURLResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class EditVideoPostWithURL



    ##############################################################################
    #
    # LikePost
    #
    # Allows a user to like a specified post.
    #
    ##############################################################################

    class LikePost < Choreography

      ####
      #  Create a new instance of the LikePost Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Post/LikePost")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LikePostInputSet
      ####
      def new_input_set()
        return LikePostInputSet.new()
      end

      def make_result_set()
        return LikePostResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = LikePostResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LikePost
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LikePostInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the post you want to like.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the ReblogKey input for this Choreo. 
        # 
        # @param String - (required, string) The reblog key for the post id. This can be retrieved with the RetrievePublishedPosts Choreo.
        ###

        def set_ReblogKey(value)
          set_input("ReblogKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LikePost Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LikePostResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class LikePost



    ##############################################################################
    #
    # RetrieveDraftPosts
    #
    # Retrieves a list of queued posts for a specified Tumblr blog.
    #
    ##############################################################################

    class RetrieveDraftPosts < Choreography

      ####
      #  Create a new instance of the RetrieveDraftPosts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Post/RetrieveDraftPosts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveDraftPostsInputSet
      ####
      def new_input_set()
        return RetrieveDraftPostsInputSet.new()
      end

      def make_result_set()
        return RetrieveDraftPostsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveDraftPostsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveDraftPosts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveDraftPostsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the BaseHostname input for this Choreo. 
        # 
        # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
        ###

        def set_BaseHostname(value)
          set_input("BaseHostname", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveDraftPosts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveDraftPostsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveDraftPosts



    ##############################################################################
    #
    # RetrievePublishedPosts
    #
    # Retrieves published posts using various search and filter parameters.
    #
    ##############################################################################

    class RetrievePublishedPosts < Choreography

      ####
      #  Create a new instance of the RetrievePublishedPosts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Post/RetrievePublishedPosts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrievePublishedPostsInputSet
      ####
      def new_input_set()
        return RetrievePublishedPostsInputSet.new()
      end

      def make_result_set()
        return RetrievePublishedPostsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrievePublishedPostsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrievePublishedPosts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrievePublishedPostsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the BaseHostname input for this Choreo. 
        # 
        # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
        ###

        def set_BaseHostname(value)
          set_input("BaseHostname", value)
        end
        #### 
        # Set the value of the Format input for this Choreo. 
        # 
        # @param String - (optional, string) Specifies the post format to return. Valid values are: text (Plain text, no HTML), raw (As entered by user). HTML is returned when left null.
        ###

        def set_Format(value)
          set_input("Format", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The specified post ID in order to return a single post.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of posts to return: 1- 20. Defaults to 20.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the NotesInfo input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates whether to return notes information (specify true or false). Defaults to 0 (false).
        ###

        def set_NotesInfo(value)
          set_input("NotesInfo", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The post number to start at. Defaults to 0.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ReblogInfo input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates whether to return reblog information (specify 1 or 0). Defaults to 0 (false).
        ###

        def set_ReblogInfo(value)
          set_input("ReblogInfo", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Tag input for this Choreo. 
        # 
        # @param String - (optional, string) Limits the response to posts with the specified tag.
        ###

        def set_Tag(value)
          set_input("Tag", value)
        end
        #### 
        # Set the value of the Type input for this Choreo. 
        # 
        # @param String - (optional, string) The type of post to return. Specify one of the following:  text, quote, link, answer, video, audio, photo. When null, all types are returned.
        ###

        def set_Type(value)
          set_input("Type", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrievePublishedPosts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrievePublishedPostsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrievePublishedPosts



    ##############################################################################
    #
    # RetrieveQueuedPosts
    #
    # Retrieves a list of queued posts for a specified Tumblr blog.
    #
    ##############################################################################

    class RetrieveQueuedPosts < Choreography

      ####
      #  Create a new instance of the RetrieveQueuedPosts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Post/RetrieveQueuedPosts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveQueuedPostsInputSet
      ####
      def new_input_set()
        return RetrieveQueuedPostsInputSet.new()
      end

      def make_result_set()
        return RetrieveQueuedPostsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveQueuedPostsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveQueuedPosts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveQueuedPostsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the BaseHostname input for this Choreo. 
        # 
        # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
        ###

        def set_BaseHostname(value)
          set_input("BaseHostname", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveQueuedPosts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveQueuedPostsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveQueuedPosts



    ##############################################################################
    #
    # RetrieveSubmissionPosts
    #
    # Retrieves a list of submission posts for a specified Tumblr blog.
    #
    ##############################################################################

    class RetrieveSubmissionPosts < Choreography

      ####
      #  Create a new instance of the RetrieveSubmissionPosts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Post/RetrieveSubmissionPosts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveSubmissionPostsInputSet
      ####
      def new_input_set()
        return RetrieveSubmissionPostsInputSet.new()
      end

      def make_result_set()
        return RetrieveSubmissionPostsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveSubmissionPostsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveSubmissionPosts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveSubmissionPostsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the BaseHostname input for this Choreo. 
        # 
        # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
        ###

        def set_BaseHostname(value)
          set_input("BaseHostname", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveSubmissionPosts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveSubmissionPostsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveSubmissionPosts



    ##############################################################################
    #
    # UnlikePost
    #
    # Allows a user to like a specified post.
    #
    ##############################################################################

    class UnlikePost < Choreography

      ####
      #  Create a new instance of the UnlikePost Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Post/UnlikePost")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UnlikePostInputSet
      ####
      def new_input_set()
        return UnlikePostInputSet.new()
      end

      def make_result_set()
        return UnlikePostResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UnlikePostResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UnlikePost
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UnlikePostInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The ID of the post you want to unlike.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the ReblogKey input for this Choreo. 
        # 
        # @param String - (required, string) The reblog key for the post id. This can be retrieved with the RetrievePublishedPosts Choreo.
        ###

        def set_ReblogKey(value)
          set_input("ReblogKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UnlikePost Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UnlikePostResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UnlikePost




  end # module Post
  ##############################################################################
  #
  # RetrieveBlogFollowers
  #
  # Retrieves the count of followers for a specified Tumblr blog.
  #
  ##############################################################################

  class RetrieveBlogFollowers < Choreography

    ####
    #  Create a new instance of the RetrieveBlogFollowers Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/RetrieveBlogFollowers")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RetrieveBlogFollowersInputSet
    ####
    def new_input_set()
      return RetrieveBlogFollowersInputSet.new()
    end

    def make_result_set()
      return RetrieveBlogFollowersResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = RetrieveBlogFollowersResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RetrieveBlogFollowers
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RetrieveBlogFollowersInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
      # Set the value of the BaseHostname input for this Choreo. 
      # 
      # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com)
      ###

      def set_BaseHostname(value)
        set_input("BaseHostname", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of results to return: 1 - 20. Defaults to 20.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the Offset input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The result to start at. Defaults to 0.
      ###

      def set_Offset(value)
        set_input("Offset", value)
      end
      #### 
      # Set the value of the SecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
      ###

      def set_SecretKey(value)
        set_input("SecretKey", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RetrieveBlogFollowers Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RetrieveBlogFollowersResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RetrieveBlogFollowers



  ##############################################################################
  #
  # RetrieveBlogInfo
  #
  # Returns general information about the blog, such as the title, number of posts, and other high-level data.
  #
  ##############################################################################

  class RetrieveBlogInfo < Choreography

    ####
    #  Create a new instance of the RetrieveBlogInfo Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/RetrieveBlogInfo")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RetrieveBlogInfoInputSet
    ####
    def new_input_set()
      return RetrieveBlogInfoInputSet.new()
    end

    def make_result_set()
      return RetrieveBlogInfoResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = RetrieveBlogInfoResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RetrieveBlogInfo
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RetrieveBlogInfoInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the BaseHostname input for this Choreo. 
      # 
      # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
      ###

      def set_BaseHostname(value)
        set_input("BaseHostname", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RetrieveBlogInfo Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RetrieveBlogInfoResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RetrieveBlogInfo



  ##############################################################################
  #
  # RetrieveDraftPosts
  #
  # Retrieves a list of queued posts for a specified Tumblr blog.
  #
  ##############################################################################

  class RetrieveDraftPosts < Choreography

    ####
    #  Create a new instance of the RetrieveDraftPosts Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/RetrieveDraftPosts")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RetrieveDraftPostsInputSet
    ####
    def new_input_set()
      return RetrieveDraftPostsInputSet.new()
    end

    def make_result_set()
      return RetrieveDraftPostsResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = RetrieveDraftPostsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RetrieveDraftPosts
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RetrieveDraftPostsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
      # Set the value of the BaseHostname input for this Choreo. 
      # 
      # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
      ###

      def set_BaseHostname(value)
        set_input("BaseHostname", value)
      end
      #### 
      # Set the value of the SecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
      ###

      def set_SecretKey(value)
        set_input("SecretKey", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RetrieveDraftPosts Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RetrieveDraftPostsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RetrieveDraftPosts



  ##############################################################################
  #
  # RetrieveFollowedBlogsForUser
  #
  # Retrieve the blogs followed by the user whose OAuth credentials are provided.
  #
  ##############################################################################

  class RetrieveFollowedBlogsForUser < Choreography

    ####
    #  Create a new instance of the RetrieveFollowedBlogsForUser Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/RetrieveFollowedBlogsForUser")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RetrieveFollowedBlogsForUserInputSet
    ####
    def new_input_set()
      return RetrieveFollowedBlogsForUserInputSet.new()
    end

    def make_result_set()
      return RetrieveFollowedBlogsForUserResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = RetrieveFollowedBlogsForUserResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RetrieveFollowedBlogsForUser
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RetrieveFollowedBlogsForUserInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of results to return: 1 - 20. Defaults to 20.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the Offset input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The result to start at. Defaults to 0.
      ###

      def set_Offset(value)
        set_input("Offset", value)
      end
      #### 
      # Set the value of the SecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
      ###

      def set_SecretKey(value)
        set_input("SecretKey", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RetrieveFollowedBlogsForUser Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RetrieveFollowedBlogsForUserResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RetrieveFollowedBlogsForUser



  ##############################################################################
  #
  # RetrievePublishedPosts
  #
  # Retrieves published posts using various search and filter parameters.
  #
  ##############################################################################

  class RetrievePublishedPosts < Choreography

    ####
    #  Create a new instance of the RetrievePublishedPosts Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/RetrievePublishedPosts")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RetrievePublishedPostsInputSet
    ####
    def new_input_set()
      return RetrievePublishedPostsInputSet.new()
    end

    def make_result_set()
      return RetrievePublishedPostsResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = RetrievePublishedPostsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RetrievePublishedPosts
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RetrievePublishedPostsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the BaseHostname input for this Choreo. 
      # 
      # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
      ###

      def set_BaseHostname(value)
        set_input("BaseHostname", value)
      end
      #### 
      # Set the value of the Format input for this Choreo. 
      # 
      # @param String - (optional, string) Specifies the post format to return. Valid values are: text (Plain text, no HTML), raw (As entered by user). HTML is returned when left null.
      ###

      def set_Format(value)
        set_input("Format", value)
      end
      #### 
      # Set the value of the ID input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The specified post ID in order to return a single post.
      ###

      def set_ID(value)
        set_input("ID", value)
      end
      #### 
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of posts to return: 1- 20. Defaults to 20.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the NotesInfo input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Indicates whether to return notes information (specify true or false). Defaults to 0 (false).
      ###

      def set_NotesInfo(value)
        set_input("NotesInfo", value)
      end
      #### 
      # Set the value of the Offset input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The post number to start at. Defaults to 0.
      ###

      def set_Offset(value)
        set_input("Offset", value)
      end
      #### 
      # Set the value of the ReblogInfo input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Indicates whether to return reblog information (specify 1 or 0). Defaults to 0 (false).
      ###

      def set_ReblogInfo(value)
        set_input("ReblogInfo", value)
      end
      #### 
      # Set the value of the Tag input for this Choreo. 
      # 
      # @param String - (optional, string) Limits the response to posts with the specified tag.
      ###

      def set_Tag(value)
        set_input("Tag", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (optional, string) The type of post to return. Specify one of the following:  text, quote, link, answer, video, audio, photo. When null, all types are returned.
      ###

      def set_Type(value)
        set_input("Type", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RetrievePublishedPosts Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RetrievePublishedPostsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RetrievePublishedPosts



  ##############################################################################
  #
  # RetrieveQueuedPosts
  #
  # Retrieves a list of queued posts for a specified Tumblr blog.
  #
  ##############################################################################

  class RetrieveQueuedPosts < Choreography

    ####
    #  Create a new instance of the RetrieveQueuedPosts Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/RetrieveQueuedPosts")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RetrieveQueuedPostsInputSet
    ####
    def new_input_set()
      return RetrieveQueuedPostsInputSet.new()
    end

    def make_result_set()
      return RetrieveQueuedPostsResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = RetrieveQueuedPostsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RetrieveQueuedPosts
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RetrieveQueuedPostsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
      # Set the value of the BaseHostname input for this Choreo. 
      # 
      # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
      ###

      def set_BaseHostname(value)
        set_input("BaseHostname", value)
      end
      #### 
      # Set the value of the SecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
      ###

      def set_SecretKey(value)
        set_input("SecretKey", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RetrieveQueuedPosts Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RetrieveQueuedPostsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RetrieveQueuedPosts



  ##############################################################################
  #
  # RetrieveSubmissionPosts
  #
  # Retrieves a list of submission posts for a specified Tumblr blog.
  #
  ##############################################################################

  class RetrieveSubmissionPosts < Choreography

    ####
    #  Create a new instance of the RetrieveSubmissionPosts Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/RetrieveSubmissionPosts")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RetrieveSubmissionPostsInputSet
    ####
    def new_input_set()
      return RetrieveSubmissionPostsInputSet.new()
    end

    def make_result_set()
      return RetrieveSubmissionPostsResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = RetrieveSubmissionPostsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RetrieveSubmissionPosts
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RetrieveSubmissionPostsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
      # Set the value of the BaseHostname input for this Choreo. 
      # 
      # @param String - (required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
      ###

      def set_BaseHostname(value)
        set_input("BaseHostname", value)
      end
      #### 
      # Set the value of the SecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
      ###

      def set_SecretKey(value)
        set_input("SecretKey", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RetrieveSubmissionPosts Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RetrieveSubmissionPostsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RetrieveSubmissionPosts



  ##############################################################################
  #
  # RetrieveUserDashboard
  #
  # Retrieves the dashboard of the user that corresponds to the OAuth credentials provided.
  #
  ##############################################################################

  class RetrieveUserDashboard < Choreography

    ####
    #  Create a new instance of the RetrieveUserDashboard Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/RetrieveUserDashboard")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RetrieveUserDashboardInputSet
    ####
    def new_input_set()
      return RetrieveUserDashboardInputSet.new()
    end

    def make_result_set()
      return RetrieveUserDashboardResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = RetrieveUserDashboardResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RetrieveUserDashboard
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RetrieveUserDashboardInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of results to return: 1 - 20. Defaults to 20.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the NotesInfo input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Indicates whether to return notes information. Specify 1(true) or 0 (false). Defaults to 0.
      ###

      def set_NotesInfo(value)
        set_input("NotesInfo", value)
      end
      #### 
      # Set the value of the Offset input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The result to start at. Defaults to 0.
      ###

      def set_Offset(value)
        set_input("Offset", value)
      end
      #### 
      # Set the value of the ReblogInfo input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Indicates whether to return reblog information. Specify 1(true) or 0 (false). Defaults to 0.
      ###

      def set_ReblogInfo(value)
        set_input("ReblogInfo", value)
      end
      #### 
      # Set the value of the SecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
      ###

      def set_SecretKey(value)
        set_input("SecretKey", value)
      end
      #### 
      # Set the value of the SinceId input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Return posts that have appeared after this ID. Used to page through results.
      ###

      def set_SinceId(value)
        set_input("SinceId", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (optional, string) The type of post to return. Specify one of the following:  text, photo, quote, link, chat, audio, video, answer.
      ###

      def set_Type(value)
        set_input("Type", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RetrieveUserDashboard Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RetrieveUserDashboardResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RetrieveUserDashboard



  ##############################################################################
  #
  # RetrieveUserLikes
  #
  # Retrieves the liked posts for the user that corresponds to the OAuth credentials provided.
  #
  ##############################################################################

  class RetrieveUserLikes < Choreography

    ####
    #  Create a new instance of the RetrieveUserLikes Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Tumblr/RetrieveUserLikes")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RetrieveUserLikesInputSet
    ####
    def new_input_set()
      return RetrieveUserLikesInputSet.new()
    end

    def make_result_set()
      return RetrieveUserLikesResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = RetrieveUserLikesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RetrieveUserLikes
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RetrieveUserLikesInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
      # Set the value of the Limit input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of results to return: 1 - 20. Defaults to 20.
      ###

      def set_Limit(value)
        set_input("Limit", value)
      end
      #### 
      # Set the value of the Offset input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The result to start at. Defaults to 0.
      ###

      def set_Offset(value)
        set_input("Offset", value)
      end
      #### 
      # Set the value of the SecretKey input for this Choreo. 
      # 
      # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
      ###

      def set_SecretKey(value)
        set_input("SecretKey", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RetrieveUserLikes Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RetrieveUserLikesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Tumblr in XML format.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RetrieveUserLikes




  module Tagged



    ##############################################################################
    #
    # RetrievePostsWithTag
    #
    # Retrieves posts that have a given tag.
    #
    ##############################################################################

    class RetrievePostsWithTag < Choreography

      ####
      #  Create a new instance of the RetrievePostsWithTag Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/Tagged/RetrievePostsWithTag")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrievePostsWithTagInputSet
      ####
      def new_input_set()
        return RetrievePostsWithTagInputSet.new()
      end

      def make_result_set()
        return RetrievePostsWithTagResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrievePostsWithTagResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrievePostsWithTag
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrievePostsWithTagInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Before input for this Choreo. 
        # 
        # @param String - (optional, string) The timestamp of when you'd like to see posts before (e.g. 1363716547).
        ###

        def set_Before(value)
          set_input("Before", value)
        end
        #### 
        # Set the value of the Filter input for this Choreo. 
        # 
        # @param String - (optional, string) Specifies the post format to return. Valid values are: text (plain text, no html) or raw (as entered by the user).
        ###

        def set_Filter(value)
          set_input("Filter", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of posts to return: 1- 20. Defaults to 20.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The post number to start at. Defaults to 0.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Tag input for this Choreo. 
        # 
        # @param String - (required, string) The tag on the posts you'd like to retrieve.
        ###

        def set_Tag(value)
          set_input("Tag", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrievePostsWithTag Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrievePostsWithTagResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrievePostsWithTag




  end # module Tagged

  module User



    ##############################################################################
    #
    # FollowUser
    #
    # Retrieves the user information associated with a given set of Tumblr Oauth credentials.
    #
    ##############################################################################

    class FollowUser < Choreography

      ####
      #  Create a new instance of the FollowUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/User/FollowUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FollowUserInputSet
      ####
      def new_input_set()
        return FollowUserInputSet.new()
      end

      def make_result_set()
        return FollowUserResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = FollowUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FollowUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FollowUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (required, string) The URL of the user / blog to follow, without http:. Ex: username.tumblr.com
        ###

        def set_URL(value)
          set_input("URL", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FollowUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FollowUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FollowUser



    ##############################################################################
    #
    # GetUserInformation
    #
    # Retrieves the user information associated with a given set of Tumblr Oauth credentials.
    #
    ##############################################################################

    class GetUserInformation < Choreography

      ####
      #  Create a new instance of the GetUserInformation Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/User/GetUserInformation")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetUserInformationInputSet
      ####
      def new_input_set()
        return GetUserInformationInputSet.new()
      end

      def make_result_set()
        return GetUserInformationResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetUserInformationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetUserInformation
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetUserInformationInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetUserInformation Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetUserInformationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetUserInformation



    ##############################################################################
    #
    # RetrieveFollowedBlogsForUser
    #
    # Retrieve the blogs followed by the user whose OAuth credentials are provided.
    #
    ##############################################################################

    class RetrieveFollowedBlogsForUser < Choreography

      ####
      #  Create a new instance of the RetrieveFollowedBlogsForUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/User/RetrieveFollowedBlogsForUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveFollowedBlogsForUserInputSet
      ####
      def new_input_set()
        return RetrieveFollowedBlogsForUserInputSet.new()
      end

      def make_result_set()
        return RetrieveFollowedBlogsForUserResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveFollowedBlogsForUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveFollowedBlogsForUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveFollowedBlogsForUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return: 1 - 20. Defaults to 20.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The result to start at. Defaults to 0.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveFollowedBlogsForUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveFollowedBlogsForUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveFollowedBlogsForUser



    ##############################################################################
    #
    # RetrieveUserDashboard
    #
    # Retrieves the dashboard of the user that corresponds to the OAuth credentials provided.
    #
    ##############################################################################

    class RetrieveUserDashboard < Choreography

      ####
      #  Create a new instance of the RetrieveUserDashboard Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/User/RetrieveUserDashboard")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveUserDashboardInputSet
      ####
      def new_input_set()
        return RetrieveUserDashboardInputSet.new()
      end

      def make_result_set()
        return RetrieveUserDashboardResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveUserDashboardResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveUserDashboard
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveUserDashboardInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return: 1 - 20. Defaults to 20.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the NotesInfo input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates whether to return notes information. Specify 1(true) or 0 (false). Defaults to 0.
        ###

        def set_NotesInfo(value)
          set_input("NotesInfo", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The result to start at. Defaults to 0.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ReblogInfo input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Indicates whether to return reblog information. Specify 1(true) or 0 (false). Defaults to 0.
        ###

        def set_ReblogInfo(value)
          set_input("ReblogInfo", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end
        #### 
        # Set the value of the SinceId input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Return posts that have appeared after this ID. Used to page through results.
        ###

        def set_SinceId(value)
          set_input("SinceId", value)
        end
        #### 
        # Set the value of the Type input for this Choreo. 
        # 
        # @param String - (optional, string) The type of post to return. Specify one of the following:  text, photo, quote, link, chat, audio, video, answer.
        ###

        def set_Type(value)
          set_input("Type", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveUserDashboard Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveUserDashboardResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveUserDashboard



    ##############################################################################
    #
    # RetrieveUserLikes
    #
    # Retrieves the liked posts for the user that corresponds to the OAuth credentials provided.
    #
    ##############################################################################

    class RetrieveUserLikes < Choreography

      ####
      #  Create a new instance of the RetrieveUserLikes Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/User/RetrieveUserLikes")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetrieveUserLikesInputSet
      ####
      def new_input_set()
        return RetrieveUserLikesInputSet.new()
      end

      def make_result_set()
        return RetrieveUserLikesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RetrieveUserLikesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetrieveUserLikes
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetrieveUserLikesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return: 1 - 20. Defaults to 20.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The result to start at. Defaults to 0.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetrieveUserLikes Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetrieveUserLikesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetrieveUserLikes



    ##############################################################################
    #
    # UnfollowUser
    #
    # Retrieves the user information associated with a given set of Tumblr Oauth credentials.
    #
    ##############################################################################

    class UnfollowUser < Choreography

      ####
      #  Create a new instance of the UnfollowUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Tumblr/User/UnfollowUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UnfollowUserInputSet
      ####
      def new_input_set()
        return UnfollowUserInputSet.new()
      end

      def make_result_set()
        return UnfollowUserResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UnfollowUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UnfollowUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UnfollowUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (required, string) The URL of the user / blog to follow, without http:. Ex: username.tumblr.com
        ###

        def set_URL(value)
          set_input("URL", value)
        end
        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
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
        # @param String - (optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UnfollowUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UnfollowUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UnfollowUser




  end # module User

end # module Tumblr