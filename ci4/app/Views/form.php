<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?= isset($validation) ? $validation->listErrors() : "" ?>
    <?= form_open('http://localhost:8080/validator'); ?>
    <table>
        <tr>
            <td>username</td>
            <td>
                <input type="text" name="username" value='<?= set_value('username') ?>'>
                <small><?= isset($validation) && $validation->hasError('username') ? $validation->getError('username'):"" ?></small>
            </td>
        </tr>
        <tr>
            <td>phone</td>
            <td>
                <input type="text" name="phone" length='10'>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <input type="text" name="email">
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <input type="password" name="password">
                <small><?= isset($validation) && $validation->hasError('password') ? $validation->getError('password'):"" ?></small>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="submit" value="Save">
            </td>
        </tr>

    </table>
    <?= form_close(); ?>
</body>

</html>