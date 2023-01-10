  score += 100;
  
  instance_destroy();

with(other){
	instance_destroy();
	
	if(sprite_index == Large_Asteroid){
		repeat(2){
			var new_asteroid = instance_create_layer(x,y, "Instances", Object_Asteroid);
			new_asteroid.sprite_index = Medium_Asteroid;
		} 
	} else if (sprite_index == Medium_Asteroid){
		repeat(2){
			var new_asteroid = instance_create_layer(x,y, "Instances", Object_Asteroid);
			new_asteroid.sprite_index = Small_Asteroid;
		}
	}

	repeat(10){
		instance_create_layer(x,y, "Instances",Object_Debris);
	}

}