<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{title}</title>
</head>
<body>
    <h1>{body}<h1>
    {subject_list}
    <h1>{sub}</h1>
    <p>{description}</p>
    {/subject_list}
    {if $status}
    <h1>Status</h1>
    {endif}
</body>
</html>