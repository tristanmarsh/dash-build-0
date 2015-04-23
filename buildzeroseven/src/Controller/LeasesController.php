<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Leases Controller
 *
 * @property \App\Model\Table\LeasesTable $Leases */
class LeasesController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Rooms', 'Students']
        ];
        $this->set('leases', $this->paginate($this->Leases));
        $this->set('_serialize', ['leases']);
    }

    /**
     * View method
     *
     * @param string|null $id Lease id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $lease = $this->Leases->get($id, [
            'contain' => ['Rooms', 'Students', 'InternetConnection', 'Payments']
        ]);
        $this->set('lease', $lease);
        $this->set('_serialize', ['lease']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $lease = $this->Leases->newEntity();
        if ($this->request->is('post')) {
            $lease = $this->Leases->patchEntity($lease, $this->request->data);
            if ($this->Leases->save($lease)) {
                $this->Flash->success('The lease has been saved.');
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error('The lease could not be saved. Please, try again.');
            }
        }
        $rooms = $this->Leases->Rooms->find('list', ['limit' => 200]);
        $students = $this->Leases->Students->find('list', ['limit' => 200, 'keyField' => 'id', 'valueField' => 'user.first_name'])->contain(['Users']);
        $this->set(compact('lease', 'rooms', 'students'));
        $this->set('_serialize', ['lease']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Lease id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $lease = $this->Leases->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $lease = $this->Leases->patchEntity($lease, $this->request->data);
            if ($this->Leases->save($lease)) {
                $this->Flash->success('The lease has been saved.');
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error('The lease could not be saved. Please, try again.');
            }
        }
        $rooms = $this->Leases->Rooms->find('list', ['limit' => 200]);
        $students = $this->Leases->Students->find('list', ['limit' => 200]);
        $this->set(compact('lease', 'rooms', 'students'));
        $this->set('_serialize', ['lease']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Lease id.
     * @return void Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $lease = $this->Leases->get($id);
        if ($this->Leases->delete($lease)) {
            $this->Flash->success('The lease has been deleted.');
        } else {
            $this->Flash->error('The lease could not be deleted. Please, try again.');
        }
        return $this->redirect(['action' => 'index']);
    }
}