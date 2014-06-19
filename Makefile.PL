#!/usr/bin/env perl

use strict;
use warnings;

use ExtUtils::MakeMaker qw( WriteMakefile );

WriteMakefile(
   NAME           => 'Template::Plugin::Filter::JSON',
   AUTHOR         => 'Eric Brine <ikegami@adaelis.com>',
   VERSION_FROM   => 'lib/Template/Plugin/Filter/JSON.pm',
   ABSTRACT_FROM  => 'lib/Template/Plugin/Filter/JSON.pm',
   dist           => { COMPRESS => 'gzip -9f', SUFFIX => 'gz' },
   clean          => { FILES => 'Template-Plugin-JSON-*' },
   BUILD_REQUIRES => {},

   META_MERGE  => {
      'meta-spec' => { version => 2 },

      license => [ 'unrestricted' ],

      prereqs => {
         configure => {
            requires => {
               'ExtUtils::MakeMaker' => 6.52,
            }
         },
         runtime => {
            requires => {
               'JSON'                => 0,
               'strict'              => 0,
               'Template::Plugin'    => 0,
               'version',            => 0,
               'warnings',           => 0,
            },
            recommends => {
               'JSON::XS'            => 0,
            },
         },
         test => {
            requires => {
               'Test::More'          => 0,
            },
            recommends => {
               'Test::Pod'           => 1.22,
            },
         },
         develop => {
            requires => {
               'FindBin'             => 0,
               'Pod::Coverage'       => 0.18,
               'Test::Pod::Coverage' => 1.08,
            },
         },
      },

      resources => {
         homepage => 'http://search.cpan.org/dist/Template-Plugin-JSON/',
         license => [ 'http://creativecommons.org/publicdomain/zero/1.0/' ],
         bugtracker => {
            web    => 'http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Template-Plugin-JSON',
            mailto => 'bug-Template-Plugin-JSON@rt.cpan.org',
         },
         repository => {
            type => 'git',
            url => 'https://github.com/ikegami/perl-Template-Plugin-JSON.git',
            web => 'https://github.com/ikegami/perl-Template-Plugin-JSON',
         },
      },
   },
);
