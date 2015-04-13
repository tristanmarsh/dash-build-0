<!-- File: src/Template/Articles/edit.ctp -->

<h1>Add Article</h1>
<?php

    echo $this->Form->create($lion);
    echo $this->Form->input('title');
    echo $this->Form->input('description', ['rows' => '3']);
    echo $this->Form->button(__('Update Maintenance'));
    echo $this->Form->end();
?>