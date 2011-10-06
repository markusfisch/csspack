#!/usr/bin/env php
<?php

echo
	// remove unnecessary blanks
	preg_replace
	(
		'![ ]+\{!',
		'{',
		preg_replace
		(
			'!([:\(\{,;])[ ]+!',
			'\1',
			preg_replace
			(
				'![ ]+([\)\}])!',
				'\1',
				// condense blanks
				preg_replace
				(
					'![\t ]+!',
					' ',
					// remove newlines and white space at the beginning
					// and at the end of lines
					preg_replace
					(
						'![\t ]*[\r\n]+[\t ]*!m',
						'',
						// remove comments
						preg_replace
						(
							'!/\*[^*]*\*+([^/][^*]*\*+)*/!',
							'',
							file_get_contents( "php://stdin" )
						)
					)
				)
			)
		)
	) . "\n";
