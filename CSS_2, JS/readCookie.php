﻿<!DOCTYPE html>
    <html>
    <head>
        <meta charset = "utf-8">
    </head>
    <body>
    <?php
        foreach($_COOKIE as $key => $value)
            print("<p>$key: $value</p>");
    ?>
    </body>
    </html>