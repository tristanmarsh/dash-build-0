<!-- src/Template/Users/add.ctp -->

<div class="users form">
    <?= $this->Form->create($user) ?>
    <fieldset>
        <legend><?= __('Registration') ?></legend>
        <?= $this->Form->input('username') ?>
        <?= $this->Form->input('password') ?>
        <?= $this->Form->input('role', [
            'options' => ['author' => 'Tenant']
        ]) ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')); ?>
    <?= $this->Form->end() ?>
    <p><strong>Developer Notes:</strong> New registers can have the same username as others, need to fix</p>
</div>

