-- Register realm 2 with the authserver.
-- id must match RealmID in realm 2's worldserver.conf; port must match WorldServerPort.
-- Change the name and the public address before running.
INSERT INTO acore_auth.realmlist (id, name, address, localAddress, localSubnetMask, port)
VALUES (2, 'My Second Realm', 'YOUR.PUBLIC.IP.OR.HOSTNAME', '127.0.0.1', '255.255.255.0', 8086);
