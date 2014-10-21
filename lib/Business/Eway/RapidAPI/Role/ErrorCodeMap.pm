package Business::Eway::RapidAPI::Role::ErrorCodeMap;
{
    $Business::Eway::RapidAPI::Role::ErrorCodeMap::VERSION = '0.01';
}

use Moo::Role;

my %codemap = (
    'F7000' => "Undefined Fraud",
    'V5000' => "Undefined System",
    'A0000' => "Undefined Approved",
    'A2000' => "Transaction Approved",
    'A2008' => "Honour With Identification",
    'A2010' => "Approved For Partial Amount",
    'A2011' => "Approved VIP",
    'A2016' => "Approved Update Track 3",
    'V6000' => "Validation error",
    'V6001' => "Invalid CustomerIP",
    'V6002' => "Invalid DeviceID",
    'V6011' => "Invalid Payment TotalAmount",
    'V6012' => "Invalid Payment InvoiceDescription",
    'V6013' => "Invalid Payment InvoiceNumber",
    'V6014' => "Invalid Payment InvoiceReference",
    'V6015' => "Invalid Payment CurrencyCode",
    'V6016' => "Payment Required",
    'V6017' => "Payment CurrencyCode Required",
    'V6018' => "Unknown Payment CurrencyCode",
    'V6021' => "EWAY_CARDHOLDERNAME Required",
    'V6022' => "EWAY_CARDNUMBER Required",
    'V6023' => "EWAY_CARDCVN Required",
    'V6031' => "Invalid Card Number",
    'V6032' => "Invalid CVN",
    'V6033' => "Invalid Expiry Date",
    'V6034' => "Invalid Issue Number",
    'V6035' => "Invalid Valid From Date",
    'V6036' => "Invalid Month",
    'V6037' => "Invalid Year",
    'V6040' => "Invaild TokenCustomerID",
    'V6041' => "Customer Required",
    'V6042' => "Customer FirstName Required",
    'V6043' => "Customer LastName Required",
    'V6044' => "Customer Country Code Required",
    'V6045' => "Customer Title Required",
    'V6046' => "TokenCustomerID Required",
    'V6047' => "RedirectURL Required",
    'V6051' => "Invalid Customer FirstName",
    'V6052' => "Invalid Customer LastName",
    'V6053' => "Invalid Customer CountryCode",
    'V6054' => "Invalid Customer Email",
    'V6055' => "Invalid Customer Phone",
    'V6056' => "Invalid Customer Mobile",
    'V6057' => "Invalid Customer Fax",
    'V6058' => "Invalid Customer Title",
    'V6059' => "Invalid RedirectURL",
    'V6060' => "Invalid TokenCustometID",
    'V6061' => "Invaild Customer Reference",
    'V6062' => "Invaild Customer CompanyName",
    'V6063' => "Invaild Customer JobDescription",
    'V6064' => "Invaild Customer Street1",
    'V6065' => "Invaild Customer Street2",
    'V6066' => "Invaild Customer City",
    'V6067' => "Invaild Customer State",
    'V6068' => "Invaild Customer Postalcode",
    'V6069' => "Invaild Customer Email",
    'V6070' => "Invaild Customer Phone",
    'V6071' => "Invaild Customer Mobile",
    'V6072' => "Invaild Customer Comments",
    'V6073' => "Invaild Customer Fax",
    'V6074' => "Invaild Customer Url",
    'V6075' => "Invaild ShippingAddress FirstName",
    'V6076' => "Invaild ShippingAddress LastName",
    'V6077' => "Invaild ShippingAddress Street1",
    'V6078' => "Invaild ShippingAddress Street2",
    'V6079' => "Invaild ShippingAddress City",
    'V6080' => "Invaild ShippingAddress State",
    'V6081' => "Invaild ShippingAddress PostalCode",
    'V6082' => "Invaild ShippingAddress Email",
    'V6083' => "Invaild ShippingAddress Phone",
    'V6084' => "Invaild ShippingAddress Country",
    'V6091' => "Unknown Customer CountryCode",
    'V6100' => "Invalid EWAY_CARDNAME",
    'V6101' => "Invalid EWAY_CARDEXPIRYMONTH",
    'V6102' => "Invalid EWAY_CARDEXPIRYYEAR",
    'V6103' => "Invalid EWAY_CARDSTARTMONTH",
    'V6104' => "Invalid EWAY_CARDSTARTYEAR",
    'V6105' => "Invalid EWAY_CARDISSUENUMBER",
    'V6106' => "Invalid EWAY_CARDCVN",
    'V6107' => "Invalid EWAY_ACCESSCODE",
    'V6108' => "Invalid CustomerHostAddress",
    'V6109' => "Invalid UserAgent",
    'V6110' => "Invalid EWAY_CARDNUMBER",
    'D4401' => "Refer to Issuer",
    'D4402' => "Refer to Issuer, special",
    'D4403' => "No Merchant",
    'D4404' => "Pick Up Card",
    'D4405' => "Do Not Honour",
    'D4406' => "Error",
    'D4407' => "Pick Up Card, Special",
    'D4409' => "Request In Progress",
    'D4412' => "Invalid Transaction",
    'D4413' => "Invalid Amount",
    'D4414' => "Invalid Card Number",
    'D4415' => "No Issuer",
    'D4419' => "Re-enter Last Transaction",
    'D4421' => "No Method Taken",
    'D4422' => "Suspected Malsub",
    'D4423' => "Unacceptable Transaction Fee",
    'D4425' => "Unable to Locate Record On File",
    'D4430' => "Format Error",
    'D4431' => "Bank Not Supported By Switch",
    'D4433' => "Expired Card, Capture",
    'D4434' => "Suspected Fraud, Retain Card",
    'D4435' => "Card Acceptor, Contact Acquirer, Retain Card",
    'D4436' => "Restricted Card, Retain Card",
    'D4437' => "Contact Acquirer Security Department, Retain Card",
    'D4438' => "PIN Tries Exceeded, Capture",
    'D4439' => "No Credit Account",
    'D4440' => "sub Not Supported",
    'D4441' => "Lost Card",
    'D4442' => "No Universal Account",
    'D4443' => "Stolen Card",
    'D4444' => "No Investment Account",
    'D4451' => "Insufficient Funds",
    'D4452' => "No Cheque Account",
    'D4453' => "No Savings Account",
    'D4454' => "Expired Card",
    'D4455' => "Incorrect PIN",
    'D4456' => "No Card Record",
    'D4457' => "sub Not Permitted to Cardholder",
    'D4458' => "sub Not Permitted to Terminal",
    'D4459' => "Suspected Fraud",
    'D4460' => "Acceptor Contact Acquirer",
    'D4461' => "Exceeds Withdrawal Limit",
    'D4462' => "Restricted Card",
    'D4463' => "Security Violation",
    'D4464' => "Original Amount Incorrect",
    'D4466' => "Acceptor Contact Acquirer, Security",
    'D4467' => "Capture Card",
    'D4475' => "PIN Tries Exceeded",
    'D4482' => "CVV Validation Error",
    'D4490' => "Cutoff In Progress",
    'D4491' => "Card Issuer Unavailable",
    'D4492' => "Unable To Route Transaction",
    'D4493' => "Cannot Complete, Violation Of The Law",
    'D4494' => "Duplicate Transaction",
    'D4496' => "System Error"
);

sub errorToString {
    my $self = shift;
    my $code = shift;
    if ( exists $codemap{$code} ) {
        return $codemap{$code};
    }
    else {
        return "Unknown error code: $code";
    }
}

sub ErrorsToString {
    my ( $self, $result_Errors ) = @_;
    ## Get Error Messages from Error Code. Error Code Mappings are in the ErrorCodeMap
    my $lblError = "";
    my @ErrorArray = split( /\,\s*/, $result_Errors );
    foreach my $error (@ErrorArray) {
        $lblError .= $error . " " . $self->errorToString($error) . "<br />";
    }
    return $lblError;
}

1;

__END__

=pod

=head1 NAME

Business::Eway::RapidAPI::Role::ErrorCodeMap

=head1 VERSION

version 0.01

=head1 AUTHOR

Fayland Lam <fayland@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Fayland Lam.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
