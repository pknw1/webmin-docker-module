#!/usr/bin/perl
#	my $version = `docker --version`;
#	my $status = `service docker status | grep  Active`;

	#printf "$version";
	#printf "$status";

sub get_docker_version{
	$version = `docker --version`;
	return $version;
}

sub get_docker_status{
	$status = `service docker status | grep Active`;
	return $status;
}

sub get_active{
	@active = `docker ps --format '{{.Names}}'`;
	return @active;
}

sub get_container_details_status{
	my $name = $ARGV[0];
	my $details = `docker ps -f name="$name" --format '{{.Status}}'`;
	return $details;
}

#my $info = `docker ps -f name=xrdp --format '{{.Status}}'`;
#printf "$info";
#print $ARGV[0];
