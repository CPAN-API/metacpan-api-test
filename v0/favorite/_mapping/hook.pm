use JSON;

set_response_processor( sub {

      my $headers   = shift;
      my $body      = shift;

      my $properties  =  join "\n", sort keys %{decode_json($body)->{favorite}->{properties}};

      return $headers."$properties";

} );
