#pragma glslify: diffuse  = require(glsl-diffuse-oren-nayar)
#pragma glslify: specular = require(glsl-specular-cook-torrance)

float lightPower(
  vec3 lightDirection,
  vec3 viewDirection,
  vec3 surfaceNormal,
  float roughness,
  float albedo,
  float fresnel) {
  return  diffuse(lightDirection, viewDirection, surfaceNormal, roughness, albedo) +
          specular(lightDirection, viewDirection, surfaceNormal, roughness, fresnel);  
}

#pragma glslify: export(lightPower)