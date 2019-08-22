#!/usr/bin/perl
#

do '../web-lib.pl';
do './docker-init.pl';
require './docker-init.pl';

my $version = get_docker_version();
my $status = get_docker_status();
my @active = get_active();


&init_config("dockerinfo");

%access=&get_module_acl;


&header($text{'index_title'}, "", "intro", 1, 1, undef,"");


print "<hr>\n";
## Insert Output code here

printf "<b> Docker Version</b> : $version <br>";
printf "<b> Docker Status<b> : $status<br>";
printf "<br>";

printf "<table border=\"1\" width=\"100%\"><tr><td>1</td><td>2</td><td>3</td></tr><tr>";
foreach my $container (@active) {
	my $status = " ";
	my $status = get_container_details_status($container);

	printf "<td>$container </td>";
	printf "<td>$status</td>";
	printf "<td><button>STOP</button> <button>INSPECT</button></td></tr><tr>";
}
printf "</tr></table>";

my $info = get_container_details_status("xrdp");
printf "<br><br>$info<br>";

printf "<br>";

&footer("/", $text{'index'});
# uses the index entry in /lang/en



## if subroutines are not in an extra file put them here


### END of index.cgi ###.
