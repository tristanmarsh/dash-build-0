<?php
namespace App\Test\TestCase\Controller;

use App\Controller\StudentsController;
use Cake\TestSuite\IntegrationTestCase;

/**
 * App\Controller\StudentsController Test Case
 */
class StudentsControllerTest extends IntegrationTestCase
{

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'Students' => 'app.students',
        'People' => 'app.people',
        'EmergencyStudent' => 'app.emergency_student',
        'Leases' => 'app.leases',
        'Rooms' => 'app.rooms',
        'Properties' => 'app.properties',
        'InternetConnection' => 'app.internet_connection',
        'Payments' => 'app.payments'
    ];

    /**
     * Test index method
     *
     * @return void
     */
    public function testIndex()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test view method
     *
     * @return void
     */
    public function testView()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test add method
     *
     * @return void
     */
    public function testAdd()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test edit method
     *
     * @return void
     */
    public function testEdit()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test delete method
     *
     * @return void
     */
    public function testDelete()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }
}
