if ($ENV{XTREEMFS_DIR_PORT} && $ENV{XTREEMFS_DIR_PORT} =~ /tcp:\/\/([^:]+):(\d+)/ ) {
	($host, $port) = ($1, $2);
	s/dir_service.host\s+.*?$/dir_service.host = $host/;
}
