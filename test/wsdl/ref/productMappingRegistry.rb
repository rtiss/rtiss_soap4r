require 'product.rb'
require 'soap/mapping'

module WSDL; module Ref

module ProductMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsRef = "urn:ref"

  EncodedRegistry.register(
    :class => WSDL::Ref::Product,
    :schema_type => XSD::QName.new(NsRef, "Product"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["rating", ["SOAP::SOAPString", XSD::QName.new(NsRef, "Rating")]]
    ]
  )

  EncodedRegistry.register(
    :class => WSDL::Ref::Comment,
    :schema_type => XSD::QName.new(NsRef, "Comment"),
    :schema_attribute => {
      XSD::QName.new(nil, "msgid") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => WSDL::Ref::C__point,
    :schema_type => XSD::QName.new(NsRef, "_point"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => WSDL::Ref::Document,
    :schema_type => XSD::QName.new(NsRef, "Document"),
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => WSDL::Ref::DerivedChoice_BaseSimpleContent,
    :schema_type => XSD::QName.new(NsRef, "DerivedChoice_BaseSimpleContent"),
    :schema_basetype => XSD::QName.new(NsRef, "Document"),
    :schema_element => [ :choice,
      ["varStringExt", ["SOAP::SOAPString", XSD::QName.new(nil, "varStringExt")]],
      ["varFloatExt", ["SOAP::SOAPFloat", XSD::QName.new(nil, "varFloatExt")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPString",
      XSD::QName.new(nil, "attrStringExt") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => WSDL::Ref::Product,
    :schema_type => XSD::QName.new(NsRef, "Product"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["rating", ["SOAP::SOAPString", XSD::QName.new(NsRef, "Rating")]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::Ref::Comment,
    :schema_type => XSD::QName.new(NsRef, "Comment"),
    :schema_attribute => {
      XSD::QName.new(nil, "msgid") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => WSDL::Ref::C__point,
    :schema_type => XSD::QName.new(NsRef, "_point"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => WSDL::Ref::Document,
    :schema_type => XSD::QName.new(NsRef, "Document"),
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => WSDL::Ref::DerivedChoice_BaseSimpleContent,
    :schema_type => XSD::QName.new(NsRef, "DerivedChoice_BaseSimpleContent"),
    :schema_basetype => XSD::QName.new(NsRef, "Document"),
    :schema_element => [ :choice,
      ["varStringExt", ["SOAP::SOAPString", XSD::QName.new(nil, "varStringExt")]],
      ["varFloatExt", ["SOAP::SOAPFloat", XSD::QName.new(nil, "varFloatExt")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ID") => "SOAP::SOAPString",
      XSD::QName.new(nil, "attrStringExt") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => WSDL::Ref::Rating,
    :schema_name => XSD::QName.new(NsRef, "Rating")
  )

  LiteralRegistry.register(
    :class => WSDL::Ref::ProductBag,
    :schema_name => XSD::QName.new(NsRef, "Product-Bag"),
    :schema_element => [
      ["bag", ["WSDL::Ref::Product[]", XSD::QName.new(nil, "bag")], [0, nil]],
      ["rating", ["SOAP::SOAPString[]", XSD::QName.new(NsRef, "Rating")], [0, nil]],
      ["comment_1", ["WSDL::Ref::ProductBag::Comment_1[]", XSD::QName.new(nil, "Comment_1")], [0, nil]],
      ["comment_2", ["WSDL::Ref::Comment[]", XSD::QName.new(nil, "comment-2")], [0, nil]],
      ["v___point", ["WSDL::Ref::C__point", XSD::QName.new(nil, "__point")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(NsRef, "version") => "SOAP::SOAPString",
      XSD::QName.new(NsRef, "yesno") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => WSDL::Ref::ProductBag::Comment_1,
    :schema_name => XSD::QName.new(nil, "Comment_1"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_attribute => {
      XSD::QName.new(nil, "msgid") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => WSDL::Ref::Creator,
    :schema_name => XSD::QName.new(NsRef, "Creator"),
    :schema_attribute => {
      XSD::QName.new(nil, "Role") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => WSDL::Ref::Yesno,
    :schema_name => XSD::QName.new(NsRef, "yesno")
  )
end

end; end
