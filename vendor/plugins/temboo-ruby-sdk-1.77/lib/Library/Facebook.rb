require "temboo"

module Facebook




  module Actions




    module Books




      module Quotes



        ##############################################################################
        #
        # CreateQuote
        #
        # Creates an action that represents a user quoting from a book.
        #
        ##############################################################################

        class CreateQuote < Choreography

          ####
          #  Create a new instance of the CreateQuote Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Books/Quotes/CreateQuote")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return CreateQuoteInputSet
          ####
          def new_input_set()
            return CreateQuoteInputSet.new()
          end

          def make_result_set()
            return CreateQuoteResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = CreateQuoteResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the CreateQuote
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class CreateQuoteInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the Body input for this Choreo. 
            # 
            # @param String - (required, string) The text of the quote.
            ###

            def set_Body(value)
              set_input("Body", value)
            end
            #### 
            # Set the value of the Book input for this Choreo. 
            # 
            # @param String - (required, string) The URL or ID for an Open Graph object representing the book.
            ###

            def set_Book(value)
              set_input("Book", value)
            end
            #### 
            # Set the value of the CreatedTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_CreatedTime(value)
              set_input("CreatedTime", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the ExplicitlyShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
            ###

            def set_ExplicitlyShared(value)
              set_input("ExplicitlyShared", value)
            end
            #### 
            # Set the value of the ExplicityShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Deprecated (retained for backward compatibility only).
            ###

            def set_ExplicityShared(value)
              set_input("ExplicityShared", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the NoFeedStory input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Whether or not this action should be posted to the users feed.
            ###

            def set_NoFeedStory(value)
              set_input("NoFeedStory", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
            end
            #### 
            # Set the value of the Reference input for this Choreo. 
            # 
            # @param String - (optional, string) A string identifier up to 50 characters used for tracking and insights.
            ###

            def set_Reference(value)
              set_input("Reference", value)
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
            # Set the value of the StartTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_StartTime(value)
              set_input("StartTime", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the CreateQuote Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class CreateQuoteResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "ActivityURL" output from this Choreo execution
          	#
          	# @return String - (string) The URL for the newly created action.
          	####
          	def get_ActivityURL()
          	  return @outputs["ActivityURL"]
          	end
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class CreateQuote



        ##############################################################################
        #
        # DeleteQuote
        #
        # Deletes a given quote action.
        #
        ##############################################################################

        class DeleteQuote < Choreography

          ####
          #  Create a new instance of the DeleteQuote Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Books/Quotes/DeleteQuote")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return DeleteQuoteInputSet
          ####
          def new_input_set()
            return DeleteQuoteInputSet.new()
          end

          def make_result_set()
            return DeleteQuoteResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = DeleteQuoteResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the DeleteQuote
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class DeleteQuoteInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of an action to delete.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the DeleteQuote Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class DeleteQuoteResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - (boolean) The response from Facebook. Returns "true" on success.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class DeleteQuote



        ##############################################################################
        #
        # ReadQuotes
        #
        # Retrieves one or more quote actions.
        #
        ##############################################################################

        class ReadQuotes < Choreography

          ####
          #  Create a new instance of the ReadQuotes Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Books/Quotes/ReadQuotes")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return ReadQuotesInputSet
          ####
          def new_input_set()
            return ReadQuotesInputSet.new()
          end

          def make_result_set()
            return ReadQuotesResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = ReadQuotesResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the ReadQuotes
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class ReadQuotesInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of an action to retrieve. If an id is not provided, a list of all quote actions will be returned.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Fields input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
            ###

            def set_Fields(value)
              set_input("Fields", value)
            end
            #### 
            # Set the value of the Limit input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
            ###

            def set_Limit(value)
              set_input("Limit", value)
            end
            #### 
            # Set the value of the Offset input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
            ###

            def set_Offset(value)
              set_input("Offset", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
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
          # A ResultSet with methods tailored to the values returned by the ReadQuotes Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class ReadQuotesResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "HasNext" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a next page exists.
          	####
          	def get_HasNext()
          	  return @outputs["HasNext"]
          	end
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          	####
          	# Retrieve the value for the "HasPrevious" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a previous page exists.
          	####
          	def get_HasPrevious()
          	  return @outputs["HasPrevious"]
          	end
          end

        end # class ReadQuotes



        ##############################################################################
        #
        # UpdateQuote
        #
        # Updates an existing quote action.
        #
        ##############################################################################

        class UpdateQuote < Choreography

          ####
          #  Create a new instance of the UpdateQuote Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Books/Quotes/UpdateQuote")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return UpdateQuoteInputSet
          ####
          def new_input_set()
            return UpdateQuoteInputSet.new()
          end

          def make_result_set()
            return UpdateQuoteResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = UpdateQuoteResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the UpdateQuote
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class UpdateQuoteInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of the action to update.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Body input for this Choreo. 
            # 
            # @param String - (required, string) The text of the quote.
            ###

            def set_Body(value)
              set_input("Body", value)
            end
            #### 
            # Set the value of the Book input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the book.
            ###

            def set_Book(value)
              set_input("Book", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this fitness action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the UpdateQuote Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class UpdateQuoteResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - (boolean) The response from Facebook.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class UpdateQuote




      end # module Quotes

      module Rates



        ##############################################################################
        #
        # CreateRating
        #
        # Creates an action that represents a user giving a book a rating.
        #
        ##############################################################################

        class CreateRating < Choreography

          ####
          #  Create a new instance of the CreateRating Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Books/Rates/CreateRating")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return CreateRatingInputSet
          ####
          def new_input_set()
            return CreateRatingInputSet.new()
          end

          def make_result_set()
            return CreateRatingResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = CreateRatingResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the CreateRating
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class CreateRatingInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the Book input for this Choreo. 
            # 
            # @param String - (required, string) The URL or ID for an Open Graph object representing the book.
            ###

            def set_Book(value)
              set_input("Book", value)
            end
            #### 
            # Set the value of the CreatedTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_CreatedTime(value)
              set_input("CreatedTime", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the ExplicitlyShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
            ###

            def set_ExplicitlyShared(value)
              set_input("ExplicitlyShared", value)
            end
            #### 
            # Set the value of the ExplicityShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Deprecated (retained for backward compatibility only).
            ###

            def set_ExplicityShared(value)
              set_input("ExplicityShared", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the NoFeedStory input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Whether or not this action should be posted to the users feed.
            ###

            def set_NoFeedStory(value)
              set_input("NoFeedStory", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
            end
            #### 
            # Set the value of the RatingNormalizedValue input for this Choreo. 
            # 
            # @param BigDecimal - (required, decimal) The rating expressed as a decimal value between 0 and 1.0.
            ###

            def set_RatingNormalizedValue(value)
              set_input("RatingNormalizedValue", value)
            end
            #### 
            # Set the value of the RatingScale input for this Choreo. 
            # 
            # @param Integer - (required, integer) The highest possible value in the rating scale.
            ###

            def set_RatingScale(value)
              set_input("RatingScale", value)
            end
            #### 
            # Set the value of the RatingValue input for this Choreo. 
            # 
            # @param BigDecimal - (required, decimal) The value of the book rating.
            ###

            def set_RatingValue(value)
              set_input("RatingValue", value)
            end
            #### 
            # Set the value of the Reference input for this Choreo. 
            # 
            # @param String - (optional, string) A string identifier up to 50 characters used for tracking and insights.
            ###

            def set_Reference(value)
              set_input("Reference", value)
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
            # Set the value of the ReviewText input for this Choreo. 
            # 
            # @param String - (conditional, string) The text content of the book review.
            ###

            def set_ReviewText(value)
              set_input("ReviewText", value)
            end
            #### 
            # Set the value of the Review input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing a book review.
            ###

            def set_Review(value)
              set_input("Review", value)
            end
            #### 
            # Set the value of the StartTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_StartTime(value)
              set_input("StartTime", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the CreateRating Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class CreateRatingResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "ActivityURL" output from this Choreo execution
          	#
          	# @return String - (string) The URL for the newly created action.
          	####
          	def get_ActivityURL()
          	  return @outputs["ActivityURL"]
          	end
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class CreateRating



        ##############################################################################
        #
        # DeleteRating
        #
        # Deletes a given book rating action.
        #
        ##############################################################################

        class DeleteRating < Choreography

          ####
          #  Create a new instance of the DeleteRating Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Books/Rates/DeleteRating")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return DeleteRatingInputSet
          ####
          def new_input_set()
            return DeleteRatingInputSet.new()
          end

          def make_result_set()
            return DeleteRatingResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = DeleteRatingResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the DeleteRating
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class DeleteRatingInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of an action to delete.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the DeleteRating Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class DeleteRatingResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - (boolean) The response from Facebook. Returns "true" on success.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class DeleteRating



        ##############################################################################
        #
        # ReadRatings
        #
        # Retrieves one or more book rating actions.
        #
        ##############################################################################

        class ReadRatings < Choreography

          ####
          #  Create a new instance of the ReadRatings Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Books/Rates/ReadRatings")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return ReadRatingsInputSet
          ####
          def new_input_set()
            return ReadRatingsInputSet.new()
          end

          def make_result_set()
            return ReadRatingsResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = ReadRatingsResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the ReadRatings
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class ReadRatingsInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of an action to retrieve. If an id is not provided, a list of all rate actions will be returned.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Fields input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
            ###

            def set_Fields(value)
              set_input("Fields", value)
            end
            #### 
            # Set the value of the Limit input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
            ###

            def set_Limit(value)
              set_input("Limit", value)
            end
            #### 
            # Set the value of the Offset input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
            ###

            def set_Offset(value)
              set_input("Offset", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
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
          # A ResultSet with methods tailored to the values returned by the ReadRatings Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class ReadRatingsResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "HasNext" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a next page exists.
          	####
          	def get_HasNext()
          	  return @outputs["HasNext"]
          	end
          	####
          	# Retrieve the value for the "HasPrevious" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a previous page exists.
          	####
          	def get_HasPrevious()
          	  return @outputs["HasPrevious"]
          	end
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class ReadRatings



        ##############################################################################
        #
        # UpdateRating
        #
        # Updates an existing book rating action.
        #
        ##############################################################################

        class UpdateRating < Choreography

          ####
          #  Create a new instance of the UpdateRating Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Books/Rates/UpdateRating")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return UpdateRatingInputSet
          ####
          def new_input_set()
            return UpdateRatingInputSet.new()
          end

          def make_result_set()
            return UpdateRatingResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = UpdateRatingResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the UpdateRating
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class UpdateRatingInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of the action to update.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Book input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the book.
            ###

            def set_Book(value)
              set_input("Book", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the RatingNormalizedValue input for this Choreo. 
            # 
            # @param BigDecimal - (optional, decimal) The rating expressed as a decimal value between 0 and 1.0.
            ###

            def set_RatingNormalizedValue(value)
              set_input("RatingNormalizedValue", value)
            end
            #### 
            # Set the value of the RatingScale input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The highest possible value in the rating scale.
            ###

            def set_RatingScale(value)
              set_input("RatingScale", value)
            end
            #### 
            # Set the value of the RatingValue input for this Choreo. 
            # 
            # @param BigDecimal - (optional, decimal) The value of the book rating.
            ###

            def set_RatingValue(value)
              set_input("RatingValue", value)
            end
            #### 
            # Set the value of the ReviewText input for this Choreo. 
            # 
            # @param String - (optional, string) The text content of the book review.
            ###

            def set_ReviewText(value)
              set_input("ReviewText", value)
            end
            #### 
            # Set the value of the Review input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing a book review.
            ###

            def set_Review(value)
              set_input("Review", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the UpdateRating Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class UpdateRatingResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class UpdateRating




      end # module Rates

      module Reads



        ##############################################################################
        #
        # CreateReading
        #
        # Creates an action that represents a user reading a book.
        #
        ##############################################################################

        class CreateReading < Choreography

          ####
          #  Create a new instance of the CreateReading Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Books/Reads/CreateReading")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return CreateReadingInputSet
          ####
          def new_input_set()
            return CreateReadingInputSet.new()
          end

          def make_result_set()
            return CreateReadingResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = CreateReadingResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the CreateReading
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class CreateReadingInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the Book input for this Choreo. 
            # 
            # @param String - (required, string) The URL or ID for an Open Graph object representing the book.
            ###

            def set_Book(value)
              set_input("Book", value)
            end
            #### 
            # Set the value of the CreatedTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_CreatedTime(value)
              set_input("CreatedTime", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the ExplicitlyShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
            ###

            def set_ExplicitlyShared(value)
              set_input("ExplicitlyShared", value)
            end
            #### 
            # Set the value of the ExplicityShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Deprecated (retained for backward compatibility only).
            ###

            def set_ExplicityShared(value)
              set_input("ExplicityShared", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the NoFeedStory input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Whether or not this action should be posted to the users feed.
            ###

            def set_NoFeedStory(value)
              set_input("NoFeedStory", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
            end
            #### 
            # Set the value of the ProgressPercentComplete input for this Choreo. 
            # 
            # @param BigDecimal - (required, decimal) The percentage progress towards finishing the specified book.
            ###

            def set_ProgressPercentComplete(value)
              set_input("ProgressPercentComplete", value)
            end
            #### 
            # Set the value of the ProgressTimestamp input for this Choreo. 
            # 
            # @param String - (required, date) A timestamp representing the time of change in progress towards finishing the specified book (e.g. 1372194363).
            ###

            def set_ProgressTimestamp(value)
              set_input("ProgressTimestamp", value)
            end
            #### 
            # Set the value of the Reference input for this Choreo. 
            # 
            # @param String - (optional, string) A string identifier up to 50 characters used for tracking and insights.
            ###

            def set_Reference(value)
              set_input("Reference", value)
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
            # Set the value of the StartTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_StartTime(value)
              set_input("StartTime", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the CreateReading Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class CreateReadingResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          	####
          	# Retrieve the value for the "ActivityURL" output from this Choreo execution
          	#
          	# @return String - (string) The URL for the newly created action.
          	####
          	def get_ActivityURL()
          	  return @outputs["ActivityURL"]
          	end
          end

        end # class CreateReading



        ##############################################################################
        #
        # DeleteReading
        #
        # Deletes a given book reading action.
        #
        ##############################################################################

        class DeleteReading < Choreography

          ####
          #  Create a new instance of the DeleteReading Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Books/Reads/DeleteReading")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return DeleteReadingInputSet
          ####
          def new_input_set()
            return DeleteReadingInputSet.new()
          end

          def make_result_set()
            return DeleteReadingResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = DeleteReadingResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the DeleteReading
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class DeleteReadingInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of an action to delete.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the DeleteReading Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class DeleteReadingResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - (boolean) The response from Facebook. Returns "true" on success.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class DeleteReading



        ##############################################################################
        #
        # ReadReadings
        #
        # Retrieves one or more book reading actions.
        #
        ##############################################################################

        class ReadReadings < Choreography

          ####
          #  Create a new instance of the ReadReadings Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Books/Reads/ReadReadings")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return ReadReadingsInputSet
          ####
          def new_input_set()
            return ReadReadingsInputSet.new()
          end

          def make_result_set()
            return ReadReadingsResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = ReadReadingsResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the ReadReadings
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class ReadReadingsInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of an action to retrieve. If an id is not provided, a list of all reading actions will be returned.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Fields input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
            ###

            def set_Fields(value)
              set_input("Fields", value)
            end
            #### 
            # Set the value of the Limit input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
            ###

            def set_Limit(value)
              set_input("Limit", value)
            end
            #### 
            # Set the value of the Offset input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
            ###

            def set_Offset(value)
              set_input("Offset", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
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
          # A ResultSet with methods tailored to the values returned by the ReadReadings Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class ReadReadingsResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "HasPrevious" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a previous page exists.
          	####
          	def get_HasPrevious()
          	  return @outputs["HasPrevious"]
          	end
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          	####
          	# Retrieve the value for the "HasNext" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a next page exists.
          	####
          	def get_HasNext()
          	  return @outputs["HasNext"]
          	end
          end

        end # class ReadReadings



        ##############################################################################
        #
        # UpdateReading
        #
        # Updates an existing book reading action.
        #
        ##############################################################################

        class UpdateReading < Choreography

          ####
          #  Create a new instance of the UpdateReading Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Books/Reads/UpdateReading")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return UpdateReadingInputSet
          ####
          def new_input_set()
            return UpdateReadingInputSet.new()
          end

          def make_result_set()
            return UpdateReadingResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = UpdateReadingResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the UpdateReading
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class UpdateReadingInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of the action to update.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Book input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the book.
            ###

            def set_Book(value)
              set_input("Book", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the ProgressPercentComplete input for this Choreo. 
            # 
            # @param BigDecimal - (optional, decimal) The percentage progress towards finishing the specified book.
            ###

            def set_ProgressPercentComplete(value)
              set_input("ProgressPercentComplete", value)
            end
            #### 
            # Set the value of the ProgressTimestamp input for this Choreo. 
            # 
            # @param String - (optional, date) A timestamp representing the time of change in progress towards finishing the specified book (e.g. 1372194363).
            ###

            def set_ProgressTimestamp(value)
              set_input("ProgressTimestamp", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the UpdateReading Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class UpdateReadingResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class UpdateReading




      end # module Reads

      module WantsToRead



        ##############################################################################
        #
        # CreateWantsToRead
        #
        # Creates an action that represents a user wanting to read a book.
        #
        ##############################################################################

        class CreateWantsToRead < Choreography

          ####
          #  Create a new instance of the CreateWantsToRead Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Books/WantsToRead/CreateWantsToRead")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return CreateWantsToReadInputSet
          ####
          def new_input_set()
            return CreateWantsToReadInputSet.new()
          end

          def make_result_set()
            return CreateWantsToReadResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = CreateWantsToReadResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the CreateWantsToRead
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class CreateWantsToReadInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the Book input for this Choreo. 
            # 
            # @param String - (required, string) The URL or ID for an Open Graph object representing the book.
            ###

            def set_Book(value)
              set_input("Book", value)
            end
            #### 
            # Set the value of the CreatedTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_CreatedTime(value)
              set_input("CreatedTime", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the ExplicitlyShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
            ###

            def set_ExplicitlyShared(value)
              set_input("ExplicitlyShared", value)
            end
            #### 
            # Set the value of the ExplicityShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Deprecated (retained for backward compatibility only).
            ###

            def set_ExplicityShared(value)
              set_input("ExplicityShared", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the NoFeedStory input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Whether or not this action should be posted to the users feed.
            ###

            def set_NoFeedStory(value)
              set_input("NoFeedStory", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
            end
            #### 
            # Set the value of the Reference input for this Choreo. 
            # 
            # @param String - (optional, string) A string identifier up to 50 characters used for tracking and insights.
            ###

            def set_Reference(value)
              set_input("Reference", value)
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
            # Set the value of the StartTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_StartTime(value)
              set_input("StartTime", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the CreateWantsToRead Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class CreateWantsToReadResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          	####
          	# Retrieve the value for the "ActivityURL" output from this Choreo execution
          	#
          	# @return String - (string) The URL for the newly created action.
          	####
          	def get_ActivityURL()
          	  return @outputs["ActivityURL"]
          	end
          end

        end # class CreateWantsToRead



        ##############################################################################
        #
        # DeleteWantsToRead
        #
        # Deletes a given wants_to_read action.
        #
        ##############################################################################

        class DeleteWantsToRead < Choreography

          ####
          #  Create a new instance of the DeleteWantsToRead Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Books/WantsToRead/DeleteWantsToRead")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return DeleteWantsToReadInputSet
          ####
          def new_input_set()
            return DeleteWantsToReadInputSet.new()
          end

          def make_result_set()
            return DeleteWantsToReadResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = DeleteWantsToReadResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the DeleteWantsToRead
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class DeleteWantsToReadInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of an action to delete.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the DeleteWantsToRead Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class DeleteWantsToReadResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - (boolean) The response from Facebook. Returns "true" on success.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class DeleteWantsToRead



        ##############################################################################
        #
        # ReadWantsToReads
        #
        # Retrieves one or more wants_to_read actions.
        #
        ##############################################################################

        class ReadWantsToReads < Choreography

          ####
          #  Create a new instance of the ReadWantsToReads Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Books/WantsToRead/ReadWantsToReads")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return ReadWantsToReadsInputSet
          ####
          def new_input_set()
            return ReadWantsToReadsInputSet.new()
          end

          def make_result_set()
            return ReadWantsToReadsResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = ReadWantsToReadsResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the ReadWantsToReads
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class ReadWantsToReadsInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of an action to retrieve. If an id is not provided, a list of all wants_to_read actions will be returned.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Fields input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
            ###

            def set_Fields(value)
              set_input("Fields", value)
            end
            #### 
            # Set the value of the Limit input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
            ###

            def set_Limit(value)
              set_input("Limit", value)
            end
            #### 
            # Set the value of the Offset input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
            ###

            def set_Offset(value)
              set_input("Offset", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
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
          # A ResultSet with methods tailored to the values returned by the ReadWantsToReads Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class ReadWantsToReadsResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          	####
          	# Retrieve the value for the "HasNext" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a next page exists.
          	####
          	def get_HasNext()
          	  return @outputs["HasNext"]
          	end
          	####
          	# Retrieve the value for the "HasPrevious" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a previous page exists.
          	####
          	def get_HasPrevious()
          	  return @outputs["HasPrevious"]
          	end
          end

        end # class ReadWantsToReads



        ##############################################################################
        #
        # UpdateWantsToRead
        #
        # Updates an existing wants_to_read action.
        #
        ##############################################################################

        class UpdateWantsToRead < Choreography

          ####
          #  Create a new instance of the UpdateWantsToRead Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Books/WantsToRead/UpdateWantsToRead")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return UpdateWantsToReadInputSet
          ####
          def new_input_set()
            return UpdateWantsToReadInputSet.new()
          end

          def make_result_set()
            return UpdateWantsToReadResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = UpdateWantsToReadResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the UpdateWantsToRead
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class UpdateWantsToReadInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of the action to update.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Book input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the book.
            ###

            def set_Book(value)
              set_input("Book", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the UpdateWantsToRead Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class UpdateWantsToReadResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class UpdateWantsToRead




      end # module WantsToRead

    end # module Books

    module Custom



      ##############################################################################
      #
      # CreateAction
      #
      # Creates an Open Graph action that represents a user performing the specified action while using your app.
      #
      ##############################################################################

      class CreateAction < Choreography

        ####
        #  Create a new instance of the CreateAction Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/Facebook/Actions/Custom/CreateAction")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return CreateActionInputSet
        ####
        def new_input_set()
          return CreateActionInputSet.new()
        end

        def make_result_set()
          return CreateActionResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = CreateActionResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the CreateAction
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class CreateActionInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the ActionType input for this Choreo. 
          # 
          # @param String - (required, string) The type of action that a user is performing in your app (e.g. runs, walks, bikes).
          ###

          def set_ActionType(value)
            set_input("ActionType", value)
          end
          #### 
          # Set the value of the AppNamespace input for this Choreo. 
          # 
          # @param String - (required, string) The namespace that you chose for you app. This can be found in the Settings section of your App page.
          ###

          def set_AppNamespace(value)
            set_input("AppNamespace", value)
          end
          #### 
          # Set the value of the CreatedTime input for this Choreo. 
          # 
          # @param String - (optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
          ###

          def set_CreatedTime(value)
            set_input("CreatedTime", value)
          end
          #### 
          # Set the value of the EndTime input for this Choreo. 
          # 
          # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
          ###

          def set_EndTime(value)
            set_input("EndTime", value)
          end
          #### 
          # Set the value of the ExpiresIn input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
          ###

          def set_ExpiresIn(value)
            set_input("ExpiresIn", value)
          end
          #### 
          # Set the value of the ExplicitlyShared input for this Choreo. 
          # 
          # @param Boolean - (optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
          ###

          def set_ExplicitlyShared(value)
            set_input("ExplicitlyShared", value)
          end
          #### 
          # Set the value of the ExplicityShared input for this Choreo. 
          # 
          # @param Boolean - (optional, boolean) Deprecated (retained for backward compatibility only).
          ###

          def set_ExplicityShared(value)
            set_input("ExplicityShared", value)
          end
          #### 
          # Set the value of the Message input for this Choreo. 
          # 
          # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
          ###

          def set_Message(value)
            set_input("Message", value)
          end
          #### 
          # Set the value of the NoFeedStory input for this Choreo. 
          # 
          # @param Boolean - (optional, boolean) Whether or not this action should be posted to the users feed.
          ###

          def set_NoFeedStory(value)
            set_input("NoFeedStory", value)
          end
          #### 
          # Set the value of the Place input for this Choreo. 
          # 
          # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
          ###

          def set_Place(value)
            set_input("Place", value)
          end
          #### 
          # Set the value of the ProfileID input for this Choreo. 
          # 
          # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
          ###

          def set_ProfileID(value)
            set_input("ProfileID", value)
          end
          #### 
          # Set the value of the PropertyName input for this Choreo. 
          # 
          # @param String - (required, string) The name of a property that you've defined for this Open Graph story. This will be an object type (e.g. album, song, book). Multiple property names can be separated by commas.
          ###

          def set_PropertyName(value)
            set_input("PropertyName", value)
          end
          #### 
          # Set the value of the PropertyValue input for this Choreo. 
          # 
          # @param String - (required, string) The URL or ID for an Open Graph object representing the object specified as the PropertyName. Multiple property values can be separated by commas.
          ###

          def set_PropertyValue(value)
            set_input("PropertyValue", value)
          end
          #### 
          # Set the value of the Reference input for this Choreo. 
          # 
          # @param String - (optional, string) A string identifier up to 50 characters used for tracking and insights.
          ###

          def set_Reference(value)
            set_input("Reference", value)
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
          # Set the value of the StartTime input for this Choreo. 
          # 
          # @param String - (optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
          ###

          def set_StartTime(value)
            set_input("StartTime", value)
          end
          #### 
          # Set the value of the Tags input for this Choreo. 
          # 
          # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
          ###

          def set_Tags(value)
            set_input("Tags", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the CreateAction Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class CreateActionResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "ActivityURL" output from this Choreo execution
        	#
        	# @return String - (string) The URL for the newly created action.
        	####
        	def get_ActivityURL()
        	  return @outputs["ActivityURL"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from Facebook.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class CreateAction



      ##############################################################################
      #
      # DeleteAction
      #
      # Deletes a given custom action.
      #
      ##############################################################################

      class DeleteAction < Choreography

        ####
        #  Create a new instance of the DeleteAction Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/Facebook/Actions/Custom/DeleteAction")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return DeleteActionInputSet
        ####
        def new_input_set()
          return DeleteActionInputSet.new()
        end

        def make_result_set()
          return DeleteActionResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = DeleteActionResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the DeleteAction
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class DeleteActionInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the ActionID input for this Choreo. 
          # 
          # @param String - (required, string) The id of an action to delete.
          ###

          def set_ActionID(value)
            set_input("ActionID", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the DeleteAction Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class DeleteActionResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (boolean) The response from Facebook. Returns "true" on success.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class DeleteAction



      ##############################################################################
      #
      # ReadActions
      #
      # Retrieves one or more custom actions.
      #
      ##############################################################################

      class ReadActions < Choreography

        ####
        #  Create a new instance of the ReadActions Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/Facebook/Actions/Custom/ReadActions")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return ReadActionsInputSet
        ####
        def new_input_set()
          return ReadActionsInputSet.new()
        end

        def make_result_set()
          return ReadActionsResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = ReadActionsResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the ReadActions
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class ReadActionsInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the ActionID input for this Choreo. 
          # 
          # @param String - (conditional, string) The id of an action to retrieve. If an id is not provided, a list of all custom actions will be returned. Required unless you provide the AppNamespace and ActionType to return all custom actions.
          ###

          def set_ActionID(value)
            set_input("ActionID", value)
          end
          #### 
          # Set the value of the ActionType input for this Choreo. 
          # 
          # @param String - (conditional, string) The type of action that a user is performing in your app (e.g. runs, walks, bikes). Required unless you provide the ActionID.
          ###

          def set_ActionType(value)
            set_input("ActionType", value)
          end
          #### 
          # Set the value of the AppNamespace input for this Choreo. 
          # 
          # @param String - (conditional, string) The namespace that you chose for you app. This can be found in the Settings section of your App page. Required unless you provide the ActionID.
          ###

          def set_AppNamespace(value)
            set_input("AppNamespace", value)
          end
          #### 
          # Set the value of the Fields input for this Choreo. 
          # 
          # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
          ###

          def set_Fields(value)
            set_input("Fields", value)
          end
          #### 
          # Set the value of the Limit input for this Choreo. 
          # 
          # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
          ###

          def set_Limit(value)
            set_input("Limit", value)
          end
          #### 
          # Set the value of the Offset input for this Choreo. 
          # 
          # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
          ###

          def set_Offset(value)
            set_input("Offset", value)
          end
          #### 
          # Set the value of the ProfileID input for this Choreo. 
          # 
          # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
          ###

          def set_ProfileID(value)
            set_input("ProfileID", value)
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
        # A ResultSet with methods tailored to the values returned by the ReadActions Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class ReadActionsResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "HasNext" output from this Choreo execution
        	#
        	# @return String - (boolean) A boolean flag indicating that a next page exists.
        	####
        	def get_HasNext()
        	  return @outputs["HasNext"]
        	end
        	####
        	# Retrieve the value for the "HasPrevious" output from this Choreo execution
        	#
        	# @return String - (boolean) A boolean flag indicating that a previous page exists.
        	####
        	def get_HasPrevious()
        	  return @outputs["HasPrevious"]
        	end
        end

      end # class ReadActions



      ##############################################################################
      #
      # UpdateAction
      #
      # Updates an existing custom action.
      #
      ##############################################################################

      class UpdateAction < Choreography

        ####
        #  Create a new instance of the UpdateAction Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/Facebook/Actions/Custom/UpdateAction")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return UpdateActionInputSet
        ####
        def new_input_set()
          return UpdateActionInputSet.new()
        end

        def make_result_set()
          return UpdateActionResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = UpdateActionResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the UpdateAction
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class UpdateActionInputSet < Choreography::InputSet

          #### 
          # Set the value of the AccessToken input for this Choreo. 
          # 
          # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
          ###

          def set_AccessToken(value)
            set_input("AccessToken", value)
          end
          #### 
          # Set the value of the ActionID input for this Choreo. 
          # 
          # @param String - (required, string) The id of the action to update.
          ###

          def set_ActionID(value)
            set_input("ActionID", value)
          end
          #### 
          # Set the value of the EndTime input for this Choreo. 
          # 
          # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
          ###

          def set_EndTime(value)
            set_input("EndTime", value)
          end
          #### 
          # Set the value of the ExpiresIn input for this Choreo. 
          # 
          # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
          ###

          def set_ExpiresIn(value)
            set_input("ExpiresIn", value)
          end
          #### 
          # Set the value of the Message input for this Choreo. 
          # 
          # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
          ###

          def set_Message(value)
            set_input("Message", value)
          end
          #### 
          # Set the value of the Place input for this Choreo. 
          # 
          # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
          ###

          def set_Place(value)
            set_input("Place", value)
          end
          #### 
          # Set the value of the PropertyName input for this Choreo. 
          # 
          # @param String - (optional, string) The name of a property that you've defined for this Open Graph story. This will be an object type (e.g. album, song, book). Multiple property names can be separated by commas.
          ###

          def set_PropertyName(value)
            set_input("PropertyName", value)
          end
          #### 
          # Set the value of the PropertyValue input for this Choreo. 
          # 
          # @param String - (optional, string) The URL or ID for an Open Graph object representing the object specified as the PropertyName. Multiple property values can be separated by commas.
          ###

          def set_PropertyValue(value)
            set_input("PropertyValue", value)
          end
          #### 
          # Set the value of the Tags input for this Choreo. 
          # 
          # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
          ###

          def set_Tags(value)
            set_input("Tags", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the UpdateAction Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class UpdateActionResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from Facebook.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class UpdateAction




    end # module Custom

    module Fitness




      module Bikes



        ##############################################################################
        #
        # CreateBike
        #
        # Creates an action that represents a user cycling a course.
        #
        ##############################################################################

        class CreateBike < Choreography

          ####
          #  Create a new instance of the CreateBike Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Fitness/Bikes/CreateBike")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return CreateBikeInputSet
          ####
          def new_input_set()
            return CreateBikeInputSet.new()
          end

          def make_result_set()
            return CreateBikeResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = CreateBikeResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the CreateBike
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class CreateBikeInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the Course input for this Choreo. 
            # 
            # @param String - (required, string) The URL or ID for an Open Graph object representing the course.
            ###

            def set_Course(value)
              set_input("Course", value)
            end
            #### 
            # Set the value of the CreatedTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_CreatedTime(value)
              set_input("CreatedTime", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the ExplicitlyShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
            ###

            def set_ExplicitlyShared(value)
              set_input("ExplicitlyShared", value)
            end
            #### 
            # Set the value of the ExplicityShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Deprecated (retained for backward compatibility only).
            ###

            def set_ExplicityShared(value)
              set_input("ExplicityShared", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the NoFeedStory input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Whether or not this action should be posted to the users feed.
            ###

            def set_NoFeedStory(value)
              set_input("NoFeedStory", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
            end
            #### 
            # Set the value of the Reference input for this Choreo. 
            # 
            # @param String - (optional, string) A string identifier up to 50 characters used for tracking and insights.
            ###

            def set_Reference(value)
              set_input("Reference", value)
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
            # Set the value of the StartTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_StartTime(value)
              set_input("StartTime", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the CreateBike Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class CreateBikeResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "ActivityURL" output from this Choreo execution
          	#
          	# @return String - (string) The URL for the newly created action.
          	####
          	def get_ActivityURL()
          	  return @outputs["ActivityURL"]
          	end
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class CreateBike



        ##############################################################################
        #
        # DeleteBike
        #
        # Deletes a given bike action.
        #
        ##############################################################################

        class DeleteBike < Choreography

          ####
          #  Create a new instance of the DeleteBike Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Fitness/Bikes/DeleteBike")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return DeleteBikeInputSet
          ####
          def new_input_set()
            return DeleteBikeInputSet.new()
          end

          def make_result_set()
            return DeleteBikeResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = DeleteBikeResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the DeleteBike
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class DeleteBikeInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of an action to delete.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the DeleteBike Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class DeleteBikeResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - (boolean) The response from Facebook. Returns "true" on success.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class DeleteBike



        ##############################################################################
        #
        # ReadBikes
        #
        # Retrieves one or more bike actions.
        #
        ##############################################################################

        class ReadBikes < Choreography

          ####
          #  Create a new instance of the ReadBikes Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Fitness/Bikes/ReadBikes")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return ReadBikesInputSet
          ####
          def new_input_set()
            return ReadBikesInputSet.new()
          end

          def make_result_set()
            return ReadBikesResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = ReadBikesResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the ReadBikes
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class ReadBikesInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of an action to retrieve. If an id is not provided, a list of all bike actions will be returned.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Fields input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
            ###

            def set_Fields(value)
              set_input("Fields", value)
            end
            #### 
            # Set the value of the Limit input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
            ###

            def set_Limit(value)
              set_input("Limit", value)
            end
            #### 
            # Set the value of the Offset input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
            ###

            def set_Offset(value)
              set_input("Offset", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
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
          # A ResultSet with methods tailored to the values returned by the ReadBikes Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class ReadBikesResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "HasNext" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a next page exists.
          	####
          	def get_HasNext()
          	  return @outputs["HasNext"]
          	end
          	####
          	# Retrieve the value for the "HasPrevious" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a previous page exists.
          	####
          	def get_HasPrevious()
          	  return @outputs["HasPrevious"]
          	end
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class ReadBikes



        ##############################################################################
        #
        # UpdateBike
        #
        # Updates an existing bike action.
        #
        ##############################################################################

        class UpdateBike < Choreography

          ####
          #  Create a new instance of the UpdateBike Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Fitness/Bikes/UpdateBike")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return UpdateBikeInputSet
          ####
          def new_input_set()
            return UpdateBikeInputSet.new()
          end

          def make_result_set()
            return UpdateBikeResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = UpdateBikeResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the UpdateBike
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class UpdateBikeInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of the action to update.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Course input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the course.
            ###

            def set_Course(value)
              set_input("Course", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this fitness action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the UpdateBike Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class UpdateBikeResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - (boolean) The response from Facebook.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class UpdateBike




      end # module Bikes

      module Runs



        ##############################################################################
        #
        # CreateRun
        #
        # Creates an action that represents a user running a course.
        #
        ##############################################################################

        class CreateRun < Choreography

          ####
          #  Create a new instance of the CreateRun Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Fitness/Runs/CreateRun")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return CreateRunInputSet
          ####
          def new_input_set()
            return CreateRunInputSet.new()
          end

          def make_result_set()
            return CreateRunResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = CreateRunResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the CreateRun
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class CreateRunInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the Course input for this Choreo. 
            # 
            # @param String - (required, string) The URL or ID for an Open Graph object representing the course.
            ###

            def set_Course(value)
              set_input("Course", value)
            end
            #### 
            # Set the value of the CreatedTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_CreatedTime(value)
              set_input("CreatedTime", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the ExplicitlyShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
            ###

            def set_ExplicitlyShared(value)
              set_input("ExplicitlyShared", value)
            end
            #### 
            # Set the value of the ExplicityShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Deprecated (retained for backward compatibility only).
            ###

            def set_ExplicityShared(value)
              set_input("ExplicityShared", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the NoFeedStory input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Whether or not this action should be posted to the users feed.
            ###

            def set_NoFeedStory(value)
              set_input("NoFeedStory", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
            end
            #### 
            # Set the value of the Reference input for this Choreo. 
            # 
            # @param String - (optional, string) A string identifier up to 50 characters used for tracking and insights.
            ###

            def set_Reference(value)
              set_input("Reference", value)
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
            # Set the value of the StartTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_StartTime(value)
              set_input("StartTime", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the CreateRun Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class CreateRunResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "ActivityURL" output from this Choreo execution
          	#
          	# @return String - (string) The URL for the newly created action.
          	####
          	def get_ActivityURL()
          	  return @outputs["ActivityURL"]
          	end
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class CreateRun



        ##############################################################################
        #
        # DeleteRun
        #
        # Deletes a given run action.
        #
        ##############################################################################

        class DeleteRun < Choreography

          ####
          #  Create a new instance of the DeleteRun Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Fitness/Runs/DeleteRun")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return DeleteRunInputSet
          ####
          def new_input_set()
            return DeleteRunInputSet.new()
          end

          def make_result_set()
            return DeleteRunResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = DeleteRunResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the DeleteRun
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class DeleteRunInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of an action to delete.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the DeleteRun Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class DeleteRunResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - (boolean) The response from Facebook. Returns "true" on success.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class DeleteRun



        ##############################################################################
        #
        # ReadRuns
        #
        # Retrieves one or more run actions.
        #
        ##############################################################################

        class ReadRuns < Choreography

          ####
          #  Create a new instance of the ReadRuns Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Fitness/Runs/ReadRuns")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return ReadRunsInputSet
          ####
          def new_input_set()
            return ReadRunsInputSet.new()
          end

          def make_result_set()
            return ReadRunsResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = ReadRunsResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the ReadRuns
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class ReadRunsInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of an action to retrieve. If an id is not provided, a list of all run actions will be returned.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Fields input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
            ###

            def set_Fields(value)
              set_input("Fields", value)
            end
            #### 
            # Set the value of the Limit input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
            ###

            def set_Limit(value)
              set_input("Limit", value)
            end
            #### 
            # Set the value of the Offset input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
            ###

            def set_Offset(value)
              set_input("Offset", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
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
          # A ResultSet with methods tailored to the values returned by the ReadRuns Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class ReadRunsResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          	####
          	# Retrieve the value for the "HasNext" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a next page exists.
          	####
          	def get_HasNext()
          	  return @outputs["HasNext"]
          	end
          	####
          	# Retrieve the value for the "HasPrevious" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a previous page exists.
          	####
          	def get_HasPrevious()
          	  return @outputs["HasPrevious"]
          	end
          end

        end # class ReadRuns



        ##############################################################################
        #
        # UpdateRun
        #
        # Updates an existing run action.
        #
        ##############################################################################

        class UpdateRun < Choreography

          ####
          #  Create a new instance of the UpdateRun Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Fitness/Runs/UpdateRun")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return UpdateRunInputSet
          ####
          def new_input_set()
            return UpdateRunInputSet.new()
          end

          def make_result_set()
            return UpdateRunResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = UpdateRunResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the UpdateRun
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class UpdateRunInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of the action to update.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Course input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the course.
            ###

            def set_Course(value)
              set_input("Course", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the UpdateRun Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class UpdateRunResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - (boolean) The response from Facebook.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class UpdateRun




      end # module Runs

      module Walks



        ##############################################################################
        #
        # CreateWalk
        #
        # Creates an action that represents a user walking a course.
        #
        ##############################################################################

        class CreateWalk < Choreography

          ####
          #  Create a new instance of the CreateWalk Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Fitness/Walks/CreateWalk")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return CreateWalkInputSet
          ####
          def new_input_set()
            return CreateWalkInputSet.new()
          end

          def make_result_set()
            return CreateWalkResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = CreateWalkResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the CreateWalk
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class CreateWalkInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the Course input for this Choreo. 
            # 
            # @param String - (required, string) The URL or ID for an Open Graph object representing the course.
            ###

            def set_Course(value)
              set_input("Course", value)
            end
            #### 
            # Set the value of the CreatedTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_CreatedTime(value)
              set_input("CreatedTime", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the ExplicitlyShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
            ###

            def set_ExplicitlyShared(value)
              set_input("ExplicitlyShared", value)
            end
            #### 
            # Set the value of the ExplicityShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Deprecated (retained for backward compatibility only).
            ###

            def set_ExplicityShared(value)
              set_input("ExplicityShared", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the NoFeedStory input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Whether or not this action should be posted to the users feed.
            ###

            def set_NoFeedStory(value)
              set_input("NoFeedStory", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
            end
            #### 
            # Set the value of the Reference input for this Choreo. 
            # 
            # @param String - (optional, string) A string identifier up to 50 characters used for tracking and insights.
            ###

            def set_Reference(value)
              set_input("Reference", value)
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
            # Set the value of the StartTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_StartTime(value)
              set_input("StartTime", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the CreateWalk Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class CreateWalkResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "ActivityURL" output from this Choreo execution
          	#
          	# @return String - (string) The URL for the newly created action.
          	####
          	def get_ActivityURL()
          	  return @outputs["ActivityURL"]
          	end
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class CreateWalk



        ##############################################################################
        #
        # DeleteWalk
        #
        # Deletes a given walk action.
        #
        ##############################################################################

        class DeleteWalk < Choreography

          ####
          #  Create a new instance of the DeleteWalk Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Fitness/Walks/DeleteWalk")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return DeleteWalkInputSet
          ####
          def new_input_set()
            return DeleteWalkInputSet.new()
          end

          def make_result_set()
            return DeleteWalkResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = DeleteWalkResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the DeleteWalk
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class DeleteWalkInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of an action to delete.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the DeleteWalk Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class DeleteWalkResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - (boolean) The response from Facebook. Returns "true" on success.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class DeleteWalk



        ##############################################################################
        #
        # ReadWalks
        #
        # Retrieves one or more walk actions.
        #
        ##############################################################################

        class ReadWalks < Choreography

          ####
          #  Create a new instance of the ReadWalks Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Fitness/Walks/ReadWalks")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return ReadWalksInputSet
          ####
          def new_input_set()
            return ReadWalksInputSet.new()
          end

          def make_result_set()
            return ReadWalksResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = ReadWalksResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the ReadWalks
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class ReadWalksInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of an action to retrieve. If an id is not provided, a list of all walk actions will be returned.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Fields input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
            ###

            def set_Fields(value)
              set_input("Fields", value)
            end
            #### 
            # Set the value of the Limit input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
            ###

            def set_Limit(value)
              set_input("Limit", value)
            end
            #### 
            # Set the value of the Offset input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
            ###

            def set_Offset(value)
              set_input("Offset", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
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
          # A ResultSet with methods tailored to the values returned by the ReadWalks Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class ReadWalksResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "HasNext" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a next page exists.
          	####
          	def get_HasNext()
          	  return @outputs["HasNext"]
          	end
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          	####
          	# Retrieve the value for the "HasPrevious" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a previous page exists.
          	####
          	def get_HasPrevious()
          	  return @outputs["HasPrevious"]
          	end
          end

        end # class ReadWalks



        ##############################################################################
        #
        # UpdateWalk
        #
        # Updates an existing walk action.
        #
        ##############################################################################

        class UpdateWalk < Choreography

          ####
          #  Create a new instance of the UpdateWalk Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Fitness/Walks/UpdateWalk")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return UpdateWalkInputSet
          ####
          def new_input_set()
            return UpdateWalkInputSet.new()
          end

          def make_result_set()
            return UpdateWalkResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = UpdateWalkResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the UpdateWalk
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class UpdateWalkInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of the action to update.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Course input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the course.
            ###

            def set_Course(value)
              set_input("Course", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the UpdateWalk Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class UpdateWalkResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - (boolean) The response from Facebook.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class UpdateWalk




      end # module Walks

    end # module Fitness

    module General




      module Follows



        ##############################################################################
        #
        # CreateFollow
        #
        # Creates an action that represents someone following a Facebook user.
        #
        ##############################################################################

        class CreateFollow < Choreography

          ####
          #  Create a new instance of the CreateFollow Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/General/Follows/CreateFollow")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return CreateFollowInputSet
          ####
          def new_input_set()
            return CreateFollowInputSet.new()
          end

          def make_result_set()
            return CreateFollowResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = CreateFollowResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the CreateFollow
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class CreateFollowInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the CreatedTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_CreatedTime(value)
              set_input("CreatedTime", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the ExplicitlyShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
            ###

            def set_ExplicitlyShared(value)
              set_input("ExplicitlyShared", value)
            end
            #### 
            # Set the value of the ExplicityShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Deprecated (retained for backward compatibility only).
            ###

            def set_ExplicityShared(value)
              set_input("ExplicityShared", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the NoFeedStory input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Whether or not this action should be posted to the users feed.
            ###

            def set_NoFeedStory(value)
              set_input("NoFeedStory", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The Facebook Page ID of the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
            end
            #### 
            # Set the value of the Profile input for this Choreo. 
            # 
            # @param String - (required, string) The URL or ID for an Open Graph object representing the profile to follow.
            ###

            def set_Profile(value)
              set_input("Profile", value)
            end
            #### 
            # Set the value of the Reference input for this Choreo. 
            # 
            # @param String - (optional, string) A string identifier up to 50 characters used for tracking and insights.
            ###

            def set_Reference(value)
              set_input("Reference", value)
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
            # Set the value of the StartTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_StartTime(value)
              set_input("StartTime", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the CreateFollow Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class CreateFollowResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "ActivityURL" output from this Choreo execution
          	#
          	# @return String - (string) The URL for the newly created action.
          	####
          	def get_ActivityURL()
          	  return @outputs["ActivityURL"]
          	end
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class CreateFollow



        ##############################################################################
        #
        # DeleteFollow
        #
        # Deletes a given follow action.
        #
        ##############################################################################

        class DeleteFollow < Choreography

          ####
          #  Create a new instance of the DeleteFollow Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/General/Follows/DeleteFollow")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return DeleteFollowInputSet
          ####
          def new_input_set()
            return DeleteFollowInputSet.new()
          end

          def make_result_set()
            return DeleteFollowResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = DeleteFollowResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the DeleteFollow
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class DeleteFollowInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of an action to delete.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the DeleteFollow Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class DeleteFollowResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - (boolean) The response from Facebook. Returns "true" on success.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class DeleteFollow



        ##############################################################################
        #
        # ReadFollows
        #
        # Retrieves one or more follow actions.
        #
        ##############################################################################

        class ReadFollows < Choreography

          ####
          #  Create a new instance of the ReadFollows Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/General/Follows/ReadFollows")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return ReadFollowsInputSet
          ####
          def new_input_set()
            return ReadFollowsInputSet.new()
          end

          def make_result_set()
            return ReadFollowsResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = ReadFollowsResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the ReadFollows
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class ReadFollowsInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of an action to retrieve. If an id is not provided, a list of all follow actions will be returned.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Fields input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
            ###

            def set_Fields(value)
              set_input("Fields", value)
            end
            #### 
            # Set the value of the Limit input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
            ###

            def set_Limit(value)
              set_input("Limit", value)
            end
            #### 
            # Set the value of the Offset input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
            ###

            def set_Offset(value)
              set_input("Offset", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
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
          # A ResultSet with methods tailored to the values returned by the ReadFollows Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class ReadFollowsResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          	####
          	# Retrieve the value for the "HasPrevious" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a previous page exists.
          	####
          	def get_HasPrevious()
          	  return @outputs["HasPrevious"]
          	end
          	####
          	# Retrieve the value for the "HasNext" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a next page exists.
          	####
          	def get_HasNext()
          	  return @outputs["HasNext"]
          	end
          end

        end # class ReadFollows



        ##############################################################################
        #
        # UpdateFollow
        #
        # Update an existing follow action.
        #
        ##############################################################################

        class UpdateFollow < Choreography

          ####
          #  Create a new instance of the UpdateFollow Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/General/Follows/UpdateFollow")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return UpdateFollowInputSet
          ####
          def new_input_set()
            return UpdateFollowInputSet.new()
          end

          def make_result_set()
            return UpdateFollowResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = UpdateFollowResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the UpdateFollow
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class UpdateFollowInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of the action to update.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this fitness action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the Profile input for this Choreo. 
            # 
            # @param String - (optional, string) An action representing someone following a Facebook user
            ###

            def set_Profile(value)
              set_input("Profile", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the UpdateFollow Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class UpdateFollowResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class UpdateFollow




      end # module Follows

      module Likes



        ##############################################################################
        #
        # CreateLike
        #
        # Creates an action representing someone liking an object.
        #
        ##############################################################################

        class CreateLike < Choreography

          ####
          #  Create a new instance of the CreateLike Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/General/Likes/CreateLike")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return CreateLikeInputSet
          ####
          def new_input_set()
            return CreateLikeInputSet.new()
          end

          def make_result_set()
            return CreateLikeResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = CreateLikeResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the CreateLike
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class CreateLikeInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the CreatedTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_CreatedTime(value)
              set_input("CreatedTime", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milleseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the ExplicitlyShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
            ###

            def set_ExplicitlyShared(value)
              set_input("ExplicitlyShared", value)
            end
            #### 
            # Set the value of the ExplicityShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Deprecated (retained for backward compatibility only).
            ###

            def set_ExplicityShared(value)
              set_input("ExplicityShared", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this fitness action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the NoFeedStory input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Whether or not this action should be posted to the users feed.
            ###

            def set_NoFeedStory(value)
              set_input("NoFeedStory", value)
            end
            #### 
            # Set the value of the Object input for this Choreo. 
            # 
            # @param String - (required, string) The URL or ID for an Open Graph object to be liked.
            ###

            def set_Object(value)
              set_input("Object", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The Facebook Page ID of the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the profile to retrieve fitness actions for. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
            end
            #### 
            # Set the value of the Reference input for this Choreo. 
            # 
            # @param String - (optional, string) A string identifier up to 50 characters used for tracking and insights.
            ###

            def set_Reference(value)
              set_input("Reference", value)
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
            # Set the value of the StartTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_StartTime(value)
              set_input("StartTime", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the CreateLike Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class CreateLikeResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "ActivityURL" output from this Choreo execution
          	#
          	# @return String - (string) The URL for the newly created action.
          	####
          	def get_ActivityURL()
          	  return @outputs["ActivityURL"]
          	end
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class CreateLike



        ##############################################################################
        #
        # DeleteLike
        #
        # Deletes a given like action.
        #
        ##############################################################################

        class DeleteLike < Choreography

          ####
          #  Create a new instance of the DeleteLike Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/General/Likes/DeleteLike")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return DeleteLikeInputSet
          ####
          def new_input_set()
            return DeleteLikeInputSet.new()
          end

          def make_result_set()
            return DeleteLikeResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = DeleteLikeResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the DeleteLike
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class DeleteLikeInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of an action to delete.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the DeleteLike Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class DeleteLikeResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - (boolean) The response from Facebook. Returns "true" on success.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class DeleteLike



        ##############################################################################
        #
        # ReadLikes
        #
        # Retrieves one or more like actions.
        #
        ##############################################################################

        class ReadLikes < Choreography

          ####
          #  Create a new instance of the ReadLikes Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/General/Likes/ReadLikes")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return ReadLikesInputSet
          ####
          def new_input_set()
            return ReadLikesInputSet.new()
          end

          def make_result_set()
            return ReadLikesResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = ReadLikesResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the ReadLikes
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class ReadLikesInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of an action to retrieve. If an id is not provided, a list of all like actions will be returned.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Fields input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
            ###

            def set_Fields(value)
              set_input("Fields", value)
            end
            #### 
            # Set the value of the Limit input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
            ###

            def set_Limit(value)
              set_input("Limit", value)
            end
            #### 
            # Set the value of the Offset input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
            ###

            def set_Offset(value)
              set_input("Offset", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
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
          # A ResultSet with methods tailored to the values returned by the ReadLikes Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class ReadLikesResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "HasNext" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a next page exists.
          	####
          	def get_HasNext()
          	  return @outputs["HasNext"]
          	end
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          	####
          	# Retrieve the value for the "HasPrevious" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a previous page exists.
          	####
          	def get_HasPrevious()
          	  return @outputs["HasPrevious"]
          	end
          end

        end # class ReadLikes



        ##############################################################################
        #
        # UpdateLike
        #
        # Creates an action that represents a user liking an object.
        #
        ##############################################################################

        class UpdateLike < Choreography

          ####
          #  Create a new instance of the UpdateLike Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/General/Likes/UpdateLike")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return UpdateLikeInputSet
          ####
          def new_input_set()
            return UpdateLikeInputSet.new()
          end

          def make_result_set()
            return UpdateLikeResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = UpdateLikeResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the UpdateLike
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class UpdateLikeInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of the action to update.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this fitness action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the Object input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object  that was liked.
            ###

            def set_Object(value)
              set_input("Object", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the UpdateLike Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class UpdateLikeResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class UpdateLike




      end # module Likes

      module Posts



        ##############################################################################
        #
        # CreatePost
        #
        # Creates an action representing posting an object.
        #
        ##############################################################################

        class CreatePost < Choreography

          ####
          #  Create a new instance of the CreatePost Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/General/Posts/CreatePost")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return CreatePostInputSet
          ####
          def new_input_set()
            return CreatePostInputSet.new()
          end

          def make_result_set()
            return CreatePostResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = CreatePostResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the CreatePost
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class CreatePostInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the CreatedTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_CreatedTime(value)
              set_input("CreatedTime", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the ExplicitlyShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
            ###

            def set_ExplicitlyShared(value)
              set_input("ExplicitlyShared", value)
            end
            #### 
            # Set the value of the ExplicityShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Deprecated (retained for backward compatibility only).
            ###

            def set_ExplicityShared(value)
              set_input("ExplicityShared", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the NoFeedStory input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Whether or not this action should be posted to the users feed.
            ###

            def set_NoFeedStory(value)
              set_input("NoFeedStory", value)
            end
            #### 
            # Set the value of the Object input for this Choreo. 
            # 
            # @param String - (required, string) The URL or ID for an Open Graph object you are posting about.
            ###

            def set_Object(value)
              set_input("Object", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The Facebook Page ID of the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
            end
            #### 
            # Set the value of the Reference input for this Choreo. 
            # 
            # @param String - (optional, string) A string identifier up to 50 characters used for tracking and insights.
            ###

            def set_Reference(value)
              set_input("Reference", value)
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
            # Set the value of the StartTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_StartTime(value)
              set_input("StartTime", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the CreatePost Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class CreatePostResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class CreatePost



        ##############################################################################
        #
        # DeletePost
        #
        # Deletes a given post action.
        #
        ##############################################################################

        class DeletePost < Choreography

          ####
          #  Create a new instance of the DeletePost Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/General/Posts/DeletePost")
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
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of an action to delete.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
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
          	# @return String - (boolean) The response from Facebook. Returns "true" on success.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class DeletePost



        ##############################################################################
        #
        # ReadPosts
        #
        # Retrieves one or more post actions.
        #
        ##############################################################################

        class ReadPosts < Choreography

          ####
          #  Create a new instance of the ReadPosts Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/General/Posts/ReadPosts")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return ReadPostsInputSet
          ####
          def new_input_set()
            return ReadPostsInputSet.new()
          end

          def make_result_set()
            return ReadPostsResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = ReadPostsResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the ReadPosts
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class ReadPostsInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of an action to retrieve. If an id is not provided, a list of all post actions will be returned.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Fields input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
            ###

            def set_Fields(value)
              set_input("Fields", value)
            end
            #### 
            # Set the value of the Limit input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
            ###

            def set_Limit(value)
              set_input("Limit", value)
            end
            #### 
            # Set the value of the Offset input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
            ###

            def set_Offset(value)
              set_input("Offset", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
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
          # A ResultSet with methods tailored to the values returned by the ReadPosts Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class ReadPostsResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "HasPrevious" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a previous page exists.
          	####
          	def get_HasPrevious()
          	  return @outputs["HasPrevious"]
          	end
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          	####
          	# Retrieve the value for the "HasNext" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a next page exists.
          	####
          	def get_HasNext()
          	  return @outputs["HasNext"]
          	end
          end

        end # class ReadPosts



        ##############################################################################
        #
        # UpdatePost
        #
        # Updates a given post action.
        #
        ##############################################################################

        class UpdatePost < Choreography

          ####
          #  Create a new instance of the UpdatePost Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/General/Posts/UpdatePost")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return UpdatePostInputSet
          ####
          def new_input_set()
            return UpdatePostInputSet.new()
          end

          def make_result_set()
            return UpdatePostResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = UpdatePostResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the UpdatePost
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class UpdatePostInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of the action to update.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this fitness action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the Object input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object that was posted.
            ###

            def set_Object(value)
              set_input("Object", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the UpdatePost Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class UpdatePostResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class UpdatePost




      end # module Posts

    end # module General

    module Music




      module Listens



        ##############################################################################
        #
        # CreateListen
        #
        # Creates an action that represents a user listening to music.
        #
        ##############################################################################

        class CreateListen < Choreography

          ####
          #  Create a new instance of the CreateListen Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Music/Listens/CreateListen")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return CreateListenInputSet
          ####
          def new_input_set()
            return CreateListenInputSet.new()
          end

          def make_result_set()
            return CreateListenResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = CreateListenResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the CreateListen
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class CreateListenInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the Album input for this Choreo. 
            # 
            # @param String - (conditional, string) The URL or ID for an Open Graph object representing  representing an album.
            ###

            def set_Album(value)
              set_input("Album", value)
            end
            #### 
            # Set the value of the CreatedTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_CreatedTime(value)
              set_input("CreatedTime", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the ExplicitlyShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
            ###

            def set_ExplicitlyShared(value)
              set_input("ExplicitlyShared", value)
            end
            #### 
            # Set the value of the ExplicityShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Deprecated (retained for backward compatibility only).
            ###

            def set_ExplicityShared(value)
              set_input("ExplicityShared", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the Musician input for this Choreo. 
            # 
            # @param String - (conditional, string) The URL or ID for an Open Graph object representing representing a musician.
            ###

            def set_Musician(value)
              set_input("Musician", value)
            end
            #### 
            # Set the value of the NoFeedStory input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Whether or not this action should be posted to the users feed.
            ###

            def set_NoFeedStory(value)
              set_input("NoFeedStory", value)
            end
            #### 
            # Set the value of the Paused input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Whether the audio is paused or not
            ###

            def set_Paused(value)
              set_input("Paused", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the Playlist input for this Choreo. 
            # 
            # @param String - (conditional, string) The URL or ID for an Open Graph object representing representing a playlist.
            ###

            def set_Playlist(value)
              set_input("Playlist", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
            end
            #### 
            # Set the value of the RadioStation input for this Choreo. 
            # 
            # @param String - (conditional, string) The URL or ID for an Open Graph object representing  representing a radio station
            ###

            def set_RadioStation(value)
              set_input("RadioStation", value)
            end
            #### 
            # Set the value of the Reference input for this Choreo. 
            # 
            # @param String - (optional, string) A string identifier up to 50 characters used for tracking and insights.
            ###

            def set_Reference(value)
              set_input("Reference", value)
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
            # Set the value of the Song input for this Choreo. 
            # 
            # @param String - (conditional, string) The URL or ID for an Open Graph object representing  representing a song.
            ###

            def set_Song(value)
              set_input("Song", value)
            end
            #### 
            # Set the value of the StartTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_StartTime(value)
              set_input("StartTime", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end
            #### 
            # Set the value of the ViaUser input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The ID of anyone whom the user discovered this audio from
            ###

            def set_ViaUser(value)
              set_input("ViaUser", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the CreateListen Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class CreateListenResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          	####
          	# Retrieve the value for the "ActivityURL" output from this Choreo execution
          	#
          	# @return String - (string) The URL for the newly created action.
          	####
          	def get_ActivityURL()
          	  return @outputs["ActivityURL"]
          	end
          end

        end # class CreateListen



        ##############################################################################
        #
        # DeleteListen
        #
        # Deletes a given listen action.
        #
        ##############################################################################

        class DeleteListen < Choreography

          ####
          #  Create a new instance of the DeleteListen Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Music/Listens/DeleteListen")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return DeleteListenInputSet
          ####
          def new_input_set()
            return DeleteListenInputSet.new()
          end

          def make_result_set()
            return DeleteListenResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = DeleteListenResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the DeleteListen
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class DeleteListenInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of an action to delete.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the DeleteListen Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class DeleteListenResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - (boolean) The response from Facebook. Returns "true" on success.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class DeleteListen



        ##############################################################################
        #
        # ReadListens
        #
        # Retrieves one or more listen actions.
        #
        ##############################################################################

        class ReadListens < Choreography

          ####
          #  Create a new instance of the ReadListens Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Music/Listens/ReadListens")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return ReadListensInputSet
          ####
          def new_input_set()
            return ReadListensInputSet.new()
          end

          def make_result_set()
            return ReadListensResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = ReadListensResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the ReadListens
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class ReadListensInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of an action to retrieve. If an id is not provided, a list of all listen actions will be returned.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Fields input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
            ###

            def set_Fields(value)
              set_input("Fields", value)
            end
            #### 
            # Set the value of the Limit input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
            ###

            def set_Limit(value)
              set_input("Limit", value)
            end
            #### 
            # Set the value of the Offset input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
            ###

            def set_Offset(value)
              set_input("Offset", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
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
          # A ResultSet with methods tailored to the values returned by the ReadListens Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class ReadListensResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          	####
          	# Retrieve the value for the "HasPrevious" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a previous page exists.
          	####
          	def get_HasPrevious()
          	  return @outputs["HasPrevious"]
          	end
          	####
          	# Retrieve the value for the "HasNext" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a next page exists.
          	####
          	def get_HasNext()
          	  return @outputs["HasNext"]
          	end
          end

        end # class ReadListens



        ##############################################################################
        #
        # UpdateListen
        #
        # Updates and existing listen action.
        #
        ##############################################################################

        class UpdateListen < Choreography

          ####
          #  Create a new instance of the UpdateListen Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Music/Listens/UpdateListen")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return UpdateListenInputSet
          ####
          def new_input_set()
            return UpdateListenInputSet.new()
          end

          def make_result_set()
            return UpdateListenResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = UpdateListenResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the UpdateListen
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class UpdateListenInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of the action to update.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Album input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing  representing an album.
            ###

            def set_Album(value)
              set_input("Album", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this fitness action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the Musician input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing representing a musician.
            ###

            def set_Musician(value)
              set_input("Musician", value)
            end
            #### 
            # Set the value of the Paused input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Whether the audio is paused or not
            ###

            def set_Paused(value)
              set_input("Paused", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the Playlist input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing representing a playlist.
            ###

            def set_Playlist(value)
              set_input("Playlist", value)
            end
            #### 
            # Set the value of the RadioStation input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing  representing a radio station.
            ###

            def set_RadioStation(value)
              set_input("RadioStation", value)
            end
            #### 
            # Set the value of the Song input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing  representing a song.
            ###

            def set_Song(value)
              set_input("Song", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end
            #### 
            # Set the value of the ViaUser input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The ID of anyone whom the user discovered this audio from
            ###

            def set_ViaUser(value)
              set_input("ViaUser", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the UpdateListen Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class UpdateListenResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class UpdateListen




      end # module Listens

      module Playlists



        ##############################################################################
        #
        # CreatePlaylist
        #
        # Creates an action representing someone creating a playlist.
        #
        ##############################################################################

        class CreatePlaylist < Choreography

          ####
          #  Create a new instance of the CreatePlaylist Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Music/Playlists/CreatePlaylist")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return CreatePlaylistInputSet
          ####
          def new_input_set()
            return CreatePlaylistInputSet.new()
          end

          def make_result_set()
            return CreatePlaylistResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = CreatePlaylistResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the CreatePlaylist
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class CreatePlaylistInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the CreatedTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_CreatedTime(value)
              set_input("CreatedTime", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the ExplicitlyShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
            ###

            def set_ExplicitlyShared(value)
              set_input("ExplicitlyShared", value)
            end
            #### 
            # Set the value of the ExplicityShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Deprecated (retained for backward compatibility only).
            ###

            def set_ExplicityShared(value)
              set_input("ExplicityShared", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the NoFeedStory input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Whether or not this action should be posted to the users feed.
            ###

            def set_NoFeedStory(value)
              set_input("NoFeedStory", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the Playlist input for this Choreo. 
            # 
            # @param String - (required, string) An object representing the playlist
            ###

            def set_Playlist(value)
              set_input("Playlist", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
            end
            #### 
            # Set the value of the Reference input for this Choreo. 
            # 
            # @param String - (optional, string) A string identifier up to 50 characters used for tracking and insights.
            ###

            def set_Reference(value)
              set_input("Reference", value)
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
            # Set the value of the StartTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_StartTime(value)
              set_input("StartTime", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the CreatePlaylist Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class CreatePlaylistResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "ActivityURL" output from this Choreo execution
          	#
          	# @return String - (string) The URL for the newly created action.
          	####
          	def get_ActivityURL()
          	  return @outputs["ActivityURL"]
          	end
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class CreatePlaylist



        ##############################################################################
        #
        # DeletePlaylist
        #
        # Deletes a given playlist action.
        #
        ##############################################################################

        class DeletePlaylist < Choreography

          ####
          #  Create a new instance of the DeletePlaylist Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Music/Playlists/DeletePlaylist")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return DeletePlaylistInputSet
          ####
          def new_input_set()
            return DeletePlaylistInputSet.new()
          end

          def make_result_set()
            return DeletePlaylistResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = DeletePlaylistResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the DeletePlaylist
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class DeletePlaylistInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of an action to delete.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the DeletePlaylist Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class DeletePlaylistResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - (boolean) The response from Facebook. Returns "true" on success.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class DeletePlaylist



        ##############################################################################
        #
        # ReadPlaylist
        #
        # Retrieves one or more playlist actions.
        #
        ##############################################################################

        class ReadPlaylist < Choreography

          ####
          #  Create a new instance of the ReadPlaylist Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Music/Playlists/ReadPlaylist")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return ReadPlaylistInputSet
          ####
          def new_input_set()
            return ReadPlaylistInputSet.new()
          end

          def make_result_set()
            return ReadPlaylistResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = ReadPlaylistResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the ReadPlaylist
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class ReadPlaylistInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of an action to retrieve. If an id is not provided, a list of all playlist actions will be returned.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Fields input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
            ###

            def set_Fields(value)
              set_input("Fields", value)
            end
            #### 
            # Set the value of the Limit input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
            ###

            def set_Limit(value)
              set_input("Limit", value)
            end
            #### 
            # Set the value of the Offset input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
            ###

            def set_Offset(value)
              set_input("Offset", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
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
          # A ResultSet with methods tailored to the values returned by the ReadPlaylist Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class ReadPlaylistResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          	####
          	# Retrieve the value for the "HasNext" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a next page exists.
          	####
          	def get_HasNext()
          	  return @outputs["HasNext"]
          	end
          	####
          	# Retrieve the value for the "HasPrevious" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a previous page exists.
          	####
          	def get_HasPrevious()
          	  return @outputs["HasPrevious"]
          	end
          end

        end # class ReadPlaylist



        ##############################################################################
        #
        # UpdatePlaylist
        #
        # Updates an existing playlist action.
        #
        ##############################################################################

        class UpdatePlaylist < Choreography

          ####
          #  Create a new instance of the UpdatePlaylist Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Music/Playlists/UpdatePlaylist")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return UpdatePlaylistInputSet
          ####
          def new_input_set()
            return UpdatePlaylistInputSet.new()
          end

          def make_result_set()
            return UpdatePlaylistResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = UpdatePlaylistResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the UpdatePlaylist
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class UpdatePlaylistInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of the action to update.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this fitness action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the PlayList input for this Choreo. 
            # 
            # @param String - (optional, string) An object representing a playlist
            ###

            def set_PlayList(value)
              set_input("PlayList", value)
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
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the UpdatePlaylist Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class UpdatePlaylistResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class UpdatePlaylist




      end # module Playlists

    end # module Music

    module News




      module Publishes



        ##############################################################################
        #
        # CreatePublication
        #
        # Creates an action that represents a user publishing a news article.
        #
        ##############################################################################

        class CreatePublication < Choreography

          ####
          #  Create a new instance of the CreatePublication Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/News/Publishes/CreatePublication")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return CreatePublicationInputSet
          ####
          def new_input_set()
            return CreatePublicationInputSet.new()
          end

          def make_result_set()
            return CreatePublicationResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = CreatePublicationResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the CreatePublication
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class CreatePublicationInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the Article input for this Choreo. 
            # 
            # @param String - (required, string) The URL or ID for an Open Graph object representing the article.
            ###

            def set_Article(value)
              set_input("Article", value)
            end
            #### 
            # Set the value of the CreatedTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_CreatedTime(value)
              set_input("CreatedTime", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the ExplicitlyShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
            ###

            def set_ExplicitlyShared(value)
              set_input("ExplicitlyShared", value)
            end
            #### 
            # Set the value of the ExplicityShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Deprecated (retained for backward compatibility only).
            ###

            def set_ExplicityShared(value)
              set_input("ExplicityShared", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the NoFeedStory input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Whether or not this action should be posted to the users feed.
            ###

            def set_NoFeedStory(value)
              set_input("NoFeedStory", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
            end
            #### 
            # Set the value of the Reference input for this Choreo. 
            # 
            # @param String - (optional, string) A string identifier up to 50 characters used for tracking and insights.
            ###

            def set_Reference(value)
              set_input("Reference", value)
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
            # Set the value of the StartTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_StartTime(value)
              set_input("StartTime", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the CreatePublication Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class CreatePublicationResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "ActivityURL" output from this Choreo execution
          	#
          	# @return String - (string) The URL for the newly created action.
          	####
          	def get_ActivityURL()
          	  return @outputs["ActivityURL"]
          	end
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class CreatePublication



        ##############################################################################
        #
        # DeletePublication
        #
        # Deletes a given news publishing action.
        #
        ##############################################################################

        class DeletePublication < Choreography

          ####
          #  Create a new instance of the DeletePublication Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/News/Publishes/DeletePublication")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return DeletePublicationInputSet
          ####
          def new_input_set()
            return DeletePublicationInputSet.new()
          end

          def make_result_set()
            return DeletePublicationResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = DeletePublicationResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the DeletePublication
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class DeletePublicationInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of an action to delete.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the DeletePublication Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class DeletePublicationResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - (boolean) The response from Facebook. Returns "true" on success.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class DeletePublication



        ##############################################################################
        #
        # ReadPublications
        #
        # Retrieves one or more news publishing actions.
        #
        ##############################################################################

        class ReadPublications < Choreography

          ####
          #  Create a new instance of the ReadPublications Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/News/Publishes/ReadPublications")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return ReadPublicationsInputSet
          ####
          def new_input_set()
            return ReadPublicationsInputSet.new()
          end

          def make_result_set()
            return ReadPublicationsResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = ReadPublicationsResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the ReadPublications
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class ReadPublicationsInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of an action to retrieve. If an id is not provided, a list of all publishing actions will be returned.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Fields input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
            ###

            def set_Fields(value)
              set_input("Fields", value)
            end
            #### 
            # Set the value of the Limit input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
            ###

            def set_Limit(value)
              set_input("Limit", value)
            end
            #### 
            # Set the value of the Offset input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
            ###

            def set_Offset(value)
              set_input("Offset", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
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
          # A ResultSet with methods tailored to the values returned by the ReadPublications Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class ReadPublicationsResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "HasNext" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a next page exists.
          	####
          	def get_HasNext()
          	  return @outputs["HasNext"]
          	end
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          	####
          	# Retrieve the value for the "HasPrevious" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a previous page exists.
          	####
          	def get_HasPrevious()
          	  return @outputs["HasPrevious"]
          	end
          end

        end # class ReadPublications



        ##############################################################################
        #
        # UpdatePublication
        #
        # Updates an existing news publishing action.
        #
        ##############################################################################

        class UpdatePublication < Choreography

          ####
          #  Create a new instance of the UpdatePublication Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/News/Publishes/UpdatePublication")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return UpdatePublicationInputSet
          ####
          def new_input_set()
            return UpdatePublicationInputSet.new()
          end

          def make_result_set()
            return UpdatePublicationResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = UpdatePublicationResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the UpdatePublication
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class UpdatePublicationInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of the action to update.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Article input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the article.
            ###

            def set_Article(value)
              set_input("Article", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the UpdatePublication Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class UpdatePublicationResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class UpdatePublication




      end # module Publishes

      module Reads



        ##############################################################################
        #
        # CreateReading
        #
        # Creates an action that represents a user reading a news article.
        #
        ##############################################################################

        class CreateReading < Choreography

          ####
          #  Create a new instance of the CreateReading Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/News/Reads/CreateReading")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return CreateReadingInputSet
          ####
          def new_input_set()
            return CreateReadingInputSet.new()
          end

          def make_result_set()
            return CreateReadingResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = CreateReadingResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the CreateReading
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class CreateReadingInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the Article input for this Choreo. 
            # 
            # @param String - (required, string) The URL or ID for an Open Graph object representing the article.
            ###

            def set_Article(value)
              set_input("Article", value)
            end
            #### 
            # Set the value of the CreatedTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_CreatedTime(value)
              set_input("CreatedTime", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the ExplicitlyShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
            ###

            def set_ExplicitlyShared(value)
              set_input("ExplicitlyShared", value)
            end
            #### 
            # Set the value of the ExplicityShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Deprecated (retained for backward compatibility only).
            ###

            def set_ExplicityShared(value)
              set_input("ExplicityShared", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the NoFeedStory input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Whether or not this action should be posted to the users feed.
            ###

            def set_NoFeedStory(value)
              set_input("NoFeedStory", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
            end
            #### 
            # Set the value of the Reference input for this Choreo. 
            # 
            # @param String - (optional, string) A string identifier up to 50 characters used for tracking and insights.
            ###

            def set_Reference(value)
              set_input("Reference", value)
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
            # Set the value of the StartTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_StartTime(value)
              set_input("StartTime", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the CreateReading Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class CreateReadingResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "ActivityURL" output from this Choreo execution
          	#
          	# @return String - (string) The URL for the newly created action.
          	####
          	def get_ActivityURL()
          	  return @outputs["ActivityURL"]
          	end
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class CreateReading



        ##############################################################################
        #
        # DeleteReading
        #
        # Deletes a given news reading action.
        #
        ##############################################################################

        class DeleteReading < Choreography

          ####
          #  Create a new instance of the DeleteReading Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/News/Reads/DeleteReading")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return DeleteReadingInputSet
          ####
          def new_input_set()
            return DeleteReadingInputSet.new()
          end

          def make_result_set()
            return DeleteReadingResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = DeleteReadingResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the DeleteReading
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class DeleteReadingInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of an action to delete.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the DeleteReading Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class DeleteReadingResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - (boolean) The response from Facebook. Returns "true" on success.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class DeleteReading



        ##############################################################################
        #
        # ReadReadings
        #
        # Retrieves one or more news reading actions.
        #
        ##############################################################################

        class ReadReadings < Choreography

          ####
          #  Create a new instance of the ReadReadings Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/News/Reads/ReadReadings")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return ReadReadingsInputSet
          ####
          def new_input_set()
            return ReadReadingsInputSet.new()
          end

          def make_result_set()
            return ReadReadingsResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = ReadReadingsResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the ReadReadings
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class ReadReadingsInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of an action to retrieve. If an id is not provided, a list of all reading actions will be returned.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Fields input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
            ###

            def set_Fields(value)
              set_input("Fields", value)
            end
            #### 
            # Set the value of the Limit input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
            ###

            def set_Limit(value)
              set_input("Limit", value)
            end
            #### 
            # Set the value of the Offset input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
            ###

            def set_Offset(value)
              set_input("Offset", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
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
          # A ResultSet with methods tailored to the values returned by the ReadReadings Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class ReadReadingsResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "HasNext" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a next page exists.
          	####
          	def get_HasNext()
          	  return @outputs["HasNext"]
          	end
          	####
          	# Retrieve the value for the "HasPrevious" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a previous page exists.
          	####
          	def get_HasPrevious()
          	  return @outputs["HasPrevious"]
          	end
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class ReadReadings



        ##############################################################################
        #
        # UpdateReading
        #
        # Updates an existing news reading action.
        #
        ##############################################################################

        class UpdateReading < Choreography

          ####
          #  Create a new instance of the UpdateReading Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/News/Reads/UpdateReading")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return UpdateReadingInputSet
          ####
          def new_input_set()
            return UpdateReadingInputSet.new()
          end

          def make_result_set()
            return UpdateReadingResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = UpdateReadingResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the UpdateReading
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class UpdateReadingInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of the action to update.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Article input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the article.
            ###

            def set_Article(value)
              set_input("Article", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the UpdateReading Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class UpdateReadingResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class UpdateReading




      end # module Reads

    end # module News

    module Video




      module Rates



        ##############################################################################
        #
        # CreateRating
        #
        # Creates an action that represents a user rating a movie, TV show, episode, or other video content.
        #
        ##############################################################################

        class CreateRating < Choreography

          ####
          #  Create a new instance of the CreateRating Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Video/Rates/CreateRating")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return CreateRatingInputSet
          ####
          def new_input_set()
            return CreateRatingInputSet.new()
          end

          def make_result_set()
            return CreateRatingResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = CreateRatingResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the CreateRating
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class CreateRatingInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the CreatedTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_CreatedTime(value)
              set_input("CreatedTime", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the Episode input for this Choreo. 
            # 
            # @param String - (conditional, string) The URL or ID for an Open Graph object representing an episode.
            ###

            def set_Episode(value)
              set_input("Episode", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the ExplicitlyShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
            ###

            def set_ExplicitlyShared(value)
              set_input("ExplicitlyShared", value)
            end
            #### 
            # Set the value of the ExplicityShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Deprecated (retained for backward compatibility only).
            ###

            def set_ExplicityShared(value)
              set_input("ExplicityShared", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the Movie input for this Choreo. 
            # 
            # @param String - (conditional, string) The URL or ID for an Open Graph object representing a movie.
            ###

            def set_Movie(value)
              set_input("Movie", value)
            end
            #### 
            # Set the value of the NoFeedStory input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Whether or not this action should be posted to the users feed.
            ###

            def set_NoFeedStory(value)
              set_input("NoFeedStory", value)
            end
            #### 
            # Set the value of the Other input for this Choreo. 
            # 
            # @param String - (conditional, string) The URL or ID for an Open Graph object representing any general video content.
            ###

            def set_Other(value)
              set_input("Other", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
            end
            #### 
            # Set the value of the RatingNormalizedValue input for this Choreo. 
            # 
            # @param BigDecimal - (required, decimal) The rating expressed as a decimal value between 0 and 1.0.
            ###

            def set_RatingNormalizedValue(value)
              set_input("RatingNormalizedValue", value)
            end
            #### 
            # Set the value of the RatingScale input for this Choreo. 
            # 
            # @param Integer - (required, integer) The highest possible value in the rating scale.
            ###

            def set_RatingScale(value)
              set_input("RatingScale", value)
            end
            #### 
            # Set the value of the RatingValue input for this Choreo. 
            # 
            # @param BigDecimal - (required, decimal) The value of the book rating.
            ###

            def set_RatingValue(value)
              set_input("RatingValue", value)
            end
            #### 
            # Set the value of the Reference input for this Choreo. 
            # 
            # @param String - (optional, string) A string identifier up to 50 characters used for tracking and insights.
            ###

            def set_Reference(value)
              set_input("Reference", value)
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
            # Set the value of the ReviewText input for this Choreo. 
            # 
            # @param String - (conditional, string) The text content of the video review.
            ###

            def set_ReviewText(value)
              set_input("ReviewText", value)
            end
            #### 
            # Set the value of the Review input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing a video review.
            ###

            def set_Review(value)
              set_input("Review", value)
            end
            #### 
            # Set the value of the StartTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_StartTime(value)
              set_input("StartTime", value)
            end
            #### 
            # Set the value of the TVShow input for this Choreo. 
            # 
            # @param String - (conditional, string) The URL or ID for an Open Graph object representing a TV show.
            ###

            def set_TVShow(value)
              set_input("TVShow", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the CreateRating Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class CreateRatingResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          	####
          	# Retrieve the value for the "ActivityURL" output from this Choreo execution
          	#
          	# @return String - (string) The URL for the newly created action.
          	####
          	def get_ActivityURL()
          	  return @outputs["ActivityURL"]
          	end
          end

        end # class CreateRating



        ##############################################################################
        #
        # DeleteRating
        #
        # Deletes a given video rating action.
        #
        ##############################################################################

        class DeleteRating < Choreography

          ####
          #  Create a new instance of the DeleteRating Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Video/Rates/DeleteRating")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return DeleteRatingInputSet
          ####
          def new_input_set()
            return DeleteRatingInputSet.new()
          end

          def make_result_set()
            return DeleteRatingResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = DeleteRatingResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the DeleteRating
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class DeleteRatingInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of an action to delete.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the DeleteRating Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class DeleteRatingResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - (boolean) The response from Facebook. Returns "true" on success.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class DeleteRating



        ##############################################################################
        #
        # ReadRatings
        #
        # Retrieves one or more video rating actions.
        #
        ##############################################################################

        class ReadRatings < Choreography

          ####
          #  Create a new instance of the ReadRatings Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Video/Rates/ReadRatings")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return ReadRatingsInputSet
          ####
          def new_input_set()
            return ReadRatingsInputSet.new()
          end

          def make_result_set()
            return ReadRatingsResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = ReadRatingsResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the ReadRatings
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class ReadRatingsInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of an action to retrieve. If an id is not provided, a list of all video rate actions will be returned.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Fields input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
            ###

            def set_Fields(value)
              set_input("Fields", value)
            end
            #### 
            # Set the value of the Limit input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
            ###

            def set_Limit(value)
              set_input("Limit", value)
            end
            #### 
            # Set the value of the Offset input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
            ###

            def set_Offset(value)
              set_input("Offset", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
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
          # A ResultSet with methods tailored to the values returned by the ReadRatings Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class ReadRatingsResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "HasPrevious" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a previous page exists.
          	####
          	def get_HasPrevious()
          	  return @outputs["HasPrevious"]
          	end
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          	####
          	# Retrieve the value for the "HasNext" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a next page exists.
          	####
          	def get_HasNext()
          	  return @outputs["HasNext"]
          	end
          end

        end # class ReadRatings



        ##############################################################################
        #
        # UpdateRating
        #
        # Updates an existing video rating action.
        #
        ##############################################################################

        class UpdateRating < Choreography

          ####
          #  Create a new instance of the UpdateRating Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Video/Rates/UpdateRating")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return UpdateRatingInputSet
          ####
          def new_input_set()
            return UpdateRatingInputSet.new()
          end

          def make_result_set()
            return UpdateRatingResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = UpdateRatingResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the UpdateRating
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class UpdateRatingInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of the action to update.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the Episode input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing an episode.
            ###

            def set_Episode(value)
              set_input("Episode", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the Movie input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing a movie.
            ###

            def set_Movie(value)
              set_input("Movie", value)
            end
            #### 
            # Set the value of the Other input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing any general video content.
            ###

            def set_Other(value)
              set_input("Other", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the RatingNormalizedValue input for this Choreo. 
            # 
            # @param BigDecimal - (optional, decimal) The rating expressed as a decimal value between 0 and 1.0.
            ###

            def set_RatingNormalizedValue(value)
              set_input("RatingNormalizedValue", value)
            end
            #### 
            # Set the value of the RatingScale input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The highest possible value in the rating scale.
            ###

            def set_RatingScale(value)
              set_input("RatingScale", value)
            end
            #### 
            # Set the value of the RatingValue input for this Choreo. 
            # 
            # @param BigDecimal - (optional, decimal) The value of the book rating.
            ###

            def set_RatingValue(value)
              set_input("RatingValue", value)
            end
            #### 
            # Set the value of the ReviewText input for this Choreo. 
            # 
            # @param String - (optional, string) The text content of the book review.
            ###

            def set_ReviewText(value)
              set_input("ReviewText", value)
            end
            #### 
            # Set the value of the Review input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing a book review.
            ###

            def set_Review(value)
              set_input("Review", value)
            end
            #### 
            # Set the value of the TVShow input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing a TV show.
            ###

            def set_TVShow(value)
              set_input("TVShow", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the UpdateRating Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class UpdateRatingResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class UpdateRating




      end # module Rates

      module WantsToWatch



        ##############################################################################
        #
        # CreateWantsToWatch
        #
        # Creates an action that represents a user wanting to watch video content.
        #
        ##############################################################################

        class CreateWantsToWatch < Choreography

          ####
          #  Create a new instance of the CreateWantsToWatch Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Video/WantsToWatch/CreateWantsToWatch")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return CreateWantsToWatchInputSet
          ####
          def new_input_set()
            return CreateWantsToWatchInputSet.new()
          end

          def make_result_set()
            return CreateWantsToWatchResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = CreateWantsToWatchResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the CreateWantsToWatch
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class CreateWantsToWatchInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the AiringEndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the airing ends.
            ###

            def set_AiringEndTime(value)
              set_input("AiringEndTime", value)
            end
            #### 
            # Set the value of the AiringID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the video airing.
            ###

            def set_AiringID(value)
              set_input("AiringID", value)
            end
            #### 
            # Set the value of the AiringStartTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the airing begins.
            ###

            def set_AiringStartTime(value)
              set_input("AiringStartTime", value)
            end
            #### 
            # Set the value of the CreatedTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_CreatedTime(value)
              set_input("CreatedTime", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the Episode input for this Choreo. 
            # 
            # @param String - (conditional, string) The URL or ID for an Open Graph object representing an episode of a show.
            ###

            def set_Episode(value)
              set_input("Episode", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the ExplicitlyShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
            ###

            def set_ExplicitlyShared(value)
              set_input("ExplicitlyShared", value)
            end
            #### 
            # Set the value of the ExplicityShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Deprecated (retained for backward compatibility only).
            ###

            def set_ExplicityShared(value)
              set_input("ExplicityShared", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the Movie input for this Choreo. 
            # 
            # @param String - (conditional, string) The URL or ID for an Open Graph object representing a movie.
            ###

            def set_Movie(value)
              set_input("Movie", value)
            end
            #### 
            # Set the value of the NoFeedStory input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Whether or not this action should be posted to the users feed.
            ###

            def set_NoFeedStory(value)
              set_input("NoFeedStory", value)
            end
            #### 
            # Set the value of the Other input for this Choreo. 
            # 
            # @param String - (conditional, string) The URL or ID for an Open Graph object representing any general video content.
            ###

            def set_Other(value)
              set_input("Other", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
            end
            #### 
            # Set the value of the Reference input for this Choreo. 
            # 
            # @param String - (optional, string) A string identifier up to 50 characters used for tracking and insights.
            ###

            def set_Reference(value)
              set_input("Reference", value)
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
            # Set the value of the StartTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_StartTime(value)
              set_input("StartTime", value)
            end
            #### 
            # Set the value of the TVShow input for this Choreo. 
            # 
            # @param String - (conditional, string) The URL or ID for an Open Graph object representing a TV show.
            ###

            def set_TVShow(value)
              set_input("TVShow", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the CreateWantsToWatch Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class CreateWantsToWatchResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "ActivityURL" output from this Choreo execution
          	#
          	# @return String - (string) The URL for the newly created action.
          	####
          	def get_ActivityURL()
          	  return @outputs["ActivityURL"]
          	end
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class CreateWantsToWatch



        ##############################################################################
        #
        # DeleteWantsToWatch
        #
        # Deletes a given wants_to_watch action.
        #
        ##############################################################################

        class DeleteWantsToWatch < Choreography

          ####
          #  Create a new instance of the DeleteWantsToWatch Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Video/WantsToWatch/DeleteWantsToWatch")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return DeleteWantsToWatchInputSet
          ####
          def new_input_set()
            return DeleteWantsToWatchInputSet.new()
          end

          def make_result_set()
            return DeleteWantsToWatchResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = DeleteWantsToWatchResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the DeleteWantsToWatch
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class DeleteWantsToWatchInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of an action to delete.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the DeleteWantsToWatch Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class DeleteWantsToWatchResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - (boolean) The response from Facebook. Returns "true" on success.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class DeleteWantsToWatch



        ##############################################################################
        #
        # ReadWantsToWatch
        #
        # Retrieves one or more video wants_to_watch actions.
        #
        ##############################################################################

        class ReadWantsToWatch < Choreography

          ####
          #  Create a new instance of the ReadWantsToWatch Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Video/WantsToWatch/ReadWantsToWatch")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return ReadWantsToWatchInputSet
          ####
          def new_input_set()
            return ReadWantsToWatchInputSet.new()
          end

          def make_result_set()
            return ReadWantsToWatchResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = ReadWantsToWatchResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the ReadWantsToWatch
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class ReadWantsToWatchInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of an action to retrieve. If an id is not provided, a list of all video wants_to_watch actions will be returned.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Fields input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
            ###

            def set_Fields(value)
              set_input("Fields", value)
            end
            #### 
            # Set the value of the Limit input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
            ###

            def set_Limit(value)
              set_input("Limit", value)
            end
            #### 
            # Set the value of the Offset input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
            ###

            def set_Offset(value)
              set_input("Offset", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
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
          # A ResultSet with methods tailored to the values returned by the ReadWantsToWatch Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class ReadWantsToWatchResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "HasNext" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a next page exists.
          	####
          	def get_HasNext()
          	  return @outputs["HasNext"]
          	end
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          	####
          	# Retrieve the value for the "HasPrevious" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a previous page exists.
          	####
          	def get_HasPrevious()
          	  return @outputs["HasPrevious"]
          	end
          end

        end # class ReadWantsToWatch



        ##############################################################################
        #
        # UpdateWantsToWatch
        #
        # Updates an existing wants_to_watch action.
        #
        ##############################################################################

        class UpdateWantsToWatch < Choreography

          ####
          #  Create a new instance of the UpdateWantsToWatch Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Video/WantsToWatch/UpdateWantsToWatch")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return UpdateWantsToWatchInputSet
          ####
          def new_input_set()
            return UpdateWantsToWatchInputSet.new()
          end

          def make_result_set()
            return UpdateWantsToWatchResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = UpdateWantsToWatchResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the UpdateWantsToWatch
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class UpdateWantsToWatchInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of the action to update.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the AiringEndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the airing ends.
            ###

            def set_AiringEndTime(value)
              set_input("AiringEndTime", value)
            end
            #### 
            # Set the value of the AiringID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the video airing.
            ###

            def set_AiringID(value)
              set_input("AiringID", value)
            end
            #### 
            # Set the value of the AiringStartTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the airing begins.
            ###

            def set_AiringStartTime(value)
              set_input("AiringStartTime", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the Episode input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing an episode of a show.
            ###

            def set_Episode(value)
              set_input("Episode", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the Movie input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing a movie.
            ###

            def set_Movie(value)
              set_input("Movie", value)
            end
            #### 
            # Set the value of the Other input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing any general video content.
            ###

            def set_Other(value)
              set_input("Other", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the TVShow input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing a TV show.
            ###

            def set_TVShow(value)
              set_input("TVShow", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the UpdateWantsToWatch Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class UpdateWantsToWatchResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class UpdateWantsToWatch




      end # module WantsToWatch

      module Watches



        ##############################################################################
        #
        # CreateWatch
        #
        # Creates an action that represents a user watching video content.
        #
        ##############################################################################

        class CreateWatch < Choreography

          ####
          #  Create a new instance of the CreateWatch Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Video/Watches/CreateWatch")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return CreateWatchInputSet
          ####
          def new_input_set()
            return CreateWatchInputSet.new()
          end

          def make_result_set()
            return CreateWatchResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = CreateWatchResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the CreateWatch
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class CreateWatchInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the CreatedTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_CreatedTime(value)
              set_input("CreatedTime", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the Episode input for this Choreo. 
            # 
            # @param String - (conditional, string) The URL or ID for an Open Graph object representing an episode of a show.
            ###

            def set_Episode(value)
              set_input("Episode", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the ExplicitlyShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
            ###

            def set_ExplicitlyShared(value)
              set_input("ExplicitlyShared", value)
            end
            #### 
            # Set the value of the ExplicityShared input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Deprecated (retained for backward compatibility only).
            ###

            def set_ExplicityShared(value)
              set_input("ExplicityShared", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the Movie input for this Choreo. 
            # 
            # @param String - (conditional, string) The URL or ID for an Open Graph object representing a movie.
            ###

            def set_Movie(value)
              set_input("Movie", value)
            end
            #### 
            # Set the value of the NoFeedStory input for this Choreo. 
            # 
            # @param Boolean - (optional, boolean) Whether or not this action should be posted to the users feed.
            ###

            def set_NoFeedStory(value)
              set_input("NoFeedStory", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
            end
            #### 
            # Set the value of the Reference input for this Choreo. 
            # 
            # @param String - (optional, string) A string identifier up to 50 characters used for tracking and insights.
            ###

            def set_Reference(value)
              set_input("Reference", value)
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
            # Set the value of the StartTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_StartTime(value)
              set_input("StartTime", value)
            end
            #### 
            # Set the value of the TVShow input for this Choreo. 
            # 
            # @param String - (conditional, string) The URL or ID for an Open Graph object representing a TV show.
            ###

            def set_TVShow(value)
              set_input("TVShow", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end
            #### 
            # Set the value of the Video input for this Choreo. 
            # 
            # @param String - (conditional, string) The URL or ID for an Open Graph object representing any general video content.
            ###

            def set_Video(value)
              set_input("Video", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the CreateWatch Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class CreateWatchResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "ActivityURL" output from this Choreo execution
          	#
          	# @return String - (string) The URL for the newly created action.
          	####
          	def get_ActivityURL()
          	  return @outputs["ActivityURL"]
          	end
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class CreateWatch



        ##############################################################################
        #
        # DeleteWatch
        #
        # Deletes a given watch action.
        #
        ##############################################################################

        class DeleteWatch < Choreography

          ####
          #  Create a new instance of the DeleteWatch Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Video/Watches/DeleteWatch")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return DeleteWatchInputSet
          ####
          def new_input_set()
            return DeleteWatchInputSet.new()
          end

          def make_result_set()
            return DeleteWatchResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = DeleteWatchResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the DeleteWatch
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class DeleteWatchInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of an action to delete.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the DeleteWatch Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class DeleteWatchResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - (boolean) The response from Facebook. Returns "true" on success.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class DeleteWatch



        ##############################################################################
        #
        # ReadWatch
        #
        # Retrieves one or more video watch actions.
        #
        ##############################################################################

        class ReadWatch < Choreography

          ####
          #  Create a new instance of the ReadWatch Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Video/Watches/ReadWatch")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return ReadWatchInputSet
          ####
          def new_input_set()
            return ReadWatchInputSet.new()
          end

          def make_result_set()
            return ReadWatchResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = ReadWatchResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the ReadWatch
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class ReadWatchInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of an action to retrieve. If an id is not provided, a list of all video watch actions will be returned.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the Fields input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
            ###

            def set_Fields(value)
              set_input("Fields", value)
            end
            #### 
            # Set the value of the Limit input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
            ###

            def set_Limit(value)
              set_input("Limit", value)
            end
            #### 
            # Set the value of the Offset input for this Choreo. 
            # 
            # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
            ###

            def set_Offset(value)
              set_input("Offset", value)
            end
            #### 
            # Set the value of the ProfileID input for this Choreo. 
            # 
            # @param String - (optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
            ###

            def set_ProfileID(value)
              set_input("ProfileID", value)
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
          # A ResultSet with methods tailored to the values returned by the ReadWatch Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class ReadWatchResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          	####
          	# Retrieve the value for the "HasNext" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a next page exists.
          	####
          	def get_HasNext()
          	  return @outputs["HasNext"]
          	end
          	####
          	# Retrieve the value for the "HasPrevious" output from this Choreo execution
          	#
          	# @return String - (boolean) A boolean flag indicating that a previous page exists.
          	####
          	def get_HasPrevious()
          	  return @outputs["HasPrevious"]
          	end
          end

        end # class ReadWatch



        ##############################################################################
        #
        # UpdateWatch
        #
        # Updates an existing watch action.
        #
        ##############################################################################

        class UpdateWatch < Choreography

          ####
          #  Create a new instance of the UpdateWatch Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Facebook/Actions/Video/Watches/UpdateWatch")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return UpdateWatchInputSet
          ####
          def new_input_set()
            return UpdateWatchInputSet.new()
          end

          def make_result_set()
            return UpdateWatchResultSet.new()
          end

          ####
          # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
          # and return a ResultSet containing the execution results.
          # @param choreoInputs
          # @return
          # @throws TembooException
          ####
          def execute(input_set = nil)
            resp = super(input_set)
            results = UpdateWatchResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the UpdateWatch
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class UpdateWatchInputSet < Choreography::InputSet

            #### 
            # Set the value of the AccessToken input for this Choreo. 
            # 
            # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
            ###

            def set_AccessToken(value)
              set_input("AccessToken", value)
            end
            #### 
            # Set the value of the ActionID input for this Choreo. 
            # 
            # @param String - (required, string) The id of the action to update.
            ###

            def set_ActionID(value)
              set_input("ActionID", value)
            end
            #### 
            # Set the value of the EndTime input for this Choreo. 
            # 
            # @param String - (optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
            ###

            def set_EndTime(value)
              set_input("EndTime", value)
            end
            #### 
            # Set the value of the Episode input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing an episode of a show.
            ###

            def set_Episode(value)
              set_input("Episode", value)
            end
            #### 
            # Set the value of the ExpiresIn input for this Choreo. 
            # 
            # @param Integer - (optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
            ###

            def set_ExpiresIn(value)
              set_input("ExpiresIn", value)
            end
            #### 
            # Set the value of the Message input for this Choreo. 
            # 
            # @param String - (optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
            ###

            def set_Message(value)
              set_input("Message", value)
            end
            #### 
            # Set the value of the Movie input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing a movie.
            ###

            def set_Movie(value)
              set_input("Movie", value)
            end
            #### 
            # Set the value of the Place input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
            ###

            def set_Place(value)
              set_input("Place", value)
            end
            #### 
            # Set the value of the TVShow input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing a TV show.
            ###

            def set_TVShow(value)
              set_input("TVShow", value)
            end
            #### 
            # Set the value of the Tags input for this Choreo. 
            # 
            # @param String - (optional, string) A comma separated list of other profile IDs that also performed this action.
            ###

            def set_Tags(value)
              set_input("Tags", value)
            end
            #### 
            # Set the value of the Video input for this Choreo. 
            # 
            # @param String - (optional, string) The URL or ID for an Open Graph object representing any general video content.
            ###

            def set_Video(value)
              set_input("Video", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the UpdateWatch Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class UpdateWatchResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "Response" output from this Choreo execution
          	#
          	# @return String - The response from Facebook.
          	####
          	def get_Response()
          	  return @outputs["Response"]
          	end
          end

        end # class UpdateWatch




      end # module Watches

    end # module Video

  end # module Actions

  module BatchRequests



    ##############################################################################
    #
    # Batch
    #
    # Allows you to perform multiple graph operations in one request.
    #
    ##############################################################################

    class Batch < Choreography

      ####
      #  Create a new instance of the Batch Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/BatchRequests/Batch")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return BatchInputSet
      ####
      def new_input_set()
        return BatchInputSet.new()
      end

      def make_result_set()
        return BatchResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = BatchResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Batch
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class BatchInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Batch input for this Choreo. 
        # 
        # @param String - (required, json) A JSON object which describes each individual operation you'd like to perform. See documentation for syntax examples.
        ###

        def set_Batch(value)
          set_input("Batch", value)
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
      # A ResultSet with methods tailored to the values returned by the Batch Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class BatchResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (string) Contains the Base64 encoded value of the image retrieved from Facebook.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Batch




  end # module BatchRequests

  module Deleting



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
        super(session, "/Library/Facebook/Deleting/DeleteComment")
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
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the CommentID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the comment to delete
        ###

        def set_CommentID(value)
          set_input("CommentID", value)
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
      	# @return String - (boolean) The response from Facebook. Returns "true" on success.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteComment



    ##############################################################################
    #
    # DeleteObject
    #
    # Deletes objects in the graph with a given id or path.
    #
    ##############################################################################

    class DeleteObject < Choreography

      ####
      #  Create a new instance of the DeleteObject Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Deleting/DeleteObject")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteObjectInputSet
      ####
      def new_input_set()
        return DeleteObjectInputSet.new()
      end

      def make_result_set()
        return DeleteObjectResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteObjectResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteObject
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteObjectInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ObjectID input for this Choreo. 
        # 
        # @param String - (required, string) The id or path to an object to delete.
        ###

        def set_ObjectID(value)
          set_input("ObjectID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteObject Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteObjectResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (boolean) The response from Facebook. Returns "true" on success.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteObject



    ##############################################################################
    #
    # DeleteStatus
    #
    # Deletes a specified status message from the authenticated user's feed.
    #
    ##############################################################################

    class DeleteStatus < Choreography

      ####
      #  Create a new instance of the DeleteStatus Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Deleting/DeleteStatus")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteStatusInputSet
      ####
      def new_input_set()
        return DeleteStatusInputSet.new()
      end

      def make_result_set()
        return DeleteStatusResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteStatusResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteStatus
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteStatusInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the StatusID input for this Choreo. 
        # 
        # @param String - (required, string) The ID for the status message you want to delete.
        ###

        def set_StatusID(value)
          set_input("StatusID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteStatus Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteStatusResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (boolean) The response from Facebook. Returns "true" on success.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteStatus



    ##############################################################################
    #
    # Unlike
    #
    # Allows a user to "unlike" a Graph API object.
    #
    ##############################################################################

    class Unlike < Choreography

      ####
      #  Create a new instance of the Unlike Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Deleting/Unlike")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UnlikeInputSet
      ####
      def new_input_set()
        return UnlikeInputSet.new()
      end

      def make_result_set()
        return UnlikeResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UnlikeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Unlike
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UnlikeInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ObjectID input for this Choreo. 
        # 
        # @param String - (required, string) The id of a graph api object to unlike.
        ###

        def set_ObjectID(value)
          set_input("ObjectID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Unlike Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UnlikeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (boolean) The response from Facebook. Returns "true" on success.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Unlike




  end # module Deleting

  module OAuth



    ##############################################################################
    #
    # FinalizeOAuth
    #
    # Completes the OAuth process by retrieving a Facebook access token for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
    #
    ##############################################################################

    class FinalizeOAuth < Choreography

      ####
      #  Create a new instance of the FinalizeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/OAuth/FinalizeOAuth")
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
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The App ID provided by Facebook (AKA the Client ID).
        ###

        def set_AppID(value)
          set_input("AppID", value)
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
        # Set the value of the AppSecret input for this Choreo. 
        # 
        # @param String - (required, string) The App Secret provided by Facebook (AKA the Client Secret).
        ###

        def set_AppSecret(value)
          set_input("AppSecret", value)
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
        # Set the value of the LongLivedToken input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to automatically exchange the short-lived access token for a long-lived access token. Defaults to 0 (false).
        ###

        def set_LongLivedToken(value)
          set_input("LongLivedToken", value)
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
      	# @return String - (integer) The expiration time of the access_token retrieved.
      	####
      	def get_Expires()
      	  return @outputs["Expires"]
      	end
      	####
      	# Retrieve the value for the "AccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The access token for the user that has granted access to your application.
      	####
      	def get_AccessToken()
      	  return @outputs["AccessToken"]
      	end
      	####
      	# Retrieve the value for the "ErrorMessage" output from this Choreo execution
      	#
      	# @return String - (string) If an error occurs during the redirect process, this output variable will contain the error message generated by Facebook.
      	####
      	def get_ErrorMessage()
      	  return @outputs["ErrorMessage"]
      	end
      end

    end # class FinalizeOAuth



    ##############################################################################
    #
    # GetLongLivedToken
    #
    # Exchanges a short-lived access token for a long-lived access token.
    #
    ##############################################################################

    class GetLongLivedToken < Choreography

      ####
      #  Create a new instance of the GetLongLivedToken Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/OAuth/GetLongLivedToken")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetLongLivedTokenInputSet
      ####
      def new_input_set()
        return GetLongLivedTokenInputSet.new()
      end

      def make_result_set()
        return GetLongLivedTokenResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetLongLivedTokenResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLongLivedToken
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetLongLivedTokenInputSet < Choreography::InputSet

        #### 
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The App ID provided by Facebook (AKA the Client ID).
        ###

        def set_AppID(value)
          set_input("AppID", value)
        end
        #### 
        # Set the value of the AppSecret input for this Choreo. 
        # 
        # @param String - (required, string) The App Secret provided by Facebook (AKA the Client Secret).
        ###

        def set_AppSecret(value)
          set_input("AppSecret", value)
        end
        #### 
        # Set the value of the CallbackData input for this Choreo. 
        # 
        # @param String - (conditional, xml) 
        ###

        def set_CallbackData(value)
          set_input("CallbackData", value)
        end
        #### 
        # Set the value of the ExistingAccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The existing short-lived access token to exchange for a long-lived access token.
        ###

        def set_ExistingAccessToken(value)
          set_input("ExistingAccessToken", value)
        end
        #### 
        # Set the value of the LastResponse input for this Choreo. 
        # 
        # @param String - (conditional, string) 
        ###

        def set_LastResponse(value)
          set_input("LastResponse", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLongLivedToken Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetLongLivedTokenResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "AccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The new long-lived access token.
      	####
      	def get_AccessToken()
      	  return @outputs["AccessToken"]
      	end
      	####
      	# Retrieve the value for the "Expires" output from this Choreo execution
      	#
      	# @return String - (integer) The expiration time of the access_token retrieved.
      	####
      	def get_Expires()
      	  return @outputs["Expires"]
      	end
      end

    end # class GetLongLivedToken



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
        super(session, "/Library/Facebook/OAuth/InitializeOAuth")
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
        # Set the value of the AppID input for this Choreo. 
        # 
        # @param String - (required, string) The App ID provided by Facebook (AKA the Client ID).
        ###

        def set_AppID(value)
          set_input("AppID", value)
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
        # Set the value of the Scope input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of permissions to request access for (i.e. user_birthday,read_stream). For more information see documentation.
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
      	# @return String - (string) The authorization URL to send your user to in order for them to grant access to your application.
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
    # ParseResponse
    #
    # 
    #
    ##############################################################################

    class ParseResponse < Choreography

      ####
      #  Create a new instance of the ParseResponse Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/OAuth/ParseResponse")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ParseResponseInputSet
      ####
      def new_input_set()
        return ParseResponseInputSet.new()
      end

      def make_result_set()
        return ParseResponseResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ParseResponseResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ParseResponse
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ParseResponseInputSet < Choreography::InputSet

        #### 
        # Set the value of the ParamString input for this Choreo. 
        # 
        # @param String - (conditional, any) 
        ###

        def set_ParamString(value)
          set_input("ParamString", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ParseResponse Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ParseResponseResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Expires" output from this Choreo execution
      	#
      	# @return String - 
      	####
      	def get_Expires()
      	  return @outputs["Expires"]
      	end
      	####
      	# Retrieve the value for the "AccessToken" output from this Choreo execution
      	#
      	# @return String - 
      	####
      	def get_AccessToken()
      	  return @outputs["AccessToken"]
      	end
      end

    end # class ParseResponse




  end # module OAuth

  module Publishing



    ##############################################################################
    #
    # CreateAlbum
    #
    # Creates an album.
    #
    ##############################################################################

    class CreateAlbum < Choreography

      ####
      #  Create a new instance of the CreateAlbum Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Publishing/CreateAlbum")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateAlbumInputSet
      ####
      def new_input_set()
        return CreateAlbumInputSet.new()
      end

      def make_result_set()
        return CreateAlbumResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateAlbumResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateAlbum
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateAlbumInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Message input for this Choreo. 
        # 
        # @param String - (optional, string) A message to attach to the album.
        ###

        def set_Message(value)
          set_input("Message", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (required, string) The name of the album.
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id for the profile that the album will be published to. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
      # A ResultSet with methods tailored to the values returned by the CreateAlbum Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateAlbumResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateAlbum



    ##############################################################################
    #
    # CreateCheckin
    #
    # Creates a checkin at a location represented by a Page.
    #
    ##############################################################################

    class CreateCheckin < Choreography

      ####
      #  Create a new instance of the CreateCheckin Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Publishing/CreateCheckin")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateCheckinInputSet
      ####
      def new_input_set()
        return CreateCheckinInputSet.new()
      end

      def make_result_set()
        return CreateCheckinResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateCheckinResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateCheckin
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateCheckinInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Deprecated (retained for backward compatibility only).
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Deprecated (retained for backward compatibility only).
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the Message input for this Choreo. 
        # 
        # @param String - (optional, string) A message to include with the Checkin.
        ###

        def set_Message(value)
          set_input("Message", value)
        end
        #### 
        # Set the value of the PlaceID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the place associated with your Checkin.
        ###

        def set_PlaceID(value)
          set_input("PlaceID", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile to create a checkin for. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
      # A ResultSet with methods tailored to the values returned by the CreateCheckin Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateCheckinResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateCheckin



    ##############################################################################
    #
    # CreateEvent
    #
    # Creates an event.
    #
    ##############################################################################

    class CreateEvent < Choreography

      ####
      #  Create a new instance of the CreateEvent Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Publishing/CreateEvent")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateEventInputSet
      ####
      def new_input_set()
        return CreateEventInputSet.new()
      end

      def make_result_set()
        return CreateEventResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateEventResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateEvent
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateEventInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the EndTime input for this Choreo. 
        # 
        # @param String - (optional, date) The end time of the event formatted as a ISO-8601 string (i.e 2012-07-04 or 2012-07-04T19:00:00-0700).
        ###

        def set_EndTime(value)
          set_input("EndTime", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (required, string) The name of the event.
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile that the event will be created for. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
        # Set the value of the StartTime input for this Choreo. 
        # 
        # @param String - (required, date) The start time of the event formatted as a ISO-8601 string (i.e 2012-07-04 or 2012-07-04T19:00:00-0700).
        ###

        def set_StartTime(value)
          set_input("StartTime", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateEvent Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateEventResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateEvent



    ##############################################################################
    #
    # LeaveComment
    #
    # Allows a user to leave a comment on a specified Graph API object.
    #
    ##############################################################################

    class LeaveComment < Choreography

      ####
      #  Create a new instance of the LeaveComment Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Publishing/LeaveComment")
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
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Message input for this Choreo. 
        # 
        # @param String - (required, string) The comment text.
        ###

        def set_Message(value)
          set_input("Message", value)
        end
        #### 
        # Set the value of the ObjectID input for this Choreo. 
        # 
        # @param String - (required, string) The id of a graph api object to comment on.
        ###

        def set_ObjectID(value)
          set_input("ObjectID", value)
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
      # A ResultSet with methods tailored to the values returned by the LeaveComment Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LeaveCommentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class LeaveComment



    ##############################################################################
    #
    # Like
    #
    # Allows a user to "like" a Graph API object.
    #
    ##############################################################################

    class Like < Choreography

      ####
      #  Create a new instance of the Like Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Publishing/Like")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LikeInputSet
      ####
      def new_input_set()
        return LikeInputSet.new()
      end

      def make_result_set()
        return LikeResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = LikeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Like
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LikeInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ObjectID input for this Choreo. 
        # 
        # @param String - (required, string) The id of a graph api object to like.
        ###

        def set_ObjectID(value)
          set_input("ObjectID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Like Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LikeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (boolean) The response from Facebook. Returns "true" on success.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Like



    ##############################################################################
    #
    # Post
    #
    # Adds an entry to a user's profile feed.
    #
    ##############################################################################

    class Post < Choreography

      ####
      #  Create a new instance of the Post Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Publishing/Post")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PostInputSet
      ####
      def new_input_set()
        return PostInputSet.new()
      end

      def make_result_set()
        return PostResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = PostResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Post
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PostInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Caption input for this Choreo. 
        # 
        # @param String - (optional, string) Caption of the post.   (can only be used if link is specified)
        ###

        def set_Caption(value)
          set_input("Caption", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) Description of the post.   (can only be used if link is specified)
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the Link input for this Choreo. 
        # 
        # @param String - (conditional, string) Link to Post.  Supply either a message or a link
        ###

        def set_Link(value)
          set_input("Link", value)
        end
        #### 
        # Set the value of the Message input for this Choreo. 
        # 
        # @param String - (required, string) The message to Post.  Supply either a message or a link.
        ###

        def set_Message(value)
          set_input("Message", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (optional, string) Name of the post.  (can only be used if link is specified)
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the Picture input for this Choreo. 
        # 
        # @param String - (optional, string) Post thumbnail image (can only be used if link is specified)
        ###

        def set_Picture(value)
          set_input("Picture", value)
        end
        #### 
        # Set the value of the PlaceID input for this Choreo. 
        # 
        # @param String - (optional, string) Facebook Page ID of the location associated with this Post.
        ###

        def set_PlaceID(value)
          set_input("PlaceID", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile that is being updated. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
        # Set the value of the Tags input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-separated list of Facebook IDs of people tagged in this Post. NOTE: You cannot specify this field without also specifying a place.
        ###

        def set_Tags(value)
          set_input("Tags", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Post Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PostResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Post



    ##############################################################################
    #
    # PublishLink
    #
    # Publishes a link on a given profile.
    #
    ##############################################################################

    class PublishLink < Choreography

      ####
      #  Create a new instance of the PublishLink Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Publishing/PublishLink")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PublishLinkInputSet
      ####
      def new_input_set()
        return PublishLinkInputSet.new()
      end

      def make_result_set()
        return PublishLinkResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = PublishLinkResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the PublishLink
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PublishLinkInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Caption input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_Caption(value)
          set_input("Caption", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the Link input for this Choreo. 
        # 
        # @param String - (required, string) The link to publish.
        ###

        def set_Link(value)
          set_input("Link", value)
        end
        #### 
        # Set the value of the Message input for this Choreo. 
        # 
        # @param String - (optional, string) A message about the link.
        ###

        def set_Message(value)
          set_input("Message", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the Picture input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_Picture(value)
          set_input("Picture", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile that the link will be published to. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
      # A ResultSet with methods tailored to the values returned by the PublishLink Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PublishLinkResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class PublishLink



    ##############################################################################
    #
    # PublishNote
    #
    # Publishes a note on a given profile.
    #
    ##############################################################################

    class PublishNote < Choreography

      ####
      #  Create a new instance of the PublishNote Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Publishing/PublishNote")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PublishNoteInputSet
      ####
      def new_input_set()
        return PublishNoteInputSet.new()
      end

      def make_result_set()
        return PublishNoteResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = PublishNoteResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the PublishNote
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PublishNoteInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Message input for this Choreo. 
        # 
        # @param String - (required, string) The contents of the note.
        ###

        def set_Message(value)
          set_input("Message", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile that the note will be published to. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
        # Set the value of the Subject input for this Choreo. 
        # 
        # @param String - (required, string) A subject line for the note being created.
        ###

        def set_Subject(value)
          set_input("Subject", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the PublishNote Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PublishNoteResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class PublishNote



    ##############################################################################
    #
    # RSVPEvent
    #
    # RSVP to an event as "attending", "maybe", or "declined".
    #
    ##############################################################################

    class RSVPEvent < Choreography

      ####
      #  Create a new instance of the RSVPEvent Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Publishing/RSVPEvent")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RSVPEventInputSet
      ####
      def new_input_set()
        return RSVPEventInputSet.new()
      end

      def make_result_set()
        return RSVPEventResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RSVPEventResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RSVPEvent
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RSVPEventInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the EventID input for this Choreo. 
        # 
        # @param String - (required, string) The id for the event  to rsvp for.
        ###

        def set_EventID(value)
          set_input("EventID", value)
        end
        #### 
        # Set the value of the RSVP input for this Choreo. 
        # 
        # @param String - (required, string) The RSVP for the event. Valid values are: attending, maybe, or declined.
        ###

        def set_RSVP(value)
          set_input("RSVP", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RSVPEvent Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RSVPEventResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RSVPEvent



    ##############################################################################
    #
    # SetStatus
    #
    # Updates a user's Facebook status.
    #
    ##############################################################################

    class SetStatus < Choreography

      ####
      #  Create a new instance of the SetStatus Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Publishing/SetStatus")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SetStatusInputSet
      ####
      def new_input_set()
        return SetStatusInputSet.new()
      end

      def make_result_set()
        return SetStatusResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = SetStatusResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SetStatus
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SetStatusInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Message input for this Choreo. 
        # 
        # @param String - (required, string) The status message to set.
        ###

        def set_Message(value)
          set_input("Message", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile that is being updated. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
      # A ResultSet with methods tailored to the values returned by the SetStatus Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SetStatusResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SetStatus



    ##############################################################################
    #
    # UploadPhoto
    #
    # Uploads a photo to a given album.
    #
    ##############################################################################

    class UploadPhoto < Choreography

      ####
      #  Create a new instance of the UploadPhoto Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Publishing/UploadPhoto")
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
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the AlbumID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the album to upload the photo to.
        ###

        def set_AlbumID(value)
          set_input("AlbumID", value)
        end
        #### 
        # Set the value of the Message input for this Choreo. 
        # 
        # @param String - (optional, string) A message to attach to the photo.
        ###

        def set_Message(value)
          set_input("Message", value)
        end
        #### 
        # Set the value of the Photo input for this Choreo. 
        # 
        # @param String - (conditional, string) The Base64 encoded image to upload. This is required unless using the URL input to publish the photo.
        ###

        def set_Photo(value)
          set_input("Photo", value)
        end
        #### 
        # Set the value of the Place input for this Choreo. 
        # 
        # @param String - (optional, string) The ID of a location where the photo was taken.
        ###

        def set_Place(value)
          set_input("Place", value)
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
        # Set the value of the Source input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_Source(value)
          set_input("Source", value)
        end
        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (optional, string) A URL to a hosted photo that should be uploaded. This is required unless providing a Base64 encoded image for the Photo input.
        ###

        def set_URL(value)
          set_input("URL", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - A path to image in the vault. This can be used as an alternative to the Photo input.
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
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UploadPhoto




    module Util



      ##############################################################################
      #
      # DownloadFile
      #
      # Generates a HTTP GET request.
      #
      ##############################################################################

      class DownloadFile < Choreography

        ####
        #  Create a new instance of the DownloadFile Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/Facebook/Publishing/Util/DownloadFile")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return DownloadFileInputSet
        ####
        def new_input_set()
          return DownloadFileInputSet.new()
        end

        def make_result_set()
          return DownloadFileResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = DownloadFileResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the DownloadFile
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class DownloadFileInputSet < Choreography::InputSet

          #### 
          # Set the value of the Password input for this Choreo. 
          # 
          # @param String - (optional, string) A valid password. This is used if the request required basic authentication.
          ###

          def set_Password(value)
            set_input("Password", value)
          end
          #### 
          # Set the value of the RequestHeaders input for this Choreo. 
          # 
          # @param String - (optional, json) A JSON object containing up to 10 key/value pairs that will be mapped to the HTTP request headers.
          ###

          def set_RequestHeaders(value)
            set_input("RequestHeaders", value)
          end
          #### 
          # Set the value of the RequestParameters input for this Choreo. 
          # 
          # @param String - (optional, json) A JSON object containing up to 10 key/value pairs that will be mapped to the url string as http parameters.
          ###

          def set_RequestParameters(value)
            set_input("RequestParameters", value)
          end
          #### 
          # Set the value of the URL input for this Choreo. 
          # 
          # @param String - (required, string) The base URL for the request (including http:// or https://).
          ###

          def set_URL(value)
            set_input("URL", value)
          end
          #### 
          # Set the value of the Username input for this Choreo. 
          # 
          # @param String - (optional, string) A valid username. This is used if the request required basic authentication.
          ###

          def set_Username(value)
            set_input("Username", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the DownloadFile Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class DownloadFileResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
        	#
        	# @return String - (integer) The response status code.
        	####
        	def get_ResponseStatusCode()
        	  return @outputs["ResponseStatusCode"]
        	end
        	####
        	# Retrieve the value for the "HTTPLog" output from this Choreo execution
        	#
        	# @return String - (string) A log of the http request that has been generated.
        	####
        	def get_HTTPLog()
        	  return @outputs["HTTPLog"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the server.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class DownloadFile



      ##############################################################################
      #
      # SplitQueryParameters
      #
      # 
      #
      ##############################################################################

      class SplitQueryParameters < Choreography

        ####
        #  Create a new instance of the SplitQueryParameters Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/Facebook/Publishing/Util/SplitQueryParameters")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return SplitQueryParametersInputSet
        ####
        def new_input_set()
          return SplitQueryParametersInputSet.new()
        end

        def make_result_set()
          return SplitQueryParametersResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = SplitQueryParametersResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the SplitQueryParameters
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class SplitQueryParametersInputSet < Choreography::InputSet

          #### 
          # Set the value of the QueryParamString input for this Choreo. 
          # 
          # @param String - (required, string) Query parameter string to split.
          ###

          def set_QueryParamString(value)
            set_input("QueryParamString", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the SplitQueryParameters Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class SplitQueryParametersResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "QueryParamJSON" output from this Choreo execution
        	#
        	# @return String - (json) 
        	####
        	def get_QueryParamJSON()
        	  return @outputs["QueryParamJSON"]
        	end
        end

      end # class SplitQueryParameters




    end # module Util

  end # module Publishing

  module Reading



    ##############################################################################
    #
    # Accounts
    #
    # Retrieves a list of the Facebook apps and pages owned by the specified user.
    #
    ##############################################################################

    class Accounts < Choreography

      ####
      #  Create a new instance of the Accounts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/Accounts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AccountsInputSet
      ####
      def new_input_set()
        return AccountsInputSet.new()
      end

      def make_result_set()
        return AccountsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = AccountsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Accounts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AccountsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile to retrieve books for. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
      # A ResultSet with methods tailored to the values returned by the Accounts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AccountsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "HasPrevious" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a previous page exists.
      	####
      	def get_HasPrevious()
      	  return @outputs["HasPrevious"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "HasNext" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a next page exists.
      	####
      	def get_HasNext()
      	  return @outputs["HasNext"]
      	end
      end

    end # class Accounts



    ##############################################################################
    #
    # Books
    #
    # Retrieves a list of books that a given user has liked.
    #
    ##############################################################################

    class Books < Choreography

      ####
      #  Create a new instance of the Books Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/Books")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return BooksInputSet
      ####
      def new_input_set()
        return BooksInputSet.new()
      end

      def make_result_set()
        return BooksResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = BooksResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Books
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class BooksInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile to retrieve books for. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
        # Set the value of the Since input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Since(value)
          set_input("Since", value)
        end
        #### 
        # Set the value of the Until input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Until(value)
          set_input("Until", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Books Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class BooksResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "HasPrevious" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a previous page exists.
      	####
      	def get_HasPrevious()
      	  return @outputs["HasPrevious"]
      	end
      	####
      	# Retrieve the value for the "HasNext" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a next page exists.
      	####
      	def get_HasNext()
      	  return @outputs["HasNext"]
      	end
      end

    end # class Books



    ##############################################################################
    #
    # Checkins
    #
    # Retrieves a list of checkins associated with a specified user.
    #
    ##############################################################################

    class Checkins < Choreography

      ####
      #  Create a new instance of the Checkins Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/Checkins")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CheckinsInputSet
      ####
      def new_input_set()
        return CheckinsInputSet.new()
      end

      def make_result_set()
        return CheckinsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CheckinsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Checkins
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CheckinsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile to retrieve checkins for. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
        # Set the value of the Since input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Since(value)
          set_input("Since", value)
        end
        #### 
        # Set the value of the Until input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Until(value)
          set_input("Until", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Checkins Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CheckinsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "HasPrevious" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a previous page exists.
      	####
      	def get_HasPrevious()
      	  return @outputs["HasPrevious"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "HasNext" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a next page exists.
      	####
      	def get_HasNext()
      	  return @outputs["HasNext"]
      	end
      end

    end # class Checkins



    ##############################################################################
    #
    # Comments
    #
    # Retrieves comments for a specified Graph API object.
    #
    ##############################################################################

    class Comments < Choreography

      ####
      #  Create a new instance of the Comments Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/Comments")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CommentsInputSet
      ####
      def new_input_set()
        return CommentsInputSet.new()
      end

      def make_result_set()
        return CommentsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CommentsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Comments
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CommentsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Filter input for this Choreo. 
        # 
        # @param String - (optional, string) Filters comments. Use "toplevel" to return comments on a post, but not replies to comments. Use "stream" to return comments and replies.
        ###

        def set_Filter(value)
          set_input("Filter", value)
        end
        #### 
        # Set the value of the Limt input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
        ###

        def set_Limt(value)
          set_input("Limt", value)
        end
        #### 
        # Set the value of the ObjectID input for this Choreo. 
        # 
        # @param String - (required, string) The id of a graph api object to get comments for.
        ###

        def set_ObjectID(value)
          set_input("ObjectID", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
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
        # Set the value of the Since input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Since(value)
          set_input("Since", value)
        end
        #### 
        # Set the value of the Until input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Until(value)
          set_input("Until", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Comments Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CommentsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "HasPrevious" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a previous page exists.
      	####
      	def get_HasPrevious()
      	  return @outputs["HasPrevious"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "HasNext" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a next page exists.
      	####
      	def get_HasNext()
      	  return @outputs["HasNext"]
      	end
      end

    end # class Comments



    ##############################################################################
    #
    # Events
    #
    # Retrieves a list of events associated with a specified user.
    #
    ##############################################################################

    class Events < Choreography

      ####
      #  Create a new instance of the Events Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/Events")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return EventsInputSet
      ####
      def new_input_set()
        return EventsInputSet.new()
      end

      def make_result_set()
        return EventsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = EventsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Events
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class EventsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile to retrieve events for. Defaults to "me" indicating authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
        # Set the value of the Since input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Since(value)
          set_input("Since", value)
        end
        #### 
        # Set the value of the Until input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Until(value)
          set_input("Until", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Events Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class EventsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "HasPrevious" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a previous page exists.
      	####
      	def get_HasPrevious()
      	  return @outputs["HasPrevious"]
      	end
      	####
      	# Retrieve the value for the "HasNext" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a next page exists.
      	####
      	def get_HasNext()
      	  return @outputs["HasNext"]
      	end
      end

    end # class Events



    ##############################################################################
    #
    # FriendRequests
    #
    # Retrieves a list of friend requests for a specified user.
    #
    ##############################################################################

    class FriendRequests < Choreography

      ####
      #  Create a new instance of the FriendRequests Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/FriendRequests")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FriendRequestsInputSet
      ####
      def new_input_set()
        return FriendRequestsInputSet.new()
      end

      def make_result_set()
        return FriendRequestsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = FriendRequestsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FriendRequests
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FriendRequestsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Limt input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
        ###

        def set_Limt(value)
          set_input("Limt", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile to retrieve friend requests for. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
        # Set the value of the Since input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Since(value)
          set_input("Since", value)
        end
        #### 
        # Set the value of the Until input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Until(value)
          set_input("Until", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FriendRequests Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FriendRequestsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FriendRequests



    ##############################################################################
    #
    # Friends
    #
    # Retrieves a list of names and profile IDs for Facebook friends associated with a specified user.
    #
    ##############################################################################

    class Friends < Choreography

      ####
      #  Create a new instance of the Friends Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/Friends")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FriendsInputSet
      ####
      def new_input_set()
        return FriendsInputSet.new()
      end

      def make_result_set()
        return FriendsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = FriendsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Friends
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FriendsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final OAuth step.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile to retrieve a friends list for. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
        # Set the value of the Since input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Since(value)
          set_input("Since", value)
        end
        #### 
        # Set the value of the Until input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Until(value)
          set_input("Until", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Friends Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FriendsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "HasPrevious" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a previous page exists.
      	####
      	def get_HasPrevious()
      	  return @outputs["HasPrevious"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "HasNext" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a next page exists.
      	####
      	def get_HasNext()
      	  return @outputs["HasNext"]
      	end
      end

    end # class Friends



    ##############################################################################
    #
    # GetLatestMention
    #
    # Retrieves the latest status update in a user's feed that mentions the specified user.
    #
    ##############################################################################

    class GetLatestMention < Choreography

      ####
      #  Create a new instance of the GetLatestMention Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/GetLatestMention")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetLatestMentionInputSet
      ####
      def new_input_set()
        return GetLatestMentionInputSet.new()
      end

      def make_result_set()
        return GetLatestMentionResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetLatestMentionResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLatestMention
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetLatestMentionInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (required, string) The name of the user who is mentioned.
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the ResponseMode input for this Choreo. 
        # 
        # @param String - (optional, string) Used to simplify the response. Valid values are: simple and verbose. When set to simple, only the message string is returned. Verbose mode returns additional metadata. Defaults to "simple".
        ###

        def set_ResponseMode(value)
          set_input("ResponseMode", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLatestMention Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetLatestMentionResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetLatestMention



    ##############################################################################
    #
    # GetObject
    #
    # Retrieves retrieves the details for a Graph API object that you specify.
    #
    ##############################################################################

    class GetObject < Choreography

      ####
      #  Create a new instance of the GetObject Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/GetObject")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetObjectInputSet
      ####
      def new_input_set()
        return GetObjectInputSet.new()
      end

      def make_result_set()
        return GetObjectResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetObjectResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetObject
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetObjectInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the ObjectID input for this Choreo. 
        # 
        # @param String - (required, string) The id of a graph api object to retrieve.
        ###

        def set_ObjectID(value)
          set_input("ObjectID", value)
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
      # A ResultSet with methods tailored to the values returned by the GetObject Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetObjectResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Facebook.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetObject



    ##############################################################################
    #
    # GetUnreadMessages
    #
    # Retrieves a list of messages in the authenticating user's inbox that are marked as unread.
    #
    ##############################################################################

    class GetUnreadMessages < Choreography

      ####
      #  Create a new instance of the GetUnreadMessages Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/GetUnreadMessages")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetUnreadMessagesInputSet
      ####
      def new_input_set()
        return GetUnreadMessagesInputSet.new()
      end

      def make_result_set()
        return GetUnreadMessagesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetUnreadMessagesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetUnreadMessages
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetUnreadMessagesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ResponseMode input for this Choreo. 
        # 
        # @param String - (optional, string) Used to simplify the response. Valid values are: simple and verbose. When set to simple, only an array of messages are returned. Verbose mode returns additional metadata. Defaults to "simple".
        ###

        def set_ResponseMode(value)
          set_input("ResponseMode", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetUnreadMessages Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetUnreadMessagesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Facebook.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetUnreadMessages



    ##############################################################################
    #
    # GetUnreadMessagesFromUser
    #
    # Retrieves a list of messages in the authenticating user's inbox that are marked as unread and sent from a specified user.
    #
    ##############################################################################

    class GetUnreadMessagesFromUser < Choreography

      ####
      #  Create a new instance of the GetUnreadMessagesFromUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/GetUnreadMessagesFromUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetUnreadMessagesFromUserInputSet
      ####
      def new_input_set()
        return GetUnreadMessagesFromUserInputSet.new()
      end

      def make_result_set()
        return GetUnreadMessagesFromUserResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetUnreadMessagesFromUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetUnreadMessagesFromUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetUnreadMessagesFromUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (required, string) The name of the user who may have sent messages that you want to retrieve. The parameter is used in a 'contains' query, so a partial name is acceptable for searches.
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the ResponseMode input for this Choreo. 
        # 
        # @param String - (optional, string) Used to simplify the response. Valid values are: simple and verbose. When set to simple, only an array of messages are returned. Verbose mode returns additional metadata. Defaults to "simple".
        ###

        def set_ResponseMode(value)
          set_input("ResponseMode", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetUnreadMessagesFromUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetUnreadMessagesFromUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Facebook.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetUnreadMessagesFromUser



    ##############################################################################
    #
    # Groups
    #
    # Retrieves a list of groups associated with a specified user.
    #
    ##############################################################################

    class Groups < Choreography

      ####
      #  Create a new instance of the Groups Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/Groups")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GroupsInputSet
      ####
      def new_input_set()
        return GroupsInputSet.new()
      end

      def make_result_set()
        return GroupsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GroupsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Groups
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GroupsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile to retrieve groups for. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
        # Set the value of the Since input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Since(value)
          set_input("Since", value)
        end
        #### 
        # Set the value of the Until input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Until(value)
          set_input("Until", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Groups Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GroupsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "HasNext" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a next page exists.
      	####
      	def get_HasNext()
      	  return @outputs["HasNext"]
      	end
      	####
      	# Retrieve the value for the "HasPrevious" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a previous page exists.
      	####
      	def get_HasPrevious()
      	  return @outputs["HasPrevious"]
      	end
      end

    end # class Groups



    ##############################################################################
    #
    # Inbox
    #
    # Retrieves a list of messages in a specified user's inbox.
    #
    ##############################################################################

    class Inbox < Choreography

      ####
      #  Create a new instance of the Inbox Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/Inbox")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return InboxInputSet
      ####
      def new_input_set()
        return InboxInputSet.new()
      end

      def make_result_set()
        return InboxResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = InboxResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Inbox
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class InboxInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile to retrieve messages for. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
      # A ResultSet with methods tailored to the values returned by the Inbox Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class InboxResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Inbox



    ##############################################################################
    #
    # Likes
    #
    # Retrieves the Likes for a specified user.
    #
    ##############################################################################

    class Likes < Choreography

      ####
      #  Create a new instance of the Likes Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/Likes")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LikesInputSet
      ####
      def new_input_set()
        return LikesInputSet.new()
      end

      def make_result_set()
        return LikesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = LikesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Likes
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LikesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile to retrieve likes for. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
        # Set the value of the Since input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Since(value)
          set_input("Since", value)
        end
        #### 
        # Set the value of the Until input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Until(value)
          set_input("Until", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Likes Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LikesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "HasNext" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a next page exists.
      	####
      	def get_HasNext()
      	  return @outputs["HasNext"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "HasPrevious" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a previous page exists.
      	####
      	def get_HasPrevious()
      	  return @outputs["HasPrevious"]
      	end
      end

    end # class Likes



    ##############################################################################
    #
    # Movies
    #
    # Retrieves movies associated with a specified user.
    #
    ##############################################################################

    class Movies < Choreography

      ####
      #  Create a new instance of the Movies Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/Movies")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return MoviesInputSet
      ####
      def new_input_set()
        return MoviesInputSet.new()
      end

      def make_result_set()
        return MoviesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = MoviesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Movies
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class MoviesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile to retrieve movies for. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
        # Set the value of the Since input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Since(value)
          set_input("Since", value)
        end
        #### 
        # Set the value of the Until input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Until(value)
          set_input("Until", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Movies Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class MoviesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "HasPrevious" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a previous page exists.
      	####
      	def get_HasPrevious()
      	  return @outputs["HasPrevious"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "HasNext" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a next page exists.
      	####
      	def get_HasNext()
      	  return @outputs["HasNext"]
      	end
      end

    end # class Movies



    ##############################################################################
    #
    # Music
    #
    # Retrieves music associated with a specified user.
    #
    ##############################################################################

    class Music < Choreography

      ####
      #  Create a new instance of the Music Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/Music")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return MusicInputSet
      ####
      def new_input_set()
        return MusicInputSet.new()
      end

      def make_result_set()
        return MusicResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = MusicResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Music
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class MusicInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile to retireve music for. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
        # Set the value of the Since input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Since(value)
          set_input("Since", value)
        end
        #### 
        # Set the value of the Until input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Until(value)
          set_input("Until", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Music Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class MusicResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "HasNext" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a next page exists.
      	####
      	def get_HasNext()
      	  return @outputs["HasNext"]
      	end
      	####
      	# Retrieve the value for the "HasPrevious" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a previous page exists.
      	####
      	def get_HasPrevious()
      	  return @outputs["HasPrevious"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Music



    ##############################################################################
    #
    # NewsFeed
    #
    # Retrieves the current news feed associated with a specified user.
    #
    ##############################################################################

    class NewsFeed < Choreography

      ####
      #  Create a new instance of the NewsFeed Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/NewsFeed")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return NewsFeedInputSet
      ####
      def new_input_set()
        return NewsFeedInputSet.new()
      end

      def make_result_set()
        return NewsFeedResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = NewsFeedResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the NewsFeed
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class NewsFeedInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile to retrieve a feed for. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
        # Set the value of the Since input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Since(value)
          set_input("Since", value)
        end
        #### 
        # Set the value of the Until input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Until(value)
          set_input("Until", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the NewsFeed Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class NewsFeedResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "HasPrevious" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a previous page exists.
      	####
      	def get_HasPrevious()
      	  return @outputs["HasPrevious"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "HasNext" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a next page exists.
      	####
      	def get_HasNext()
      	  return @outputs["HasNext"]
      	end
      end

    end # class NewsFeed



    ##############################################################################
    #
    # Notes
    #
    # Retrieves notes associated with a specified user.
    #
    ##############################################################################

    class Notes < Choreography

      ####
      #  Create a new instance of the Notes Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/Notes")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return NotesInputSet
      ####
      def new_input_set()
        return NotesInputSet.new()
      end

      def make_result_set()
        return NotesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = NotesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Notes
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class NotesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile to retrieve notes for. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
        # Set the value of the Since input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Since(value)
          set_input("Since", value)
        end
        #### 
        # Set the value of the Until input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Until(value)
          set_input("Until", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Notes Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class NotesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "HasNext" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a next page exists.
      	####
      	def get_HasNext()
      	  return @outputs["HasNext"]
      	end
      	####
      	# Retrieve the value for the "HasPrevious" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a previous page exists.
      	####
      	def get_HasPrevious()
      	  return @outputs["HasPrevious"]
      	end
      end

    end # class Notes



    ##############################################################################
    #
    # ObjectsWithLocation
    #
    # Retrieves a list of objects that have a location associated with them.
    #
    ##############################################################################

    class ObjectsWithLocation < Choreography

      ####
      #  Create a new instance of the ObjectsWithLocation Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/ObjectsWithLocation")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ObjectsWithLocationInputSet
      ####
      def new_input_set()
        return ObjectsWithLocationInputSet.new()
      end

      def make_result_set()
        return ObjectsWithLocationResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ObjectsWithLocationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ObjectsWithLocation
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ObjectsWithLocationInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile to retrieve results for. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
        # Set the value of the Since input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Since(value)
          set_input("Since", value)
        end
        #### 
        # Set the value of the Until input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Until(value)
          set_input("Until", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ObjectsWithLocation Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ObjectsWithLocationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "HasPrevious" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a previous page exists.
      	####
      	def get_HasPrevious()
      	  return @outputs["HasPrevious"]
      	end
      	####
      	# Retrieve the value for the "HasNext" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a next page exists.
      	####
      	def get_HasNext()
      	  return @outputs["HasNext"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ObjectsWithLocation



    ##############################################################################
    #
    # Outbox
    #
    # Retrieves a list of messages in a specified user's outbox.
    #
    ##############################################################################

    class Outbox < Choreography

      ####
      #  Create a new instance of the Outbox Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/Outbox")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return OutboxInputSet
      ####
      def new_input_set()
        return OutboxInputSet.new()
      end

      def make_result_set()
        return OutboxResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = OutboxResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Outbox
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class OutboxInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile to retrieve outgoing messages for. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
      # A ResultSet with methods tailored to the values returned by the Outbox Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class OutboxResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Outbox



    ##############################################################################
    #
    # Permissions
    #
    # Retrieves the set of permissions associated with a given access token.
    #
    ##############################################################################

    class Permissions < Choreography

      ####
      #  Create a new instance of the Permissions Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/Permissions")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PermissionsInputSet
      ####
      def new_input_set()
        return PermissionsInputSet.new()
      end

      def make_result_set()
        return PermissionsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = PermissionsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Permissions
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PermissionsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile to access. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
      # A ResultSet with methods tailored to the values returned by the Permissions Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PermissionsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Permissions



    ##############################################################################
    #
    # PhotoAlbums
    #
    # Retrieves a list of photo albums associated with a specified user.
    #
    ##############################################################################

    class PhotoAlbums < Choreography

      ####
      #  Create a new instance of the PhotoAlbums Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/PhotoAlbums")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PhotoAlbumsInputSet
      ####
      def new_input_set()
        return PhotoAlbumsInputSet.new()
      end

      def make_result_set()
        return PhotoAlbumsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = PhotoAlbumsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the PhotoAlbums
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PhotoAlbumsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile to retrieve photo albums for. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
        # Set the value of the Since input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Since(value)
          set_input("Since", value)
        end
        #### 
        # Set the value of the Until input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Until(value)
          set_input("Until", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the PhotoAlbums Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PhotoAlbumsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "HasNext" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a next page exists.
      	####
      	def get_HasNext()
      	  return @outputs["HasNext"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "HasPrevious" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a previous page exists.
      	####
      	def get_HasPrevious()
      	  return @outputs["HasPrevious"]
      	end
      end

    end # class PhotoAlbums



    ##############################################################################
    #
    # PhotoTags
    #
    # Retrieves a list of photos associated with a specified user.
    #
    ##############################################################################

    class PhotoTags < Choreography

      ####
      #  Create a new instance of the PhotoTags Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/PhotoTags")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PhotoTagsInputSet
      ####
      def new_input_set()
        return PhotoTagsInputSet.new()
      end

      def make_result_set()
        return PhotoTagsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = PhotoTagsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the PhotoTags
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PhotoTagsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile to retrieve photo tags for. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
        # Set the value of the Since input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Since(value)
          set_input("Since", value)
        end
        #### 
        # Set the value of the Until input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Until(value)
          set_input("Until", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the PhotoTags Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PhotoTagsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "HasPrevious" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a previous page exists.
      	####
      	def get_HasPrevious()
      	  return @outputs["HasPrevious"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "HasNext" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a next page exists.
      	####
      	def get_HasNext()
      	  return @outputs["HasNext"]
      	end
      end

    end # class PhotoTags



    ##############################################################################
    #
    # Picture
    #
    # Retrieves the current profile photo for any object in the Facebook graph, and returns the image as a Base64 encoded string.
    #
    ##############################################################################

    class Picture < Choreography

      ####
      #  Create a new instance of the Picture Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/Picture")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PictureInputSet
      ####
      def new_input_set()
        return PictureInputSet.new()
      end

      def make_result_set()
        return PictureResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = PictureResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Picture
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PictureInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the profile to retrieve a profile picture for. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
        end
        #### 
        # Set the value of the ReturnSSLResources input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to return the picture over a secure connection. Defaults to 0.
        ###

        def set_ReturnSSLResources(value)
          set_input("ReturnSSLResources", value)
        end
        #### 
        # Set the value of the Type input for this Choreo. 
        # 
        # @param String - (optional, string) The size of the image to retrieve. Valid values: square (50x50), small (50 pixels wide, variable height), normal (100 pixels wide, variable height), and large (about 200 pixels wide, variable height)
        ###

        def set_Type(value)
          set_input("Type", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Picture Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PictureResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (string) Contains the Base64 encoded value of the image retrieved from Facebook.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Picture



    ##############################################################################
    #
    # ProfileFeed
    #
    # Retrieves the feed from a specified user's Wall.
    #
    ##############################################################################

    class ProfileFeed < Choreography

      ####
      #  Create a new instance of the ProfileFeed Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/ProfileFeed")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ProfileFeedInputSet
      ####
      def new_input_set()
        return ProfileFeedInputSet.new()
      end

      def make_result_set()
        return ProfileFeedResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ProfileFeedResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ProfileFeed
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ProfileFeedInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile to retrieve a feed for. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
        # Set the value of the Since input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Since(value)
          set_input("Since", value)
        end
        #### 
        # Set the value of the Until input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Until(value)
          set_input("Until", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ProfileFeed Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ProfileFeedResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "HasNext" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a next page exists.
      	####
      	def get_HasNext()
      	  return @outputs["HasNext"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "HasPrevious" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a previous page exists.
      	####
      	def get_HasPrevious()
      	  return @outputs["HasPrevious"]
      	end
      end

    end # class ProfileFeed



    ##############################################################################
    #
    # Statuses
    #
    # Retrieves a list of  statuses for a specified user.
    #
    ##############################################################################

    class Statuses < Choreography

      ####
      #  Create a new instance of the Statuses Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/Statuses")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return StatusesInputSet
      ####
      def new_input_set()
        return StatusesInputSet.new()
      end

      def make_result_set()
        return StatusesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = StatusesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Statuses
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class StatusesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final OAuth step.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile to retrieve a list of statuses for. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Since input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Since(value)
          set_input("Since", value)
        end
        #### 
        # Set the value of the Until input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Until(value)
          set_input("Until", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Statuses Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class StatusesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "HasNext" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a next page exists.
      	####
      	def get_HasNext()
      	  return @outputs["HasNext"]
      	end
      	####
      	# Retrieve the value for the "HasPrevious" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a previous page exists.
      	####
      	def get_HasPrevious()
      	  return @outputs["HasPrevious"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Statuses



    ##############################################################################
    #
    # User
    #
    # Retrieves information about the specified user.
    #
    ##############################################################################

    class User < Choreography

      ####
      #  Create a new instance of the User Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/User")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UserInputSet
      ####
      def new_input_set()
        return UserInputSet.new()
      end

      def make_result_set()
        return UserResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the User
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UserInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
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
      # A ResultSet with methods tailored to the values returned by the User Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class User




    module Util



      ##############################################################################
      #
      # InboxFilterHelper
      #
      # 
      #
      ##############################################################################

      class InboxFilterHelper < Choreography

        ####
        #  Create a new instance of the InboxFilterHelper Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/Facebook/Reading/Util/InboxFilterHelper")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return InboxFilterHelperInputSet
        ####
        def new_input_set()
          return InboxFilterHelperInputSet.new()
        end

        def make_result_set()
          return InboxFilterHelperResultSet.new()
        end

        ####
        # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
        # and return a ResultSet containing the execution results.
        # @param choreoInputs
        # @return
        # @throws TembooException
        ####
        def execute(input_set = nil)
          resp = super(input_set)
          results = InboxFilterHelperResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the InboxFilterHelper
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class InboxFilterHelperInputSet < Choreography::InputSet

          #### 
          # Set the value of the XML input for this Choreo. 
          # 
          # @param String - (conditional, any) 
          ###

          def set_XML(value)
            set_input("XML", value)
          end
          #### 
          # Set the value of the FilterByUser input for this Choreo. 
          # 
          # @param Boolean - (conditional, boolean) 
          ###

          def set_FilterByUser(value)
            set_input("FilterByUser", value)
          end
          #### 
          # Set the value of the Name input for this Choreo. 
          # 
          # @param String - (conditional, any) 
          ###

          def set_Name(value)
            set_input("Name", value)
          end
          #### 
          # Set the value of the ResponseMode input for this Choreo. 
          # 
          # @param String - (optional, string) 
          ###

          def set_ResponseMode(value)
            set_input("ResponseMode", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the InboxFilterHelper Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class InboxFilterHelperResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (json) 
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class InboxFilterHelper




    end # module Util
    ##############################################################################
    #
    # VideoTags
    #
    # Retrieves a list of video tags associated with a specified user.
    #
    ##############################################################################

    class VideoTags < Choreography

      ####
      #  Create a new instance of the VideoTags Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/VideoTags")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return VideoTagsInputSet
      ####
      def new_input_set()
        return VideoTagsInputSet.new()
      end

      def make_result_set()
        return VideoTagsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = VideoTagsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the VideoTags
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class VideoTagsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile to retrieve video tags for. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
        # Set the value of the Since input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Since(value)
          set_input("Since", value)
        end
        #### 
        # Set the value of the Until input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Until(value)
          set_input("Until", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the VideoTags Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class VideoTagsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "HasPrevious" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a previous page exists.
      	####
      	def get_HasPrevious()
      	  return @outputs["HasPrevious"]
      	end
      	####
      	# Retrieve the value for the "HasNext" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a next page exists.
      	####
      	def get_HasNext()
      	  return @outputs["HasNext"]
      	end
      end

    end # class VideoTags



    ##############################################################################
    #
    # VideoUploads
    #
    # Retrieves a list of uploaded videos associated with a specified user.
    #
    ##############################################################################

    class VideoUploads < Choreography

      ####
      #  Create a new instance of the VideoUploads Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Reading/VideoUploads")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return VideoUploadsInputSet
      ####
      def new_input_set()
        return VideoUploadsInputSet.new()
      end

      def make_result_set()
        return VideoUploadsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = VideoUploadsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the VideoUploads
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class VideoUploadsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ProfileID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of the profile to retrieve a list of video uploads for. Defaults to "me" indicating the authenticated user.
        ###

        def set_ProfileID(value)
          set_input("ProfileID", value)
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
        # Set the value of the Since input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Since(value)
          set_input("Since", value)
        end
        #### 
        # Set the value of the Until input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Until(value)
          set_input("Until", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the VideoUploads Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class VideoUploadsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "HasPrevious" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a previous page exists.
      	####
      	def get_HasPrevious()
      	  return @outputs["HasPrevious"]
      	end
      	####
      	# Retrieve the value for the "HasNext" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a next page exists.
      	####
      	def get_HasNext()
      	  return @outputs["HasNext"]
      	end
      end

    end # class VideoUploads




  end # module Reading

  module Searching



    ##############################################################################
    #
    # FQL
    #
    # Allows you to use a SQL-style syntax to query data in the Graph API.
    #
    ##############################################################################

    class FQL < Choreography

      ####
      #  Create a new instance of the FQL Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Searching/FQL")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FQLInputSet
      ####
      def new_input_set()
        return FQLInputSet.new()
      end

      def make_result_set()
        return FQLResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = FQLResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FQL
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FQLInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Conditions input for this Choreo. 
        # 
        # @param String - (required, string) The conditions to use in the WHERE clause of the FQL statement.
        ###

        def set_Conditions(value)
          set_input("Conditions", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (required, string) The fields to return in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
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
        # Set the value of the Table input for this Choreo. 
        # 
        # @param String - (required, string) The table to select records from.
        ###

        def set_Table(value)
          set_input("Table", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FQL Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FQLResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FQL



    ##############################################################################
    #
    # MultiQuery
    #
    # Allows you to submit multiple FQL statements and retrieve all the results you need in one request.
    #
    ##############################################################################

    class MultiQuery < Choreography

      ####
      #  Create a new instance of the MultiQuery Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Searching/MultiQuery")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return MultiQueryInputSet
      ####
      def new_input_set()
        return MultiQueryInputSet.new()
      end

      def make_result_set()
        return MultiQueryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = MultiQueryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the MultiQuery
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class MultiQueryInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The access token retrieved from the final step of the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Queries input for this Choreo. 
        # 
        # @param String - (required, json) A JSON dictionary containing multiple queries to execute. See documentation for formatting examples.
        ###

        def set_Queries(value)
          set_input("Queries", value)
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
      # A ResultSet with methods tailored to the values returned by the MultiQuery Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class MultiQueryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class MultiQuery



    ##############################################################################
    #
    # Search
    #
    # Search public objects across the social graph.
    #
    ##############################################################################

    class Search < Choreography

      ####
      #  Create a new instance of the Search Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Facebook/Searching/Search")
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
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (conditional, string) The access token retrieved from the final step of the OAuth process. This is required for certain object types such as "user".
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Center input for this Choreo. 
        # 
        # @param String - (conditional, string) The coordinates for a place (such as 37.76,122.427). Used only when specifying an object type of "place".
        ###

        def set_Center(value)
          set_input("Center", value)
        end
        #### 
        # Set the value of the Distance input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The distance search parameter used only when specifying an object type of "place". Defaults to 1000.
        ###

        def set_Distance(value)
          set_input("Distance", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) A comma separated list of fields to return (i.e. id,name).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Limits the number of records returned in the response.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the ObjectType input for this Choreo. 
        # 
        # @param String - (required, string) The type of object to search for such as: post, user, page, event, group, place, location, or checkin.
        ###

        def set_ObjectType(value)
          set_input("ObjectType", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results. Returns results starting from the specified number.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (conditional, string) The Facebook query term to send in the request.
        ###

        def set_Query(value)
          set_input("Query", value)
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
        # Set the value of the Since input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Since(value)
          set_input("Since", value)
        end
        #### 
        # Set the value of the Until input for this Choreo. 
        # 
        # @param String - (optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
        ###

        def set_Until(value)
          set_input("Until", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Search Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "HasNext" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a next page exists.
      	####
      	def get_HasNext()
      	  return @outputs["HasNext"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "HasPrevious" output from this Choreo execution
      	#
      	# @return String - (boolean) A boolean flag indicating that a previous page exists.
      	####
      	def get_HasPrevious()
      	  return @outputs["HasPrevious"]
      	end
      end

    end # class Search




  end # module Searching

end # module Facebook