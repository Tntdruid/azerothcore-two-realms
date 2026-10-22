-- Databases for realm 2. Run as a MySQL admin user.
-- Leave them empty: worldserver and mod-playerbots populate them on first start.
CREATE DATABASE acore_world2       DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE acore_characters2  DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE acore_playerbots2  DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Use the same host as your existing acore user (SELECT user, host FROM mysql.user;)
GRANT ALL PRIVILEGES ON acore_world2.*      TO 'acore'@'localhost';
GRANT ALL PRIVILEGES ON acore_characters2.* TO 'acore'@'localhost';
GRANT ALL PRIVILEGES ON acore_playerbots2.* TO 'acore'@'localhost';
FLUSH PRIVILEGES;
