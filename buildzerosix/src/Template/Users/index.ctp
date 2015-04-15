<!-- File: src/Template/Users/index.ctp -->

<h1>Admin Panel: Manage Users</h1>
<?= $this->Html->link('Add User', ['action' => 'add']) ?>
<table>
    <tr>
        <th>Username</th>
        <th>Role</th>
        <th>Created</th>
        <th>Modified</th>
        <th>Action</th>
    </tr>

    <!-- Here is where we iterate through our $articles query object, printing out article info -->

    <?php foreach ($users as $user): ?>
        <tr>
            <td>
                <?= $user->username ?>
            </td>
            <td>
                <?= $user->role ?>
            </td>
            <td>
                <?= $user->created//->format(DATE_RFC850) ?>
            </td>
            <td>
                <?= $user->modified//->format(DATE_RFC850) ?>
            </td>
            <td>
                <?= $this->Form->postLink(
                    'Delete',
                    ['action' => 'delete', $user->id],
                    ['confirm' => 'Are you sure you want to delete this user?'])
                ?>
                <?= $this->Html->link('Edit', ['action' => 'edit', $user->id]) ?>
                <!-- <//?= $this->Html->link('View', ['action' => 'view', $user->id]) ?> -->
            </td>
        </tr>
    <?php endforeach; ?>
</table>


