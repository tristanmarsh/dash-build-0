<!-- File: src/Template/Articles/index.ctp -->

<h1>List of Maintenance Requests</h1>
<?= $this->Html->link('Add Maintenance Request', ['action' => 'add']) ?>
<table>
    <tr>
        <th>Title</th>
        <th>Created</th>
        <th>Action</th>
    </tr>

    <!-- Here is where we iterate through our $articles query object, printing out article info -->

    <?php foreach ($elephant as $article): ?>
    <tr>
        <td>
            <?= $this->Html->link($article->title, ['action' => 'view', $article->id]) ?>
        </td>
        <td>
            <?= $article->created->format(DATE_RFC850) ?>
        </td>
        <td>
            <?= $this->Form->postLink(
                'Delete',
                ['action' => 'delete', $article->id],
                ['confirm' => 'Are you sure?'])
            ?>
            <?= $this->Html->link('Edit', ['action' => 'edit', $article->id]) ?>
        </td>
    </tr>
    <?php endforeach; ?>
</table>
<p>Click here to <?= $this->Html->link('Log Out', ['controller' => 'users', 'action' => 'logout']) ?>!</p>
<p><br><br><br><br>Admin Area Only: <?= $this->Html->link('Manage Users', ['controller' => 'users', 'action' => 'index']) ?> <br><small>(Nothing will happen if you are not an admin)</small></p>