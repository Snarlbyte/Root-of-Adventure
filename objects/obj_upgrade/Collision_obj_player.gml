//upgrade menu placeholder
instance_deactivate_all(true);
instance_create_layer(x,y,"Overlay",obj_upmenu);
self.instance_destroy();
