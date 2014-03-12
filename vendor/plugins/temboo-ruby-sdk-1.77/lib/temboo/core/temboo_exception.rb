# Blanket error for Temboo-related problems.
class TembooError < StandardError
end

# Error related to interactions with Arcturus.
class TembooHTTPError < TembooError
end

# Errors related to user credentials.
class TembooCredentialError < TembooHTTPError
end

# Errors related to problems accessing resources.
class TembooObjectNotAccessibleError < TembooHTTPError
end