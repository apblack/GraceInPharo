I represent a request with a  reeiver of "outer", "outer.outer", etc.; the number of outers is the size of the collection outerDotTokens.

I'm created by the parser for requests with some number of explicit "outers";  I'm created by the disambiguation visitor when an implicit request is disambiguated and ascertained to be an outer request.