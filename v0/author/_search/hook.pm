use JSON;

set_response_processor( sub { 

      my $headers   = shift; 
      my $body      = shift; 

      return $headers."took: ".(decode_json($body)->{took});  
});
