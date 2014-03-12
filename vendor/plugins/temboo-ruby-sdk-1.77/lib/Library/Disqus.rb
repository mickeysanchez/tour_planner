require "temboo"

module Disqus




  module OAuth



    ##############################################################################
    #
    # FinalizeOAuth
    #
    # Completes the OAuth 2 process by retrieving a Disqus access token, refresh token, expiration time for the access token, username and user ID, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
    #
    ##############################################################################

    class FinalizeOAuth < Choreography

      ####
      #  Create a new instance of the FinalizeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/OAuth/FinalizeOAuth")
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
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Disqus (AKA the API Secret).
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
      	# Retrieve the value for the "UserID" output from this Choreo execution
      	#
      	# @return String - (string) The Disqus User ID associated with the access token.
      	####
      	def get_UserID()
      	  return @outputs["UserID"]
      	end
      	####
      	# Retrieve the value for the "AccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The Access Token for the user that has granted access to your application.
      	####
      	def get_AccessToken()
      	  return @outputs["AccessToken"]
      	end
      	####
      	# Retrieve the value for the "Username" output from this Choreo execution
      	#
      	# @return String - (string) The Disqus Username associated with the access token.
      	####
      	def get_Username()
      	  return @outputs["Username"]
      	end
      	####
      	# Retrieve the value for the "RefreshToken" output from this Choreo execution
      	#
      	# @return String - (string) A valid refresh token used to generate a new access token.
      	####
      	def get_RefreshToken()
      	  return @outputs["RefreshToken"]
      	end
      	####
      	# Retrieve the value for the "Expires" output from this Choreo execution
      	#
      	# @return String - (integer) The expiration time in seconds of the access token retrieved.
      	####
      	def get_Expires()
      	  return @outputs["Expires"]
      	end
      end

    end # class FinalizeOAuth



    ##############################################################################
    #
    # InitializeOAuth
    #
    # Generates an authorization URL that an application can use to complete the first step in the OAuth 2.0 process.
    #
    ##############################################################################

    class InitializeOAuth < Choreography

      ####
      #  Create a new instance of the InitializeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/OAuth/InitializeOAuth")
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
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (conditional, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the Scope input for this Choreo. 
        # 
        # @param String - (optional, string) Available permissions to request on behalf of the user are read, write and admin, multiple values separated by a comma (ex: "read,write"). Default (blank) is same as "read,write".
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
      	# Retrieve the value for the "AuthorizationURL" output from this Choreo execution
      	#
      	# @return String - (string) The authorization URL that the user needs to go to in order to grant access to your application.
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
      end

    end # class InitializeOAuth



    ##############################################################################
    #
    # RefreshToken
    #
    # Generates a new access token with a given valid refresh token.
    #
    ##############################################################################

    class RefreshToken < Choreography

      ####
      #  Create a new instance of the RefreshToken Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/OAuth/RefreshToken")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RefreshTokenInputSet
      ####
      def new_input_set()
        return RefreshTokenInputSet.new()
      end

      def make_result_set()
        return RefreshTokenResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RefreshTokenResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RefreshToken
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RefreshTokenInputSet < Choreography::InputSet

        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid refresh token used to generate a new access token.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end
        #### 
        # Set the value of the SecretKey input for this Choreo. 
        # 
        # @param String - (required, string) The Secret Key provided by Disqus (AKA the API Secret).
        ###

        def set_SecretKey(value)
          set_input("SecretKey", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RefreshToken Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RefreshTokenResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NewRefreshToken" output from this Choreo execution
      	#
      	# @return String - (string) The new refresh token which can be used the next time your app needs to get a new access token.
      	####
      	def get_NewRefreshToken()
      	  return @outputs["NewRefreshToken"]
      	end
      	####
      	# Retrieve the value for the "Expires" output from this Choreo execution
      	#
      	# @return String - (integer) The expiration time in seconds of the Access Token.
      	####
      	def get_Expires()
      	  return @outputs["Expires"]
      	end
      	####
      	# Retrieve the value for the "AccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The Access Token for the user that has granted access to your application.
      	####
      	def get_AccessToken()
      	  return @outputs["AccessToken"]
      	end
      end

    end # class RefreshToken




  end # module OAuth

  module Posts



    ##############################################################################
    #
    # ApprovePosts
    #
    # Approves a post.
    #
    ##############################################################################

    class ApprovePosts < Choreography

      ####
      #  Create a new instance of the ApprovePosts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Posts/ApprovePosts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ApprovePostsInputSet
      ####
      def new_input_set()
        return ApprovePostsInputSet.new()
      end

      def make_result_set()
        return ApprovePostsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ApprovePostsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ApprovePosts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ApprovePostsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth 2.0 access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the PostID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The post ID which is to be approved. Note that you must be a forum moderator to approve posts.
        ###

        def set_PostID(value)
          set_input("PostID", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ApprovePosts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ApprovePostsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ApprovePosts



    ##############################################################################
    #
    # CreateAnonymousPost
    #
    # Creates an anonymous post.
    #
    ##############################################################################

    class CreateAnonymousPost < Choreography

      ####
      #  Create a new instance of the CreateAnonymousPost Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Posts/CreateAnonymousPost")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateAnonymousPostInputSet
      ####
      def new_input_set()
        return CreateAnonymousPostInputSet.new()
      end

      def make_result_set()
        return CreateAnonymousPostResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateAnonymousPostResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateAnonymousPost
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateAnonymousPostInputSet < Choreography::InputSet

        #### 
        # Set the value of the AuthorEmail input for this Choreo. 
        # 
        # @param String - (required, string) The email address of the post author.
        ###

        def set_AuthorEmail(value)
          set_input("AuthorEmail", value)
        end
        #### 
        # Set the value of the AuthorName input for this Choreo. 
        # 
        # @param String - (optional, string) The name of the post author.
        ###

        def set_AuthorName(value)
          set_input("AuthorName", value)
        end
        #### 
        # Set the value of the AuthorURL input for this Choreo. 
        # 
        # @param String - (optional, string) The URL of the author's Disqus profile.
        ###

        def set_AuthorURL(value)
          set_input("AuthorURL", value)
        end
        #### 
        # Set the value of the ParentPost input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of a parent post to which the new post will be responding to. Either ParentPost, or Thread must be set, or both.
        ###

        def set_ParentPost(value)
          set_input("ParentPost", value)
        end
        #### 
        # Set the value of the PostContent input for this Choreo. 
        # 
        # @param String - (required, string) The text of this post.
        ###

        def set_PostContent(value)
          set_input("PostContent", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Thread input for this Choreo. 
        # 
        # @param String - (conditional, string) The thread ID to attach the new post to. Either ParentPost, or Thread must be set, or both.
        ###

        def set_Thread(value)
          set_input("Thread", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateAnonymousPost Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateAnonymousPostResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateAnonymousPost



    ##############################################################################
    #
    # CreateAuthenticatedPost
    #
    # Create a new post for the authenticated user.
    #
    ##############################################################################

    class CreateAuthenticatedPost < Choreography

      ####
      #  Create a new instance of the CreateAuthenticatedPost Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Posts/CreateAuthenticatedPost")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateAuthenticatedPostInputSet
      ####
      def new_input_set()
        return CreateAuthenticatedPostInputSet.new()
      end

      def make_result_set()
        return CreateAuthenticatedPostResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateAuthenticatedPostResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateAuthenticatedPost
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateAuthenticatedPostInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth 2.0 access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, string) The date of the post, either in Unix timestamp format, or ISO datetime standard. You must be a moderator to do this.
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the IPAddress input for this Choreo. 
        # 
        # @param String - (optional, string) The author's IP address. You must be a moderator to do this.
        ###

        def set_IPAddress(value)
          set_input("IPAddress", value)
        end
        #### 
        # Set the value of the ParentPost input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of a parent post to which the new post will be responding to. Either ParentPost, or Thread must be set, or both.
        ###

        def set_ParentPost(value)
          set_input("ParentPost", value)
        end
        #### 
        # Set the value of the PostContent input for this Choreo. 
        # 
        # @param String - (required, string) The text of this post.
        ###

        def set_PostContent(value)
          set_input("PostContent", value)
        end
        #### 
        # Set the value of the PostState input for this Choreo. 
        # 
        # @param String - (optional, string) Specify the state of the post (comment). Available options include: unapproved, approved, spam, killed. You must be a moderator to do this. If set, pre-approval validation will be skipped.
        ###

        def set_PostState(value)
          set_input("PostState", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Thread input for this Choreo. 
        # 
        # @param String - (conditional, string) The thread ID to attach the new post to. Either ParentPost, or Thread must be set, or both.
        ###

        def set_Thread(value)
          set_input("Thread", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateAuthenticatedPost Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateAuthenticatedPostResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateAuthenticatedPost



    ##############################################################################
    #
    # HighlightPost
    #
    # Highlight a post.
    #
    ##############################################################################

    class HighlightPost < Choreography

      ####
      #  Create a new instance of the HighlightPost Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Posts/HighlightPost")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return HighlightPostInputSet
      ####
      def new_input_set()
        return HighlightPostInputSet.new()
      end

      def make_result_set()
        return HighlightPostResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = HighlightPostResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the HighlightPost
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class HighlightPostInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth 2.0 access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the PostID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The post ID which is to be highlighted.
        ###

        def set_PostID(value)
          set_input("PostID", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the HighlightPost Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class HighlightPostResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class HighlightPost



    ##############################################################################
    #
    # ListPosts
    #
    # Retrieve a list of posts ordered by date of creation.
    #
    ##############################################################################

    class ListPosts < Choreography

      ####
      #  Create a new instance of the ListPosts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Posts/ListPosts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListPostsInputSet
      ####
      def new_input_set()
        return ListPostsInputSet.new()
      end

      def make_result_set()
        return ListPostsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListPostsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListPosts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListPostsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid OAuth 2.0 access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Category input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specify a category ID for which posts wil be retrieved.
        ###

        def set_Category(value)
          set_input("Category", value)
        end
        #### 
        # Set the value of the Cursor input for this Choreo. 
        # 
        # @param String - (optional, string) Default is set to null.
        ###

        def set_Cursor(value)
          set_input("Cursor", value)
        end
        #### 
        # Set the value of the Forum input for this Choreo. 
        # 
        # @param String - (optional, string) A Disqus forum name to display all posts contained in that specified forum.  If null, posts from all forums moderated by the authenticating user will be retrieved.
        ###

        def set_Forum(value)
          set_input("Forum", value)
        end
        #### 
        # Set the value of the Include input for this Choreo. 
        # 
        # @param String - (optional, string) A post status parameter to filter results by. Valid parameters include: unapproved, approved, spam, deleted, flagged, highlighted.  Default is set to: approved.
        ###

        def set_Include(value)
          set_input("Include", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of records to return. Defaults to 25.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Order input for this Choreo. 
        # 
        # @param String - (optional, string) The sort order of the results. Valid values are: asc or desc. Default is set to: asc.
        ###

        def set_Order(value)
          set_input("Order", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (optional, string) A search string to retrieve posts mathching the query.  Default is set to null.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the Related input for this Choreo. 
        # 
        # @param String - (optional, string) Specify a related thread or forum that are to be included in the response.  Valid entries include: thread, or forum.
        ###

        def set_Related(value)
          set_input("Related", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default), jsonp, or rss.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SinceID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A Unix timestamp (or ISO datetime standard) to obtain results from. Default is set to null.
        ###

        def set_SinceID(value)
          set_input("SinceID", value)
        end
        #### 
        # Set the value of the ThreadID input for this Choreo. 
        # 
        # @param String - (optional, string) The Thread ID to narrow post search results.
        ###

        def set_ThreadID(value)
          set_input("ThreadID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListPosts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListPostsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListPosts



    ##############################################################################
    #
    # MarkAsSpam
    #
    # Mark a post as spam.
    #
    ##############################################################################

    class MarkAsSpam < Choreography

      ####
      #  Create a new instance of the MarkAsSpam Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Posts/MarkAsSpam")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return MarkAsSpamInputSet
      ####
      def new_input_set()
        return MarkAsSpamInputSet.new()
      end

      def make_result_set()
        return MarkAsSpamResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = MarkAsSpamResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the MarkAsSpam
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class MarkAsSpamInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth 2.0 access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the PostID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The post ID which is to be marked as spam.
        ###

        def set_PostID(value)
          set_input("PostID", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the MarkAsSpam Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class MarkAsSpamResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class MarkAsSpam



    ##############################################################################
    #
    # PostDetails
    #
    # Obtain information about a post.
    #
    ##############################################################################

    class PostDetails < Choreography

      ####
      #  Create a new instance of the PostDetails Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Posts/PostDetails")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PostDetailsInputSet
      ####
      def new_input_set()
        return PostDetailsInputSet.new()
      end

      def make_result_set()
        return PostDetailsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = PostDetailsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the PostDetails
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PostDetailsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid OAuth 2.0 access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the PostID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The post ID for which information will be returned.
        ###

        def set_PostID(value)
          set_input("PostID", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the Related input for this Choreo. 
        # 
        # @param String - (optional, string) Specify a related thread or forum that are to be included in the response.  Valid entries include: thread, or forum.
        ###

        def set_Related(value)
          set_input("Related", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the PostDetails Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PostDetailsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class PostDetails



    ##############################################################################
    #
    # RemovePost
    #
    # Remove a post.
    #
    ##############################################################################

    class RemovePost < Choreography

      ####
      #  Create a new instance of the RemovePost Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Posts/RemovePost")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RemovePostInputSet
      ####
      def new_input_set()
        return RemovePostInputSet.new()
      end

      def make_result_set()
        return RemovePostResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RemovePostResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RemovePost
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RemovePostInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth 2.0 access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the PostID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The post ID which is to be removed.
        ###

        def set_PostID(value)
          set_input("PostID", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RemovePost Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RemovePostResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RemovePost



    ##############################################################################
    #
    # ReportPost
    #
    # Report (flag) a post.
    #
    ##############################################################################

    class ReportPost < Choreography

      ####
      #  Create a new instance of the ReportPost Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Posts/ReportPost")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ReportPostInputSet
      ####
      def new_input_set()
        return ReportPostInputSet.new()
      end

      def make_result_set()
        return ReportPostResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ReportPostResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ReportPost
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ReportPostInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth 2.0 access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the PostID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The post ID which is to be reported (flagged).
        ###

        def set_PostID(value)
          set_input("PostID", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ReportPost Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ReportPostResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ReportPost



    ##############################################################################
    #
    # RestorePost
    #
    # Restore a deleted post.
    #
    ##############################################################################

    class RestorePost < Choreography

      ####
      #  Create a new instance of the RestorePost Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Posts/RestorePost")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RestorePostInputSet
      ####
      def new_input_set()
        return RestorePostInputSet.new()
      end

      def make_result_set()
        return RestorePostResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RestorePostResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RestorePost
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RestorePostInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth 2.0 access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the PostID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The post ID which is to be restored (undeleted).
        ###

        def set_PostID(value)
          set_input("PostID", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RestorePost Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RestorePostResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RestorePost



    ##############################################################################
    #
    # UnhighlightPost
    #
    # Unhighlight a previously highlighted post.
    #
    ##############################################################################

    class UnhighlightPost < Choreography

      ####
      #  Create a new instance of the UnhighlightPost Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Posts/UnhighlightPost")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UnhighlightPostInputSet
      ####
      def new_input_set()
        return UnhighlightPostInputSet.new()
      end

      def make_result_set()
        return UnhighlightPostResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UnhighlightPostResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UnhighlightPost
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UnhighlightPostInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth 2.0 access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the PostID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The post ID which is to be unhighlighted.
        ###

        def set_PostID(value)
          set_input("PostID", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UnhighlightPost Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UnhighlightPostResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UnhighlightPost



    ##############################################################################
    #
    # VoteOnPost
    #
    # Register a vote on a post.
    #
    ##############################################################################

    class VoteOnPost < Choreography

      ####
      #  Create a new instance of the VoteOnPost Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Posts/VoteOnPost")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return VoteOnPostInputSet
      ####
      def new_input_set()
        return VoteOnPostInputSet.new()
      end

      def make_result_set()
        return VoteOnPostResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = VoteOnPostResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the VoteOnPost
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class VoteOnPostInputSet < Choreography::InputSet

        #### 
        # Set the value of the PostID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The post ID for which a vote is being registered.
        ###

        def set_PostID(value)
          set_input("PostID", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Vote input for this Choreo. 
        # 
        # @param Integer - (required, integer) A numeric value for your vote. Valid choices are: -1, 0, or 1.
        ###

        def set_Vote(value)
          set_input("Vote", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the VoteOnPost Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class VoteOnPostResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class VoteOnPost




  end # module Posts

  module Threads



    ##############################################################################
    #
    # CloseThread
    #
    # Close a thread.
    #
    ##############################################################################

    class CloseThread < Choreography

      ####
      #  Create a new instance of the CloseThread Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Threads/CloseThread")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CloseThreadInputSet
      ####
      def new_input_set()
        return CloseThreadInputSet.new()
      end

      def make_result_set()
        return CloseThreadResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CloseThreadResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CloseThread
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CloseThreadInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth 2.0 access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Forum input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A forum ID. Required if setting either ThreadByIdentification, or ThreadByLink.
        ###

        def set_Forum(value)
          set_input("Forum", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ThreadID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The ID of a thread that is to be closed. Required unless specifying ThreadIdentifier or ThreadLink. If using this parameter, ThreadByIdentification cannot be set.
        ###

        def set_ThreadID(value)
          set_input("ThreadID", value)
        end
        #### 
        # Set the value of the ThreadIdentifier input for this Choreo. 
        # 
        # @param String - (conditional, string) The identifier to retrieve associated thread details.  Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadLink cannot be used.
        ###

        def set_ThreadIdentifier(value)
          set_input("ThreadIdentifier", value)
        end
        #### 
        # Set the value of the ThreadLink input for this Choreo. 
        # 
        # @param String - (conditional, string) The link pointing to the thread that is to be closed. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadIdentifier cannot be set.
        ###

        def set_ThreadLink(value)
          set_input("ThreadLink", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CloseThread Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CloseThreadResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CloseThread



    ##############################################################################
    #
    # CreateThread
    #
    # Creates a new thread.
    #
    ##############################################################################

    class CreateThread < Choreography

      ####
      #  Create a new instance of the CreateThread Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Threads/CreateThread")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateThreadInputSet
      ####
      def new_input_set()
        return CreateThreadInputSet.new()
      end

      def make_result_set()
        return CreateThreadResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateThreadResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateThread
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateThreadInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth 2.0 access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Category input for this Choreo. 
        # 
        # @param String - (optional, string) The id of a category associated with the thread being created.
        ###

        def set_Category(value)
          set_input("Category", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, date) The date to be associated with this thread (as a unix timestamp or ISO datetime format).
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the Forum input for this Choreo. 
        # 
        # @param String - (required, string) The ID of an existing forum (AKA the forum short name).
        ###

        def set_Forum(value)
          set_input("Forum", value)
        end
        #### 
        # Set the value of the Identifier input for this Choreo. 
        # 
        # @param String - (optional, string) An optional string identifier for the thread. Maximum length is 300.
        ###

        def set_Identifier(value)
          set_input("Identifier", value)
        end
        #### 
        # Set the value of the Message input for this Choreo. 
        # 
        # @param String - (optional, string) A message for the new thread.
        ###

        def set_Message(value)
          set_input("Message", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (required, string) The title of the thread.
        ###

        def set_Title(value)
          set_input("Title", value)
        end
        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (optional, string) A URL to be associated with the thread. Maximum length is 500.
        ###

        def set_URL(value)
          set_input("URL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateThread Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateThreadResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) 
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateThread



    ##############################################################################
    #
    # ListPosts
    #
    # Retrieve a list of posts within a thread.
    #
    ##############################################################################

    class ListPosts < Choreography

      ####
      #  Create a new instance of the ListPosts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Threads/ListPosts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListPostsInputSet
      ####
      def new_input_set()
        return ListPostsInputSet.new()
      end

      def make_result_set()
        return ListPostsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListPostsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListPosts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListPostsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Cursor input for this Choreo. 
        # 
        # @param String - (optional, string) Default is set to null.
        ###

        def set_Cursor(value)
          set_input("Cursor", value)
        end
        #### 
        # Set the value of the Forum input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A Disqus forum ID (AKA a short name). If null, threads from all forums moderated by the authenticating user will be retrieved.
        ###

        def set_Forum(value)
          set_input("Forum", value)
        end
        #### 
        # Set the value of the Include input for this Choreo. 
        # 
        # @param String - (optional, string) Specify a post status parameter to filter results by. Valid parameters include: unapproved, approved, spam, deleted, flagged.  Default is set to: approved.
        ###

        def set_Include(value)
          set_input("Include", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of records to return. Maximum value is 100.  Defaults to 25.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Order input for this Choreo. 
        # 
        # @param String - (optional, string) The sort order of the results. Valid values are: asc or desc. Default is set to: asc.
        ###

        def set_Order(value)
          set_input("Order", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (optional, string) A search string to limit results.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the Related input for this Choreo. 
        # 
        # @param String - (optional, string) Specify a related thread or forum that are to be included in the response.  Valid entries include: forum.
        ###

        def set_Related(value)
          set_input("Related", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default), jsonp, or rss.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Since input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A Unix timestamp (or ISO datetime standard) to obtain results from. Default is set to null.
        ###

        def set_Since(value)
          set_input("Since", value)
        end
        #### 
        # Set the value of the ThreadID input for this Choreo. 
        # 
        # @param String - (conditional, string) A Thread ID to narrow post search results. Required unless specifying ThreadIdentifier or ThreadLink.
        ###

        def set_ThreadID(value)
          set_input("ThreadID", value)
        end
        #### 
        # Set the value of the ThreadIdentifier input for this Choreo. 
        # 
        # @param String - (conditional, string) An identifier to retrieve associated thread details. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadLink cannot be used.
        ###

        def set_ThreadIdentifier(value)
          set_input("ThreadIdentifier", value)
        end
        #### 
        # Set the value of the ThreadLink input for this Choreo. 
        # 
        # @param String - (conditional, string) A link pointing to the thread that is to be retrieved. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadIdentifier cannot be set.
        ###

        def set_ThreadLink(value)
          set_input("ThreadLink", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListPosts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListPostsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListPosts



    ##############################################################################
    #
    # ListThreads
    #
    # Retrieve a list of threads ordered by date of creation.
    #
    ##############################################################################

    class ListThreads < Choreography

      ####
      #  Create a new instance of the ListThreads Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Threads/ListThreads")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListThreadsInputSet
      ####
      def new_input_set()
        return ListThreadsInputSet.new()
      end

      def make_result_set()
        return ListThreadsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListThreadsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListThreads
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListThreadsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid OAuth 2.0 access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the AuthorID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A Disqus User ID, for which threads will be retrieved. If AuthorID is set, then AuthorUsername must be null.
        ###

        def set_AuthorID(value)
          set_input("AuthorID", value)
        end
        #### 
        # Set the value of the AuthorUsername input for this Choreo. 
        # 
        # @param String - (optional, string) A Disqus username for which threads will be retrieved.  If AuthorUsername is being set, then AuthorID must be null.
        ###

        def set_AuthorUsername(value)
          set_input("AuthorUsername", value)
        end
        #### 
        # Set the value of the Category input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specify a category ID for which threads wil be retrieved.
        ###

        def set_Category(value)
          set_input("Category", value)
        end
        #### 
        # Set the value of the Cursor input for this Choreo. 
        # 
        # @param String - (optional, string) Default is set to null.
        ###

        def set_Cursor(value)
          set_input("Cursor", value)
        end
        #### 
        # Set the value of the Forum input for this Choreo. 
        # 
        # @param String - (optional, string) A Disqus forum name to display all threads contained in that specified forum.  If null, threads from all forums moderated by the authenticating user will be retrieved.
        ###

        def set_Forum(value)
          set_input("Forum", value)
        end
        #### 
        # Set the value of the Include input for this Choreo. 
        # 
        # @param String - (optional, string) Specify a post status parameter to filter results by. Valid parameters include: open, closed, killed.  Default is set to: open, closed.
        ###

        def set_Include(value)
          set_input("Include", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of records to return. Maximum value is 100.  Defaults to 25.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Order input for this Choreo. 
        # 
        # @param String - (optional, string) The sort order for the results. Valid values are: asc or desc. Default is set to: asc.
        ###

        def set_Order(value)
          set_input("Order", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the Related input for this Choreo. 
        # 
        # @param String - (optional, string) Specify a related thread or forum that are to be included in the response.  Valid entries include: author, or category.
        ###

        def set_Related(value)
          set_input("Related", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default), jsonp, or rss.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SinceID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A Unix timestamp (or ISO datetime standard) to obtain results from. Default is set to null.
        ###

        def set_SinceID(value)
          set_input("SinceID", value)
        end
        #### 
        # Set the value of the ThreadID input for this Choreo. 
        # 
        # @param String - (optional, string) A Thread ID to narrow search results.
        ###

        def set_ThreadID(value)
          set_input("ThreadID", value)
        end
        #### 
        # Set the value of the ThreadIdentifier input for this Choreo. 
        # 
        # @param String - (optional, string) An identifier to retrieve associated threads. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadLink cannot be used.
        ###

        def set_ThreadIdentifier(value)
          set_input("ThreadIdentifier", value)
        end
        #### 
        # Set the value of the ThreadLink input for this Choreo. 
        # 
        # @param String - (optional, string) A link pointing to the thread that is to be retrieved. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadIdentifier cannot be set.
        ###

        def set_ThreadLink(value)
          set_input("ThreadLink", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListThreads Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListThreadsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListThreads



    ##############################################################################
    #
    # OpenThread
    #
    # Open a thread.
    #
    ##############################################################################

    class OpenThread < Choreography

      ####
      #  Create a new instance of the OpenThread Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Threads/OpenThread")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return OpenThreadInputSet
      ####
      def new_input_set()
        return OpenThreadInputSet.new()
      end

      def make_result_set()
        return OpenThreadResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = OpenThreadResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the OpenThread
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class OpenThreadInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth 2.0 access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Forum input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The forum ID of the thread that is to be opened.  Required if setting either ThreadByIdentification, or ThreadByLink.
        ###

        def set_Forum(value)
          set_input("Forum", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ThreadID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The ID of a thread. Required unless specifying ThreadIdentifier or ThreadLink. If using this parameter, ThreadIdentifier cannot be set.
        ###

        def set_ThreadID(value)
          set_input("ThreadID", value)
        end
        #### 
        # Set the value of the ThreadIdentifier input for this Choreo. 
        # 
        # @param String - (conditional, string) The identifier of the thread that is to be opened. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadLink cannot be used.
        ###

        def set_ThreadIdentifier(value)
          set_input("ThreadIdentifier", value)
        end
        #### 
        # Set the value of the ThreadLink input for this Choreo. 
        # 
        # @param String - (conditional, string) A link pointing to the thread that is to be opened. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadIdentifier cannot be set.
        ###

        def set_ThreadLink(value)
          set_input("ThreadLink", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the OpenThread Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class OpenThreadResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class OpenThread



    ##############################################################################
    #
    # RemoveThread
    #
    # Remove a thread.
    #
    ##############################################################################

    class RemoveThread < Choreography

      ####
      #  Create a new instance of the RemoveThread Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Threads/RemoveThread")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RemoveThreadInputSet
      ####
      def new_input_set()
        return RemoveThreadInputSet.new()
      end

      def make_result_set()
        return RemoveThreadResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RemoveThreadResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RemoveThread
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RemoveThreadInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth 2.0 access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Forum input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The forum ID of a thread that is to be removed.  Required if setting either ThreadByIdentification, or ThreadByLink.
        ###

        def set_Forum(value)
          set_input("Forum", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ThreadID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The ID of a thread that is to be removed. Required unless specifying ThreadIdentifier or ThreadLink. If using this parameter, ThreadIdentifier cannot be set.
        ###

        def set_ThreadID(value)
          set_input("ThreadID", value)
        end
        #### 
        # Set the value of the ThreadIdentifier input for this Choreo. 
        # 
        # @param String - (optional, string) The identifier for the thread that is to be removed.  Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadLink cannot be used.
        ###

        def set_ThreadIdentifier(value)
          set_input("ThreadIdentifier", value)
        end
        #### 
        # Set the value of the ThreadLink input for this Choreo. 
        # 
        # @param String - (optional, string) A link pointing to the thread that is to be removed. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadIdentifier cannot be set.
        ###

        def set_ThreadLink(value)
          set_input("ThreadLink", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RemoveThread Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RemoveThreadResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RemoveThread



    ##############################################################################
    #
    # RestoreThread
    #
    # Restore a thread.
    #
    ##############################################################################

    class RestoreThread < Choreography

      ####
      #  Create a new instance of the RestoreThread Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Threads/RestoreThread")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RestoreThreadInputSet
      ####
      def new_input_set()
        return RestoreThreadInputSet.new()
      end

      def make_result_set()
        return RestoreThreadResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RestoreThreadResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RestoreThread
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RestoreThreadInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth 2.0 access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Forum input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The forum ID of a thread that is to be restored.  Required if setting either ThreadByIdentification, or ThreadByLink.
        ###

        def set_Forum(value)
          set_input("Forum", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ThreadID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The ID of a thread that is to be restored. Required unless specifying ThreadIdentifier or ThreadLink. If using this parameter, ThreadIdentifier cannot be set.
        ###

        def set_ThreadID(value)
          set_input("ThreadID", value)
        end
        #### 
        # Set the value of the ThreadIdentifier input for this Choreo. 
        # 
        # @param String - (optional, string) The identifier for the thread that is to be restored.  Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadLink cannot be used.
        ###

        def set_ThreadIdentifier(value)
          set_input("ThreadIdentifier", value)
        end
        #### 
        # Set the value of the ThreadLink input for this Choreo. 
        # 
        # @param String - (optional, string) A link pointing to the thread that is to be restored. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadIdentifier cannot be set.
        ###

        def set_ThreadLink(value)
          set_input("ThreadLink", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RestoreThread Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RestoreThreadResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RestoreThread



    ##############################################################################
    #
    # SubscribeToThread
    #
    # Subscribe to a thread.
    #
    ##############################################################################

    class SubscribeToThread < Choreography

      ####
      #  Create a new instance of the SubscribeToThread Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Threads/SubscribeToThread")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SubscribeToThreadInputSet
      ####
      def new_input_set()
        return SubscribeToThreadInputSet.new()
      end

      def make_result_set()
        return SubscribeToThreadResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = SubscribeToThreadResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SubscribeToThread
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SubscribeToThreadInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (optional, string) An email address to use when subscribing to the thread.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Forum input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The forum ID of a thread that is to be subscribed to. Required if setting either ThreadByIdentification, or ThreadByLink.
        ###

        def set_Forum(value)
          set_input("Forum", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ThreadID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) Enter an ID of a thread that is to be subscribed to. Required unless specifying ThreadIdentifier or ThreadLink. If using this parameter, ThreadIdentifier cannot be set.
        ###

        def set_ThreadID(value)
          set_input("ThreadID", value)
        end
        #### 
        # Set the value of the ThreadIdentifier input for this Choreo. 
        # 
        # @param String - (conditional, string) The identifier for the thread that is to be subscribed to.  Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadLink cannot be used.
        ###

        def set_ThreadIdentifier(value)
          set_input("ThreadIdentifier", value)
        end
        #### 
        # Set the value of the ThreadLink input for this Choreo. 
        # 
        # @param String - (conditional, string) A link pointing to the thread that is to be subscribed to. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadIdentifier cannot be set.
        ###

        def set_ThreadLink(value)
          set_input("ThreadLink", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SubscribeToThread Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SubscribeToThreadResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SubscribeToThread



    ##############################################################################
    #
    # ThreadDetails
    #
    # Obtain thread details.
    #
    ##############################################################################

    class ThreadDetails < Choreography

      ####
      #  Create a new instance of the ThreadDetails Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Threads/ThreadDetails")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ThreadDetailsInputSet
      ####
      def new_input_set()
        return ThreadDetailsInputSet.new()
      end

      def make_result_set()
        return ThreadDetailsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ThreadDetailsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ThreadDetails
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ThreadDetailsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Forum input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A forum ID.  Required if setting either ThreadByIdentification, or ThreadByLink.
        ###

        def set_Forum(value)
          set_input("Forum", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the Related input for this Choreo. 
        # 
        # @param String - (optional, string) Specify a related thread or forum that are to be included in the response.  Valid entries include: author, category, or forum.
        ###

        def set_Related(value)
          set_input("Related", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ThreadID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The ID of a thread that is to be retrieved. Required unless specifying ThreadIdentifier or ThreadLink. If using this parameter, ThreadIdentifier cannot be set.
        ###

        def set_ThreadID(value)
          set_input("ThreadID", value)
        end
        #### 
        # Set the value of the ThreadIdentifier input for this Choreo. 
        # 
        # @param String - (conditional, string) The identifier to retrieve associated thread details. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadLink cannot be used.
        ###

        def set_ThreadIdentifier(value)
          set_input("ThreadIdentifier", value)
        end
        #### 
        # Set the value of the ThreadLink input for this Choreo. 
        # 
        # @param String - (conditional, string) A link pointing to the thread that is to be retrieved. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadIdentifier cannot be set.
        ###

        def set_ThreadLink(value)
          set_input("ThreadLink", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ThreadDetails Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ThreadDetailsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ThreadDetails



    ##############################################################################
    #
    # UnsubscribeFromThread
    #
    # Unsubscribe from a thread.
    #
    ##############################################################################

    class UnsubscribeFromThread < Choreography

      ####
      #  Create a new instance of the UnsubscribeFromThread Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Threads/UnsubscribeFromThread")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UnsubscribeFromThreadInputSet
      ####
      def new_input_set()
        return UnsubscribeFromThreadInputSet.new()
      end

      def make_result_set()
        return UnsubscribeFromThreadResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UnsubscribeFromThreadResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UnsubscribeFromThread
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UnsubscribeFromThreadInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (optional, string) The email address that will be unsubsribed from the thread.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the Forum input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The forum ID of a thread that is to be unsubscribed from. Required if setting either ThreadByIdentification, or ThreadByLink.
        ###

        def set_Forum(value)
          set_input("Forum", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ThreadID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The ID of a thread that is to be unsubscribed from. Required unless specifying the ThreadIdentifier or ThreadLink. If using this parameter, ThreadIdentifier cannot be set.
        ###

        def set_ThreadID(value)
          set_input("ThreadID", value)
        end
        #### 
        # Set the value of the ThreadIdentifier input for this Choreo. 
        # 
        # @param String - (optional, string) The identifier for the thread that is to be unsubscribed from.  Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadLink cannot be used.
        ###

        def set_ThreadIdentifier(value)
          set_input("ThreadIdentifier", value)
        end
        #### 
        # Set the value of the ThreadLink input for this Choreo. 
        # 
        # @param String - (optional, string) A link pointing to the thread that is to be unsubscribed from. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadIdentifier cannot be set.
        ###

        def set_ThreadLink(value)
          set_input("ThreadLink", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UnsubscribeFromThread Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UnsubscribeFromThreadResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UnsubscribeFromThread



    ##############################################################################
    #
    # VoteOnThread
    #
    # Vote on a thread.
    #
    ##############################################################################

    class VoteOnThread < Choreography

      ####
      #  Create a new instance of the VoteOnThread Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Threads/VoteOnThread")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return VoteOnThreadInputSet
      ####
      def new_input_set()
        return VoteOnThreadInputSet.new()
      end

      def make_result_set()
        return VoteOnThreadResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = VoteOnThreadResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the VoteOnThread
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class VoteOnThreadInputSet < Choreography::InputSet

        #### 
        # Set the value of the Forum input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The forum ID of a thread that is being voted on. Required if setting either ThreadByIdentification, or ThreadByLink.
        ###

        def set_Forum(value)
          set_input("Forum", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ThreadID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The ID of a thread that is being voted on. Required unless specifying the ThreadIdentifier or ThreadLink. If using this parameter, ThreadIdentifier cannot be set.
        ###

        def set_ThreadID(value)
          set_input("ThreadID", value)
        end
        #### 
        # Set the value of the ThreadIdentifier input for this Choreo. 
        # 
        # @param String - (optional, string) The identifier for the thread that is being voted on. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadLink cannot be used.
        ###

        def set_ThreadIdentifier(value)
          set_input("ThreadIdentifier", value)
        end
        #### 
        # Set the value of the ThreadLink input for this Choreo. 
        # 
        # @param String - (optional, string) A link pointing to the thread that is being voted on. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadIdentifier cannot be set.
        ###

        def set_ThreadLink(value)
          set_input("ThreadLink", value)
        end
        #### 
        # Set the value of the Vote input for this Choreo. 
        # 
        # @param Integer - (required, integer) A numberic value for your vote. Valid choices are: -1, 0, or 1.
        ###

        def set_Vote(value)
          set_input("Vote", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the VoteOnThread Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class VoteOnThreadResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class VoteOnThread




  end # module Threads

  module Trends



    ##############################################################################
    #
    # ListThreads
    #
    # Returns a list of trending threads.
    #
    ##############################################################################

    class ListThreads < Choreography

      ####
      #  Create a new instance of the ListThreads Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Trends/ListThreads")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListThreadsInputSet
      ####
      def new_input_set()
        return ListThreadsInputSet.new()
      end

      def make_result_set()
        return ListThreadsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListThreadsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListThreads
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListThreadsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid OAuth 2.0 access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Callback input for this Choreo. 
        # 
        # @param String - (optional, string) The name of a callback function to wrap the respone in. Used when setting ResponseFormat to "jsonp".
        ###

        def set_Callback(value)
          set_input("Callback", value)
        end
        #### 
        # Set the value of the Forum input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to look up a forum by ID (aka the short name).
        ###

        def set_Forum(value)
          set_input("Forum", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of records to return. Defaults to 10.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the Related input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates the relations to include with your response. Valid values are: forum, author, category.
        ###

        def set_Related(value)
          set_input("Related", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default), jsonp, or rss.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListThreads Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListThreadsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListThreads




  end # module Trends

  module Users



    ##############################################################################
    #
    # CheckUsername
    #
    # Check whether the provided username is available.  An error is returned if the entered username is either taken, or invalid.
    #
    ##############################################################################

    class CheckUsername < Choreography

      ####
      #  Create a new instance of the CheckUsername Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Users/CheckUsername")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CheckUsernameInputSet
      ####
      def new_input_set()
        return CheckUsernameInputSet.new()
      end

      def make_result_set()
        return CheckUsernameResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CheckUsernameResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CheckUsername
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CheckUsernameInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth 2.0 access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Callback input for this Choreo. 
        # 
        # @param String - (optional, string) The name of a callback function to wrap the respone in. Used when setting ResponseFormat to "jsonp".
        ###

        def set_Callback(value)
          set_input("Callback", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) Enter a Disqus username.
        ###

        def set_Username(value)
          set_input("Username", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CheckUsername Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CheckUsernameResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CheckUsername



    ##############################################################################
    #
    # FollowUser
    #
    # Follows the specified user.
    #
    ##############################################################################

    class FollowUser < Choreography

      ####
      #  Create a new instance of the FollowUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Users/FollowUser")
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
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth 2.0 access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Callback input for this Choreo. 
        # 
        # @param String - (optional, string) The name of a callback function to wrap the respone in. Used when setting ResponseFormat to "jsonp".
        ###

        def set_Callback(value)
          set_input("Callback", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (conditional, string) The User ID that is to be followed. If UserID is set, then Username must be null.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (conditional, string) The Disqus username that is to be followed.  If Username is being set, then UserID must be null.
        ###

        def set_Username(value)
          set_input("Username", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - 
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
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
      	# @return String - (json) The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FollowUser



    ##############################################################################
    #
    # ListActiveForums
    #
    # Retrieve a list of forums a user has been active on.
    #
    ##############################################################################

    class ListActiveForums < Choreography

      ####
      #  Create a new instance of the ListActiveForums Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Users/ListActiveForums")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListActiveForumsInputSet
      ####
      def new_input_set()
        return ListActiveForumsInputSet.new()
      end

      def make_result_set()
        return ListActiveForumsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListActiveForumsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListActiveForums
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListActiveForumsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Cursor input for this Choreo. 
        # 
        # @param String - (optional, string) Default is set to null.
        ###

        def set_Cursor(value)
          set_input("Cursor", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of records to return. Defaults to 25.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Order input for this Choreo. 
        # 
        # @param String - (optional, string) The sort order for the results. Valid values are: asc or desc. Default is set to: asc.
        ###

        def set_Order(value)
          set_input("Order", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default), jsonp, or rss.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SinceID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A Unix timestamp (or ISO datetime standard) to obtain results from. Default is set to null.
        ###

        def set_SinceID(value)
          set_input("SinceID", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (conditional, string) the Disqus User ID, for which active forum information will be retrieved.  If UserID is set, then Username must be null.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (conditional, string) A Disqus username.  If Username is being set, then UserID must be null.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListActiveForums Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListActiveForumsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListActiveForums



    ##############################################################################
    #
    # ListForums
    #
    # Retrieve a list of forums owned by the specified user.
    #
    ##############################################################################

    class ListForums < Choreography

      ####
      #  Create a new instance of the ListForums Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Users/ListForums")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListForumsInputSet
      ####
      def new_input_set()
        return ListForumsInputSet.new()
      end

      def make_result_set()
        return ListForumsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListForumsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListForums
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListForumsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Cursor input for this Choreo. 
        # 
        # @param String - (optional, string) Default is set to null.
        ###

        def set_Cursor(value)
          set_input("Cursor", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of records to return. Defaults to 25.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Order input for this Choreo. 
        # 
        # @param String - (optional, string) The sort order for the results. Valid vaues are: asc or desc. Default is set to: asc.
        ###

        def set_Order(value)
          set_input("Order", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default), jsonp, or rss.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SinceID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) A Unix timestamp (or ISO datetime standard) to obtain results from. Default is set to null.
        ###

        def set_SinceID(value)
          set_input("SinceID", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Disqus User ID, for which active forum information will be retrieved.  If UserID is set, then Username must be null.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (conditional, string) A Disqus username.  If Username is being set, then UserID must be null.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListForums Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListForumsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListForums



    ##############################################################################
    #
    # ListPosts
    #
    # List posts made by a user.
    #
    ##############################################################################

    class ListPosts < Choreography

      ####
      #  Create a new instance of the ListPosts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Users/ListPosts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListPostsInputSet
      ####
      def new_input_set()
        return ListPostsInputSet.new()
      end

      def make_result_set()
        return ListPostsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListPostsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListPosts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListPostsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Cursor input for this Choreo. 
        # 
        # @param String - (optional, string) Default is set to null.
        ###

        def set_Cursor(value)
          set_input("Cursor", value)
        end
        #### 
        # Set the value of the Included input for this Choreo. 
        # 
        # @param String - (optional, string) Specify the type of posts that are to be retrieved. Valid values are: unapproved, approved, spam, deleted, flagged, highlighted.  Default is: approved.
        ###

        def set_Included(value)
          set_input("Included", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of records to return. Defaults to 25.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Order input for this Choreo. 
        # 
        # @param String - (optional, string) The sort order for the results. valid values are: asc or desc. Default is set to: asc.
        ###

        def set_Order(value)
          set_input("Order", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the Related input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates the relations to include with your response. Valid values are: forum, author, category.
        ###

        def set_Related(value)
          set_input("Related", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default), jsonp, or rss.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SinceID input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Default is set to null.
        ###

        def set_SinceID(value)
          set_input("SinceID", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Disqus User ID, for which active forum information will be retrieved.  If UserID is set, then Username must be null.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (conditional, string) A Disqus username. If Username is being set, then UserID must be null.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListPosts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListPostsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListPosts



    ##############################################################################
    #
    # UnfollowUser
    #
    # List posts made by a user.
    #
    ##############################################################################

    class UnfollowUser < Choreography

      ####
      #  Create a new instance of the UnfollowUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Disqus/Users/UnfollowUser")
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
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid OAuth 2.0 access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the PublicKey input for this Choreo. 
        # 
        # @param String - (required, string) The Public Key provided by Disqus (AKA the API Key).
        ###

        def set_PublicKey(value)
          set_input("PublicKey", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default), jsonp, or rss.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (conditional, string) The User ID that is to be unfollowed. If UserID is set, then Username must be null.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (conditional, string) A Disqus username.  If Username is being set, then UserID must be null.
        ###

        def set_Username(value)
          set_input("Username", value)
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
      	# @return String - The response from Disqus.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UnfollowUser




  end # module Users

end # module Disqus