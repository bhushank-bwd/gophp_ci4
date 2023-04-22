
<?php $this->extend('layouts/base'); ?>
<?php $this->section('title'); ?><?= $page_title ?><?php $this->endSection('title'); ?>
<?php $this->section('content'); ?>
<h1>This is <?= $page_header ?></h1>
<?= $this->include('partials/feature.php') ?>
<?php $this->endSection('content'); ?>