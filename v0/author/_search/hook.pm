use JSON;

set_response_processor( sub {

      my $headers   = shift;
      my $body      = shift;

      my $hits  =  join "\n", sort keys %{decode_json($body)->{hits}};

      return $headers."$hits";

} );
