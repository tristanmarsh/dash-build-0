<?php
/**
 * UserRegistrationValidator
 *
 * @author Florian Krämer
 * @copyright 2013 - 2014 Florian Krämer
 * @license MIT
 */
namespace Burzum\UserTools\Validation;

use Cake\Validation\Validator;

class UsersValidator extends Validator {

/**
 * Validates the username field.
 *
 * Override it as needed to change the rules for only that field.
 *
 * @return void
 */
	public function validateUserName() {
		$this->add('username', [
			'notEmpty' => [
				'rule' => 'notEmpty',
				'message' => __d('user_tools', 'An username is required.')
			],
			'length' => [
				'rule' => ['lengthBetween', 3, 32],
				'message' => __d('user_tools', 'The username must be between 3 and 32 characters.')
			],
			'unique' => [
				'rule' => ['validateUnique', ['scope' => 'username']],
				'provider' => 'table',
				'message' => __d('user_tools', 'The username is already in use.')
			],
			'alphaNumeric' => [
				'rule' => 'alphaNumeric',
				'message' => __d('user_tools', 'The username must be alpha numeric.')
			]
		]);
	}

}
