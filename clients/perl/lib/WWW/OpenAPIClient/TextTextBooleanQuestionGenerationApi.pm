=begin comment

FastAPI

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::TextTextBooleanQuestionGenerationApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::OpenAPIClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::OpenAPIClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::OpenAPIClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# apply_text_text_boolean_question_generation_post
#
# Apply model for the boolean-question-generation task for a given models
# 
# @param string $text  (optional, default to 'I lSachin Ramesh Tendulkar is a former international cricketer from India and a former captain of the Indian national team. He is widely regarded as one of the greatest batsmen in the history of cricket. He is the highest run scorer of all time in International cricket.')
# @param string $model  (optional, default to 'questgen')
{
    my $params = {
    'text' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'model' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'apply_text_text_boolean_question_generation_post' } = { 
        summary => 'Apply model for the boolean-question-generation task for a given models',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub apply_text_text_boolean_question_generation_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/text/text/boolean-question-generation/';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'text'}) {
        $query_params->{'text'} = $self->{api_client}->to_query_value($args{'text'});
    }

    # query params
    if ( exists $args{'model'}) {
        $query_params->{'model'} = $self->{api_client}->to_query_value($args{'model'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('object', $response);
    return $_response_object;
}

#
# get_versions_text_text_boolean_question_generation_get
#
# Get list of models available for boolean-question-generation
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_versions_text_text_boolean_question_generation_get' } = { 
        summary => 'Get list of models available for boolean-question-generation',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub get_versions_text_text_boolean_question_generation_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/text/text/boolean-question-generation/';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('object', $response);
    return $_response_object;
}

1;
