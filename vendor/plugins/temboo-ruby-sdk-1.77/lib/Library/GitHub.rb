require "temboo"

module GitHub




  module GistsAPI




    module Comments



      ##############################################################################
      #
      # CreateComment
      #
      # Creates a comment for a specified gist.
      #
      ##############################################################################

      class CreateComment < Choreography

        ####
        #  Create a new instance of the CreateComment Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/GistsAPI/Comments/CreateComment")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return CreateCommentInputSet
        ####
        def new_input_set()
          return CreateCommentInputSet.new()
        end

        def make_result_set()
          return CreateCommentResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = CreateCommentResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the CreateComment
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class CreateCommentInputSet < Choreography::InputSet

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
          # @param String - (required, string) The text for the comment.
          ###

          def set_Body(value)
            set_input("Body", value)
          end
          #### 
          # Set the value of the ID input for this Choreo. 
          # 
          # @param String - (required, string) The id of the gist to comment on.
          ###

          def set_ID(value)
            set_input("ID", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the CreateComment Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class CreateCommentResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        end

      end # class CreateComment



      ##############################################################################
      #
      # DeleteComment
      #
      # Deletes a specified comment.
      #
      ##############################################################################

      class DeleteComment < Choreography

        ####
        #  Create a new instance of the DeleteComment Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/GistsAPI/Comments/DeleteComment")
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
          # @param String - (required, string) The id of the comment to delete.
          ###

          def set_ID(value)
            set_input("ID", value)
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
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        end

      end # class DeleteComment



      ##############################################################################
      #
      # GetComment
      #
      # Retrieves a single comment.
      #
      ##############################################################################

      class GetComment < Choreography

        ####
        #  Create a new instance of the GetComment Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/GistsAPI/Comments/GetComment")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetCommentInputSet
        ####
        def new_input_set()
          return GetCommentInputSet.new()
        end

        def make_result_set()
          return GetCommentResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = GetCommentResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetComment
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetCommentInputSet < Choreography::InputSet

          #### 
          # Set the value of the ID input for this Choreo. 
          # 
          # @param String - (required, string) The id of the comment to retrieve.
          ###

          def set_ID(value)
            set_input("ID", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetComment Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetCommentResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        end

      end # class GetComment



      ##############################################################################
      #
      # ListComments
      #
      # Retrieves comments for a specified gist.
      #
      ##############################################################################

      class ListComments < Choreography

        ####
        #  Create a new instance of the ListComments Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/GistsAPI/Comments/ListComments")
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
          # Set the value of the ID input for this Choreo. 
          # 
          # @param String - (required, string) The id of the gist to fetch comments for.
          ###

          def set_ID(value)
            set_input("ID", value)
          end
          #### 
          # Set the value of the Page input for this Choreo. 
          # 
          # @param Integer - (optional, integer) Indicates the page index that you want to retrieve. This is used to page through many results. Defaults to 1.
          ###

          def set_Page(value)
            set_input("Page", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ListComments Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ListCommentsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "NextPage" output from this Choreo execution
        	#
        	# @return String - (integer) If multiple pages are available for the response, this contains the next page that you should retrieve.
        	####
        	def get_NextPage()
        	  return @outputs["NextPage"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "LastPage" output from this Choreo execution
        	#
        	# @return String - (integer) If multiple pages are available for the response, this contains the last available page.
        	####
        	def get_LastPage()
        	  return @outputs["LastPage"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class ListComments




    end # module Comments

    module Gists



      ##############################################################################
      #
      # CheckGist
      #
      # Checks whether or not a gist is starred.
      #
      ##############################################################################

      class CheckGist < Choreography

        ####
        #  Create a new instance of the CheckGist Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/GistsAPI/Gists/CheckGist")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return CheckGistInputSet
        ####
        def new_input_set()
          return CheckGistInputSet.new()
        end

        def make_result_set()
          return CheckGistResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = CheckGistResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the CheckGist
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class CheckGistInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (conditional, string) The Access Token retrieved during the OAuth process.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the ID input for this Choreo. 
          # 
          # @param String - (required, string) The id for the gist you want to check.
          ###

          def set_ID(value)
            set_input("ID", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the CheckGist Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class CheckGistResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (string) A boolean flag that indicates whether or not the gist is starred.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        end

      end # class CheckGist



      ##############################################################################
      #
      # CreateGist
      #
      # Creates a gist.
      #
      ##############################################################################

      class CreateGist < Choreography

        ####
        #  Create a new instance of the CreateGist Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/GistsAPI/Gists/CreateGist")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return CreateGistInputSet
        ####
        def new_input_set()
          return CreateGistInputSet.new()
        end

        def make_result_set()
          return CreateGistResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = CreateGistResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the CreateGist
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class CreateGistInputSet < Choreography::InputSet

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
          # @param String - (optional, string) The description for this gist.
          ###

          def set_Description(value)
            set_input("Description", value)
          end
          #### 
          # Set the value of the FileContents input for this Choreo. 
          # 
          # @param String - (required, string) The file contents of the gist.
          ###

          def set_FileContents(value)
            set_input("FileContents", value)
          end
          #### 
          # Set the value of the FileName input for this Choreo. 
          # 
          # @param String - (required, string) The file name of the gist (i.e. myProject.py).
          ###

          def set_FileName(value)
            set_input("FileName", value)
          end
          #### 
          # Set the value of the Public input for this Choreo. 
          # 
          # @param Boolean - (required, boolean) Indicates whether or not the gist is public or private.
          ###

          def set_Public(value)
            set_input("Public", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) Deprecated (retained for backward compatibility only).
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the CreateGist Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class CreateGistResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class CreateGist



      ##############################################################################
      #
      # DeleteGist
      #
      # Deletes a specified gist.
      #
      ##############################################################################

      class DeleteGist < Choreography

        ####
        #  Create a new instance of the DeleteGist Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/GistsAPI/Gists/DeleteGist")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return DeleteGistInputSet
        ####
        def new_input_set()
          return DeleteGistInputSet.new()
        end

        def make_result_set()
          return DeleteGistResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = DeleteGistResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the DeleteGist
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class DeleteGistInputSet < Choreography::InputSet

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
          # @param String - (required, string) The id for the gist you want to delete.
          ###

          def set_ID(value)
            set_input("ID", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the DeleteGist Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class DeleteGistResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        end

      end # class DeleteGist



      ##############################################################################
      #
      # GetGist
      #
      # Returns an individual gist with a given id.
      #
      ##############################################################################

      class GetGist < Choreography

        ####
        #  Create a new instance of the GetGist Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/GistsAPI/Gists/GetGist")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetGistInputSet
        ####
        def new_input_set()
          return GetGistInputSet.new()
        end

        def make_result_set()
          return GetGistResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = GetGistResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetGist
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetGistInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the ID input for this Choreo. 
          # 
          # @param String - (required, string) The id for the gist you want to retrieve.
          ###

          def set_ID(value)
            set_input("ID", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetGist Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetGistResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        end

      end # class GetGist



      ##############################################################################
      #
      # ListGistsByUser
      #
      # Returns a list of gists for a given user.
      #
      ##############################################################################

      class ListGistsByUser < Choreography

        ####
        #  Create a new instance of the ListGistsByUser Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/GistsAPI/Gists/ListGistsByUser")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ListGistsByUserInputSet
        ####
        def new_input_set()
          return ListGistsByUserInputSet.new()
        end

        def make_result_set()
          return ListGistsByUserResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = ListGistsByUserResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ListGistsByUser
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ListGistsByUserInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Page input for this Choreo. 
          # 
          # @param Integer - (optional, integer) Indicates the page index that you want to retrieve. This is used to page through many results. Defaults to 1.
          ###

          def set_Page(value)
            set_input("Page", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The username for which you want to retrieve a list of gists.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ListGistsByUser Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ListGistsByUserResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "NextPage" output from this Choreo execution
        	#
        	# @return String - (integer) If multiple pages are available for the response, this contains the next page that you should retrieve.
        	####
        	def get_NextPage()
        	  return @outputs["NextPage"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "LastPage" output from this Choreo execution
        	#
        	# @return String - (integer) If multiple pages are available for the response, this contains the last available page.
        	####
        	def get_LastPage()
        	  return @outputs["LastPage"]
        	end
        end

      end # class ListGistsByUser



      ##############################################################################
      #
      # ListGistsForAuthenticatedUser
      #
      # Returns a list of gists for the authenticated user or if called anonymously, return all public gists.
      #
      ##############################################################################

      class ListGistsForAuthenticatedUser < Choreography

        ####
        #  Create a new instance of the ListGistsForAuthenticatedUser Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/GistsAPI/Gists/ListGistsForAuthenticatedUser")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ListGistsForAuthenticatedUserInputSet
        ####
        def new_input_set()
          return ListGistsForAuthenticatedUserInputSet.new()
        end

        def make_result_set()
          return ListGistsForAuthenticatedUserResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = ListGistsForAuthenticatedUserResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ListGistsForAuthenticatedUser
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ListGistsForAuthenticatedUserInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (conditional, string) The Access Token retrieved during the OAuth process. If not provided, all public gists are returned.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Page input for this Choreo. 
          # 
          # @param Integer - (optional, integer) Indicates the page index that you want to retrieve. This is used to page through many results. Defaults to 1.
          ###

          def set_Page(value)
            set_input("Page", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ListGistsForAuthenticatedUser Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ListGistsForAuthenticatedUserResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "NextPage" output from this Choreo execution
        	#
        	# @return String - (integer) If multiple pages are available for the response, this contains the next page that you should retrieve.
        	####
        	def get_NextPage()
        	  return @outputs["NextPage"]
        	end
        	####
        	# Retrieve the value for the "LastPage" output from this Choreo execution
        	#
        	# @return String - (integer) If multiple pages are available for the response, this contains the last available page.
        	####
        	def get_LastPage()
        	  return @outputs["LastPage"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        end

      end # class ListGistsForAuthenticatedUser



      ##############################################################################
      #
      # ListPublicGists
      #
      # Returns a list of all public gists.
      #
      ##############################################################################

      class ListPublicGists < Choreography

        ####
        #  Create a new instance of the ListPublicGists Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/GistsAPI/Gists/ListPublicGists")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ListPublicGistsInputSet
        ####
        def new_input_set()
          return ListPublicGistsInputSet.new()
        end

        def make_result_set()
          return ListPublicGistsResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = ListPublicGistsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ListPublicGists
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ListPublicGistsInputSet < Choreography::InputSet

          #### 
          # Set the value of the Page input for this Choreo. 
          # 
          # @param Integer - (optional, integer) Indicates the page index that you want to retrieve. This is used to page through many results. Defaults to 1.
          ###

          def set_Page(value)
            set_input("Page", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ListPublicGists Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ListPublicGistsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "LastPage" output from this Choreo execution
        	#
        	# @return String - (integer) If multiple pages are available for the response, this contains the last available page.
        	####
        	def get_LastPage()
        	  return @outputs["LastPage"]
        	end
        	####
        	# Retrieve the value for the "NextPage" output from this Choreo execution
        	#
        	# @return String - (integer) If multiple pages are available for the response, this contains the next page that you should retrieve.
        	####
        	def get_NextPage()
        	  return @outputs["NextPage"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        end

      end # class ListPublicGists



      ##############################################################################
      #
      # ListStarredGists
      #
      # Returns a list of starred gists for the authenticated user.
      #
      ##############################################################################

      class ListStarredGists < Choreography

        ####
        #  Create a new instance of the ListStarredGists Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/GistsAPI/Gists/ListStarredGists")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ListStarredGistsInputSet
        ####
        def new_input_set()
          return ListStarredGistsInputSet.new()
        end

        def make_result_set()
          return ListStarredGistsResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = ListStarredGistsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ListStarredGists
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ListStarredGistsInputSet < Choreography::InputSet

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
          # @param Integer - (optional, integer) Indicates the page index that you want to retrieve. This is used to page through many results. Defaults to 1.
          ###

          def set_Page(value)
            set_input("Page", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ListStarredGists Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ListStarredGistsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "LastPage" output from this Choreo execution
        	#
        	# @return String - (integer) If multiple pages are available for the response, this contains the last available page.
        	####
        	def get_LastPage()
        	  return @outputs["LastPage"]
        	end
        	####
        	# Retrieve the value for the "NextPage" output from this Choreo execution
        	#
        	# @return String - (integer) If multiple pages are available for the response, this contains the next page that you should retrieve.
        	####
        	def get_NextPage()
        	  return @outputs["NextPage"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        end

      end # class ListStarredGists



      ##############################################################################
      #
      # StarGist
      #
      # Stars a gist using a specified gist id.
      #
      ##############################################################################

      class StarGist < Choreography

        ####
        #  Create a new instance of the StarGist Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/GistsAPI/Gists/StarGist")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return StarGistInputSet
        ####
        def new_input_set()
          return StarGistInputSet.new()
        end

        def make_result_set()
          return StarGistResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = StarGistResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the StarGist
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class StarGistInputSet < Choreography::InputSet

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
          # @param String - (required, string) The id for the gist you want to star.
          ###

          def set_ID(value)
            set_input("ID", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the StarGist Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class StarGistResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        end

      end # class StarGist



      ##############################################################################
      #
      # UnstarGist
      #
      # Unstars a gist using a specified gist id.
      #
      ##############################################################################

      class UnstarGist < Choreography

        ####
        #  Create a new instance of the UnstarGist Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/GistsAPI/Gists/UnstarGist")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return UnstarGistInputSet
        ####
        def new_input_set()
          return UnstarGistInputSet.new()
        end

        def make_result_set()
          return UnstarGistResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = UnstarGistResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the UnstarGist
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class UnstarGistInputSet < Choreography::InputSet

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
          # @param String - (required, string) The id for the gist you want to unstar.
          ###

          def set_ID(value)
            set_input("ID", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the UnstarGist Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class UnstarGistResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        end

      end # class UnstarGist




    end # module Gists

  end # module GistsAPI

  module GitDataAPI




    module Commits



      ##############################################################################
      #
      # GetCommit
      #
      # Retrieves a specified commit from a repo.
      #
      ##############################################################################

      class GetCommit < Choreography

        ####
        #  Create a new instance of the GetCommit Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/GitDataAPI/Commits/GetCommit")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetCommitInputSet
        ####
        def new_input_set()
          return GetCommitInputSet.new()
        end

        def make_result_set()
          return GetCommitResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = GetCommitResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetCommit
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetCommitInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The repo associated with the commit.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the SHA input for this Choreo. 
          # 
          # @param String - (required, string) The unique commit SHA associated with the commit to retrieve.
          ###

          def set_SHA(value)
            set_input("SHA", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetCommit Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetCommitResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        end

      end # class GetCommit




    end # module Commits

    module References



      ##############################################################################
      #
      # CreateReference
      #
      # Creates a reference on the system.
      #
      ##############################################################################

      class CreateReference < Choreography

        ####
        #  Create a new instance of the CreateReference Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/GitDataAPI/References/CreateReference")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return CreateReferenceInputSet
        ####
        def new_input_set()
          return CreateReferenceInputSet.new()
        end

        def make_result_set()
          return CreateReferenceResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = CreateReferenceResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the CreateReference
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class CreateReferenceInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (required, string) The Access Token retrieved during the OAuth process.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Ref input for this Choreo. 
          # 
          # @param String - (required, string) The name of the fully qualified reference. Must be formatted as refs/heads/branch. Refs can be retrieved by running the GetAllReferences and parsing the value for "ref".
          ###

          def set_Ref(value)
            set_input("Ref", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repo associated with the reference being created.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the SHA input for this Choreo. 
          # 
          # @param String - (required, string) The SHA1 value to set this reference to.
          ###

          def set_SHA(value)
            set_input("SHA", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the CreateReference Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class CreateReferenceResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        end

      end # class CreateReference



      ##############################################################################
      #
      # DeleteReference
      #
      # Deletes a specified reference.
      #
      ##############################################################################

      class DeleteReference < Choreography

        ####
        #  Create a new instance of the DeleteReference Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/GitDataAPI/References/DeleteReference")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return DeleteReferenceInputSet
        ####
        def new_input_set()
          return DeleteReferenceInputSet.new()
        end

        def make_result_set()
          return DeleteReferenceResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = DeleteReferenceResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the DeleteReference
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class DeleteReferenceInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (required, string) The Access Token retrieved during the OAuth process.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Ref input for this Choreo. 
          # 
          # @param String - (required, string) The name of the fully qualified reference to delete. Must be formatted as refs/heads/branch. Refs can be retrieved by running the GetAllReferences and parsing the value for "ref".
          ###

          def set_Ref(value)
            set_input("Ref", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repo associated with the reference that's being deleted.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the DeleteReference Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class DeleteReferenceResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class DeleteReference



      ##############################################################################
      #
      # GetAllReferences
      #
      # Retrieves an array of all the references on the system, including things like notes and stashes if they exist on the server.
      #
      ##############################################################################

      class GetAllReferences < Choreography

        ####
        #  Create a new instance of the GetAllReferences Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/GitDataAPI/References/GetAllReferences")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetAllReferencesInputSet
        ####
        def new_input_set()
          return GetAllReferencesInputSet.new()
        end

        def make_result_set()
          return GetAllReferencesResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = GetAllReferencesResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetAllReferences
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetAllReferencesInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repo associated with the references to retrieve.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetAllReferences Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetAllReferencesResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        end

      end # class GetAllReferences



      ##############################################################################
      #
      # GetReference
      #
      # Retrieves an individual reference on the system, including things like notes and statshes if they exist on the server.
      #
      ##############################################################################

      class GetReference < Choreography

        ####
        #  Create a new instance of the GetReference Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/GitDataAPI/References/GetReference")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetReferenceInputSet
        ####
        def new_input_set()
          return GetReferenceInputSet.new()
        end

        def make_result_set()
          return GetReferenceResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = GetReferenceResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetReference
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetReferenceInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Ref input for this Choreo. 
          # 
          # @param String - (required, string) The reference to retrieve. Must be formatted as refs/heads/branch. Refs can be retrieved by running the GetAllReferences and parsing the value for "ref".
          ###

          def set_Ref(value)
            set_input("Ref", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repo associated with the references to retrieve.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetReference Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetReferenceResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        end

      end # class GetReference




    end # module References

    module Tags



      ##############################################################################
      #
      # CreateTag
      #
      # Creates a tag object.
      #
      ##############################################################################

      class CreateTag < Choreography

        ####
        #  Create a new instance of the CreateTag Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/GitDataAPI/Tags/CreateTag")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return CreateTagInputSet
        ####
        def new_input_set()
          return CreateTagInputSet.new()
        end

        def make_result_set()
          return CreateTagResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = CreateTagResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the CreateTag
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class CreateTagInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (required, string) The Access Token retrieved during the OAuth process.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Message input for this Choreo. 
          # 
          # @param String - (required, string) The tag message.
          ###

          def set_Message(value)
            set_input("Message", value)
          end
          #### 
          # Set the value of the Object input for this Choreo. 
          # 
          # @param String - (required, string) The SHA of the git object that is being tagged.
          ###

          def set_Object(value)
            set_input("Object", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repo associated with the tag being created.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the Tag input for this Choreo. 
          # 
          # @param String - (required, string) A string to use for the tag (i.e. v0.0.1).
          ###

          def set_Tag(value)
            set_input("Tag", value)
          end
          #### 
          # Set the value of the TaggerDate input for this Choreo. 
          # 
          # @param String - (required, date) A timestamp of when the object is tagged. Should be formatted like: 2011-06-17T14:53:35-07:00.
          ###

          def set_TaggerDate(value)
            set_input("TaggerDate", value)
          end
          #### 
          # Set the value of the TaggerEmail input for this Choreo. 
          # 
          # @param String - (required, string) The email of the author of the tag.
          ###

          def set_TaggerEmail(value)
            set_input("TaggerEmail", value)
          end
          #### 
          # Set the value of the TaggerName input for this Choreo. 
          # 
          # @param String - (required, string) The name of the author of the tag.
          ###

          def set_TaggerName(value)
            set_input("TaggerName", value)
          end
          #### 
          # Set the value of the Type input for this Choreo. 
          # 
          # @param String - (required, string) The type of object that is being tagged. Valid values are: commit, tree, or blob.
          ###

          def set_Type(value)
            set_input("Type", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the CreateTag Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class CreateTagResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        end

      end # class CreateTag



      ##############################################################################
      #
      # GetTag
      #
      # Retrieves a specified tag object.
      #
      ##############################################################################

      class GetTag < Choreography

        ####
        #  Create a new instance of the GetTag Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/GitDataAPI/Tags/GetTag")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetTagInputSet
        ####
        def new_input_set()
          return GetTagInputSet.new()
        end

        def make_result_set()
          return GetTagResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = GetTagResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetTag
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetTagInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repo associated with the tag to retrieve.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the SHA input for this Choreo. 
          # 
          # @param String - (required, string) The SHA associated with the tag to retrieve.
          ###

          def set_SHA(value)
            set_input("SHA", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetTag Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetTagResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        end

      end # class GetTag




    end # module Tags

  end # module GitDataAPI

  module IssuesAPI




    module Issues



      ##############################################################################
      #
      # ListIssuesForRepo
      #
      # List all issues for a specified repository.
      #
      ##############################################################################

      class ListIssuesForRepo < Choreography

        ####
        #  Create a new instance of the ListIssuesForRepo Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/IssuesAPI/Issues/ListIssuesForRepo")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ListIssuesForRepoInputSet
        ####
        def new_input_set()
          return ListIssuesForRepoInputSet.new()
        end

        def make_result_set()
          return ListIssuesForRepoResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = ListIssuesForRepoResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ListIssuesForRepo
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ListIssuesForRepoInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (required, string) The Access Token retrieved during the OAuth process.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Assignee input for this Choreo. 
          # 
          # @param String - (required, string) Can be set to a username, "none" for issues with no assinged user, or * for issues with any assigned user.
          ###

          def set_Assignee(value)
            set_input("Assignee", value)
          end
          #### 
          # Set the value of the Direction input for this Choreo. 
          # 
          # @param String - (optional, string) The direction of the sort order. Valid values are: asc or desc (the default).
          ###

          def set_Direction(value)
            set_input("Direction", value)
          end
          #### 
          # Set the value of the Labels input for this Choreo. 
          # 
          # @param String - (optional, string) A comma separated list of label names (i.e. bug, ui, etc).
          ###

          def set_Labels(value)
            set_input("Labels", value)
          end
          #### 
          # Set the value of the Mentioned input for this Choreo. 
          # 
          # @param String - (optional, string) A Github username that is mentioned.
          ###

          def set_Mentioned(value)
            set_input("Mentioned", value)
          end
          #### 
          # Set the value of the Milestone input for this Choreo. 
          # 
          # @param String - (required, string) Can be set to a milestone number, "none" for issues with no milestone, or * for issues with any milestone.
          ###

          def set_Milestone(value)
            set_input("Milestone", value)
          end
          #### 
          # Set the value of the Page input for this Choreo. 
          # 
          # @param Integer - (optional, integer) Indicates the page index that you want to retrieve. This is used to page through many results. Defaults to 1.
          ###

          def set_Page(value)
            set_input("Page", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repo.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the Since input for this Choreo. 
          # 
          # @param String - (optional, date) A timestamp in ISO 8601 format (YYYY-MM-DDTHH:MM:SSZ). Returns issues since this date.
          ###

          def set_Since(value)
            set_input("Since", value)
          end
          #### 
          # Set the value of the Sort input for this Choreo. 
          # 
          # @param String - (optional, string) Indicates how the issues will be sorted in the response. Valid sort options are: created (the default), updated, comments.
          ###

          def set_Sort(value)
            set_input("Sort", value)
          end
          #### 
          # Set the value of the State input for this Choreo. 
          # 
          # @param String - (optional, string) Returns issues with a particular state: open (the default) or closed.
          ###

          def set_State(value)
            set_input("State", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) A GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ListIssuesForRepo Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ListIssuesForRepoResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "LastPage" output from this Choreo execution
        	#
        	# @return String - (integer) If multiple pages are available for the response, this contains the last available page.
        	####
        	def get_LastPage()
        	  return @outputs["LastPage"]
        	end
        	####
        	# Retrieve the value for the "NextPage" output from this Choreo execution
        	#
        	# @return String - (integer) If multiple pages are available for the response, this contains the next page that you should retrieve.
        	####
        	def get_NextPage()
        	  return @outputs["NextPage"]
        	end
        end

      end # class ListIssuesForRepo



      ##############################################################################
      #
      # ListYourIssues
      #
      # Lists all issues associated with the provided access token.
      #
      ##############################################################################

      class ListYourIssues < Choreography

        ####
        #  Create a new instance of the ListYourIssues Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/IssuesAPI/Issues/ListYourIssues")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ListYourIssuesInputSet
        ####
        def new_input_set()
          return ListYourIssuesInputSet.new()
        end

        def make_result_set()
          return ListYourIssuesResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = ListYourIssuesResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ListYourIssues
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ListYourIssuesInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (required, string) The Access Token retrieved during the OAuth process.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Direction input for this Choreo. 
          # 
          # @param String - (optional, string) The direction of the sort order. Valid values are: asc or desc (the default).
          ###

          def set_Direction(value)
            set_input("Direction", value)
          end
          #### 
          # Set the value of the Filter input for this Choreo. 
          # 
          # @param String - (optional, string) Filters issues using one of the following strings: assigned (the default), created, mentioned, subscribed.
          ###

          def set_Filter(value)
            set_input("Filter", value)
          end
          #### 
          # Set the value of the Labels input for this Choreo. 
          # 
          # @param String - (optional, string) A comma separated list of label names (i.e. bug, ui, etc).
          ###

          def set_Labels(value)
            set_input("Labels", value)
          end
          #### 
          # Set the value of the Page input for this Choreo. 
          # 
          # @param Integer - (optional, integer) Indicates the page index that you want to retrieve. This is used to page through many results. Defaults to 1.
          ###

          def set_Page(value)
            set_input("Page", value)
          end
          #### 
          # Set the value of the Since input for this Choreo. 
          # 
          # @param String - (optional, date) A timestamp in ISO 8601 format (YYYY-MM-DDTHH:MM:SSZ). Returns issues since this date.
          ###

          def set_Since(value)
            set_input("Since", value)
          end
          #### 
          # Set the value of the Sort input for this Choreo. 
          # 
          # @param String - (optional, string) Indicates how the issues will be sorted in the response. Valid sort options are: created (the default), updated, comments.
          ###

          def set_Sort(value)
            set_input("Sort", value)
          end
          #### 
          # Set the value of the State input for this Choreo. 
          # 
          # @param String - (optional, string) Returns issues with a particular state: open (the default) or closed.
          ###

          def set_State(value)
            set_input("State", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ListYourIssues Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ListYourIssuesResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "NextPage" output from this Choreo execution
        	#
        	# @return String - (integer) If multiple pages are available for the response, this contains the next page that you should retrieve.
        	####
        	def get_NextPage()
        	  return @outputs["NextPage"]
        	end
        	####
        	# Retrieve the value for the "LastPage" output from this Choreo execution
        	#
        	# @return String - (integer) If multiple pages are available for the response, this contains the last available page.
        	####
        	def get_LastPage()
        	  return @outputs["LastPage"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        end

      end # class ListYourIssues




    end # module Issues

  end # module IssuesAPI

  module OAuth



    ##############################################################################
    #
    # FinalizeOAuth
    #
    # Completes the OAuth process by retrieving a GitHub access token for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
    #
    ##############################################################################

    class FinalizeOAuth < Choreography

      ####
      #  Create a new instance of the FinalizeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/GitHub/OAuth/FinalizeOAuth")
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
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (required, string) The Client ID provided by GitHub after registering your application.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Client Secret provided by GitHub after registering your application.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
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
      	# @return String - (string) The access token for the user that has granted access to your application.
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
        super(session, "/Library/GitHub/OAuth/InitializeOAuth")
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
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (required, string) The Client ID provided by GitHub after registering your application.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
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
        # Set the value of the Scope input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of scopes to associate with the access token. See description for more information. Ex.: user,repo,public_repo.
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
      end

    end # class InitializeOAuth




  end # module OAuth

  module ReposAPI




    module Collaborators



      ##############################################################################
      #
      # AddCollaborator
      #
      # Adds a collaborator to a specified repository.
      #
      ##############################################################################

      class AddCollaborator < Choreography

        ####
        #  Create a new instance of the AddCollaborator Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Collaborators/AddCollaborator")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return AddCollaboratorInputSet
        ####
        def new_input_set()
          return AddCollaboratorInputSet.new()
        end

        def make_result_set()
          return AddCollaboratorResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = AddCollaboratorResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the AddCollaborator
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class AddCollaboratorInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (required, string) The Access Token retrieved during the OAuth process.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Collaborator input for this Choreo. 
          # 
          # @param String - (required, string) The username of the collaborator to check.
          ###

          def set_Collaborator(value)
            set_input("Collaborator", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repo to add a collaborator to.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the AddCollaborator Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class AddCollaboratorResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        end

      end # class AddCollaborator



      ##############################################################################
      #
      # GetCollaboratorStatus
      #
      # Checks to see if the provided user is a collaborator.
      #
      ##############################################################################

      class GetCollaboratorStatus < Choreography

        ####
        #  Create a new instance of the GetCollaboratorStatus Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Collaborators/GetCollaboratorStatus")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetCollaboratorStatusInputSet
        ####
        def new_input_set()
          return GetCollaboratorStatusInputSet.new()
        end

        def make_result_set()
          return GetCollaboratorStatusResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = GetCollaboratorStatusResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetCollaboratorStatus
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetCollaboratorStatusInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Collaborator input for this Choreo. 
          # 
          # @param String - (required, string) The username of the collaborator to check.
          ###

          def set_Collaborator(value)
            set_input("Collaborator", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repo that has the collaborators to retrieve.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetCollaboratorStatus Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetCollaboratorStatusResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        end

      end # class GetCollaboratorStatus



      ##############################################################################
      #
      # ListCollaborators
      #
      # Retrieves a list of collaborators for the specified repository.
      #
      ##############################################################################

      class ListCollaborators < Choreography

        ####
        #  Create a new instance of the ListCollaborators Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Collaborators/ListCollaborators")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ListCollaboratorsInputSet
        ####
        def new_input_set()
          return ListCollaboratorsInputSet.new()
        end

        def make_result_set()
          return ListCollaboratorsResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = ListCollaboratorsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ListCollaborators
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ListCollaboratorsInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repo that has the collaborators to retrieve.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ListCollaborators Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ListCollaboratorsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        end

      end # class ListCollaborators



      ##############################################################################
      #
      # RemoveCollaborator
      #
      # Removes a collaborator from a specified repository.
      #
      ##############################################################################

      class RemoveCollaborator < Choreography

        ####
        #  Create a new instance of the RemoveCollaborator Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Collaborators/RemoveCollaborator")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return RemoveCollaboratorInputSet
        ####
        def new_input_set()
          return RemoveCollaboratorInputSet.new()
        end

        def make_result_set()
          return RemoveCollaboratorResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = RemoveCollaboratorResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the RemoveCollaborator
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class RemoveCollaboratorInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (required, string) The Access Token retrieved during the OAuth process.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Collaborator input for this Choreo. 
          # 
          # @param String - (required, string) The username of the collaborator to remove.
          ###

          def set_Collaborator(value)
            set_input("Collaborator", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repo that the collaborator will be removed from.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the RemoveCollaborator Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class RemoveCollaboratorResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        end

      end # class RemoveCollaborator




    end # module Collaborators

    module Comments



      ##############################################################################
      #
      # CreateCommitComment
      #
      # Creates a comment on a specified commit.
      #
      ##############################################################################

      class CreateCommitComment < Choreography

        ####
        #  Create a new instance of the CreateCommitComment Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Comments/CreateCommitComment")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return CreateCommitCommentInputSet
        ####
        def new_input_set()
          return CreateCommitCommentInputSet.new()
        end

        def make_result_set()
          return CreateCommitCommentResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = CreateCommitCommentResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the CreateCommitComment
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class CreateCommitCommentInputSet < Choreography::InputSet

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
          # @param String - (required, string) The comment text.
          ###

          def set_Body(value)
            set_input("Body", value)
          end
          #### 
          # Set the value of the Line input for this Choreo. 
          # 
          # @param Integer - (required, integer) The line number in the file to comment on.
          ###

          def set_Line(value)
            set_input("Line", value)
          end
          #### 
          # Set the value of the Path input for this Choreo. 
          # 
          # @param String - (required, string) The relative path of the file to comment on.
          ###

          def set_Path(value)
            set_input("Path", value)
          end
          #### 
          # Set the value of the Position input for this Choreo. 
          # 
          # @param Integer - (required, integer) The line index in the diff to comment on.
          ###

          def set_Position(value)
            set_input("Position", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repo that the comment is associated with.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the SHA input for this Choreo. 
          # 
          # @param String - (required, string) The SHA or id of the commit.
          ###

          def set_SHA(value)
            set_input("SHA", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the CreateCommitComment Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class CreateCommitCommentResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        end

      end # class CreateCommitComment



      ##############################################################################
      #
      # DeleteCommitComment
      #
      # Deletes a specified commit comment.
      #
      ##############################################################################

      class DeleteCommitComment < Choreography

        ####
        #  Create a new instance of the DeleteCommitComment Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Comments/DeleteCommitComment")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return DeleteCommitCommentInputSet
        ####
        def new_input_set()
          return DeleteCommitCommentInputSet.new()
        end

        def make_result_set()
          return DeleteCommitCommentResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = DeleteCommitCommentResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the DeleteCommitComment
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class DeleteCommitCommentInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (conditional, string) The Access Token retrieved during the OAuth process.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the ID input for this Choreo. 
          # 
          # @param String - (required, string) The comment id.
          ###

          def set_ID(value)
            set_input("ID", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repo that the comment is associated with.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the DeleteCommitComment Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class DeleteCommitCommentResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class DeleteCommitComment



      ##############################################################################
      #
      # GetCommitComment
      #
      # Retrieves an individual commit comment.
      #
      ##############################################################################

      class GetCommitComment < Choreography

        ####
        #  Create a new instance of the GetCommitComment Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Comments/GetCommitComment")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetCommitCommentInputSet
        ####
        def new_input_set()
          return GetCommitCommentInputSet.new()
        end

        def make_result_set()
          return GetCommitCommentResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = GetCommitCommentResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetCommitComment
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetCommitCommentInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the ID input for this Choreo. 
          # 
          # @param String - (required, string) The comment id.
          ###

          def set_ID(value)
            set_input("ID", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repo that the comment is associated with.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetCommitComment Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetCommitCommentResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        end

      end # class GetCommitComment



      ##############################################################################
      #
      # ListCommentsForRepo
      #
      # Retrieves a list of comments for the specified repository.
      #
      ##############################################################################

      class ListCommentsForRepo < Choreography

        ####
        #  Create a new instance of the ListCommentsForRepo Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Comments/ListCommentsForRepo")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ListCommentsForRepoInputSet
        ####
        def new_input_set()
          return ListCommentsForRepoInputSet.new()
        end

        def make_result_set()
          return ListCommentsForRepoResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = ListCommentsForRepoResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ListCommentsForRepo
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ListCommentsForRepoInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repo to list comments for.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ListCommentsForRepo Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ListCommentsForRepoResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        end

      end # class ListCommentsForRepo



      ##############################################################################
      #
      # ListCommitComments
      #
      # Retrieves a list of comments for a single commit.
      #
      ##############################################################################

      class ListCommitComments < Choreography

        ####
        #  Create a new instance of the ListCommitComments Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Comments/ListCommitComments")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ListCommitCommentsInputSet
        ####
        def new_input_set()
          return ListCommitCommentsInputSet.new()
        end

        def make_result_set()
          return ListCommitCommentsResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = ListCommitCommentsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ListCommitComments
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ListCommitCommentsInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repository.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the SHA input for this Choreo. 
          # 
          # @param String - (required, string) The SHA of the commit.
          ###

          def set_SHA(value)
            set_input("SHA", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ListCommitComments Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ListCommitCommentsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        end

      end # class ListCommitComments




    end # module Comments

    module Commits



      ##############################################################################
      #
      # CompareCommits
      #
      # Retrieves a comparison between two commits.
      #
      ##############################################################################

      class CompareCommits < Choreography

        ####
        #  Create a new instance of the CompareCommits Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Commits/CompareCommits")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return CompareCommitsInputSet
        ####
        def new_input_set()
          return CompareCommitsInputSet.new()
        end

        def make_result_set()
          return CompareCommitsResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = CompareCommitsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the CompareCommits
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class CompareCommitsInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Base input for this Choreo. 
          # 
          # @param String - (required, string) The base commit (i.e. "master").
          ###

          def set_Base(value)
            set_input("Base", value)
          end
          #### 
          # Set the value of the Head input for this Choreo. 
          # 
          # @param String - (required, string) The head commit.
          ###

          def set_Head(value)
            set_input("Head", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repository.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the CompareCommits Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class CompareCommitsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class CompareCommits



      ##############################################################################
      #
      # GetCommit
      #
      # Retrieves an individual commit.
      #
      ##############################################################################

      class GetCommit < Choreography

        ####
        #  Create a new instance of the GetCommit Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Commits/GetCommit")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetCommitInputSet
        ####
        def new_input_set()
          return GetCommitInputSet.new()
        end

        def make_result_set()
          return GetCommitResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = GetCommitResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetCommit
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetCommitInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repository.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the SHA input for this Choreo. 
          # 
          # @param String - (required, string) The SHA of the commit to return.
          ###

          def set_SHA(value)
            set_input("SHA", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetCommit Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetCommitResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetCommit



      ##############################################################################
      #
      # ListCommits
      #
      # Lists commits for a specified repository.
      #
      ##############################################################################

      class ListCommits < Choreography

        ####
        #  Create a new instance of the ListCommits Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Commits/ListCommits")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ListCommitsInputSet
        ####
        def new_input_set()
          return ListCommitsInputSet.new()
        end

        def make_result_set()
          return ListCommitsResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = ListCommitsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ListCommits
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ListCommitsInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Path input for this Choreo. 
          # 
          # @param String - (optional, string) Returns only commits containing this file path.
          ###

          def set_Path(value)
            set_input("Path", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repository.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the SHA input for this Choreo. 
          # 
          # @param String - (optional, string) The SHA or branch to start listing commits from.
          ###

          def set_SHA(value)
            set_input("SHA", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ListCommits Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ListCommitsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        end

      end # class ListCommits




    end # module Commits

    module Contents



      ##############################################################################
      #
      # GetArchive
      #
      # Returns the contents of any file or directory in a repository.
      #
      ##############################################################################

      class GetArchive < Choreography

        ####
        #  Create a new instance of the GetArchive Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Contents/GetArchive")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetArchiveInputSet
        ####
        def new_input_set()
          return GetArchiveInputSet.new()
        end

        def make_result_set()
          return GetArchiveResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = GetArchiveResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetArchive
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetArchiveInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (required, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Path input for this Choreo. 
          # 
          # @param String - (optional, string) The content path.
          ###

          def set_Path(value)
            set_input("Path", value)
          end
          #### 
          # Set the value of the Ref input for this Choreo. 
          # 
          # @param String - (optional, string) The name of the commit, branch, or tag. Defaults to "master".
          ###

          def set_Ref(value)
            set_input("Ref", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repository.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetArchive Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetArchiveResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        end

      end # class GetArchive



      ##############################################################################
      #
      # GetContents
      #
      # Returns a tarball or zipball archive for a repository. 
      #
      ##############################################################################

      class GetContents < Choreography

        ####
        #  Create a new instance of the GetContents Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Contents/GetContents")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetContentsInputSet
        ####
        def new_input_set()
          return GetContentsInputSet.new()
        end

        def make_result_set()
          return GetContentsResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = GetContentsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetContents
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetContentsInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (required, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the ArchiveFormat input for this Choreo. 
          # 
          # @param String - (required, string) Either tarball or zipball. Defaults to "tarball".
          ###

          def set_ArchiveFormat(value)
            set_input("ArchiveFormat", value)
          end
          #### 
          # Set the value of the Ref input for this Choreo. 
          # 
          # @param String - (optional, string) A valid Git reference. Defaults to "master".
          ###

          def set_Ref(value)
            set_input("Ref", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repository.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetContents Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetContentsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (string) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetContents



      ##############################################################################
      #
      # GetReadMe
      #
      # Retrieves the README file for a repository.
      #
      ##############################################################################

      class GetReadMe < Choreography

        ####
        #  Create a new instance of the GetReadMe Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Contents/GetReadMe")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetReadMeInputSet
        ####
        def new_input_set()
          return GetReadMeInputSet.new()
        end

        def make_result_set()
          return GetReadMeResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = GetReadMeResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetReadMe
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetReadMeInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (required, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Ref input for this Choreo. 
          # 
          # @param String - (optional, string) The name of the commit, branch, or tag. Defaults to "master".
          ###

          def set_Ref(value)
            set_input("Ref", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repository.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetReadMe Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetReadMeResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        end

      end # class GetReadMe




    end # module Contents

    module Forks



      ##############################################################################
      #
      # CreateFork
      #
      # Creates a fork for the authenticated user.
      #
      ##############################################################################

      class CreateFork < Choreography

        ####
        #  Create a new instance of the CreateFork Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Forks/CreateFork")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return CreateForkInputSet
        ####
        def new_input_set()
          return CreateForkInputSet.new()
        end

        def make_result_set()
          return CreateForkResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = CreateForkResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the CreateFork
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class CreateForkInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (required, string) The Access Token retrieved during the OAuth process.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Org input for this Choreo. 
          # 
          # @param String - (optional, string) The organization login. The repository will be forked into this organization.
          ###

          def set_Org(value)
            set_input("Org", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repository.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the CreateFork Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class CreateForkResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class CreateFork



      ##############################################################################
      #
      # GetForks
      #
      # Retrieves forks for a specified repository.
      #
      ##############################################################################

      class GetForks < Choreography

        ####
        #  Create a new instance of the GetForks Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Forks/GetForks")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetForksInputSet
        ####
        def new_input_set()
          return GetForksInputSet.new()
        end

        def make_result_set()
          return GetForksResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = GetForksResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetForks
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetForksInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (required, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repository.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the Sort input for this Choreo. 
          # 
          # @param String - (optional, string) Valid values are: newest, oldest, or watchers. Default is "newest".
          ###

          def set_Sort(value)
            set_input("Sort", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetForks Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetForksResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        end

      end # class GetForks




    end # module Forks

    module Repos



      ##############################################################################
      #
      # CreateRepo
      #
      # Creates a new repository for the authenticated user.
      #
      ##############################################################################

      class CreateRepo < Choreography

        ####
        #  Create a new instance of the CreateRepo Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Repos/CreateRepo")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return CreateRepoInputSet
        ####
        def new_input_set()
          return CreateRepoInputSet.new()
        end

        def make_result_set()
          return CreateRepoResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = CreateRepoResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the CreateRepo
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class CreateRepoInputSet < Choreography::InputSet

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
          # @param String - (optional, string) A text description for the repo.
          ###

          def set_Description(value)
            set_input("Description", value)
          end
          #### 
          # Set the value of the HasDownloads input for this Choreo. 
          # 
          # @param Boolean - (optional, boolean) Se to "true" to enable downloads for this repository. Defaults to "true".
          ###

          def set_HasDownloads(value)
            set_input("HasDownloads", value)
          end
          #### 
          # Set the value of the HasIssues input for this Choreo. 
          # 
          # @param Boolean - (optional, boolean) Set to "true" to enable issues for this repository. Defaults to "true."
          ###

          def set_HasIssues(value)
            set_input("HasIssues", value)
          end
          #### 
          # Set the value of the HasWiki input for this Choreo. 
          # 
          # @param Boolean - (optional, boolean) Set to "true" to enable the wiki for this repository. Defaults to "true".
          ###

          def set_HasWiki(value)
            set_input("HasWiki", value)
          end
          #### 
          # Set the value of the Homepage input for this Choreo. 
          # 
          # @param String - (optional, string) A homepage link.
          ###

          def set_Homepage(value)
            set_input("Homepage", value)
          end
          #### 
          # Set the value of the Name input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repo being created.
          ###

          def set_Name(value)
            set_input("Name", value)
          end
          #### 
          # Set the value of the Private input for this Choreo. 
          # 
          # @param Boolean - (optional, boolean) A flag indicating the the repo is private or public. Set to "true" to create a private repository. Defaults to "false".
          ###

          def set_Private(value)
            set_input("Private", value)
          end
          #### 
          # Set the value of the TeamID input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The id of the team that will be granted access to this repository. Only valid when creating a repo in an organization.
          ###

          def set_TeamID(value)
            set_input("TeamID", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the CreateRepo Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class CreateRepoResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        end

      end # class CreateRepo



      ##############################################################################
      #
      # DeleteRepo
      #
      # Deletes a specified repository.
      #
      ##############################################################################

      class DeleteRepo < Choreography

        ####
        #  Create a new instance of the DeleteRepo Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Repos/DeleteRepo")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return DeleteRepoInputSet
        ####
        def new_input_set()
          return DeleteRepoInputSet.new()
        end

        def make_result_set()
          return DeleteRepoResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = DeleteRepoResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the DeleteRepo
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class DeleteRepoInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (required, string) The Access Token retrieved during the OAuth process.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repo to delete.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the DeleteRepo Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class DeleteRepoResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class DeleteRepo



      ##############################################################################
      #
      # GetBranch
      #
      # Retrieves information for a specified branch.
      #
      ##############################################################################

      class GetBranch < Choreography

        ####
        #  Create a new instance of the GetBranch Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Repos/GetBranch")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetBranchInputSet
        ####
        def new_input_set()
          return GetBranchInputSet.new()
        end

        def make_result_set()
          return GetBranchResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = GetBranchResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetBranch
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetBranchInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (required, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Branch input for this Choreo. 
          # 
          # @param String - (required, string) The name of the branch to retrieve.
          ###

          def set_Branch(value)
            set_input("Branch", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repository.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetBranch Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetBranchResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        end

      end # class GetBranch



      ##############################################################################
      #
      # GetRepo
      #
      # Retrieves information for a specified repository.
      #
      ##############################################################################

      class GetRepo < Choreography

        ####
        #  Create a new instance of the GetRepo Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Repos/GetRepo")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetRepoInputSet
        ####
        def new_input_set()
          return GetRepoInputSet.new()
        end

        def make_result_set()
          return GetRepoResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = GetRepoResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetRepo
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetRepoInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (required, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repo to retrieve.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetRepo Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetRepoResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        end

      end # class GetRepo



      ##############################################################################
      #
      # ListBranches
      #
      # Retrieves a list of branches for the specified repository.
      #
      ##############################################################################

      class ListBranches < Choreography

        ####
        #  Create a new instance of the ListBranches Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Repos/ListBranches")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ListBranchesInputSet
        ####
        def new_input_set()
          return ListBranchesInputSet.new()
        end

        def make_result_set()
          return ListBranchesResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = ListBranchesResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ListBranches
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ListBranchesInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (required, string) The Access Token retrieved during the OAuth process.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repo to list branches for.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ListBranches Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ListBranchesResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        end

      end # class ListBranches



      ##############################################################################
      #
      # ListContributors
      #
      # Retrieves a list of contributors for the specified repository.
      #
      ##############################################################################

      class ListContributors < Choreography

        ####
        #  Create a new instance of the ListContributors Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Repos/ListContributors")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ListContributorsInputSet
        ####
        def new_input_set()
          return ListContributorsInputSet.new()
        end

        def make_result_set()
          return ListContributorsResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = ListContributorsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ListContributors
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ListContributorsInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Anonymous input for this Choreo. 
          # 
          # @param Boolean - (optional, boolean) Flag indicating that the response should include anonymous contributors. Set to 1 or true to include anonymous contributors.
          ###

          def set_Anonymous(value)
            set_input("Anonymous", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repo that has the contributors to retrieve.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ListContributors Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ListContributorsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        end

      end # class ListContributors



      ##############################################################################
      #
      # ListLanguages
      #
      # Retrieves a list of languages for the specified repository.
      #
      ##############################################################################

      class ListLanguages < Choreography

        ####
        #  Create a new instance of the ListLanguages Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Repos/ListLanguages")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ListLanguagesInputSet
        ####
        def new_input_set()
          return ListLanguagesInputSet.new()
        end

        def make_result_set()
          return ListLanguagesResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = ListLanguagesResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ListLanguages
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ListLanguagesInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repo to list languages for.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ListLanguages Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ListLanguagesResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class ListLanguages



      ##############################################################################
      #
      # ListReposByOrg
      #
      # Retrieces a list of repositories for the specified organization.
      #
      ##############################################################################

      class ListReposByOrg < Choreography

        ####
        #  Create a new instance of the ListReposByOrg Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Repos/ListReposByOrg")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ListReposByOrgInputSet
        ####
        def new_input_set()
          return ListReposByOrgInputSet.new()
        end

        def make_result_set()
          return ListReposByOrgResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = ListReposByOrgResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ListReposByOrg
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ListReposByOrgInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Org input for this Choreo. 
          # 
          # @param String - (required, string) The name of the organization.
          ###

          def set_Org(value)
            set_input("Org", value)
          end
          #### 
          # Set the value of the Page input for this Choreo. 
          # 
          # @param Integer - (optional, integer) Indicates the page index that you want to retrieve. This is used to page through many results. Defaults to 1.
          ###

          def set_Page(value)
            set_input("Page", value)
          end
          #### 
          # Set the value of the Type input for this Choreo. 
          # 
          # @param String - (optional, string) The type of repos to return. Valid values are: all (the default), public, member, or private.
          ###

          def set_Type(value)
            set_input("Type", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ListReposByOrg Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ListReposByOrgResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "LastPage" output from this Choreo execution
        	#
        	# @return String - (integer) If multiple pages are available for the response, this contains the last available page.
        	####
        	def get_LastPage()
        	  return @outputs["LastPage"]
        	end
        	####
        	# Retrieve the value for the "NextPage" output from this Choreo execution
        	#
        	# @return String - (integer) If multiple pages are available for the response, this contains the next page that you should retrieve.
        	####
        	def get_NextPage()
        	  return @outputs["NextPage"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        end

      end # class ListReposByOrg



      ##############################################################################
      #
      # ListTags
      #
      # Retrieves a list of tags for the specified repository.
      #
      ##############################################################################

      class ListTags < Choreography

        ####
        #  Create a new instance of the ListTags Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Repos/ListTags")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ListTagsInputSet
        ####
        def new_input_set()
          return ListTagsInputSet.new()
        end

        def make_result_set()
          return ListTagsResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = ListTagsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ListTags
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ListTagsInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (required, string) The Access Token retrieved during the OAuth process.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repo to list tags for.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ListTags Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ListTagsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        end

      end # class ListTags



      ##############################################################################
      #
      # ListTeams
      #
      # Retrieves a list of teams for the specified repository.
      #
      ##############################################################################

      class ListTeams < Choreography

        ####
        #  Create a new instance of the ListTeams Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Repos/ListTeams")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ListTeamsInputSet
        ####
        def new_input_set()
          return ListTeamsInputSet.new()
        end

        def make_result_set()
          return ListTeamsResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = ListTeamsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ListTeams
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ListTeamsInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (required, string) The Access Token retrieved during the OAuth process.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Repo input for this Choreo. 
          # 
          # @param String - (required, string) The name of the repo to list teams for.
          ###

          def set_Repo(value)
            set_input("Repo", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ListTeams Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ListTeamsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class ListTeams



      ##############################################################################
      #
      # ListUserRepos
      #
      # Retrieves a list of public repositories for the specified user.
      #
      ##############################################################################

      class ListUserRepos < Choreography

        ####
        #  Create a new instance of the ListUserRepos Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Repos/ListUserRepos")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ListUserReposInputSet
        ####
        def new_input_set()
          return ListUserReposInputSet.new()
        end

        def make_result_set()
          return ListUserReposResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = ListUserReposResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ListUserRepos
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ListUserReposInputSet < Choreography::InputSet

          #### 
          # Set the value of the Direction input for this Choreo. 
          # 
          # @param String - (optional, string) Valid values are asc or desc. Default behavior is desc unless sorting by full_name in which case, the direction is asc.
          ###

          def set_Direction(value)
            set_input("Direction", value)
          end
          #### 
          # Set the value of the Page input for this Choreo. 
          # 
          # @param Integer - (optional, integer) Indicates the page index that you want to retrieve. This is used to page through many results. Defaults to 1.
          ###

          def set_Page(value)
            set_input("Page", value)
          end
          #### 
          # Set the value of the Sort input for this Choreo. 
          # 
          # @param String - (optional, string) The sort order of the results. Valid values are: created, updated, pushed, or full_name (the default).
          ###

          def set_Sort(value)
            set_input("Sort", value)
          end
          #### 
          # Set the value of the Type input for this Choreo. 
          # 
          # @param String - (optional, string) The type of repos to return. Valid values are: all (the default), owner, public, or member.
          ###

          def set_Type(value)
            set_input("Type", value)
          end
          #### 
          # Set the value of the User input for this Choreo. 
          # 
          # @param String - (required, string) The GitHub username.
          ###

          def set_User(value)
            set_input("User", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ListUserRepos Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ListUserReposResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "NextPage" output from this Choreo execution
        	#
        	# @return String - (integer) If multiple pages are available for the response, this contains the next page that you should retrieve.
        	####
        	def get_NextPage()
        	  return @outputs["NextPage"]
        	end
        	####
        	# Retrieve the value for the "LastPage" output from this Choreo execution
        	#
        	# @return String - (integer) If multiple pages are available for the response, this contains the last available page.
        	####
        	def get_LastPage()
        	  return @outputs["LastPage"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        end

      end # class ListUserRepos



      ##############################################################################
      #
      # ListYourRepos
      #
      # Retrieves a list of repositories for the authenticated user.
      #
      ##############################################################################

      class ListYourRepos < Choreography

        ####
        #  Create a new instance of the ListYourRepos Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/GitHub/ReposAPI/Repos/ListYourRepos")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ListYourReposInputSet
        ####
        def new_input_set()
          return ListYourReposInputSet.new()
        end

        def make_result_set()
          return ListYourReposResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = ListYourReposResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ListYourRepos
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ListYourReposInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (required, string) The Access Token retrieved during the OAuth process.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the Direction input for this Choreo. 
          # 
          # @param String - (optional, string) Valid values are asc or desc. Default behavior is desc unless sorting by full_name in which case, the direction is asc.
          ###

          def set_Direction(value)
            set_input("Direction", value)
          end
          #### 
          # Set the value of the Page input for this Choreo. 
          # 
          # @param Integer - (optional, integer) Indicates the page index that you want to retrieve. This is used to page through many results. Defaults to 1.
          ###

          def set_Page(value)
            set_input("Page", value)
          end
          #### 
          # Set the value of the Sort input for this Choreo. 
          # 
          # @param String - (optional, string) The sort order of the results. Valid values are: created, updated, pushed, or full_name (the default).
          ###

          def set_Sort(value)
            set_input("Sort", value)
          end
          #### 
          # Set the value of the Type input for this Choreo. 
          # 
          # @param String - (optional, string) The type of repos to return. Valid values are: all (the default), owner, public, private, or member.
          ###

          def set_Type(value)
            set_input("Type", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the ListYourRepos Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ListYourReposResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "NextPage" output from this Choreo execution
        	#
        	# @return String - (integer) If multiple pages are available for the response, this contains the next page that you should retrieve.
        	####
        	def get_NextPage()
        	  return @outputs["NextPage"]
        	end
        	####
        	# Retrieve the value for the "Limit" output from this Choreo execution
        	#
        	# @return String - (integer) The available rate limit for your account. This is returned in the GitHub response header.
        	####
        	def get_Limit()
        	  return @outputs["Limit"]
        	end
        	####
        	# Retrieve the value for the "Remaining" output from this Choreo execution
        	#
        	# @return String - (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
        	####
        	def get_Remaining()
        	  return @outputs["Remaining"]
        	end
        	####
        	# Retrieve the value for the "LastPage" output from this Choreo execution
        	#
        	# @return String - (integer) If multiple pages are available for the response, this contains the last available page.
        	####
        	def get_LastPage()
        	  return @outputs["LastPage"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) The response from GitHub.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class ListYourRepos




    end # module Repos

  end # module ReposAPI

end # module GitHub