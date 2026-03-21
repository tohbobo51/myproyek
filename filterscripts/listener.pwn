#include <a_samp>
#include <KeyListener>

public void:OnPlayerKeyDown(player, key)
{
	CallRemoteFunction("OnPlayerKeyPress", "dd", player, key);
}
public void:OnPlayerKeyUp(player, key)
{
	CallRemoteFunction("OnPlayerKeyRelease", "dd", player, key);
}