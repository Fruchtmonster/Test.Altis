/*
      File: fn_richtax.sqf
      Description:
      tax for player with higher then 10kk money
*/

[] spawn
{
while {true} do
{
sleep (10 * 60);
waitUntil {life_atmcash > 1000000};
life_atmcash = life_atmcash -10000;
systemChat "Reichensteuer wurde von deinem Konto abgebucht";
};
};
