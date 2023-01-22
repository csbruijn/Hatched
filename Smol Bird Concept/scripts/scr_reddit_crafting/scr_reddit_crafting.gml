//www.reddit.com/r/gamemaker/comments/7ji5jd/help_checking_if_multiple_instances_of_the_same/

// Store map of  how many of each object is under the cursor
/*
{
objectsAround = ds_map_create();  


with all {  // Cycle through all objects
	if instance_position(other.x, other.y, self) {
		if ds_map_exists(other.objectsAround, object_index) {
			other.objectsAround[? object_index] += 1;
		} else {
			other.objectsAround[? object_index] = 1;
		}
	}
}

// Put code in here to cycle through all the crafting recipes to see if you can make anything based on the values of the ds_map

ds_map_destroy(objects_under_cursor);  // Garbage collection
}

// Build the recipe for this object (2D array; 1st index - object type; 2nd index - object quantity)
var recipe_array;

recipe_array[0, 0] = object_1
recipe_array[0, 1] = 3
recipe_array[1, 0] = object_2
recipe_array[1, 1] = 1
recipe_array[2, 0] = object_3
recipe_array[2, 1] = 5

if scr_can_craft(recipe) {
	// Create and destroy the appropriate objects here
}

recipe_array = 0;  // Garbage collection (clears the array)


{
scr_can_craft()

/// scr_can_craft(recipe_array)

var recipe, can_craft;

recipe = argument0;

can_craft = true;

for (var i=0; array_height_2d(recipe); i++) {
	var this_object_type = recipe[i, 0];
	var this_quantity_needed = recipe[i, 1];
	
	with this_object_type {  // Cycle through all objects
		if instance_position(other.x, other.y, self) {
			other.this_quantity_needed -= 1;
			if other.this_quantity_needed == 0 {
				// Break out of the while loop once we've found
				// enough of this type of objects to craft this recipe.
				break;
				}
			}
		}
		
		if this_quantity_needed > 0 {  // If we didn't find enough of this object in order to craft this recipe
			can_craft = false;
		}
	}

recipe = 0;  // Garbage collection (clears the array)

return(can_craft)
}
