<?php
declare(ticks=1);
function signal_handler($signo) {
     echo "\nCaught SIGALRM - Execution took more than 2 seconds!\n";
     debug_print_backtrace(DEBUG_BACKTRACE_IGNORE_ARGS);
     exit;
}
pcntl_signal(SIGALRM, "signal_handler");
pcntl_alarm(2); // trigger alarm in 2 seconds

require 'index.php';
