package common;
use base 'Exporter';
our @EXPORT = qw{json_handler shards_header};
use JSON;

sub json_handler {

      my $headers   = shift;
      my $body      = shift;

      my $shards    =  decode_json($body)->{_shards};

      return $headers."total: $shards->{total}\nfailed: $shards->{failed}\nsuccessful: $shards->{successful}";

}

sub shards_header {
  [
    'regexp: total:\s+\d+',
    'regexp: failed:\s+\d+',
    'regexp: successful:\s+\d+'
  ]
}

1;

