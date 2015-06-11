package ONVIF::Media::Types::NetworkInterfaceLink;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %AdminSettings_of :ATTR(:get<AdminSettings>);
my %OperSettings_of :ATTR(:get<OperSettings>);
my %InterfaceType_of :ATTR(:get<InterfaceType>);

__PACKAGE__->_factory(
    [ qw(        AdminSettings
        OperSettings
        InterfaceType

    ) ],
    {
        'AdminSettings' => \%AdminSettings_of,
        'OperSettings' => \%OperSettings_of,
        'InterfaceType' => \%InterfaceType_of,
    },
    {
        'AdminSettings' => 'ONVIF::Media::Types::NetworkInterfaceConnectionSetting',
        'OperSettings' => 'ONVIF::Media::Types::NetworkInterfaceConnectionSetting',
        'InterfaceType' => 'ONVIF::Media::Types::IANA_IfTypes',
    },
    {

        'AdminSettings' => 'AdminSettings',
        'OperSettings' => 'OperSettings',
        'InterfaceType' => 'InterfaceType',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::NetworkInterfaceLink

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
NetworkInterfaceLink from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * AdminSettings


=item * OperSettings


=item * InterfaceType




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::NetworkInterfaceLink
   AdminSettings =>  { # ONVIF::Media::Types::NetworkInterfaceConnectionSetting
     AutoNegotiation =>  $some_value, # boolean
     Speed =>  $some_value, # int
     Duplex => $some_value, # Duplex
   },
   OperSettings =>  { # ONVIF::Media::Types::NetworkInterfaceConnectionSetting
     AutoNegotiation =>  $some_value, # boolean
     Speed =>  $some_value, # int
     Duplex => $some_value, # Duplex
   },
   InterfaceType => $some_value, # IANA-IfTypes
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
