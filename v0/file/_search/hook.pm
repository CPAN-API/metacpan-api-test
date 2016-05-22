use JSON;

set_response_processor( sub {

      my $headers   = shift;
      my $body      = shift;

      my $flds  =  join "\n", sort keys %{decode_json($body)};

      return $headers."$flds";

} );
