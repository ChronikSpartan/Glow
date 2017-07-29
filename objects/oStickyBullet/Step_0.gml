if (bossImpact)
{
	if(instance_exists(oBoss1))
	{
		x = x + (oBoss1.xprevious - oBoss1.x);
		y = y + (oBoss1.yprevious - oBoss1.y);
	}
	else instance_create_layer(x + 0, y + 0, "Instances", oExplode);
}