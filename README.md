Hääletamis süsteem devclub.ee
=======
Installige git ja composer. Peale checkout'i, käivitage `composer update` selleks et allalaadida kõik seosed. Muutke SiteConfig.php ja lisagi liigipääs mysql andmebaasini. Nüüd sinna tuleb lisada tabelid mis on kirjeldatud siin failis vendor/Gratheon/Devclub/Docs/schema.sql

Lisage ka vendor/Gratheon/Devclub/assets/ kausta veel kaustad kirjutamis õigustega : css_cache, js_cache ja view_cache. Siia genereeritakse dünaamiline pakkitud kood