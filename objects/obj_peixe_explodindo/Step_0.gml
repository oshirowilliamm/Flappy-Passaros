//aumentando 
image_xscale -= .1;
image_yscale = -image_xscale;

//deixando transparente
image_alpha -= .1;

//se mexendo
hspeed = -1;
vspeed = -2;

//se destruindo
if (image_alpha <= 0)
{
    instance_destroy();
}