<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{title|lower}</title>
</head>
<body>
    <!-- <h1>{body|upper|limit_chars(5)}<h1> -->
    <h1>{body|upper|}</h1>
    <h2>{date|date(Y-m-d)}</h2>
    <h2>{date|date_modify(+5days)|date(l dS F Y)}</h2>
    <h2>{price|local_currency(INR)}</h2>
    <h2>Custom Filter {mob|hideNumbers}</h2>
</body>
</html>