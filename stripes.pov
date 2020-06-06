#version 3.7;
global_settings {  assumed_gamma 1.0 }
//---------------------------------------
camera{ 
        angle 40
        right x*image_width/image_height
        location  <0.0 , 0.0 ,-3.0 + 2 * clock>
        look_at   <0.0 , 0.0 , 0.0> }
//---------------------------------------
light_source{ <1500,2500,-2500>
              color rgb<1,1,1> }
global_settings { ambient_light rgb<1, 1, 1> }

#declare W = 0.01;

#for (Y, -1, 1, 2.0)
#for (X, -10.5, 10.5, 1.0)
cylinder { <X, Y, -9000>, <X, Y, 9000>, W
        texture { pigment{ rgb<1,1,1> } }
        finish { ambient 1 }
}
#end

#if (clock != 1.0)
  #for (Z, 0, 1000, 2.0)
  cylinder { <-9000, Y, Z>, <9000, Y, Z>, W
          texture { pigment{ rgb<1,1,1> } }
          finish { ambient 1 }
  }
  #end
#end
#end


  fog {
    distance 10
    color rgb<0, 0, 0>
  }
