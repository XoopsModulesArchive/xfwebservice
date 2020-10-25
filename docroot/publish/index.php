<?php
/**
 * $Id: index.php,v 1.3 2004/02/26 20:23:20 danreese Exp $
 * (c) 2004 Novell, Inc.
 *
 * Handles publish commands.
 */
require dirname(__DIR__) . '/common.php';

$command = $_REQUEST['c'];
execute_command($command);
