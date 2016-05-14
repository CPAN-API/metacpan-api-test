use common;

set_response_processor( sub { json_handler(@_) } );
