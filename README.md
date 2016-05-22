# metacpan-api-test

Tests for the API

# INSTALL

    carton install

# RUN Test

    carton exec swat

# Show tested routes


    $ find v0/ -name *.txt -exec perl -MFile::Basename -e 'print "\n", dirname $ARGV[0]' {} \; | sort

    v0/author/_search
    v0/distribution/_search
    v0/favorite/_mapping
    v0/favorite/_search
    v0/file/_search
    v0/rating/_search
    v0/release/_search
    
# Author 

Alexey Melezhik 

# See also

[https://github.com/CPAN-API/cpan-api/blob/master/docs/API-docs.md](https://github.com/CPAN-API/cpan-api/blob/master/docs/API-docs.md)

