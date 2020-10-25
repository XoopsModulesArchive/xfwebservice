<?php
/**
 * $Id: index.php,v 1.3 2004/02/12 20:06:38 danreese Exp $
 * (c) 2004 Novell, Inc.
 *
 * Handles help commands.
 */
require dirname(__DIR__) . '/common.php';

$command = $_GET['c'] ?? 'overview';
execute_command($command);
