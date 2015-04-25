<?php
// src/Model/Table/UsersTable.php
namespace App\Model\Table;

use Cake\ORM\Table;
use Cake\Validation\Validator;
use Cake\ORM\RulesChecker;
use Cake\ORM\isUnique;

class UsersTable extends Table
{

    public function initialize(array $config)
    {
        $this->addBehavior('Timestamp');
    }
	
	public function buildRules(RulesChecker $rules)
	{
		$rules->add($rules->isUnique(['username'], 'This username is already registered'));
		return $rules;
	}

    public function validationDefault(Validator $validator)
    {
        return $validator
            ->notEmpty('username', 'A username is required')
            ->notEmpty('password', 'A password is required')
			->notEmpty('first_name', 'A name is required')
			->notEmpty('last_name', 'A surname is required')
			->notEmpty('gender', 'A surname is required')
            ->notEmpty('role', 'A role is required')
            ->add('role', 'inList', [
                'rule' => ['inList', ['admin', 'tenant']],
                'message' => 'Please enter a valid role'
            ]);
    }

}

?>