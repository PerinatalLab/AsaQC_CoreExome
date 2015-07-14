

Report on PCA of merged reference and sample data
========================================================

Report produced by J. Juodakis on **2015-06-09 12:23**

PCA eigenvectors obtained from file **/home/julius/Desktop/2015MAR/torin_new_plink/150609_87fb294/PCA/torin.eigenvec**

Sample data obtained from file **/home/julius/soft/ref1000G/ALL_1000G_phase1integrated_v3.sample**

------------------------------------------





## Significant outliers

For outlier detection, Euclidean distance of each sample from the EUR group center of mass is calculated. Distribution of this distance is presented in further below.  
An SD value was calculated after mirroring this distribution around x=0, and 5 x SD is used as a cutoff. Individuals whose distances exceed this cutoff are listed in the table below.  
SD of Euclidean distance: **0.007038**  
Cutoff: **0.0351901**  


|    |iid   |         p1|        p2|         p3|  euclmusu|
|:---|:-----|----------:|---------:|----------:|---------:|
|253 |148_1 | -0.0057714| 0.0112307| -0.0490284| 0.0626325|

![plot of chunk EuclData](figure/EuclData-1.png) 

------------
## Visualization of the results

The plots below present 2D projections of the points along the first 3 principal components.  
Colors reflect different groups or populations of the reference genome.

![plot of chunk flat_plots](figure/flat_plots-1.png) ![plot of chunk flat_plots](figure/flat_plots-2.png) ![plot of chunk flat_plots](figure/flat_plots-3.png) ![plot of chunk flat_plots](figure/flat_plots-4.png) 

The plots below show the projections of the points along the first 2 principal components. *Ellipses* show the region between 5-95 percentiles of the data, assuming t or normal distributions. *Circles* show the region of 5 SD of Euclidean distance (assuming mirrored distribution) or 5 times geometrical average of SD along each principal component.  
SD of Euclidean distance: **0.007038**  
Geometrical average of SD along each PC: **0.0070427**  

![plot of chunk ellipse_plots](figure/ellipse_plots-1.png) ![plot of chunk ellipse_plots](figure/ellipse_plots-2.png) ![plot of chunk ellipse_plots](figure/ellipse_plots-3.png) ![plot of chunk ellipse_plots](figure/ellipse_plots-4.png) 

The following images represent the positiong of data in 3D space formed by the first 3 principal components. *Sphere* covers the region of 3 SD of Euclidean distance (same as above). *Lines* are the actual Euclidean distance to the EUR group center of mass.  
To analyze the object in 3D, it is best to manually run the .Rmd file in R.



<script src="CanvasMatrix.js" type="text/javascript"></script>
<canvas id="plot_3d1textureCanvas" style="display: none;" width="256" height="256">
<img src="plot_3d1snapshot.png" alt="plot_3d1snapshot" width=505/><br>
Your browser does not support the HTML5 canvas element.</canvas>
<!-- ****** points object 7 ****** -->
<script id="plot_3d1vshader7" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
gl_PointSize = 3.;
vCol = aCol;
}
</script>
<script id="plot_3d1fshader7" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** text object 9 ****** -->
<script id="plot_3d1vshader9" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d1fshader9" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** text object 10 ****** -->
<script id="plot_3d1vshader10" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d1fshader10" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** text object 11 ****** -->
<script id="plot_3d1vshader11" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d1fshader11" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** lines object 14 ****** -->
<script id="plot_3d1vshader14" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d1fshader14" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 15 ****** -->
<script id="plot_3d1vshader15" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d1fshader15" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 16 ****** -->
<script id="plot_3d1vshader16" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d1fshader16" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 17 ****** -->
<script id="plot_3d1vshader17" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d1fshader17" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 18 ****** -->
<script id="plot_3d1vshader18" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d1fshader18" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 19 ****** -->
<script id="plot_3d1vshader19" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d1fshader19" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** spheres object 20 ****** -->
<script id="plot_3d1vshader20" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="plot_3d1fshader20" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 21 ****** -->
<script id="plot_3d1vshader21" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d1fshader21" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 22 ****** -->
<script id="plot_3d1vshader22" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d1fshader22" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** text object 23 ****** -->
<script id="plot_3d1vshader23" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d1fshader23" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** lines object 24 ****** -->
<script id="plot_3d1vshader24" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d1fshader24" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** text object 25 ****** -->
<script id="plot_3d1vshader25" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d1fshader25" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** lines object 26 ****** -->
<script id="plot_3d1vshader26" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d1fshader26" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** text object 27 ****** -->
<script id="plot_3d1vshader27" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d1fshader27" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** lines object 28 ****** -->
<script id="plot_3d1vshader28" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d1fshader28" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<script type="text/javascript">
var min = Math.min;
var max = Math.max;
var sqrt = Math.sqrt;
var sin = Math.sin;
var acos = Math.acos;
var tan = Math.tan;
var SQRT2 = Math.SQRT2;
var PI = Math.PI;
var log = Math.log;
var exp = Math.exp;
var rglClass = function() {
this.zoom = new Array();
this.FOV  = new Array();
this.userMatrix = new CanvasMatrix4();
this.viewport = new Array();
this.listeners = new Array();
this.clipplanes = new Array();
this.opaque = new Array();
this.transparent = new Array();
this.subscenes = new Array();
this.flags = new Array();
this.prog = new Array();
this.ofsLoc = new Array();
this.origLoc = new Array();
this.sizeLoc = new Array();
this.usermatLoc = new Array();
this.vClipplane = new Array();
this.texture = new Array();
this.texLoc = new Array();
this.sampler = new Array();
this.origsize = new Array();
this.values = new Array();
this.offsets = new Array();
this.normLoc = new Array();
this.clipLoc = new Array();
this.centers = new Array();
this.f = new Array();
this.buf = new Array();
this.ibuf = new Array();
this.mvMatLoc = new Array();
this.prMatLoc = new Array();
this.textScaleLoc = new Array();
this.normMatLoc = new Array();
this.IMVClip = new Array();
this.drawFns = new Array();
this.clipFns = new Array();
this.prMatrix = new CanvasMatrix4();
this.mvMatrix = new CanvasMatrix4();
this.vp = null;
this.prmvMatrix = null;
this.origs = null;
this.gl = null;
};
(function() {
this.getShader = function( gl, id ){
var shaderScript = document.getElementById ( id );
var str = "";
var k = shaderScript.firstChild;
while ( k ){
if ( k.nodeType == 3 ) str += k.textContent;
k = k.nextSibling;
}
var shader;
if ( shaderScript.type == "x-shader/x-fragment" )
shader = gl.createShader ( gl.FRAGMENT_SHADER );
else if ( shaderScript.type == "x-shader/x-vertex" )
shader = gl.createShader(gl.VERTEX_SHADER);
else return null;
gl.shaderSource(shader, str);
gl.compileShader(shader);
if (gl.getShaderParameter(shader, gl.COMPILE_STATUS) == 0)
alert(gl.getShaderInfoLog(shader));
return shader;
}
this.multMV = function(M, v) {
return [M.m11*v[0] + M.m12*v[1] + M.m13*v[2] + M.m14*v[3],
M.m21*v[0] + M.m22*v[1] + M.m23*v[2] + M.m24*v[3],
M.m31*v[0] + M.m32*v[1] + M.m33*v[2] + M.m34*v[3],
M.m41*v[0] + M.m42*v[1] + M.m43*v[2] + M.m44*v[3]];
}
this.f_is_lit = 1;
this.f_is_smooth = 2;
this.f_has_texture = 4;
this.f_is_indexed = 8;
this.f_depth_sort = 16;
this.f_fixed_quads = 32;
this.f_is_transparent = 64;
this.f_is_lines = 128;
this.f_sprites_3d = 256;
this.f_sprite_3d = 512;
this.f_is_subscene = 1024;
this.f_is_clipplanes = 2048;
this.f_reuse = 4096;
this.whichList = function(id) {
if (this.flags[id] & this.f_is_subscene)
return "subscenes";
else if (this.flags[id] & this.f_is_clipplanes)
return "clipplanes";
else if (this.flags[id] & this.f_is_transparent)
return "transparent";
else
return "opaque"; 
}
this.inSubscene = function(id, subscene) {
var thelist = this.whichList(id);
return this[thelist][subscene].indexOf(id) > -1;
}
this.addToSubscene = function(id, subscene) {
var thelist = this.whichList(id);
if (this[thelist][subscene].indexOf(id) == -1)
this[thelist][subscene].push(id);
}
this.delFromSubscene = function(id, subscene) {
var thelist = this.whichList(id);
var i = this[thelist][subscene].indexOf(id);
if (i > -1)
this[thelist][subscene].splice(i, 1);
}
this.setSubsceneEntries = function(ids, subscene) {
this.subscenes[subscene] = [];
this.clipplanes[subscene] = [];
this.transparent[subscene] = [];
this.opaque[subscene] = [];
for (var i = 0; i < ids.length; i++)
this.addToSubscene(ids[i], subscene);
}
this.getSubsceneEntries = function(subscene) {
return(this.subscenes[subscene].concat(this.clipplanes[subscene]).
concat(this.transparent[subscene]).concat(this.opaque[subscene]));
}
}).call(rglClass.prototype);
var plot_3d1rgl = new rglClass();
plot_3d1rgl.start = function() {
var debug = function(msg) {
document.getElementById("plot_3d1debug").innerHTML = msg;
}
debug("");
var canvas = document.getElementById("plot_3d1canvas");
if (!window.WebGLRenderingContext){
debug("<img src=\"plot_3d1snapshot.png\" alt=\"plot_3d1snapshot\" width=505/><br> Your browser does not support WebGL. See <a href=\"http://get.webgl.org\">http://get.webgl.org</a>");
return;
}
try {
// Try to grab the standard context. If it fails, fallback to experimental.
this.gl = canvas.getContext("webgl") 
|| canvas.getContext("experimental-webgl");
}
catch(e) {}
if ( !this.gl ) {
debug("<img src=\"plot_3d1snapshot.png\" alt=\"plot_3d1snapshot\" width=505/><br> Your browser appears to support WebGL, but did not create a WebGL context.  See <a href=\"http://get.webgl.org\">http://get.webgl.org</a>");
return;
}
var gl = this.gl;
var width = 505;  var height = 505;
canvas.width = width;   canvas.height = height;
var normMatrix = new CanvasMatrix4();
var saveMat = new Object();
var distance;
var posLoc = 0;
var colLoc = 1;
var activeSubscene = 1;
this.flags[1] = 1275;
this.zoom[1] = 1;
this.FOV[1] = 60;
this.viewport[1] = [0, 0, 504, 504];
this.userMatrix[1] = new CanvasMatrix4();
this.userMatrix[1].load([
1, 0, 0, 0,
0, 0.7071068, -0.7071068, 0,
0, 0.7071068, 0.7071068, 0,
0, 0, 0, 1
]);
this.clipplanes[1] = [];
this.opaque[1] = [7,9,10,11,14,15,16,17,18,19,21,22,23,24,25,26,27,28];
this.transparent[1] = [20];
this.subscenes[1] = [];
function getPowerOfTwo(value) {
var pow = 1;
while(pow<value) {
pow *= 2;
}
return pow;
}
function handleLoadedTexture(texture, textureCanvas) {
gl.pixelStorei(gl.UNPACK_FLIP_Y_WEBGL, true);
gl.bindTexture(gl.TEXTURE_2D, texture);
gl.texImage2D(gl.TEXTURE_2D, 0, gl.RGBA, gl.RGBA, gl.UNSIGNED_BYTE, textureCanvas);
gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MAG_FILTER, gl.LINEAR);
gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MIN_FILTER, gl.LINEAR_MIPMAP_NEAREST);
gl.generateMipmap(gl.TEXTURE_2D);
gl.bindTexture(gl.TEXTURE_2D, null);
}
function loadImageToTexture(filename, texture) {   
var canvas = document.getElementById("plot_3d1textureCanvas");
var ctx = canvas.getContext("2d");
var image = new Image();
image.onload = function() {
var w = image.width;
var h = image.height;
var canvasX = getPowerOfTwo(w);
var canvasY = getPowerOfTwo(h);
canvas.width = canvasX;
canvas.height = canvasY;
ctx.imageSmoothingEnabled = true;
ctx.drawImage(image, 0, 0, canvasX, canvasY);
handleLoadedTexture(texture, canvas);
plot_3d1rgl.drawScene();
}
image.src = filename;
}  	   
function drawTextToCanvas(text, cex) {
var canvasX, canvasY;
var textX, textY;
var textHeight = 20 * cex;
var textColour = "white";
var fontFamily = "Arial";
var backgroundColour = "rgba(0,0,0,0)";
var canvas = document.getElementById("plot_3d1textureCanvas");
var ctx = canvas.getContext("2d");
ctx.font = textHeight+"px "+fontFamily;
canvasX = 1;
var widths = [];
for (var i = 0; i < text.length; i++)  {
widths[i] = ctx.measureText(text[i]).width;
canvasX = (widths[i] > canvasX) ? widths[i] : canvasX;
}	  
canvasX = getPowerOfTwo(canvasX);
var offset = 2*textHeight; // offset to first baseline
var skip = 2*textHeight;   // skip between baselines	  
canvasY = getPowerOfTwo(offset + text.length*skip);
canvas.width = canvasX;
canvas.height = canvasY;
ctx.fillStyle = backgroundColour;
ctx.fillRect(0, 0, ctx.canvas.width, ctx.canvas.height);
ctx.fillStyle = textColour;
ctx.textAlign = "left";
ctx.textBaseline = "alphabetic";
ctx.font = textHeight+"px "+fontFamily;
for(var i = 0; i < text.length; i++) {
textY = i*skip + offset;
ctx.fillText(text[i], 0,  textY);
}
return {canvasX:canvasX, canvasY:canvasY,
widths:widths, textHeight:textHeight,
offset:offset, skip:skip};
}
// ****** sphere object ******
this.sphereverts = new Float32Array([
-1, 0, 0,
1, 0, 0,
0, -1, 0,
0, 1, 0,
0, 0, -1,
0, 0, 1,
-0.7071068, 0, -0.7071068,
-0.7071068, -0.7071068, 0,
0, -0.7071068, -0.7071068,
-0.7071068, 0, 0.7071068,
0, -0.7071068, 0.7071068,
-0.7071068, 0.7071068, 0,
0, 0.7071068, -0.7071068,
0, 0.7071068, 0.7071068,
0.7071068, -0.7071068, 0,
0.7071068, 0, -0.7071068,
0.7071068, 0, 0.7071068,
0.7071068, 0.7071068, 0,
-0.9349975, 0, -0.3546542,
-0.9349975, -0.3546542, 0,
-0.77044, -0.4507894, -0.4507894,
0, -0.3546542, -0.9349975,
-0.3546542, 0, -0.9349975,
-0.4507894, -0.4507894, -0.77044,
-0.3546542, -0.9349975, 0,
0, -0.9349975, -0.3546542,
-0.4507894, -0.77044, -0.4507894,
-0.9349975, 0, 0.3546542,
-0.77044, -0.4507894, 0.4507894,
0, -0.9349975, 0.3546542,
-0.4507894, -0.77044, 0.4507894,
-0.3546542, 0, 0.9349975,
0, -0.3546542, 0.9349975,
-0.4507894, -0.4507894, 0.77044,
-0.9349975, 0.3546542, 0,
-0.77044, 0.4507894, -0.4507894,
0, 0.9349975, -0.3546542,
-0.3546542, 0.9349975, 0,
-0.4507894, 0.77044, -0.4507894,
0, 0.3546542, -0.9349975,
-0.4507894, 0.4507894, -0.77044,
-0.77044, 0.4507894, 0.4507894,
0, 0.3546542, 0.9349975,
-0.4507894, 0.4507894, 0.77044,
0, 0.9349975, 0.3546542,
-0.4507894, 0.77044, 0.4507894,
0.9349975, -0.3546542, 0,
0.9349975, 0, -0.3546542,
0.77044, -0.4507894, -0.4507894,
0.3546542, -0.9349975, 0,
0.4507894, -0.77044, -0.4507894,
0.3546542, 0, -0.9349975,
0.4507894, -0.4507894, -0.77044,
0.9349975, 0, 0.3546542,
0.77044, -0.4507894, 0.4507894,
0.3546542, 0, 0.9349975,
0.4507894, -0.4507894, 0.77044,
0.4507894, -0.77044, 0.4507894,
0.9349975, 0.3546542, 0,
0.77044, 0.4507894, -0.4507894,
0.4507894, 0.4507894, -0.77044,
0.3546542, 0.9349975, 0,
0.4507894, 0.77044, -0.4507894,
0.77044, 0.4507894, 0.4507894,
0.4507894, 0.77044, 0.4507894,
0.4507894, 0.4507894, 0.77044
]);
this.spherefaces=new Uint16Array([
0, 18, 19,
6, 20, 18,
7, 19, 20,
19, 18, 20,
4, 21, 22,
8, 23, 21,
6, 22, 23,
22, 21, 23,
2, 24, 25,
7, 26, 24,
8, 25, 26,
25, 24, 26,
7, 20, 26,
6, 23, 20,
8, 26, 23,
26, 20, 23,
0, 19, 27,
7, 28, 19,
9, 27, 28,
27, 19, 28,
2, 29, 24,
10, 30, 29,
7, 24, 30,
24, 29, 30,
5, 31, 32,
9, 33, 31,
10, 32, 33,
32, 31, 33,
9, 28, 33,
7, 30, 28,
10, 33, 30,
33, 28, 30,
0, 34, 18,
11, 35, 34,
6, 18, 35,
18, 34, 35,
3, 36, 37,
12, 38, 36,
11, 37, 38,
37, 36, 38,
4, 22, 39,
6, 40, 22,
12, 39, 40,
39, 22, 40,
6, 35, 40,
11, 38, 35,
12, 40, 38,
40, 35, 38,
0, 27, 34,
9, 41, 27,
11, 34, 41,
34, 27, 41,
5, 42, 31,
13, 43, 42,
9, 31, 43,
31, 42, 43,
3, 37, 44,
11, 45, 37,
13, 44, 45,
44, 37, 45,
11, 41, 45,
9, 43, 41,
13, 45, 43,
45, 41, 43,
1, 46, 47,
14, 48, 46,
15, 47, 48,
47, 46, 48,
2, 25, 49,
8, 50, 25,
14, 49, 50,
49, 25, 50,
4, 51, 21,
15, 52, 51,
8, 21, 52,
21, 51, 52,
15, 48, 52,
14, 50, 48,
8, 52, 50,
52, 48, 50,
1, 53, 46,
16, 54, 53,
14, 46, 54,
46, 53, 54,
5, 32, 55,
10, 56, 32,
16, 55, 56,
55, 32, 56,
2, 49, 29,
14, 57, 49,
10, 29, 57,
29, 49, 57,
14, 54, 57,
16, 56, 54,
10, 57, 56,
57, 54, 56,
1, 47, 58,
15, 59, 47,
17, 58, 59,
58, 47, 59,
4, 39, 51,
12, 60, 39,
15, 51, 60,
51, 39, 60,
3, 61, 36,
17, 62, 61,
12, 36, 62,
36, 61, 62,
17, 59, 62,
15, 60, 59,
12, 62, 60,
62, 59, 60,
1, 58, 53,
17, 63, 58,
16, 53, 63,
53, 58, 63,
3, 44, 61,
13, 64, 44,
17, 61, 64,
61, 44, 64,
5, 55, 42,
16, 65, 55,
13, 42, 65,
42, 55, 65,
16, 63, 65,
17, 64, 63,
13, 65, 64,
65, 63, 64
]);
var sphereBuf = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, sphereBuf);
gl.bufferData(gl.ARRAY_BUFFER, plot_3d1rgl.sphereverts, gl.STATIC_DRAW);
var sphereIbuf = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, sphereIbuf);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, plot_3d1rgl.spherefaces, gl.STATIC_DRAW);
// ****** points object 7 ******
this.flags[7] = 0;
this.prog[7]  = gl.createProgram();
gl.attachShader(this.prog[7], this.getShader( gl, "plot_3d1vshader7" ));
gl.attachShader(this.prog[7], this.getShader( gl, "plot_3d1fshader7" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[7], 0, "aPos");
gl.bindAttribLocation(this.prog[7], 1, "aCol");
gl.linkProgram(this.prog[7]);
this.offsets[7]={vofs:0, cofs:3, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:7};
var v=new Float32Array([
-0.00886681, 0.0238644, 0.0217746, 0, 1, 1, 1,
-0.0124726, 0.0247746, 0.0254585, 0, 1, 1, 1,
-0.0147315, 0.0281533, 0.0238545, 0, 1, 1, 1,
-0.0140497, 0.0274399, 0.00957505, 0, 1, 1, 1,
-0.0116447, 0.0287953, 0.01982, 0, 1, 1, 1,
-0.0135256, 0.0311266, 0.0226846, 0, 1, 1, 1,
-0.0146697, 0.0281732, 0.00270888, 0, 1, 1, 1,
-0.0122709, 0.0273632, 0.00629289, 0, 1, 1, 1,
-0.013305, 0.0293633, 0.00633912, 0, 1, 1, 1,
-0.0122756, 0.0262672, 0.00976935, 0, 1, 1, 1,
-0.011765, 0.0251295, 0.0118895, 0, 1, 1, 1,
-0.0128186, 0.028081, 0.00958605, 0, 1, 1, 1,
-0.0116086, 0.0294887, 0.00805614, 0, 1, 1, 1,
-0.0113447, 0.0307663, 0.00405527, 0, 1, 1, 1,
-0.0148581, 0.0237257, 0.0160082, 0, 1, 1, 1,
-0.010788, 0.0238892, 0.0226584, 0, 1, 1, 1,
-0.0148937, 0.0232955, 0.0101953, 0, 1, 1, 1,
-0.00875168, 0.0261604, 0.0121802, 0, 1, 1, 1,
-0.008739, 0.0261481, 0.0122728, 0, 1, 1, 1,
-0.0108659, 0.0259289, 0.00106272, 0, 1, 1, 1,
-0.0130502, 0.0270812, 0.0183305, 0, 1, 1, 1,
-0.0134347, 0.0270132, 0.0229292, 0, 1, 1, 1,
-0.0118617, 0.0220373, 0.0105775, 0, 1, 1, 1,
-0.0130059, 0.0245835, 0.0192892, 0, 1, 1, 1,
-0.0102875, 0.0258827, 0.0208538, 0, 1, 1, 1,
-0.00910839, 0.0257005, 0.00618984, 0, 1, 1, 1,
-0.0128356, 0.0225055, 0.00960733, 0, 1, 1, 1,
-0.0112344, 0.0276306, 0.0114346, 0, 1, 1, 1,
-0.0106106, 0.0278096, 0.00194201, 0, 1, 1, 1,
-0.0115198, 0.0292207, 0.00294633, 0, 1, 1, 1,
-0.0133883, 0.028673, 0.0164389, 0, 1, 1, 1,
-0.0109423, 0.0290064, 0.0218431, 0, 1, 1, 1,
-0.0148488, 0.0259077, 0.0115755, 0, 1, 1, 1,
-0.0107891, 0.0257524, 0.00616149, 0, 1, 1, 1,
-0.0106291, 0.0269203, 0.0228778, 0, 1, 1, 1,
-0.0161089, 0.0275971, 0.0192198, 0, 1, 1, 1,
-0.0132678, 0.0258366, 0.0163521, 0, 1, 1, 1,
-0.0149124, 0.0251342, 0.00388131, 0, 1, 1, 1,
-0.0114892, 0.0274352, 0.00899298, 0, 1, 1, 1,
-0.0117562, 0.0245922, 0.0136363, 0, 1, 1, 1,
-0.0122278, 0.0271677, 0.0112234, 0, 1, 1, 1,
-0.01029, 0.0277564, 0.0160115, 0, 1, 1, 1,
-0.0121964, 0.0309241, 0.0139494, 0, 1, 1, 1,
-0.0129751, 0.0271331, 0.0260444, 0, 1, 1, 1,
-0.0125756, 0.0265999, 0.0224468, 0, 1, 1, 1,
-0.0127859, 0.027101, 0.0191604, 0, 1, 1, 1,
-0.00998233, 0.0253795, 0.00685042, 0, 1, 1, 1,
-0.0133536, 0.028689, 0.0051763, 0, 1, 1, 1,
-0.0117333, 0.0277402, 0.00381405, 0, 1, 1, 1,
-0.0147853, 0.0295933, 0.00968847, 0, 1, 1, 1,
-0.0109685, 0.0223538, 0.0143111, 0, 1, 1, 1,
-0.0096918, 0.0249463, 0.00704751, 0, 1, 1, 1,
-0.0155493, 0.0266224, 0.00516269, 0, 1, 1, 1,
-0.014836, 0.0276024, 0.0116228, 0, 1, 1, 1,
-0.00828352, 0.0252156, 0.0187242, 0, 1, 1, 1,
-0.0110414, 0.0293172, 0.00362714, 0, 1, 1, 1,
-0.0102891, 0.0257019, 0.00540398, 0, 1, 1, 1,
-0.0104394, 0.0259701, 0.00329733, 0, 1, 1, 1,
-0.00930721, 0.0261215, 0.00409051, 0, 1, 1, 1,
-0.0124193, 0.0257317, 0.0162523, 0, 1, 1, 1,
-0.0114044, 0.025375, 0.00361722, 0, 1, 1, 1,
-0.0112687, 0.0271153, 0.00987548, 0, 1, 1, 1,
-0.0135369, 0.0198464, 0.0192111, 0, 1, 1, 1,
-0.0134307, 0.0240167, 0.00338929, 0, 1, 1, 1,
-0.00581692, -0.000934194, -0.00182728, 0, 1, 1, 1,
-0.00992799, 0.0281201, 0.00421423, 0, 1, 1, 1,
-0.0163484, 0.0253598, 0.00679276, 0, 1, 1, 1,
-0.0153143, 0.0239155, 0.00922948, 0, 1, 1, 1,
-0.0130066, 0.0264895, 0.0219972, 0, 1, 1, 1,
-0.0123188, 0.0270323, 0.0130162, 0, 1, 1, 1,
-0.0149538, 0.0261319, 0.0246082, 0, 1, 1, 1,
-0.00848068, 0.0244795, 0.0126147, 0, 1, 1, 1,
-0.009655, 0.026754, 0.0151766, 0, 1, 1, 1,
-0.0110317, 0.0247415, 0.0169718, 0, 1, 1, 1,
-0.0105467, 0.0216758, 0.0273625, 0, 1, 1, 1,
-0.0111351, 0.0298442, 0.0137315, 0, 1, 1, 1,
-0.0148939, 0.0282641, 0.0180507, 0, 1, 1, 1,
-0.0133113, 0.0255374, 0.0156552, 0, 1, 1, 1,
-0.0152238, 0.0253733, 0.0118128, 0, 1, 1, 1,
-0.0165117, 0.0254165, 0.0210366, 0, 1, 1, 1,
-0.0172562, 0.026341, 0.0224113, 0, 1, 1, 1,
-0.0138025, 0.0277873, 0.00395365, 0, 1, 1, 1,
-0.0135819, 0.0270152, 0.00695362, 0, 1, 1, 1,
-0.0116353, 0.0256155, 0.000289371, 0, 1, 1, 1,
-0.0149184, 0.0238256, -0.00270158, 0, 1, 1, 1,
-0.0114351, 0.0271658, 0.0125575, 0, 1, 1, 1,
-0.01436, 0.0264762, 0.0173609, 0, 1, 1, 1,
-0.0128438, 0.0268224, 0.00444834, 0, 1, 1, 1,
-0.0120046, 0.0230234, 0.00796341, 0, 1, 1, 1,
-0.0126985, 0.0258126, 0.00514686, 0, 1, 1, 1,
-0.0135831, 0.0249755, 0.0107284, 0, 1, 1, 1,
-0.0121259, 0.0280823, 0.020544, 0, 1, 1, 1,
-0.0141439, 0.0265254, 0.0258433, 0, 1, 1, 1,
-0.0138132, 0.0284247, 0.0101188, 0, 1, 1, 1,
-0.013572, 0.0269507, 0.00688972, 0, 1, 1, 1,
-0.0113011, 0.0268327, 0.0184482, 0, 1, 1, 1,
-0.0100601, 0.0264789, 0.0212786, 0, 1, 1, 1,
-0.0113299, 0.0282418, 0.00866489, 0, 1, 1, 1,
-0.0114925, 0.0272719, 0.0170049, 0, 1, 1, 1,
-0.0104039, 0.0283855, 0.0100799, 0, 1, 1, 1,
-0.00956386, 0.0268284, 0.0101297, 0, 1, 1, 1,
-0.0121363, 0.0224437, 0.00471969, 0, 1, 1, 1,
-0.0129748, 0.0260496, 0.0176977, 0, 1, 1, 1,
-0.0128936, 0.0280627, 0.00938281, 0, 1, 1, 1,
-0.0114891, 0.0247891, 0.0130035, 0, 1, 1, 1,
-0.00577137, 0.0112307, -0.0490284, 0, 1, 1, 1,
-0.0102643, 0.0267855, 0.0104728, 0, 1, 1, 1,
-0.0123468, 0.0265473, 0.016931, 0, 1, 1, 1,
-0.0097784, 0.0252052, 0.00928465, 0, 1, 1, 1,
-0.0117949, 0.0233834, 0.0122081, 0, 1, 1, 1,
-0.0128608, 0.0249954, 0.0176076, 0, 1, 1, 1,
-0.0129981, 0.0257737, 0.0155265, 0, 1, 1, 1,
-0.0134316, 0.02653, 0.00353212, 0, 1, 1, 1,
-0.00935833, 0.0318374, 0.0100076, 0, 1, 1, 1,
-0.0113107, 0.0303198, 0.0116077, 0, 1, 1, 1,
-0.0131245, 0.0298223, 0.00180678, 0, 1, 1, 1,
-0.0133191, 0.0293408, 0.00662741, 0, 1, 1, 1,
-0.0138591, 0.0261048, 0.000836834, 0, 1, 1, 1,
-0.0150174, 0.0231497, -0.00112857, 0, 1, 1, 1,
-0.0110389, 0.0248572, 0.00176283, 0, 1, 1, 1,
-0.0118715, 0.0275812, 0.0178639, 0, 1, 1, 1,
-0.0129834, 0.0259341, 0.0186928, 0, 1, 1, 1,
-0.010557, 0.0273327, 0.00990001, 0, 1, 1, 1,
-0.0111681, 0.0273472, 0.00617783, 0, 1, 1, 1,
-0.0101689, 0.0280639, 0.00864267, 0, 1, 1, 1,
-0.00927365, 0.0255201, 0.0130722, 0, 1, 1, 1,
-0.010756, 0.0260178, 0.0154469, 0, 1, 1, 1,
-0.0122762, 0.0266211, 0.00832697, 0, 1, 1, 1,
-0.0132575, 0.0299597, 0.014467, 0, 1, 1, 1,
-0.0114548, 0.0255468, 0.0189329, 0, 1, 1, 1,
-0.00934806, 0.0252484, 0.00733987, 0, 1, 1, 1,
-0.0142405, 0.0279119, 0.0149429, 0, 1, 1, 1,
-0.0133535, 0.0262824, 0.00311826, 0, 1, 1, 1,
-0.0135127, 0.0255778, -0.0113687, 0, 1, 1, 1,
-0.0121261, 0.0260542, 0.0169802, 0, 1, 1, 1,
-0.0133854, 0.0276628, 0.00624653, 0, 1, 1, 1,
-0.0129197, 0.0294731, 0.0139965, 0, 1, 1, 1,
-0.010358, 0.0239915, 0.0158709, 0, 1, 1, 1,
-0.0116095, 0.0243185, 0.0147471, 0, 1, 1, 1,
-0.0114546, 0.0261468, 0.0128631, 0, 1, 1, 1,
-0.0123456, 0.0285583, 0.00628408, 0, 0, 1, 1,
-0.0117925, 0.0253189, 0.0229664, 0, 0, 1, 1,
-0.0111225, 0.0262298, 0.0113142, 0, 0, 1, 1,
-0.010842, 0.0316673, 0.00262647, 0, 0, 1, 1,
-0.011003, 0.0292021, 0.00452867, 0, 0, 1, 1,
-0.0126318, 0.0264219, 0.022668, 0, 0, 1, 1,
-0.0110824, 0.0288873, 0.0175002, 0, 0, 1, 1,
-0.0137003, 0.029149, 0.00303409, 0, 0, 1, 1,
-0.0145364, 0.0258709, 0.00658553, 0, 0, 1, 1,
-0.00964667, 0.0252294, 0.00449265, 0, 0, 1, 1,
-0.0111937, 0.0281303, 0.0123027, 0, 0, 1, 1,
-0.0133546, 0.0244159, 0.0072153, 0, 0, 1, 1,
-0.0107568, 0.0287884, 0.0102288, 0, 0, 1, 1,
-0.0107723, 0.029073, 0.0209563, 0, 0, 1, 1,
-0.0137524, 0.0242893, 0.0140332, 0, 0, 1, 1,
-0.0135108, 0.0276608, 0.0147682, 0, 0, 1, 1,
-0.0113502, 0.0290479, 0.0100188, 0, 0, 1, 1,
-0.0140521, 0.0284237, 0.0121027, 0, 0, 1, 1,
-0.0133882, 0.0246725, 0.0109641, 0, 0, 1, 1,
-0.00934879, 0.0254398, 0.0251435, 0, 0, 1, 1,
-0.00814159, 0.02766, 0.0161029, 0, 0, 1, 1,
-0.0124137, 0.0259852, 0.0218082, 0, 0, 1, 1,
-0.0116249, 0.0263818, 0.000654635, 0, 0, 1, 1,
-0.0101555, 0.0250924, 0.0130751, 0, 0, 1, 1,
-0.0111079, 0.0274088, 0.0107658, 0, 0, 1, 1,
-0.00997544, 0.0294545, 0.011948, 0, 0, 1, 1,
-0.0107696, 0.0283827, 0.0114661, 0, 0, 1, 1,
-0.011611, 0.0281942, 0.0162057, 0, 0, 1, 1,
-0.0130192, 0.0279643, 0.0149605, 0, 0, 1, 1,
-0.0117091, 0.0281119, 0.0134414, 0, 0, 1, 1,
-0.00799466, 0.0300204, 0.00767195, 0, 0, 1, 1,
-0.0081185, 0.0264686, 0.0116146, 0, 0, 1, 1,
-0.0118704, 0.0273652, 0.0176032, 0, 0, 1, 1,
-0.0114452, 0.0290366, 0.0107144, 0, 0, 1, 1,
-0.0138727, 0.0237636, 0.00785003, 0, 0, 1, 1,
-0.011103, 0.0269406, 0.00734299, 0, 0, 1, 1,
-0.0109101, 0.0252827, 0.0169859, 0, 0, 1, 1,
-0.0127791, 0.0272729, 0.0143903, 0, 0, 1, 1,
-0.0108161, 0.0266715, 0.0169653, 0, 0, 1, 1,
-0.00959507, 0.0230123, 0.013315, 0, 0, 1, 1,
-0.0112786, 0.0285827, 0.0123404, 0, 0, 1, 1,
-0.013363, 0.0283886, 0.0184319, 0, 0, 1, 1,
-0.0101642, 0.0270854, -0.00282684, 0, 0, 1, 1,
-0.0110129, 0.0273035, 0.0163956, 0, 0, 1, 1,
-0.0105986, 0.0252297, 0.0141097, 0, 0, 1, 1,
-0.0172698, 0.0292374, 0.0143851, 0, 0, 1, 1,
-0.0102307, 0.0286338, 0.00902648, 0, 0, 1, 1,
-0.0123649, 0.0259511, 0.0156091, 0, 0, 1, 1,
-0.010754, 0.0290541, 0.00828693, 0, 0, 1, 1,
-0.0134661, 0.0262762, 0.00974057, 0, 0, 1, 1,
-0.0107807, 0.0282124, 0.0121875, 0, 0, 1, 1,
-0.0127756, 0.0283086, 0.0238306, 0, 0, 1, 1,
-0.0118563, 0.0237655, 0.00566439, 0, 0, 1, 1,
-0.0107849, 0.0297388, 0.00567507, 0, 0, 1, 1,
-0.0117523, 0.0273594, 0.0215876, 0, 0, 1, 1,
-0.0116881, 0.0218703, 0.0105175, 0, 0, 1, 1,
-0.0129286, 0.0207332, 0.00644358, 0, 0, 1, 1,
-0.013719, 0.0291585, 0.00655579, 0, 0, 1, 1,
-0.0135172, 0.0259411, 0.0053278, 0, 0, 1, 1,
-0.0120476, 0.0166544, 0.00572823, 0, 0, 1, 1,
-0.0137358, 0.02196, 0.0243654, 0, 0, 1, 1,
-0.0171736, 0.0204457, -0.000488194, 0, 0, 1, 1,
-0.0126523, 0.0223724, 0.0179309, 0, 0, 1, 1,
-0.0156941, 0.0264025, -0.000676673, 0, 0, 1, 1,
-0.0150322, 0.0213523, 0.00899962, 0, 0, 1, 1,
-0.0137382, 0.0207818, 0.00312067, 0, 0, 1, 1,
-0.0117617, 0.0238395, 0.00826143, 0, 0, 1, 1,
-0.0136822, 0.0232097, 0.013168, 0, 0, 1, 1,
-0.0103771, 0.0248488, 0.0100654, 0, 0, 1, 1,
-0.0118399, 0.0226848, 0.027003, 0, 0, 1, 1,
-0.0123068, 0.0219538, -0.000466468, 0, 0, 1, 1,
-0.0116785, 0.0309281, 0.00863269, 0, 0, 1, 1,
-0.0102603, 0.0261693, 0.00966214, 0, 0, 1, 1,
-0.0115228, 0.024125, 0.00985874, 0, 0, 1, 1,
-0.011637, 0.0297508, 0.0108957, 0, 0, 1, 1,
-0.00911545, 0.0295601, 0.00771114, 0, 0, 1, 1,
-0.0120582, 0.0284058, -0.00147242, 0, 0, 1, 1,
-0.0131449, 0.0253438, 0.0145489, 0, 0, 1, 1,
-0.0139409, 0.0270412, 0.0116015, 0, 0, 1, 1,
-0.0115097, 0.0281264, 0.0150466, 0, 0, 1, 1,
-0.0104537, 0.0313729, 0.017718, 0, 0, 1, 1,
-0.01003, 0.0253202, 0.017903, 0, 0, 1, 1,
-0.0116143, 0.0283412, 0.0129812, 0, 0, 1, 1,
-0.0131945, 0.0291524, 0.00509658, 0, 0, 1, 1,
-0.010053, 0.0271655, 0.0143403, 0, 0, 1, 1,
-0.00915117, 0.0241514, 0.0124749, 0, 0, 1, 1,
-0.00756656, 0.0262734, 0.00467394, 0, 0, 1, 1,
-0.0106447, 0.0248234, 0.0132472, 0, 0, 1, 1,
-0.0131976, 0.0254255, 0.00522041, 0, 0, 1, 1,
-0.0139171, 0.0280579, 0.0119584, 0, 0, 1, 1,
-0.0130388, 0.0267563, -0.000893618, 0, 0, 1, 1,
-0.0113769, 0.0296269, 0.0288852, 0, 0, 1, 1,
-0.0101904, 0.0258474, 0.0037858, 0, 0, 1, 1,
-0.0109709, 0.0280555, 0.0177659, 0, 0, 1, 1,
-0.012875, 0.0275396, 0.0172013, 0, 0, 1, 1,
-0.00913852, 0.0262472, 0.0179264, 0, 0, 1, 1,
-0.0113798, 0.0246484, 0.00395389, 0, 0, 1, 1,
-0.0110402, 0.0270359, 0.017079, 0, 0, 1, 1,
-0.0119093, 0.0273195, 0.00695805, 0, 0, 1, 1,
-0.0142024, 0.0274331, 0.0115534, 0, 0, 1, 1,
-0.0117034, 0.0268889, 0.0180925, 0, 0, 1, 1,
-0.0103303, 0.0259325, 0.00457057, 0, 0, 1, 1,
-0.0141989, 0.0257875, 0.0105864, 0, 0, 1, 1,
-0.0117826, 0.0286291, 0.0166398, 0, 0, 1, 1,
-0.0142497, 0.0243231, 0.00801615, 0, 0, 1, 1,
-0.0139552, 0.0239337, 0.0137122, 0, 0, 1, 1,
-0.0136743, 0.0242532, 0.00341549, 0, 0, 1, 1,
-0.0113042, 0.0235413, 0.00977782, 0, 0, 1, 1,
-0.0154653, 0.0235517, 0.0117982, 0, 0, 1, 1,
-0.0165242, 0.0237881, 0.018162, 0, 0, 1, 1,
-0.0115394, 0.0185159, 0.0147025, 0, 0, 1, 1,
-0.0129897, 0.0202159, 0.00928637, 0, 0, 1, 1,
-0.0134737, 0.0223773, 0.0078958, 0, 0, 1, 1,
-0.0106927, 0.0240148, 0.0107681, 0, 0, 1, 1,
-0.00957613, 0.0245013, -0.00265688, 0, 0, 1, 1,
-0.0144325, 0.0214823, 0.0153915, 0, 0, 1, 1,
-0.011182, 0.0213535, 0.0165707, 0, 0, 1, 1,
-0.0160512, 0.0212972, 0.00828121, 0, 0, 1, 1,
-0.0127985, 0.0240445, 0.000725888, 0, 0, 1, 1,
-0.0119454, 0.0224038, 0.0128598, 0, 0, 1, 1,
-0.0136061, 0.0210214, 0.00988697, 0, 0, 1, 1,
-0.0145131, 0.0210188, 0.000633065, 0, 0, 1, 1,
-0.0137346, 0.0234757, 0.0108352, 0, 0, 1, 1,
-0.0135633, 0.0245155, 0.00819555, 0, 0, 1, 1,
-0.0104922, 0.0241871, 0.0156222, 0, 0, 1, 1,
-0.0134902, 0.0247944, -0.00430758, 0, 0, 1, 1,
-0.0145296, 0.0236375, 0.00979734, 0, 0, 1, 1,
-0.0138629, 0.025616, 0.0124037, 0, 0, 1, 1,
-0.0143111, 0.0195784, 0.00154331, 0, 0, 1, 1,
-0.0123259, 0.0226787, 0.0200938, 0, 0, 1, 1,
-0.0135332, 0.0210848, 0.0113033, 0, 0, 1, 1,
-0.0138219, 0.0236944, 0.0096544, 0, 0, 1, 1,
-0.0145693, 0.0197255, 0.00578477, 0, 0, 1, 1,
-0.0133557, 0.0233927, 0.0162397, 0, 0, 1, 1,
-0.0126798, 0.0216866, 0.0104805, 0, 0, 1, 1,
-0.0145758, 0.022478, 0.0114166, 0, 0, 1, 1,
-0.00980388, 0.020673, 0.0109155, 0, 0, 1, 1,
-0.00989465, 0.0275465, 0.0145505, 0, 0, 1, 1,
-0.0129017, 0.0235914, 0.0152216, 0, 0, 1, 1,
-0.0120715, 0.025734, 0.0191858, 0, 0, 1, 1,
-0.00993314, 0.0219645, 0.00870267, 0, 0, 1, 1,
-0.0144075, 0.0234614, 0.023235, 0, 0, 1, 1,
-0.0142202, 0.0268766, 0.0152755, 0, 0, 1, 1,
-0.0129626, 0.023574, 0.00601518, 0, 0, 1, 1,
-0.0131421, 0.0211668, 0.0217402, 0, 0, 1, 1,
-0.0152594, 0.0196937, -0.00193413, 0, 0, 1, 1,
-0.0147942, 0.0210297, 0.00609799, 0, 0, 1, 1,
-0.0105986, 0.0234168, 0.0102144, 0, 0, 1, 1,
-0.0132185, 0.019576, 0.0040235, 0, 0, 1, 1,
-0.0118088, 0.0232633, 0.00816838, 0, 0, 1, 1,
-0.0152803, 0.020936, 0.00739438, 0, 0, 1, 1,
-0.012553, 0.0194701, 0.0118699, 0, 0, 1, 1,
-0.0112282, 0.026829, 0.0187078, 0, 0, 1, 1,
-0.0137843, 0.0238832, 0.00750988, 0, 0, 1, 1,
-0.0136395, 0.0211789, 0.0162951, 0, 0, 1, 1,
-0.011906, 0.0236646, 0.0212473, 0, 0, 1, 1,
-0.0113808, 0.0240892, 0.00879046, 0, 0, 1, 1,
-0.0104013, 0.0250219, 0.00360141, 0, 0, 1, 1,
-0.015148, 0.0235485, 0.0149889, 0, 0, 1, 1,
-0.0134383, 0.0246615, 0.00899002, 0, 0, 1, 1,
-0.0120465, 0.0217984, 0.00884514, 0, 0, 1, 1,
-0.0149625, 0.0247689, 0.0173242, 0, 0, 1, 1,
-0.01799, 0.0269095, 0.000534468, 0, 0, 1, 1,
-0.0146238, 0.0229473, 0.00369307, 0, 0, 1, 1,
-0.0129095, 0.0256003, 0.00587418, 0, 0, 1, 1,
-0.0139598, 0.0214938, 0.00569978, 0, 0, 1, 1,
-0.0127245, 0.0182578, 0.00888825, 0, 0, 1, 1,
-0.0122696, 0.0222292, 0.0173431, 0, 0, 1, 1,
-0.0135996, 0.0226041, 0.0125327, 0, 0, 1, 1,
-0.0112277, 0.0259577, 0.0124669, 0, 0, 1, 1,
-0.0162406, 0.0207383, 0.00822197, 0, 0, 1, 1,
-0.0164621, 0.0256774, 0.00515605, 0, 0, 1, 1,
-0.0131916, 0.0223769, 0.00730401, 0, 0, 1, 1,
-0.0115478, 0.0214912, 0.0119866, 0, 0, 1, 1,
-0.0147473, 0.0256742, 0.008772, 0, 0, 1, 1,
-0.0116873, 0.0242674, 0.00475976, 0, 0, 1, 1,
-0.011117, 0.028515, 0.00157371, 0, 0, 1, 1,
-0.012997, 0.0250226, 0.00972486, 0, 0, 1, 1,
-0.016551, 0.0191626, 0.0156221, 0, 0, 1, 1,
-0.0142064, 0.022434, 0.0142188, 0, 0, 1, 1,
-0.0121835, 0.0199018, 0.0170425, 0, 0, 1, 1,
-0.0228269, -0.0475654, 0.00907309, 0, 0.8039216, 0, 1,
-0.0228553, -0.0488415, 0.0137005, 0, 0.8039216, 0, 1,
-0.0222122, -0.0457324, 0.012512, 0, 0.8039216, 0, 1,
-0.0247551, -0.0460549, 0.00507055, 0, 0.8039216, 0, 1,
-0.02469, -0.046895, 0.0163472, 0, 0.8039216, 0, 1,
-0.021029, -0.046606, 0.0135468, 0, 0.8039216, 0, 1,
-0.0218419, -0.0447786, 0.00498552, 0, 0.8039216, 0, 1,
-0.0195952, -0.0458457, 0.0214694, 0, 0.8039216, 0, 1,
-0.0230239, -0.0471733, 0.00814306, 0, 0.8039216, 0, 1,
-0.0218452, -0.0440416, 0.0113722, 0, 0.8039216, 0, 1,
-0.0201676, -0.0462737, 0.00447752, 0, 0.8039216, 0, 1,
-0.0227843, -0.0478824, 0.0085774, 0, 0.8039216, 0, 1,
-0.0197834, -0.0458426, 0.0184392, 0, 0.8039216, 0, 1,
-0.0207643, -0.0430267, 0.00884501, 0, 0.8039216, 0, 1,
-0.0206854, -0.0472078, 0.0154503, 0, 0.8039216, 0, 1,
-0.0251057, -0.0430754, 0.0208066, 0, 0.8039216, 0, 1,
-0.0195262, -0.0461964, 0.0086836, 0, 0.8039216, 0, 1,
-0.0197042, -0.0462707, 0.00125627, 0, 0.8039216, 0, 1,
-0.0203137, -0.0461741, 0.0147652, 0, 0.8039216, 0, 1,
-0.0224587, -0.0433645, 0.0142032, 0, 0.8039216, 0, 1,
-0.0214331, -0.0465056, 0.0153838, 0, 0.8039216, 0, 1,
-0.0200086, -0.044871, 0.0124984, 0, 0.8039216, 0, 1,
-0.0226511, -0.0441368, 0.0149426, 0, 0.8039216, 0, 1,
-0.0216865, -0.0465115, 0.00528324, 0, 0.8039216, 0, 1,
-0.0203666, -0.0453889, 0.0136757, 0, 0.8039216, 0, 1,
-0.0202521, -0.04288, 0.0117181, 0, 0.8039216, 0, 1,
-0.0215928, -0.0474487, 0.00474726, 0, 0.8039216, 0, 1,
-0.0217943, -0.0458128, 0.0146455, 0, 0.8039216, 0, 1,
-0.0201348, -0.0502583, 0.00825623, 0, 0.8039216, 0, 1,
-0.0206457, -0.0438358, 0.0188701, 0, 0.8039216, 0, 1,
-0.0211507, -0.0498435, 0.0258304, 0, 0.8039216, 0, 1,
-0.0226475, -0.0481702, 0.0193757, 0, 0.8039216, 0, 1,
-0.0244167, -0.0485593, 0.0124118, 0, 0.8039216, 0, 1,
-0.0227296, -0.0482857, 0.0189768, 0, 0.8039216, 0, 1,
-0.0218232, -0.0444051, 0.0105841, 0, 0.8039216, 0, 1,
-0.0215404, -0.0446985, 0.0112267, 0, 0.8039216, 0, 1,
-0.0211552, -0.0460471, 0.0119572, 0, 0.8039216, 0, 1,
-0.0216532, -0.0482607, 0.00964503, 0, 0.8039216, 0, 1,
-0.0246026, -0.0445038, 0.00968899, 0, 0.8039216, 0, 1,
-0.0196496, -0.046784, 0.0200917, 0, 0.8039216, 0, 1,
-0.0208572, -0.0487035, 0.0114415, 0, 0.8039216, 0, 1,
-0.0206629, -0.048254, 0.0162294, 0, 0.8039216, 0, 1,
-0.0214662, -0.0464055, 0.00799757, 0, 0.8039216, 0, 1,
-0.0174488, -0.0467871, 0.00752603, 0, 0.8039216, 0, 1,
-0.00795485, 0.00812255, -0.0498788, 1, 0, 0, 1,
-0.00790179, 0.022487, -0.00377724, 1, 0, 0, 1,
-0.0219649, -0.0475438, 0.0180097, 0, 0.8039216, 0, 1,
-0.0195713, -0.048466, 0.0105929, 0, 0.8039216, 0, 1,
-0.024775, -0.0441433, 0.0175566, 0, 0.8039216, 0, 1,
-0.0197837, -0.048666, 0.0123438, 0, 0.8039216, 0, 1,
-0.0214265, -0.0485158, 0.00988444, 0, 0.8039216, 0, 1,
-0.0200393, -0.0432384, 0.00318714, 0, 0.8039216, 0, 1,
-0.0209152, -0.0473638, 0.0107885, 0, 0.8039216, 0, 1,
-0.0229248, -0.0476456, 0.0154964, 0, 0.8039216, 0, 1,
-0.0209049, -0.0451975, 0.0116402, 0, 0.8039216, 0, 1,
-0.0221954, -0.0479599, 0.00898107, 0, 0.8039216, 0, 1,
-0.0201608, -0.0485583, 0.0130871, 0, 0.8039216, 0, 1,
-0.0215961, -0.0487806, 0.017531, 0, 0.8039216, 0, 1,
-0.019295, -0.0451161, 0.0111203, 0, 0.8039216, 0, 1,
-0.0188937, -0.0440494, 0.0184203, 0, 0.8039216, 0, 1,
-0.0193894, -0.0436929, 0.0147046, 0, 0.8039216, 0, 1,
-0.0204134, -0.0432386, 0.0117079, 0, 0.8039216, 0, 1,
-0.0209705, -0.0481781, 0.016546, 0, 0.8039216, 0, 1,
-0.0190802, -0.0465624, 0.00427869, 0, 0.8039216, 0, 1,
-0.0205383, -0.0482517, 0.0135549, 0, 0.8039216, 0, 1,
-0.0247985, -0.0479872, 0.00635899, 0, 0.8039216, 0, 1,
-0.0237976, -0.0468474, 0.0123341, 0, 0.8039216, 0, 1,
-0.0211247, -0.0447158, 0.00910297, 0, 0.8039216, 0, 1,
-0.023983, -0.0469959, 0.015858, 0, 0.8039216, 0, 1,
-0.0220285, -0.0468321, 0.0125847, 0, 0.8039216, 0, 1,
-0.022514, -0.0462394, 0.0074289, 0, 0.8039216, 0, 1,
-0.0225103, -0.0441683, 0.0244713, 0, 0.8039216, 0, 1,
-0.0198123, -0.0436045, 0.0123578, 0, 0.8039216, 0, 1,
-0.0201426, -0.044296, 0.0171682, 0, 0.8039216, 0, 1,
-0.0213056, -0.0442843, -0.00302645, 0, 0.8039216, 0, 1,
-0.0196703, -0.0476107, 0.015761, 0, 0.8039216, 0, 1,
-0.02276, -0.0451804, 0.0260088, 0, 0.8039216, 0, 1,
-0.0243454, -0.0477497, 0.0186077, 0, 0.8039216, 0, 1,
-0.00415007, 0.0152267, -0.0201872, 1, 0, 0, 1,
0.00722696, 0.0149141, 0.00166637, 1, 0, 0, 1,
-0.00499204, 0.00775787, -0.041528, 1, 0, 0, 1,
-0.001841, 0.00643312, -0.0448911, 1, 0, 0, 1,
-0.0238504, -0.0420786, 0.0167263, 0, 0.8039216, 0, 1,
-0.021683, -0.0474585, 0.011902, 0, 0.8039216, 0, 1,
-0.0215727, -0.044023, 0.0231612, 0, 0.8039216, 0, 1,
-0.0246791, -0.0437182, 0.0106413, 0, 0.8039216, 0, 1,
-0.0199913, -0.0427926, 0.01477, 0, 0.8039216, 0, 1,
-0.0207957, -0.0456033, 0.0186144, 0, 0.8039216, 0, 1,
-0.0218088, -0.0480775, 0.00958459, 0, 0.8039216, 0, 1,
-0.0220589, -0.0474776, 0.0116932, 0, 0.8039216, 0, 1,
-0.0221075, -0.0439485, 0.0137618, 0, 0.8039216, 0, 1,
-0.0186216, -0.0472467, 0.0179583, 0, 0.8039216, 0, 1,
-0.0220028, -0.0411969, 0.00902925, 0, 0.8039216, 0, 1,
-0.0177109, -0.0446931, 0.00978712, 0, 0.8039216, 0, 1,
-0.0226301, -0.0453304, 0.0149734, 0, 0.8039216, 0, 1,
-0.0192413, -0.0434504, 0.0265313, 0, 0.8039216, 0, 1,
-0.0213995, -0.0455914, 0.0236959, 0, 0.8039216, 0, 1,
-0.0231323, -0.0450802, 0.00225958, 0, 0.8039216, 0, 1,
-0.0226076, -0.0470682, 0.00750212, 0, 0.8039216, 0, 1,
-0.0211502, -0.0445104, 0.020368, 0, 0.8039216, 0, 1,
-0.0219155, -0.0462141, 0.0187958, 0, 0.8039216, 0, 1,
-0.0211568, -0.0471418, 0.0193367, 0, 0.8039216, 0, 1,
-0.0195172, -0.0437941, 0.0149742, 0, 0.8039216, 0, 1,
-0.0193142, -0.0452652, 0.0153511, 0, 0.8039216, 0, 1,
-0.0220431, -0.043637, 0.0107631, 0, 0.8039216, 0, 1,
-0.0226273, -0.045704, 0.0226994, 0, 0.8039216, 0, 1,
-0.0125134, 0.0160733, -0.0187445, 1, 0, 0, 1,
-0.00815361, 0.0152704, -0.0251956, 1, 0, 0, 1,
-0.00369676, 0.0187153, -0.0087253, 1, 0, 0, 1,
-0.00499599, 0.0142422, -0.0176737, 1, 0, 0, 1,
-0.00703697, 0.0234329, 0.00445764, 1, 0, 0, 1,
-0.00743565, 0.0117182, -0.0526328, 1, 0, 0, 1,
-0.0103198, 0.0197327, -0.00752555, 1, 0, 0, 1,
-0.00219664, 0.0189244, -0.0169659, 1, 0, 0, 1,
0.00107987, 0.0175363, -0.0288034, 1, 0, 0, 1,
0.0118171, 0.00921071, -0.0294031, 1, 0, 0, 1,
0.00407748, 0.0138401, -0.00154257, 1, 0, 0, 1,
-0.0090259, 0.0219026, -0.0174049, 1, 0, 0, 1,
-0.00259501, 0.0121949, -0.0357062, 1, 0, 0, 1,
0.000414678, 0.0189859, -0.0242961, 1, 0, 0, 1,
-0.00425692, 0.0213539, -0.0185576, 1, 0, 0, 1,
0.00528004, 0.0124796, -0.0315785, 1, 0, 0, 1,
-0.00377719, 0.0155882, -0.0214545, 1, 0, 0, 1,
-0.0101706, 0.0134759, -0.0217364, 1, 0, 0, 1,
-0.00280112, 0.0193844, -0.010868, 1, 0, 0, 1,
-0.0109744, 0.0176909, -0.0208527, 1, 0, 0, 1,
-0.00192708, 0.0125267, -0.0335617, 1, 0, 0, 1,
0.0015079, 0.0131907, -0.0283962, 1, 0, 0, 1,
-0.00609305, 0.0180503, -0.0239939, 1, 0, 0, 1,
-0.00926598, 0.0170506, -0.0120606, 1, 0, 0, 1,
-0.00251447, 0.0138641, -0.0269598, 1, 0, 0, 1,
0.00649685, 0.0177502, 7.03697e-05, 1, 0, 0, 1,
-0.00204832, 0.0191023, -0.0286585, 1, 0, 0, 1,
-0.000779358, 0.0155071, -0.0289354, 1, 0, 0, 1,
0.00104868, 0.0132606, -0.0306608, 1, 0, 0, 1,
-0.0033441, 0.0139588, -0.0396869, 1, 0, 0, 1,
-0.00308374, 0.0150683, -0.00627947, 1, 0, 0, 1,
0.00130953, 0.018247, 0.0017934, 1, 0, 0, 1,
0.0110746, 0.0132532, 0.00308229, 1, 0, 0, 1,
0.0376002, -0.00232169, -0.011391, 1, 0, 0, 1,
-0.00901396, 0.0219978, -0.0056065, 1, 0, 0, 1,
-0.0142024, 0.0128954, -0.0419118, 1, 0, 0, 1,
-0.00076747, -0.00263272, -0.0788129, 1, 0, 0, 1,
1.12434e-05, 0.0153257, -0.00481447, 1, 0, 0, 1,
-0.0108145, 0.0192073, -0.0106254, 1, 0, 0, 1,
-0.00424299, 0.0145319, -0.034137, 1, 0, 0, 1,
-0.0120438, 0.017742, -0.027269, 1, 0, 0, 1,
-0.0131151, 0.00897117, -0.0791053, 1, 0, 0, 1,
-0.00582257, 0.0181326, -0.022766, 1, 0, 0, 1,
-0.0118271, 0.00881032, -0.0481503, 1, 0, 0, 1,
-0.0163395, -0.000727704, -0.0804766, 1, 0, 0, 1,
0.00418304, 0.0115717, -0.0134308, 1, 0, 0, 1,
-0.00516328, 0.01625, -0.0156506, 1, 0, 0, 1,
-0.000433563, 0.0144896, -0.0179018, 1, 0, 0, 1,
-0.00128632, 0.0131526, -0.0217634, 1, 0, 0, 1,
-0.00580215, 0.0233271, 0.00579969, 1, 0, 0, 1,
-0.0105629, 0.0121982, -0.0325397, 1, 0, 0, 1,
-0.0070833, 0.0157445, -0.00707511, 1, 0, 0, 1,
-0.0018993, 0.0182465, -0.0231356, 1, 0, 0, 1,
-0.000344473, 0.00750842, -0.0530027, 1, 0, 0, 1,
0.0055304, 0.00949606, -0.0194561, 1, 0, 0, 1,
0.00366409, 0.0096184, -0.0501351, 1, 0, 0, 1,
0.00394971, 0.0168208, -0.0119509, 1, 0, 0, 1,
-0.00706465, 0.0168998, -0.0335573, 1, 0, 0, 1,
0.000451784, 0.012381, -0.0362242, 1, 0, 0, 1,
-0.000550207, 0.0145694, -0.025685, 1, 0, 0, 1,
-0.014948, 0.00766927, -0.0652735, 1, 0, 0, 1,
-0.014105, 0.00954769, -0.0551464, 1, 0, 0, 1,
-0.0161168, 0.00849367, -0.050229, 1, 0, 0, 1,
-0.0095565, 0.0137916, -0.0395294, 1, 0, 0, 1,
-0.00890177, 0.0164466, -0.0196737, 1, 0, 0, 1,
-0.00490347, -0.0075657, -0.103784, 1, 0, 0, 1,
-0.00906991, -0.00469661, -0.0840544, 1, 0, 0, 1,
-0.00686865, 0.0248223, 0.0111706, 1, 0, 0, 1,
-0.0152818, 0.00636432, -0.0884904, 1, 0, 0, 1,
-0.0119092, 0.011783, -0.0435033, 1, 0, 0, 1,
-0.0106919, 0.0282036, 0.0158341, 0, 0, 1, 1,
0.0155306, -0.00412843, -0.0723126, 1, 0, 0, 1,
-0.0104277, 0.00251749, -0.0931759, 1, 0, 0, 1,
-0.0107831, 0.0130857, -0.0291016, 1, 0, 0, 1,
-0.00221752, 0.000679596, -0.0861949, 1, 0, 0, 1,
-0.0136158, 0.00823717, -0.0485188, 1, 0, 0, 1,
-0.00677494, 0.0164935, -0.0118744, 1, 0, 0, 1,
-0.0113623, 0.0221216, -0.0146259, 1, 0, 0, 1,
-0.0105594, 0.019951, -0.0151026, 1, 0, 0, 1,
-0.0144775, 0.00864782, -0.0548592, 1, 0, 0, 1,
-0.0121341, 0.0115638, -0.0287352, 1, 0, 0, 1,
-0.0127917, 0.0134483, -0.0178458, 1, 0, 0, 1,
0.0129694, -9.40401e-05, -0.0463231, 1, 0, 0, 1,
-0.0114823, 0.00160658, -0.074798, 1, 0, 0, 1,
-0.0126399, 0.0208847, -0.0346265, 1, 0, 0, 1,
-0.0107871, 0.00666632, -0.0746042, 1, 0, 0, 1,
-0.00327709, 0.0104264, -0.0355742, 1, 0, 0, 1,
-0.0121796, -0.00109537, -0.0732059, 1, 0, 0, 1,
-0.0118903, 0.0136637, -0.0360215, 1, 0, 0, 1,
-0.00730519, 0.0177562, -0.0282389, 1, 0, 0, 1,
-0.0145873, 0.0170545, -0.0266269, 1, 0, 0, 1,
0.0158822, 0.00311518, -0.0218944, 1, 0, 0, 1,
-0.0104163, 0.0158032, -0.0151967, 1, 0, 0, 1,
0.00496317, 0.00792379, -0.0450484, 1, 0, 0, 1,
-0.0118992, 0.00608466, -0.0587854, 1, 0, 0, 1,
-0.0142518, 0.0105717, -0.0504539, 1, 0, 0, 1,
-0.0127964, 0.0128683, -0.0468989, 1, 0, 0, 1,
-0.00667883, 0.00291104, -0.0664325, 1, 0, 0, 1,
0.0013303, 0.00264684, -0.0557542, 1, 0, 0, 1,
-0.00870577, 0.0156009, -0.0240986, 1, 0, 0, 1,
-0.00128028, 0.0162832, -0.00218269, 1, 0, 0, 1,
-0.00919997, 0.0195756, -0.0308885, 1, 0, 0, 1,
-0.0101516, 0.0232036, -0.0173891, 1, 0, 0, 1,
-0.00917483, 0.0142347, -0.0184249, 1, 0, 0, 1,
-0.0124642, 0.00765488, -0.0691884, 1, 0, 0, 1,
-0.0103383, 0.00829712, -0.0688222, 1, 0, 0, 1,
-0.00745961, 0.00165397, -0.0687243, 1, 0, 0, 1,
-0.0115674, 0.0107976, -0.0513724, 1, 0, 0, 1,
-0.0127367, 0.0272446, 0.0183097, 0, 0, 1, 1,
-0.0119625, 0.0294061, 0.00888008, 0, 0, 1, 1,
-0.0126168, 0.0258055, 0.0183438, 0, 0, 1, 1,
-0.0102374, 0.0270391, 0.0129866, 0, 0, 1, 1,
-0.0100193, 0.0290679, 0.00789347, 0, 0, 1, 1,
-0.0115686, 0.0261405, 0.00963599, 0, 0, 1, 1,
-0.0104184, 0.0145465, -0.0255844, 1, 0, 0, 1,
0.00918815, -0.00657052, -0.0789912, 1, 0, 0, 1,
-0.0107646, 0.0254562, 0.00955688, 0, 0, 1, 1,
-0.00680781, 0.0288168, 0.00346046, 0, 0, 1, 1,
-0.0106277, 0.0323664, 0.00835367, 0, 0, 1, 1,
-0.00924328, 0.0258167, 0.0123296, 0, 0, 1, 1,
-0.0115461, 0.0263079, 0.00460833, 0, 0, 1, 1,
-0.0073842, 0.028101, 0.0130338, 0, 0, 1, 1,
-0.00961266, 0.028563, 0.0158073, 0, 0, 1, 1,
-0.00770294, 0.0212503, 0.0146223, 0, 0, 1, 1,
-0.0156245, 0.0223188, 0.00597563, 0, 0, 1, 1,
-0.0119385, 0.0275722, 0.0162635, 0, 0, 1, 1,
-0.0113868, 0.0297108, 0.0121137, 0, 0, 1, 1,
-0.0121334, 0.0243808, 0.00188057, 0, 0, 1, 1,
-0.0108409, 0.0279683, 0.0216673, 0, 0, 1, 1,
-0.011768, 0.0281752, 0.0136645, 0, 0, 1, 1,
-0.0114795, 0.0247793, 0.00867501, 0, 0, 1, 1,
-0.0119832, 0.0254772, 0.0181285, 0, 0, 1, 1,
-0.0101695, 0.0265409, 0.0035312, 0, 0, 1, 1,
-0.0129714, 0.0252449, 0.00879037, 0, 0, 1, 1,
-0.0118888, 0.0233199, 0.0103993, 0, 0, 1, 1,
-0.0112292, 0.0298052, 0.015427, 0, 0, 1, 1,
-0.0104211, 0.0257311, 0.0187351, 0, 0, 1, 1,
-0.0125005, 0.0271759, 0.0137337, 0, 0, 1, 1,
-0.00993213, 0.028124, 0.00792852, 0, 0, 1, 1,
-0.0142551, 0.0232998, 0.00787479, 0, 0, 1, 1,
-0.0101617, 0.0266982, 0.00367679, 0, 0, 1, 1,
-0.010707, 0.0255306, 0.0169507, 0, 0, 1, 1,
-0.0105995, 0.0290999, 0.0161926, 0, 0, 1, 1,
-0.0100796, 0.0286098, 0.0103036, 0, 0, 1, 1,
-0.0110392, 0.0293114, 0.0120815, 0, 0, 1, 1,
-0.0128383, 0.0243127, 0.0147911, 0, 0, 1, 1,
-0.0108612, 0.0263359, 0.010828, 0, 0, 1, 1,
-0.0110329, 0.028983, 0.0195216, 0, 0, 1, 1,
-0.0089694, 0.0293864, 0.00611747, 0, 0, 1, 1,
-0.0100156, 0.0275008, 0.0147042, 0, 0, 1, 1,
-0.0118111, 0.0313438, 0.020286, 0, 0, 1, 1,
-0.0135282, 0.0285555, 0.0139991, 0, 0, 1, 1,
-0.0118573, 0.028059, 0.017623, 0, 0, 1, 1,
-0.011434, 0.0298841, 0.017289, 0, 0, 1, 1,
-0.0137068, 0.0262813, 0.00895045, 0, 0, 1, 1,
-0.011303, 0.0240466, 0.0185177, 0, 0, 1, 1,
-0.0128576, 0.0289939, 0.00276648, 0, 0, 1, 1,
-0.0120312, 0.029179, 0.017439, 0, 0, 1, 1,
-0.0106222, 0.0256284, 0.00570797, 0, 0, 1, 1,
-0.00995275, 0.0273092, -0.0024934, 0, 0, 1, 1,
-0.00959611, 0.0261537, 0.00959381, 0, 0, 1, 1,
-0.0114889, 0.023797, 0.0134738, 0, 0, 1, 1,
-0.0107667, 0.0284537, 0.0112355, 0, 0, 1, 1,
-0.0116865, 0.0287125, 0.018817, 0, 0, 1, 1,
-0.010768, 0.0257793, 0.0180663, 0, 0, 1, 1,
-0.0103461, 0.0279454, 0.0188626, 0, 0, 1, 1,
-0.0125309, 0.0251358, 0.0186523, 0, 0, 1, 1,
-0.00736122, 0.025217, 0.0152209, 0, 0, 1, 1,
-0.00878201, 0.0274251, 0.0160884, 0, 0, 1, 1,
-0.0127847, 0.0254325, 0.0197265, 0, 0, 1, 1,
-0.0110028, 0.0257856, 0.00341325, 0, 0, 1, 1,
-0.0119122, 0.0261599, 0.0103964, 0, 0, 1, 1,
-0.0104002, 0.0291234, 0.0195688, 0, 0, 1, 1,
-0.0100776, 0.0254294, 0.00434181, 0, 0, 1, 1,
-0.012127, 0.0268114, -0.00219624, 0, 0, 1, 1,
-0.0105922, 0.0258903, 0.0197543, 0, 0, 1, 1,
-0.0107162, 0.0258229, 0.0131112, 0, 0, 1, 1,
-0.00995127, 0.0282215, 0.0126675, 0, 0, 1, 1,
-0.0126403, 0.0263284, 0.00452265, 0, 0, 1, 1,
-0.0109886, 0.0260791, 0.0218565, 0, 0, 1, 1,
-0.0119297, 0.0250496, 0.00935235, 0, 0, 1, 1,
-0.00946548, 0.0277378, 0.0152095, 0, 0, 1, 1,
-0.0111957, 0.0268611, 0.0264809, 0, 0, 1, 1,
-0.0105658, 0.029585, 0.0012607, 0, 0, 1, 1,
-0.0117585, 0.0254491, 0.00702256, 0, 0, 1, 1,
-0.0089961, 0.0267625, 0.00355462, 0, 0, 1, 1,
-0.00996585, 0.0254337, 0.0193859, 0, 0, 1, 1,
-0.0131239, 0.0295077, 0.0157527, 0, 0, 1, 1,
-0.0103642, 0.0253289, 0.00931815, 0, 0, 1, 1,
-0.0113159, 0.0276354, 0.00661754, 0, 0, 1, 1,
-0.0106622, 0.0283885, 0.012353, 0, 0, 1, 1,
-0.0147154, 0.0278962, 0.0199703, 0, 0, 1, 1,
-0.0102746, 0.0278862, 0.00661131, 0, 0, 1, 1,
-0.0107519, 0.0281143, 0.0112299, 0, 0, 1, 1,
-0.0127744, 0.0276239, 0.00241913, 0, 0, 1, 1,
-0.0125225, 0.0281514, 0.00985255, 0, 0, 1, 1,
-0.0110078, 0.0284701, 0.0135415, 0, 0, 1, 1,
-0.00879338, 0.0305275, 0.0143521, 0, 0, 1, 1,
-0.00835299, 0.024473, 0.0172941, 0, 0, 1, 1,
-0.0139541, 0.028084, 0.00431583, 0, 0, 1, 1,
-0.0120311, 0.0295408, 0.0138181, 0, 0, 1, 1,
-0.00768885, 0.0287506, 0.00919534, 0, 0, 1, 1,
-0.0109983, 0.0273885, 0.00652561, 0, 0, 1, 1,
-0.0116594, 0.0304115, 0.00767287, 0, 0, 1, 1,
-0.011247, 0.0255661, 0.00731042, 0, 0, 1, 1,
-0.0119091, 0.0267098, 0.00624145, 0, 0, 1, 1,
-0.0116038, 0.0242178, 0.0027479, 0, 0, 1, 1,
-0.00966045, 0.0230601, 0.00905667, 0, 0, 1, 1,
-0.0134263, 0.0256661, 0.0123583, 0, 0, 1, 1,
0.0599053, -0.0106832, 0.00225125, 0, 0, 0, 1,
0.0625425, -0.0125851, -0.00769452, 0, 0, 0, 1,
0.0598986, -0.00919164, 0.00589153, 0, 0, 0, 1,
0.0628394, -0.0075895, 0.00159738, 0, 0, 0, 1,
0.0616466, -0.00896019, 0.00134041, 0, 0, 0, 1,
0.06047, -0.0121012, 0.00901182, 0, 0, 0, 1,
0.0609213, -0.00911238, 0.00021598, 0, 0, 0, 1,
0.0571285, -0.0100801, -0.00623096, 0, 0, 0, 1,
0.0614432, -0.0116696, 0.000846609, 0, 0, 0, 1,
0.0603913, -0.0120439, 0.00348993, 0, 0, 0, 1,
0.0596827, -0.0132493, 0.00183232, 0, 0, 0, 1,
0.0591857, -0.0100486, -0.00150272, 0, 0, 0, 1,
0.0590884, -0.0110651, 0.00348026, 0, 0, 0, 1,
0.0628583, -0.0107898, 0.00566134, 0, 0, 0, 1,
0.0623594, -0.00671933, -0.000583868, 0, 0, 0, 1,
0.0614952, -0.00934114, 0.00129604, 0, 0, 0, 1,
0.0608647, -0.00710329, 0.0115746, 0, 0, 0, 1,
0.061243, -0.0104244, 0.00383985, 0, 0, 0, 1,
0.0622044, -0.00933706, 0.00605794, 0, 0, 0, 1,
-0.0202847, -0.0472571, 0.0124991, 0, 0.8039216, 0, 1,
-0.0217059, -0.0453121, 0.0102996, 0, 0.8039216, 0, 1,
-0.0203415, -0.0436946, 0.0205952, 0, 0.8039216, 0, 1,
-0.0207163, -0.0461337, 0.0046741, 0, 0.8039216, 0, 1,
-0.0212221, -0.0463474, 0.0133314, 0, 0.8039216, 0, 1,
-0.025239, -0.044723, 0.0124012, 0, 0.8039216, 0, 1,
-0.022871, -0.0436453, 0.0152662, 0, 0.8039216, 0, 1,
-0.0230623, -0.0447306, 0.0137183, 0, 0.8039216, 0, 1,
-0.023999, -0.0449555, 0.0140296, 0, 0.8039216, 0, 1,
-0.0214967, -0.0450679, 0.00732026, 0, 0.8039216, 0, 1,
-0.0218387, -0.0418631, 0.000625819, 0, 0.8039216, 0, 1,
-0.0213634, -0.0468005, 0.0122522, 0, 0.8039216, 0, 1,
-0.0205644, -0.0422387, 0.0117481, 0, 0.8039216, 0, 1,
-0.0206326, -0.0429101, 0.00311156, 0, 0.8039216, 0, 1,
-0.0204946, -0.0465157, 0.0146937, 0, 0.8039216, 0, 1,
-0.0192618, -0.0445747, 0.0180433, 0, 0.8039216, 0, 1,
-0.022117, -0.0443442, 0.0161906, 0, 0.8039216, 0, 1,
-0.0210934, -0.044948, 0.00458447, 0, 0.8039216, 0, 1,
-0.0204477, -0.0443576, 0.00181938, 0, 0.8039216, 0, 1,
-0.0212926, -0.0478972, 0.0170404, 0, 0.8039216, 0, 1,
-0.0213428, -0.0476166, 0.01323, 0, 0.8039216, 0, 1,
-0.019989, -0.0410041, 0.0114696, 0, 0.8039216, 0, 1,
-0.0214115, -0.0452313, 0.00666999, 0, 0.8039216, 0, 1,
-0.0212739, -0.0461813, -0.00493415, 0, 0.8039216, 0, 1,
-0.0208739, -0.044915, 0.0134519, 0, 0.8039216, 0, 1,
-0.023728, -0.0471651, 0.00993075, 0, 0.8039216, 0, 1,
-0.0227516, -0.0432316, 0.0031539, 0, 0.8039216, 0, 1,
-0.0213723, -0.0442536, 0.0154185, 0, 0.8039216, 0, 1,
-0.0196231, -0.0486462, 0.0167633, 0, 0.8039216, 0, 1,
-0.0226534, -0.0491136, 0.00367624, 0, 0.8039216, 0, 1,
-0.0209949, -0.0453896, 0.0152904, 0, 0.8039216, 0, 1,
-0.0202784, -0.0411598, 0.0130338, 0, 0.8039216, 0, 1,
-0.0239925, -0.0475526, 0.0188462, 0, 0.8039216, 0, 1,
-0.0198928, -0.0436333, 0.0209358, 0, 0.8039216, 0, 1,
-0.0211894, -0.0437393, 0.0142502, 0, 0.8039216, 0, 1,
-0.0207237, -0.0429967, 0.0120953, 0, 0.8039216, 0, 1,
-0.0211558, -0.046894, 0.0163715, 0, 0.8039216, 0, 1,
-0.0202537, -0.0458687, 0.00323657, 0, 0.8039216, 0, 1,
-0.0219376, -0.0460094, 0.0145599, 0, 0.8039216, 0, 1,
-0.0193695, -0.04565, 0.00710881, 0, 0.8039216, 0, 1,
-0.0220525, -0.0485406, 0.0209799, 0, 0.8039216, 0, 1,
-0.0218802, -0.0456642, 0.00983799, 0, 0.8039216, 0, 1,
-0.0220655, -0.0448156, 0.0175193, 0, 0.8039216, 0, 1,
-0.0226893, -0.0447403, 0.0158938, 0, 0.8039216, 0, 1,
-0.0245681, -0.0434349, 0.0154002, 0, 0.8039216, 0, 1,
-0.020963, -0.0468725, 0.0229494, 0, 0.8039216, 0, 1,
-0.0211417, -0.0461028, 0.0123547, 0, 0.8039216, 0, 1,
-0.0231312, -0.0470203, 0.0238995, 0, 0.8039216, 0, 1,
-0.0222229, -0.0500041, 0.00712199, 0, 0.8039216, 0, 1,
-0.0220871, -0.0427152, 0.0222066, 0, 0.8039216, 0, 1,
-0.0203151, -0.0436287, 0.00409452, 0, 0.8039216, 0, 1,
-0.0239992, -0.0426511, 0.0178353, 0, 0.8039216, 0, 1,
-0.0242331, -0.0464782, 0.0180175, 0, 0.8039216, 0, 1,
-0.0199454, -0.0459855, 0.0203439, 0, 0.8039216, 0, 1,
-0.0186327, -0.0460935, 0.0123736, 0, 0.8039216, 0, 1,
-0.0202823, -0.0494332, 0.0186634, 0, 0.8039216, 0, 1,
-0.0223193, -0.0427555, 0.00297549, 0, 0.8039216, 0, 1,
-0.0231156, -0.0406007, 0.0208259, 0, 0.8039216, 0, 1,
-0.0234198, -0.0425343, 0.0153943, 0, 0.8039216, 0, 1,
-0.019426, -0.0456293, 0.00844618, 0, 0.8039216, 0, 1,
-0.0204777, -0.045206, 0.00819859, 0, 0.8039216, 0, 1,
-0.0238881, -0.0472845, 0.00546661, 0, 0.8039216, 0, 1,
-0.0228489, -0.0475837, 0.0147575, 0, 0.8039216, 0, 1,
-0.0184592, -0.0438219, 0.0119672, 0, 0.8039216, 0, 1,
-0.0217402, -0.0453621, 0.0207005, 0, 0.8039216, 0, 1,
-0.0192859, -0.0410028, -0.00192185, 0, 0.8039216, 0, 1,
-0.0225755, -0.0429269, 0.00205903, 0, 0.8039216, 0, 1,
-0.0188304, -0.0457156, 0.00120985, 0, 0.8039216, 0, 1,
-0.0221429, -0.0446384, 0.0181926, 0, 0.8039216, 0, 1,
-0.0225637, -0.0470069, 0.00691998, 0, 0.8039216, 0, 1,
-0.0200337, -0.0416431, 0.00100243, 0, 0.8039216, 0, 1,
-0.025137, -0.0449311, 0.0160667, 0, 0.8039216, 0, 1,
-0.019851, -0.0449529, 0.00803793, 0, 0.8039216, 0, 1,
-0.0196354, -0.0468169, 0.0138081, 0, 0.8039216, 0, 1,
-0.0229864, -0.0474914, 0.0136062, 0, 0.8039216, 0, 1,
-0.0231573, -0.0437509, 0.0115025, 0, 0.8039216, 0, 1,
-0.0229461, -0.0482457, 0.016377, 0, 0.8039216, 0, 1,
-0.0211542, -0.0432692, 0.0137985, 0, 0.8039216, 0, 1,
-0.0218076, -0.0467616, 0.0134255, 0, 0.8039216, 0, 1,
-0.0212997, -0.0473553, 0.0152453, 0, 0.8039216, 0, 1,
-0.0200946, -0.0461073, 0.0198206, 0, 0.8039216, 0, 1,
-0.0184893, -0.044982, 0.0227849, 0, 0.8039216, 0, 1,
-0.0214583, -0.0413946, 0.00778561, 0, 0.8039216, 0, 1,
-0.0216616, -0.0445722, 0.00403748, 0, 0.8039216, 0, 1,
-0.0220772, -0.0455923, 0.00509658, 0, 0.8039216, 0, 1,
-0.0238939, -0.0431876, 0.00987559, 0, 0.8039216, 0, 1,
-0.0241296, -0.0436681, 0.0142829, 0, 0.8039216, 0, 1,
-0.0209841, -0.0441647, 0.0137156, 0, 0.8039216, 0, 1,
-0.0209837, -0.0476995, 0.0153286, 0, 0.8039216, 0, 1,
-0.0217043, -0.045766, 0.0179015, 0, 0.8039216, 0, 1,
-0.0257287, -0.0452895, 0.00703663, 0, 0.8039216, 0, 1,
-0.0216118, -0.0463817, 0.0127601, 0, 0.8039216, 0, 1,
-0.0245254, -0.0463528, 0.0124892, 0, 0.8039216, 0, 1,
-0.0210046, -0.0449981, 0.0109864, 0, 0.8039216, 0, 1,
-0.0186297, -0.0455902, 0.014409, 0, 0.8039216, 0, 1,
-0.0226069, -0.0454607, 0.0103677, 0, 0.8039216, 0, 1,
-0.0237898, -0.0479941, 0.00475517, 0, 0.8039216, 0, 1,
0.0615651, -0.0114194, 0.00483789, 0, 0, 0, 1,
0.0605019, -0.00824608, 0.0106619, 0, 0, 0, 1,
0.0623924, -0.00963285, 0.00352807, 0, 0, 0, 1,
0.059006, -0.00940619, 0.000529788, 0, 0, 0, 1,
0.0597301, -0.00898795, -0.0025674, 0, 0, 0, 1,
0.0638109, -0.0090004, -0.00415325, 0, 0, 0, 1,
0.0620229, -0.0124383, -0.00251443, 0, 0, 0, 1,
0.0607175, -0.0109613, 0.00375691, 0, 0, 0, 1,
0.0605571, -0.0100278, -0.00757802, 0, 0, 0, 1,
0.0610262, -0.00786094, 0.00148893, 0, 0, 0, 1,
0.0609589, -0.00900374, 0.00165908, 0, 0, 0, 1,
0.0601022, -0.0081006, -0.0026045, 0, 0, 0, 1,
0.0578977, -0.0111126, 0.00437552, 0, 0, 0, 1,
0.0611611, -0.010686, -0.00672412, 0, 0, 0, 1,
0.058406, -0.012519, 0.00219169, 0, 0, 0, 1,
0.0591024, -0.00936807, -0.00225285, 0, 0, 0, 1,
0.0607447, -0.0119905, -0.00192169, 0, 0, 0, 1,
0.0634181, -0.0105947, -0.00565163, 0, 0, 0, 1,
0.0615561, -0.011278, 0.00254935, 0, 0, 0, 1,
0.0599859, -0.0116589, 0.00205188, 0, 0, 0, 1,
0.0585396, -0.00853178, -0.00356921, 0, 0, 0, 1,
-0.0222415, -0.0448273, 0.00781225, 0, 0.8039216, 0, 1,
-0.0218567, -0.0467811, 0.00421652, 0, 0.8039216, 0, 1,
-0.0223995, -0.0444564, 0.0102462, 0, 0.8039216, 0, 1,
-0.0207254, -0.0453332, 0.0180986, 0, 0.8039216, 0, 1,
-0.0209323, -0.0465877, 0.00323769, 0, 0.8039216, 0, 1,
-0.022822, -0.0434782, 0.0126367, 0, 0.8039216, 0, 1,
-0.0206775, -0.0469926, 0.00808987, 0, 0.8039216, 0, 1,
-0.0214357, -0.0459128, 0.014337, 0, 0.8039216, 0, 1,
-0.0232706, -0.0451583, 0.00908002, 0, 0.8039216, 0, 1,
-0.0213593, -0.0422036, 0.0103028, 0, 0.8039216, 0, 1,
-0.0204227, -0.0454872, 0.00803411, 0, 0.8039216, 0, 1,
-0.0230036, -0.0468201, 0.0200449, 0, 0.8039216, 0, 1,
-0.0231405, -0.0450521, 0.0139009, 0, 0.8039216, 0, 1,
-0.0237862, -0.0475959, 0.00989577, 0, 0.8039216, 0, 1,
-0.0255804, -0.0477347, 0.0133026, 0, 0.8039216, 0, 1,
-0.0256381, -0.0426319, 0.00995458, 0, 0.8039216, 0, 1,
-0.0208277, -0.0439628, 0.013262, 0, 0.8039216, 0, 1,
-0.0215948, -0.0436067, 0.0162881, 0, 0.8039216, 0, 1,
-0.0208174, -0.0448256, 0.0107842, 0, 0.8039216, 0, 1,
-0.022658, -0.0438518, 0.0114866, 0, 0.8039216, 0, 1,
-0.0216852, -0.0472854, 0.00314969, 0, 0.8039216, 0, 1,
-0.0216565, -0.0443403, 0.00456551, 0, 0.8039216, 0, 1,
-0.0232742, -0.0438123, 0.0150447, 0, 0.8039216, 0, 1,
-0.0209092, -0.0458118, 0.0171308, 0, 0.8039216, 0, 1,
-0.0198614, -0.044429, 0.000958952, 0, 0.8039216, 0, 1,
-0.0214263, -0.0464487, 0.0163167, 0, 0.8039216, 0, 1,
-0.0218862, -0.0478768, 0.0128977, 0, 0.8039216, 0, 1,
-0.0216276, -0.0481253, 0.00600978, 0, 0.8039216, 0, 1,
-0.0240364, -0.0436308, 0.0151474, 0, 0.8039216, 0, 1,
-0.0223776, -0.0455, 0.0111137, 0, 0.8039216, 0, 1,
-0.0206891, -0.0459077, 0.0106659, 0, 0.8039216, 0, 1,
-0.0220357, -0.0486933, 0.00611285, 0, 0.8039216, 0, 1,
-0.0215109, -0.0434798, -0.00234964, 0, 0.8039216, 0, 1,
-0.0206824, -0.0419092, 0.00532416, 0, 0.8039216, 0, 1,
-0.0211499, -0.0440318, 0.00924968, 0, 0.8039216, 0, 1,
-0.0224705, -0.0437375, 0.00100655, 0, 0.8039216, 0, 1,
-0.0214306, -0.0444432, 0.0112215, 0, 0.8039216, 0, 1,
-0.0220157, -0.0433856, 0.0067475, 0, 0.8039216, 0, 1,
-0.0188126, -0.0453071, 0.00705247, 0, 0.8039216, 0, 1,
-0.0213792, -0.0452876, -0.000661209, 0, 0.8039216, 0, 1,
-0.0199325, -0.0450106, 0.00366478, 0, 0.8039216, 0, 1,
-0.0239292, -0.04319, 0.00890843, 0, 0.8039216, 0, 1,
-0.0235879, -0.0445285, 0.0119572, 0, 0.8039216, 0, 1,
-0.0275231, -0.0444496, 0.00230318, 0, 0.8039216, 0, 1,
-0.0182854, -0.0443563, 0.00676521, 0, 0.8039216, 0, 1,
-0.0207996, -0.0433684, 0.00590429, 0, 0.8039216, 0, 1,
-0.0232913, -0.045986, 0.0160425, 0, 0.8039216, 0, 1,
-0.0223044, -0.0450054, 0.02191, 0, 0.8039216, 0, 1,
-0.0194477, -0.0450752, 0.010458, 0, 0.8039216, 0, 1,
-0.0206243, -0.0419919, 0.00367034, 0, 0.8039216, 0, 1,
-0.0224244, -0.0483051, 0.0154809, 0, 0.8039216, 0, 1,
-0.0221261, -0.0435714, 0.0180401, 0, 0.8039216, 0, 1,
-0.0232637, -0.043971, 0.00966666, 0, 0.8039216, 0, 1,
-0.022883, -0.0463717, 0.0132086, 0, 0.8039216, 0, 1,
-0.0208739, -0.0439865, 0.0108011, 0, 0.8039216, 0, 1,
-0.0203368, -0.0454695, 0.00317318, 0, 0.8039216, 0, 1,
-0.021286, -0.0412478, 0.0119208, 0, 0.8039216, 0, 1,
-0.0231444, -0.0455249, 0.00459838, 0, 0.8039216, 0, 1,
-0.0215679, -0.0485457, 0.00697714, 0, 0.8039216, 0, 1,
0.061905, -0.00939373, 0.0123001, 0, 0, 0, 1,
0.0603647, -0.0112247, 0.0137288, 0, 0, 0, 1,
0.0574431, -0.0102242, 0.00573549, 0, 0, 0, 1,
0.0597009, -0.00971945, 0.00606591, 0, 0, 0, 1,
0.0568234, -0.00889099, 0.00893737, 0, 0, 0, 1,
0.0574072, -0.00844344, -0.000241673, 0, 0, 0, 1,
0.0596764, -0.00647742, -0.00166426, 0, 0, 0, 1,
0.0554901, -0.0075588, 0.00954455, 0, 0, 0, 1,
-0.020884, -0.0448253, 0.00557152, 0, 0.8039216, 0, 1,
-0.0211976, -0.0444588, 0.00571278, 0, 0.8039216, 0, 1,
-0.0228109, -0.0446718, -0.00162447, 0, 0.8039216, 0, 1,
-0.0212249, -0.04488, -0.00222036, 0, 0.8039216, 0, 1,
-0.0220836, -0.0453684, 0.0172785, 0, 0.8039216, 0, 1,
-0.0216518, -0.0418001, 0.00570977, 0, 0.8039216, 0, 1,
-0.0223224, -0.0449175, -0.00892706, 0, 0.8039216, 0, 1,
-0.023088, -0.0452832, 0.00980459, 0, 0.8039216, 0, 1,
-0.0210824, -0.0462172, 0.00214997, 0, 0.8039216, 0, 1,
-0.0201731, -0.043871, 0.0119034, 0, 0.8039216, 0, 1,
-0.0221149, -0.0431302, 0.0118773, 0, 0.8039216, 0, 1,
-0.0206758, -0.044564, -3.6632e-05, 0, 0.8039216, 0, 1,
-0.0234681, -0.0444978, 0.00957916, 0, 0.8039216, 0, 1,
-0.0251138, -0.0441199, 0.0131405, 0, 0.8039216, 0, 1,
-0.0212299, -0.043301, 0.0142874, 0, 0.8039216, 0, 1,
-0.022277, -0.0458224, -0.00106244, 0, 0.8039216, 0, 1,
-0.0217341, -0.0444599, 0.00515358, 0, 0.8039216, 0, 1,
-0.020666, -0.0444397, 0.000305985, 0, 0.8039216, 0, 1,
-0.0238042, -0.0464071, 0.0130549, 0, 0.8039216, 0, 1,
-0.022052, -0.0443309, 0.0155095, 0, 0.8039216, 0, 1,
-0.0206035, -0.0447965, 0.00815241, 0, 0.8039216, 0, 1,
-0.0198885, -0.0467051, 0.0126122, 0, 0.8039216, 0, 1,
-0.0197163, -0.0449936, 0.0060495, 0, 0.8039216, 0, 1,
-0.0209153, -0.0447079, 0.0023911, 0, 0.8039216, 0, 1,
-0.0207705, -0.0450861, 0.00344245, 0, 0.8039216, 0, 1,
-0.0221288, -0.0442687, 0.0108887, 0, 0.8039216, 0, 1,
-0.021735, -0.0475449, 0.00705834, 0, 0.8039216, 0, 1,
-0.0213647, -0.0438344, -0.00190997, 0, 0.8039216, 0, 1,
-0.022639, -0.0485181, 0.0157895, 0, 0.8039216, 0, 1,
-0.0223642, -0.0461822, 0.0100415, 0, 0.8039216, 0, 1,
0.0594787, -0.00824071, 0.0112765, 0, 0, 0, 1,
0.0619834, -0.0111216, -0.000270808, 0, 0, 0, 1,
0.0604641, -0.0111558, 0.00802687, 0, 0, 0, 1,
0.0601607, -0.00838109, -0.00536228, 0, 0, 0, 1,
0.0588683, -0.0105472, -0.00378106, 0, 0, 0, 1,
0.0608298, -0.007366, -0.00253736, 0, 0, 0, 1,
0.0605146, -0.0123193, 0.0114287, 0, 0, 0, 1,
0.0624146, -0.0112753, -0.000589016, 0, 0, 0, 1,
0.062382, -0.010613, 0.00628954, 0, 0, 0, 1,
0.0616891, -0.00954339, 0.00501299, 0, 0, 0, 1,
0.0613014, -0.0104518, 0.00345334, 0, 0, 0, 1,
0.0646988, -0.010254, 0.00349914, 0, 0, 0, 1,
0.0604107, -0.0115198, 0.000603219, 0, 0, 0, 1,
0.060158, -0.00927101, 0.00324295, 0, 0, 0, 1,
0.0601197, -0.0129354, 0.00128504, 0, 0, 0, 1,
0.0595516, -0.0102383, 4.81212e-05, 0, 0, 0, 1,
0.0593776, -0.0110439, 0.0013789, 0, 0, 0, 1,
0.0631986, -0.00990726, 0.00484874, 0, 0, 0, 1,
0.0600028, -0.0115261, 0.0014218, 0, 0, 0, 1,
0.0639068, -0.00954018, -0.00792333, 0, 0, 0, 1,
0.0618789, -0.0127468, 0.00713411, 0, 0, 0, 1,
0.0587245, -0.012889, 0.00177505, 0, 0, 0, 1,
0.0626287, -0.0113716, -0.00385835, 0, 0, 0, 1,
0.0588086, -0.0091567, -0.00219718, 0, 0, 0, 1,
0.0643593, -0.0125547, 0.0103515, 0, 0, 0, 1,
0.0609276, -0.00894115, 0.00179318, 0, 0, 0, 1,
0.0606349, -0.00890573, -0.00292431, 0, 0, 0, 1,
0.0620316, -0.0130424, 0.00806114, 0, 0, 0, 1,
0.060866, -0.0112082, 0.00899847, 0, 0, 0, 1,
0.0606319, -0.0103437, -0.00978346, 0, 0, 0, 1,
0.060977, -0.0104323, 0.000565915, 0, 0, 0, 1,
0.0614203, -0.0108144, 0.000386718, 0, 0, 0, 1,
0.0607256, -0.00980182, -0.00255826, 0, 0, 0, 1,
0.0604799, -0.00821551, 0.00442095, 0, 0, 0, 1,
0.0622716, -0.0117834, 0.00495539, 0, 0, 0, 1,
0.0613229, -0.0109662, -0.00220046, 0, 0, 0, 1,
0.0599528, -0.0133113, 0.000805838, 0, 0, 0, 1,
0.0605994, -0.0109337, 0.00370303, 0, 0, 0, 1,
0.0615868, -0.0112796, -0.000516271, 0, 0, 0, 1,
0.0595308, -0.0116468, 0.00106975, 0, 0, 0, 1,
0.0628333, -0.012437, 0.00883964, 0, 0, 0, 1,
0.0605057, -0.0114621, 0.00427488, 0, 0, 0, 1,
0.0609972, -0.00961557, 8.5199e-06, 0, 0, 0, 1,
0.0600092, -0.00913549, 0.00248726, 0, 0, 0, 1,
0.0603395, -0.00912871, 0.00338918, 0, 0, 0, 1,
0.0605854, -0.0106462, -0.00811418, 0, 0, 0, 1,
0.0594613, -0.00970633, 0.000228873, 0, 0, 0, 1,
0.0621357, -0.0100984, 0.00030153, 0, 0, 0, 1,
0.0594178, -0.0136237, 0.00396862, 0, 0, 0, 1,
0.0573748, -0.0099129, -0.00111851, 0, 0, 0, 1,
0.0571635, -0.0109801, -0.000394048, 0, 0, 0, 1,
0.0577753, -0.00932771, 0.0020172, 0, 0, 0, 1,
0.0585304, -0.00836989, -0.00069162, 0, 0, 0, 1,
0.0599197, -0.0120429, -0.00323276, 0, 0, 0, 1,
0.0570943, -0.0093666, 0.0011739, 0, 0, 0, 1,
0.0589788, -0.00805518, 0.00531933, 0, 0, 0, 1,
0.0561006, -0.00837478, 0.00440256, 0, 0, 0, 1,
0.0588358, -0.0121684, 0.0120367, 0, 0, 0, 1,
0.0585837, -0.0115023, 0.00258106, 0, 0, 0, 1,
0.057098, -0.00897674, 0.00817579, 0, 0, 0, 1,
0.0615177, -0.011127, 0.00508992, 0, 0, 0, 1,
0.0580025, -0.00858571, 0.0022176, 0, 0, 0, 1,
0.0521923, -0.00660692, 0.0128008, 0, 0, 0, 1,
0.0576378, -0.00879586, 0.00706887, 0, 0, 0, 1,
0.0570047, -0.00861263, -0.0013744, 0, 0, 0, 1,
0.0595704, -0.011024, 0.00168796, 0, 0, 0, 1,
0.0566791, -0.00847844, 0.00601824, 0, 0, 0, 1,
0.0560687, -0.00972541, 0.00599363, 0, 0, 0, 1,
0.0604336, -0.00980268, 0.00294601, 0, 0, 0, 1,
0.0564513, -0.00811645, 0.0047352, 0, 0, 0, 1,
0.058474, -0.00742528, 0.00330829, 0, 0, 0, 1,
0.0564331, -0.00909753, 0.00678921, 0, 0, 0, 1,
0.0597079, -0.00838009, 0.000955232, 0, 0, 0, 1,
0.0596186, -0.00937561, 0.0106501, 0, 0, 0, 1,
0.0560424, -0.0106017, -0.00322694, 0, 0, 0, 1,
0.0560322, -0.00746366, 0.00816929, 0, 0, 0, 1,
0.0559746, -0.0099311, -0.00287921, 0, 0, 0, 1,
0.0584866, -0.00776131, 0.00330332, 0, 0, 0, 1,
0.0576523, -0.00906006, 0.00470715, 0, 0, 0, 1,
0.0581678, -0.00956958, 0.00499682, 0, 0, 0, 1,
0.0572958, -0.00832232, 0.00167477, 0, 0, 0, 1,
0.058372, -0.0118224, 0.00156091, 0, 0, 0, 1,
0.060346, -0.00849174, 0.0108969, 0, 0, 0, 1,
0.0567653, -0.00608642, 0.00741082, 0, 0, 0, 1,
0.0583105, -0.01024, 0.00583418, 0, 0, 0, 1,
0.0579681, -0.00785526, 0.00434701, 0, 0, 0, 1,
0.0557756, -0.00894472, 0.00566352, 0, 0, 0, 1,
0.0586295, -0.00623367, 0.0053967, 0, 0, 0, 1,
0.0549749, -0.00742422, -0.000608967, 0, 0, 0, 1,
0.0585207, -0.0119364, 0.0141013, 0, 0, 0, 1,
0.0577714, -0.0118998, 0.00895478, 0, 0, 0, 1,
0.0609774, -0.0109087, 0.0154679, 0, 0, 0, 1,
0.0583365, -0.00814638, 0.0113259, 0, 0, 0, 1,
0.0557653, -0.0077785, 0.00492371, 0, 0, 0, 1,
0.0595086, -0.0107166, 0.00291277, 0, 0, 0, 1,
0.0580576, -0.0113606, 0.00943292, 0, 0, 0, 1,
0.0585356, -0.012382, 0.0126893, 0, 0, 0, 1,
0.0591328, -0.0102972, -0.00414354, 0, 0, 0, 1,
0.058046, -0.00861641, 0.0114105, 0, 0, 0, 1,
0.0548737, -0.0101817, 0.012738, 0, 0, 0, 1,
0.0588405, -0.00979834, 0.00868034, 0, 0, 0, 1,
0.0545247, -0.0106133, -0.00329577, 0, 0, 0, 1,
0.0596652, -0.0108993, -7.90873e-05, 0, 0, 0, 1,
0.0530249, -0.00655292, 0.00790205, 0, 0, 0, 1,
0.0574171, -0.0117794, 0.00367339, 0, 0, 0, 1,
0.057074, -0.00686488, 0.012714, 0, 0, 0, 1,
0.0582537, -0.0093267, 0.00572569, 0, 0, 0, 1,
0.0576155, -0.00884401, 0.00329802, 0, 0, 0, 1,
0.0618011, -0.00770923, 0.00178878, 0, 0, 0, 1,
0.0538085, -0.0103938, 0.00369883, 0, 0, 0, 1,
0.0590279, -0.0113242, 0.00368835, 0, 0, 0, 1,
0.0579662, -0.0120256, 0.00707634, 0, 0, 0, 1,
0.0589637, -0.0113875, 0.00465658, 0, 0, 0, 1,
0.0587157, -0.00971578, 0.00365459, 0, 0, 0, 1,
0.0605958, -0.0105004, 0.00674488, 0, 0, 0, 1,
0.0578624, -0.0126045, 0.000229537, 0, 0, 0, 1,
0.0617577, -0.00785544, 0.00141288, 0, 0, 0, 1,
0.0588341, -0.00625281, 0.00207669, 0, 0, 0, 1,
0.0561407, -0.0099397, 0.00553477, 0, 0, 0, 1,
0.0569665, -0.00861786, 0.0047911, 0, 0, 0, 1,
0.0583707, -0.00879823, -0.00909986, 0, 0, 0, 1,
0.0593648, -0.0109492, 0.0073572, 0, 0, 0, 1,
0.0559387, -0.00881564, 0.00315713, 0, 0, 0, 1,
0.0585948, -0.00843517, 0.000716245, 0, 0, 0, 1,
0.0579553, -0.0102646, -0.000361783, 0, 0, 0, 1,
0.0576384, -0.00868083, 0.00626685, 0, 0, 0, 1,
0.0597131, -0.00999004, 0.00542337, 0, 0, 0, 1,
0.0598217, -0.00867368, 0.00156611, 0, 0, 0, 1,
0.0574684, -0.00871725, -0.00182041, 0, 0, 0, 1,
0.0560606, -0.00814846, 0.0113239, 0, 0, 0, 1,
0.0591128, -0.0119688, -0.00210358, 0, 0, 0, 1,
0.0599115, -0.0122722, 0.0131905, 0, 0, 0, 1,
0.0585071, -0.0115935, 0.0110221, 0, 0, 0, 1,
0.0576206, -0.0106988, 0.000860496, 0, 0, 0, 1,
0.0585664, -0.011012, 0.00355595, 0, 0, 0, 1,
0.0580541, -0.0112273, 0.00820994, 0, 0, 0, 1,
0.0590993, -0.0112264, 0.00880704, 0, 0, 0, 1,
0.0454512, -0.0123173, -0.0280378, 0, 0, 0, 1,
-0.0104089, 0.0237953, -0.00967125, 1, 0, 0, 1,
-0.00954682, 0.00541017, -0.061399, 1, 0, 0, 1,
-0.0118897, 0.00999276, -0.0499399, 1, 0, 0, 1,
-0.00882252, -0.00572622, -0.105547, 1, 0, 0, 1,
-0.00275926, 0.0060367, -0.041372, 1, 0, 0, 1,
-0.0117844, -0.00388639, -0.102729, 1, 0, 0, 1,
-0.0128323, 0.0105863, -0.0737345, 1, 0, 0, 1,
-0.0102828, -0.000489453, -0.112403, 1, 0, 0, 1,
-0.0171595, -0.010455, -0.138903, 1, 0, 0, 1,
-0.0100217, -0.00295068, -0.0960525, 1, 0, 0, 1,
-0.0117859, 0.00955618, -0.0725604, 1, 0, 0, 1,
-0.0126219, 0.0187964, -0.0115062, 1, 0, 0, 1,
-0.00445579, 0.0176589, -0.0138325, 1, 0, 0, 1,
-0.00751278, 0.0209102, -0.00522342, 1, 0, 0, 1,
-0.0105533, 0.0237951, -0.0024599, 1, 0, 0, 1,
-0.00835646, -0.00183783, -0.106053, 1, 0, 0, 1,
-0.0123101, 0.00480181, -0.0699993, 1, 0, 0, 1,
-0.0106136, 0.0150573, -0.00845724, 1, 0, 0, 1,
-0.0120638, 0.00528978, -0.0925607, 1, 0, 0, 1,
0.0357177, 0.00363127, 0.00284482, 0, 0, 0, 1,
0.0371472, 0.00322565, 0.00216279, 0, 0, 0, 1,
0.0451293, 0.00167315, 0.00358953, 0, 0, 0, 1,
0.0490713, -0.00702633, 0.0004863, 0, 0, 0, 1,
0.044655, -0.00921404, -0.0102357, 0, 0, 0, 1,
0.0547532, -0.00767211, 0.011418, 0, 0, 0, 1,
0.043949, -0.00499887, 0.00227104, 0, 0, 0, 1,
0.033189, 0.00314373, 0.0036721, 0, 0, 0, 1,
-0.0158845, -0.00986643, -0.120636, 1, 0, 0, 1,
-0.00798596, -0.00115027, -0.0930881, 1, 0, 0, 1,
-0.0137619, -0.000901226, -0.1081, 1, 0, 0, 1,
-0.0192471, -0.0167788, -0.148607, 1, 0, 0, 1,
-0.011809, 0.00469023, -0.0896798, 1, 0, 0, 1,
-0.0146056, 0.009245, -0.0475536, 1, 0, 0, 1,
-0.0150933, 0.0048536, -0.0548269, 1, 0, 0, 1,
-0.0141832, -0.00133572, -0.0918304, 1, 0, 0, 1,
-0.015504, -0.023722, -0.164337, 1, 0, 0, 1,
-0.0194533, -0.0144065, -0.148527, 1, 0, 0, 1,
-0.0209005, -0.0204198, -0.192468, 1, 0, 0, 1,
-0.0188264, -0.0202139, -0.180847, 1, 0, 0, 1,
-0.0127779, 0.00279917, -0.0786768, 1, 0, 0, 1,
-0.0199878, -0.0216666, -0.1803, 1, 0, 0, 1,
-0.0120915, 7.51682e-07, -0.0664353, 1, 0, 0, 1,
-0.010827, 0.00814577, -0.0640856, 1, 0, 0, 1,
-0.0148152, -0.0139322, -0.133467, 1, 0, 0, 1,
-0.0161467, -0.016485, -0.148493, 1, 0, 0, 1,
-0.0160511, -0.00946683, -0.116779, 1, 0, 0, 1,
-0.0161405, -0.00834842, -0.123897, 1, 0, 0, 1,
-0.0107432, 0.0112308, -0.0285943, 1, 0, 0, 1,
-0.00941368, 0.00959192, -0.0419779, 1, 0, 0, 1,
-0.016936, 0.00608945, -0.0920815, 1, 0, 0, 1,
-0.0149094, -0.00537153, -0.127044, 1, 0, 0, 1,
-0.0090598, -0.0083449, -0.125094, 1, 0, 0, 1,
-0.00833894, -0.0034321, -0.0799591, 1, 0, 0, 1,
-0.0187394, -0.0152047, -0.137744, 1, 0, 0, 1,
-0.0116535, -0.00848528, -0.117197, 1, 0, 0, 1,
-0.0112206, -0.00474222, -0.110094, 1, 0, 0, 1,
-0.00808099, -0.00341407, -0.106455, 1, 0, 0, 1,
-0.00901529, 0.00447785, -0.0641462, 1, 0, 0, 1,
-0.0100595, 0.00556175, -0.0685588, 1, 0, 0, 1,
-0.0118224, 0.00337682, -0.0732822, 1, 0, 0, 1,
-0.0133566, 0.012481, -0.0520976, 1, 0, 0, 1,
-0.00255288, 0.00775675, -0.0576322, 1, 0, 0, 1,
-0.00699785, 0.00726036, -0.0500573, 1, 0, 0, 1,
-0.0081272, 0.00208711, -0.0857592, 1, 0, 0, 1,
-0.00914123, 0.014069, -0.0337228, 1, 0, 0, 1,
-0.010141, 0.0102889, -0.0610606, 1, 0, 0, 1,
-0.0116518, 0.00701751, -0.0678241, 1, 0, 0, 1,
-0.0154235, 0.000518288, -0.0898073, 1, 0, 0, 1,
-0.0127951, -0.0127493, -0.131116, 1, 0, 0, 1,
-0.0110912, -0.00540126, -0.102269, 1, 0, 0, 1,
-0.0157372, -0.00522885, -0.0964882, 1, 0, 0, 1,
-0.0110352, 0.0103645, -0.065742, 1, 0, 0, 1,
-0.0131545, 0.00904819, -0.0592014, 1, 0, 0, 1,
-0.0119828, 0.00335741, -0.0933575, 1, 0, 0, 1,
0.0169717, 0.0129781, 0.0054395, 0, 0, 0, 1,
0.0291614, 0.00767358, 0.00271452, 0, 0, 0, 1,
0.0424101, -0.00287575, 0.00339621, 0, 0, 0, 1,
0.0460594, -0.000131702, 0.00776344, 0, 0, 0, 1,
0.0500399, -0.00516417, -0.00404414, 0, 0, 0, 1,
0.054148, -0.00896673, 0.00408928, 0, 0, 0, 1,
0.0557877, -0.0101744, -0.010551, 0, 0, 0, 1,
0.0566975, -0.0106055, 0.00791452, 0, 0, 0, 1,
0.0481185, -0.00245042, 0.00565698, 0, 0, 0, 1,
0.0335189, 0.00102821, 0.0199998, 0, 0, 0, 1,
0.0507252, -0.00587411, -0.00300148, 0, 0, 0, 1,
0.0550302, -0.00766317, 0.0106118, 0, 0, 0, 1,
0.0474204, -0.00175925, 0.00367148, 0, 0, 0, 1,
0.0302282, 0.00220633, -0.00394852, 0, 0, 0, 1,
0.0407151, -0.000235234, -0.00134203, 0, 0, 0, 1,
0.0294141, 0.00370818, -0.00516306, 0, 0, 0, 1,
0.04947, -0.00489582, -0.00183878, 0, 0, 0, 1,
0.0387895, 0.00319641, -0.00762304, 0, 0, 0, 1,
0.0504626, -0.00974138, 0.00154856, 0, 0, 0, 1,
0.0305081, 0.00408691, 0.00494746, 0, 0, 0, 1,
0.0474299, -0.00191162, 0.00293413, 0, 0, 0, 1,
0.0356042, 0.00272444, 0.0156965, 0, 0, 0, 1,
0.0217446, 0.00782978, -0.00366482, 0, 0, 0, 1,
0.0558056, -0.00661438, 0.00640769, 0, 0, 0, 1,
0.0317567, 0.00635479, 0.00310502, 0, 0, 0, 1,
0.0529789, -0.00923252, -0.00239121, 0, 0, 0, 1,
0.037446, 0.000458223, -0.00171451, 0, 0, 0, 1,
0.0581908, -0.0106526, -0.00393471, 0, 0, 0, 1,
0.0605993, -0.0114288, -0.000287795, 0, 0, 0, 1,
0.0513532, -0.00332404, -0.00123897, 0, 0, 0, 1,
0.0543328, -0.00667842, -0.00276732, 0, 0, 0, 1,
0.0183807, -0.00805563, -0.0562366, 0, 0, 0, 1,
-0.0186661, -0.0111683, -0.117656, 0, 0, 0, 1,
0.0414489, 0.00100455, 0.0151506, 0, 0, 0, 1,
0.049831, -0.00312961, -0.00434046, 0, 0, 0, 1,
0.0548418, -0.00424023, 0.000248617, 0, 0, 0, 1,
0.0232621, 0.010571, 0.00319005, 0, 0, 0, 1,
0.0396667, 0.0033939, -0.00254618, 0, 0, 0, 1,
0.060624, -0.0112842, 0.00133835, 0, 0, 0, 1,
0.0535137, -0.00281288, -0.000145218, 0, 0, 0, 1,
0.044104, -0.00311658, 0.00165518, 0, 0, 0, 1,
0.0248292, 0.00537637, 0.00674953, 0, 0, 0, 1,
0.0414083, -0.000455653, 0.00505968, 0, 0, 0, 1,
0.0568232, -0.00722061, -0.00176511, 0, 0, 0, 1,
0.0543498, -0.00454622, -0.00193067, 0, 0, 0, 1,
0.0359021, 0.00521797, 0.0122278, 0, 0, 0, 1,
0.0499256, -0.00888146, -0.00565542, 0, 0, 0, 1,
0.0512119, -0.00455375, 0.00548056, 0, 0, 0, 1,
0.0412672, -0.00106388, 0.00424907, 0, 0, 0, 1,
0.0350701, 0.0048813, -0.000759242, 0, 0, 0, 1,
0.0449414, -0.000929474, -0.00377543, 0, 0, 0, 1,
0.0113374, -0.0119405, -0.0670087, 0, 0, 0, 1,
-0.0102696, 0.0282878, 0.0209961, 0, 0, 1, 1,
-0.0137318, 0.0264393, 0.00980357, 0, 0, 1, 1,
-0.0100819, 0.0271898, 0.0174362, 0, 0, 1, 1,
-0.00848981, 0.0293538, 0.0168312, 0, 0, 1, 1,
-0.0100527, 0.0243865, 0.0163955, 0, 0, 1, 1,
-0.0101109, 0.0287325, 0.0162384, 0, 0, 1, 1,
-0.00679631, 0.0271408, 0.0133718, 0, 0, 1, 1,
-0.00983778, 0.0230228, 0.0136499, 0, 0, 1, 1,
-0.0100053, 0.0243386, 0.0167752, 0, 0, 1, 1,
-0.0114464, 0.0275468, 0.00962702, 0, 0, 1, 1,
-0.0079621, 0.0261701, 0.0120553, 0, 0, 1, 1,
-0.00894135, 0.0278949, 0.0129402, 0, 0, 1, 1,
-0.011235, 0.0263966, 0.0133823, 0, 0, 1, 1,
-0.00975067, 0.0271189, 0.00946479, 0, 0, 1, 1,
-0.0131884, 0.0250117, 0.0189004, 0, 0, 1, 1,
-0.00915161, 0.0277849, 0.0146565, 0, 0, 1, 1,
-0.00682502, 0.026755, 0.0119884, 0, 0, 1, 1,
-0.00606389, 0.0272248, 0.0189761, 0, 0, 1, 1,
-0.0112538, 0.0273165, 0.00914202, 0, 0, 1, 1,
-0.00762168, 0.0303376, 0.0138994, 0, 0, 1, 1,
-0.0109021, 0.0288172, 0.0111349, 0, 0, 1, 1,
-0.00706274, 0.0282865, 0.0156126, 0, 0, 1, 1,
-0.00919575, 0.023982, 0.00936446, 0, 0, 1, 1,
-0.00913969, 0.0283912, 0.0154593, 0, 0, 1, 1,
-0.00954215, 0.024589, 0.0214024, 0, 0, 1, 1,
-0.00756885, 0.0284213, 0.0174655, 0, 0, 1, 1,
-0.00665317, 0.024219, 0.015278, 0, 0, 1, 1,
-0.0110634, 0.0239957, 0.018463, 0, 0, 1, 1,
-0.00661914, 0.025588, 0.00558132, 0, 0, 1, 1,
-0.00892307, 0.0306318, 0.0140666, 0, 0, 1, 1,
-0.00933177, 0.0264503, 0.0163681, 0, 0, 1, 1,
-0.00697938, 0.0223958, 0.0164659, 0, 0, 1, 1,
-0.0109777, 0.0254437, 0.0187151, 0, 0, 1, 1,
-0.0120141, 0.0269899, 0.0118639, 0, 0, 1, 1,
-0.00871812, 0.0276269, 0.00653824, 0, 0, 1, 1,
-0.0115548, 0.0267786, 0.00812987, 0, 0, 1, 1,
-0.0121489, 0.0245186, 0.00603117, 0, 0, 1, 1,
-0.0119324, 0.0290431, 0.0101157, 0, 0, 1, 1,
-0.0118678, 0.0264786, 0.00746853, 0, 0, 1, 1,
-0.00871356, 0.0237823, 0.0175548, 0, 0, 1, 1,
-0.0105039, 0.0292328, 0.0118308, 0, 0, 1, 1,
-0.0091493, 0.026237, 0.00909589, 0, 0, 1, 1,
-0.0115165, 0.0248263, 0.0112216, 0, 0, 1, 1,
-0.00992583, 0.0238752, 0.0218562, 0, 0, 1, 1,
-0.00993673, 0.0275121, 0.00800056, 0, 0, 1, 1,
-0.00906338, 0.0310028, 0.00426915, 0, 0, 1, 1,
-0.0118239, 0.024042, 0.0149493, 0, 0, 1, 1,
-0.0111421, 0.0289015, 0.00559211, 0, 0, 1, 1,
-0.0113797, 0.0277816, 0.0222316, 0, 0, 1, 1,
-0.00986206, 0.0264902, 0.00474868, 0, 0, 1, 1,
-0.00573201, 0.0289302, 0.0189155, 0, 0, 1, 1,
-0.00832712, 0.0304806, 0.000307511, 0, 0, 1, 1,
-0.00679564, 0.0262042, 0.015485, 0, 0, 1, 1,
-0.0130541, 0.0263821, 0.00799086, 0, 0, 1, 1,
-0.0107218, 0.0241173, 0.00885294, 0, 0, 1, 1,
-0.0102764, 0.0273905, 0.00945649, 0, 0, 1, 1,
-0.010388, 0.0251407, 0.0231797, 0, 0, 1, 1,
-0.00653349, 0.0266279, 0.012035, 0, 0, 1, 1,
-0.00723016, 0.0308112, 0.0119328, 0, 0, 1, 1,
-0.0137295, 0.0284478, 0.000448284, 0, 0, 1, 1,
-0.00642578, 0.021937, 0.0202086, 0, 0, 1, 1,
-0.00842373, 0.0261524, 0.0177347, 0, 0, 1, 1,
-0.00818549, 0.0217926, 0.0203974, 0, 0, 1, 1,
-0.00771042, 0.0271938, 0.00900855, 0, 0, 1, 1,
-0.01113, 0.0263657, 0.0119497, 0, 0, 1, 1,
-0.0117861, 0.0271739, 0.0117943, 0, 0, 1, 1,
-0.00769249, 0.02631, 0.00923256, 0, 0, 1, 1,
-0.0125462, 0.0271379, 0.0165152, 0, 0, 1, 1,
-0.0081182, 0.0267064, 0.00975211, 0, 0, 1, 1,
-0.00715706, 0.0233023, 0.0109862, 0, 0, 1, 1,
-0.00951019, 0.0256183, 0.00972567, 0, 0, 1, 1,
-0.0129219, 0.028582, 0.0198644, 0, 0, 1, 1,
-0.00939765, 0.0248106, 0.0215154, 0, 0, 1, 1,
-0.0106514, 0.0262053, 0.000950693, 0, 0, 1, 1,
-0.00953833, 0.0275344, 0.00566691, 0, 0, 1, 1,
-0.00752898, 0.0277853, 0.0141119, 0, 0, 1, 1,
-0.0100811, 0.0276051, 0.0102856, 0, 0, 1, 1,
-0.00944503, 0.0292187, 0.00678969, 0, 0, 1, 1,
-0.0094808, 0.0304793, 0.00506879, 0, 0, 1, 1,
-0.00550303, 0.0280735, 0.0215714, 0, 0, 1, 1,
-0.0067349, 0.0278645, 0.00997695, 0, 0, 1, 1,
-0.00827914, 0.0262112, 0.00257818, 0, 0, 1, 1,
-0.00903212, 0.0273792, 0.00438174, 0, 0, 1, 1,
-0.00881656, 0.0284194, 0.0167786, 0, 0, 1, 1,
-0.0125575, 0.0218558, 0.0278779, 0, 0, 1, 1,
-0.00815451, 0.0285895, 0.00951594, 0, 0, 1, 1,
-0.0101773, 0.0264846, 0.0289299, 0, 0, 1, 1,
-0.0066145, 0.0285738, 0.00980551, 0, 0, 1, 1,
-0.00975177, 0.0297376, 0.00594824, 0, 0, 1, 1,
-0.00786561, 0.0260781, 0.00437162, 0, 0, 1, 1,
-0.0111383, 0.0276527, 0.00350812, 0, 0, 1, 1,
-0.0125779, 0.0244579, 0.0182879, 0, 0, 1, 1,
-0.00622485, 0.0273065, 0.0149143, 0, 0, 1, 1,
-0.00848216, 0.0249242, 0.00150063, 0, 0, 1, 1,
-0.0105461, 0.0242417, 0.00873604, 0, 0, 1, 1,
-0.0093052, 0.0252476, 0.00824535, 0, 0, 1, 1,
-0.0083247, 0.0249034, 0.0117392, 0, 0, 1, 1,
-0.00966163, 0.0272379, 0.0201071, 0, 0, 1, 1
]);
this.values[7] = v;
this.buf[7] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[7]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[7], gl.STATIC_DRAW);
this.mvMatLoc[7] = gl.getUniformLocation(this.prog[7],"mvMatrix");
this.prMatLoc[7] = gl.getUniformLocation(this.prog[7],"prMatrix");
// ****** text object 9 ******
this.flags[9] = 40;
this.prog[9]  = gl.createProgram();
gl.attachShader(this.prog[9], this.getShader( gl, "plot_3d1vshader9" ));
gl.attachShader(this.prog[9], this.getShader( gl, "plot_3d1fshader9" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[9], 0, "aPos");
gl.bindAttribLocation(this.prog[9], 1, "aCol");
gl.linkProgram(this.prog[9]);
var texts = [
"p1"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[9] = gl.getAttribLocation(this.prog[9], "aOfs");
this.texture[9] = gl.createTexture();
this.texLoc[9] = gl.getAttribLocation(this.prog[9], "aTexcoord");
this.sampler[9] = gl.getUniformLocation(this.prog[9],"uSampler");
handleLoadedTexture(this.texture[9], document.getElementById("plot_3d1textureCanvas"));
this.offsets[9]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
0.01858785, -0.06426319, -0.229995, 0, -0.5, 0.5, 0.5,
0.01858785, -0.06426319, -0.229995, 1, -0.5, 0.5, 0.5,
0.01858785, -0.06426319, -0.229995, 1, 1.5, 0.5, 0.5,
0.01858785, -0.06426319, -0.229995, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<1; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[9]["stride"]*(4*i + j) + this.offsets[9]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[9] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3
]);
this.buf[9] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[9]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[9], gl.STATIC_DRAW);
this.ibuf[9] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[9]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[9] = gl.getUniformLocation(this.prog[9],"mvMatrix");
this.prMatLoc[9] = gl.getUniformLocation(this.prog[9],"prMatrix");
this.textScaleLoc[9] = gl.getUniformLocation(this.prog[9],"textScale");
// ****** text object 10 ******
this.flags[10] = 40;
this.prog[10]  = gl.createProgram();
gl.attachShader(this.prog[10], this.getShader( gl, "plot_3d1vshader10" ));
gl.attachShader(this.prog[10], this.getShader( gl, "plot_3d1fshader10" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[10], 0, "aPos");
gl.bindAttribLocation(this.prog[10], 1, "aCol");
gl.linkProgram(this.prog[10]);
var texts = [
"p2"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[10] = gl.getAttribLocation(this.prog[10], "aOfs");
this.texture[10] = gl.createTexture();
this.texLoc[10] = gl.getAttribLocation(this.prog[10], "aTexcoord");
this.sampler[10] = gl.getUniformLocation(this.prog[10],"uSampler");
handleLoadedTexture(this.texture[10], document.getElementById("plot_3d1textureCanvas"));
this.offsets[10]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
-0.04315471, -0.008945951, -0.229995, 0, -0.5, 0.5, 0.5,
-0.04315471, -0.008945951, -0.229995, 1, -0.5, 0.5, 0.5,
-0.04315471, -0.008945951, -0.229995, 1, 1.5, 0.5, 0.5,
-0.04315471, -0.008945951, -0.229995, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<1; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[10]["stride"]*(4*i + j) + this.offsets[10]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[10] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3
]);
this.buf[10] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[10]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[10], gl.STATIC_DRAW);
this.ibuf[10] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[10]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[10] = gl.getUniformLocation(this.prog[10],"mvMatrix");
this.prMatLoc[10] = gl.getUniformLocation(this.prog[10],"prMatrix");
this.textScaleLoc[10] = gl.getUniformLocation(this.prog[10],"textScale");
// ****** text object 11 ******
this.flags[11] = 40;
this.prog[11]  = gl.createProgram();
gl.attachShader(this.prog[11], this.getShader( gl, "plot_3d1vshader11" ));
gl.attachShader(this.prog[11], this.getShader( gl, "plot_3d1fshader11" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[11], 0, "aPos");
gl.bindAttribLocation(this.prog[11], 1, "aCol");
gl.linkProgram(this.prog[11]);
var texts = [
"p3"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[11] = gl.getAttribLocation(this.prog[11], "aOfs");
this.texture[11] = gl.createTexture();
this.texLoc[11] = gl.getAttribLocation(this.prog[11], "aTexcoord");
this.sampler[11] = gl.getUniformLocation(this.prog[11],"uSampler");
handleLoadedTexture(this.texture[11], document.getElementById("plot_3d1textureCanvas"));
this.offsets[11]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
-0.04315471, -0.06426319, -0.08176905, 0, -0.5, 0.5, 0.5,
-0.04315471, -0.06426319, -0.08176905, 1, -0.5, 0.5, 0.5,
-0.04315471, -0.06426319, -0.08176905, 1, 1.5, 0.5, 0.5,
-0.04315471, -0.06426319, -0.08176905, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<1; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[11]["stride"]*(4*i + j) + this.offsets[11]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[11] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3
]);
this.buf[11] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[11]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[11], gl.STATIC_DRAW);
this.ibuf[11] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[11]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[11] = gl.getUniformLocation(this.prog[11],"mvMatrix");
this.prMatLoc[11] = gl.getUniformLocation(this.prog[11],"prMatrix");
this.textScaleLoc[11] = gl.getUniformLocation(this.prog[11],"textScale");
// ****** lines object 14 ******
this.flags[14] = 128;
this.prog[14]  = gl.createProgram();
gl.attachShader(this.prog[14], this.getShader( gl, "plot_3d1vshader14" ));
gl.attachShader(this.prog[14], this.getShader( gl, "plot_3d1fshader14" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[14], 0, "aPos");
gl.bindAttribLocation(this.prog[14], 1, "aCol");
gl.linkProgram(this.prog[14]);
this.offsets[14]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02890643, -0.04, -0.195789,
-0.02890643, -0.04, 0.03225087,
-0.02890643, -0.02, -0.195789,
-0.02890643, -0.02, 0.03225087,
-0.02890643, 0, -0.195789,
-0.02890643, 0, 0.03225087,
-0.02890643, 0.02, -0.195789,
-0.02890643, 0.02, 0.03225087
]);
this.values[14] = v;
this.buf[14] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[14]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[14], gl.STATIC_DRAW);
this.mvMatLoc[14] = gl.getUniformLocation(this.prog[14],"mvMatrix");
this.prMatLoc[14] = gl.getUniformLocation(this.prog[14],"prMatrix");
// ****** lines object 15 ******
this.flags[15] = 128;
this.prog[15]  = gl.createProgram();
gl.attachShader(this.prog[15], this.getShader( gl, "plot_3d1vshader15" ));
gl.attachShader(this.prog[15], this.getShader( gl, "plot_3d1fshader15" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[15], 0, "aPos");
gl.bindAttribLocation(this.prog[15], 1, "aCol");
gl.linkProgram(this.prog[15]);
this.offsets[15]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02890643, -0.05149767, -0.15,
-0.02890643, 0.03360577, -0.15,
-0.02890643, -0.05149767, -0.1,
-0.02890643, 0.03360577, -0.1,
-0.02890643, -0.05149767, -0.05,
-0.02890643, 0.03360577, -0.05,
-0.02890643, -0.05149767, 0,
-0.02890643, 0.03360577, 0
]);
this.values[15] = v;
this.buf[15] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[15]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[15], gl.STATIC_DRAW);
this.mvMatLoc[15] = gl.getUniformLocation(this.prog[15],"mvMatrix");
this.prMatLoc[15] = gl.getUniformLocation(this.prog[15],"prMatrix");
// ****** lines object 16 ******
this.flags[16] = 128;
this.prog[16]  = gl.createProgram();
gl.attachShader(this.prog[16], this.getShader( gl, "plot_3d1vshader16" ));
gl.attachShader(this.prog[16], this.getShader( gl, "plot_3d1fshader16" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[16], 0, "aPos");
gl.bindAttribLocation(this.prog[16], 1, "aCol");
gl.linkProgram(this.prog[16]);
this.offsets[16]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02, -0.05149767, -0.195789,
-0.02, -0.05149767, 0.03225087,
0, -0.05149767, -0.195789,
0, -0.05149767, 0.03225087,
0.02, -0.05149767, -0.195789,
0.02, -0.05149767, 0.03225087,
0.04, -0.05149767, -0.195789,
0.04, -0.05149767, 0.03225087,
0.06, -0.05149767, -0.195789,
0.06, -0.05149767, 0.03225087
]);
this.values[16] = v;
this.buf[16] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[16]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[16], gl.STATIC_DRAW);
this.mvMatLoc[16] = gl.getUniformLocation(this.prog[16],"mvMatrix");
this.prMatLoc[16] = gl.getUniformLocation(this.prog[16],"prMatrix");
// ****** lines object 17 ******
this.flags[17] = 128;
this.prog[17]  = gl.createProgram();
gl.attachShader(this.prog[17], this.getShader( gl, "plot_3d1vshader17" ));
gl.attachShader(this.prog[17], this.getShader( gl, "plot_3d1fshader17" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[17], 0, "aPos");
gl.bindAttribLocation(this.prog[17], 1, "aCol");
gl.linkProgram(this.prog[17]);
this.offsets[17]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02890643, -0.05149767, -0.15,
0.06608213, -0.05149767, -0.15,
-0.02890643, -0.05149767, -0.1,
0.06608213, -0.05149767, -0.1,
-0.02890643, -0.05149767, -0.05,
0.06608213, -0.05149767, -0.05,
-0.02890643, -0.05149767, 0,
0.06608213, -0.05149767, 0
]);
this.values[17] = v;
this.buf[17] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[17]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[17], gl.STATIC_DRAW);
this.mvMatLoc[17] = gl.getUniformLocation(this.prog[17],"mvMatrix");
this.prMatLoc[17] = gl.getUniformLocation(this.prog[17],"prMatrix");
// ****** lines object 18 ******
this.flags[18] = 128;
this.prog[18]  = gl.createProgram();
gl.attachShader(this.prog[18], this.getShader( gl, "plot_3d1vshader18" ));
gl.attachShader(this.prog[18], this.getShader( gl, "plot_3d1fshader18" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[18], 0, "aPos");
gl.bindAttribLocation(this.prog[18], 1, "aCol");
gl.linkProgram(this.prog[18]);
this.offsets[18]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02, -0.05149767, -0.195789,
-0.02, 0.03360577, -0.195789,
0, -0.05149767, -0.195789,
0, 0.03360577, -0.195789,
0.02, -0.05149767, -0.195789,
0.02, 0.03360577, -0.195789,
0.04, -0.05149767, -0.195789,
0.04, 0.03360577, -0.195789,
0.06, -0.05149767, -0.195789,
0.06, 0.03360577, -0.195789
]);
this.values[18] = v;
this.buf[18] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[18]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[18], gl.STATIC_DRAW);
this.mvMatLoc[18] = gl.getUniformLocation(this.prog[18],"mvMatrix");
this.prMatLoc[18] = gl.getUniformLocation(this.prog[18],"prMatrix");
// ****** lines object 19 ******
this.flags[19] = 128;
this.prog[19]  = gl.createProgram();
gl.attachShader(this.prog[19], this.getShader( gl, "plot_3d1vshader19" ));
gl.attachShader(this.prog[19], this.getShader( gl, "plot_3d1fshader19" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[19], 0, "aPos");
gl.bindAttribLocation(this.prog[19], 1, "aCol");
gl.linkProgram(this.prog[19]);
this.offsets[19]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02890643, -0.04, -0.195789,
0.06608213, -0.04, -0.195789,
-0.02890643, -0.02, -0.195789,
0.06608213, -0.02, -0.195789,
-0.02890643, 0, -0.195789,
0.06608213, 0, -0.195789,
-0.02890643, 0.02, -0.195789,
0.06608213, 0.02, -0.195789
]);
this.values[19] = v;
this.buf[19] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[19]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[19], gl.STATIC_DRAW);
this.mvMatLoc[19] = gl.getUniformLocation(this.prog[19],"mvMatrix");
this.prMatLoc[19] = gl.getUniformLocation(this.prog[19],"prMatrix");
// ****** spheres object 20 ******
this.flags[20] = 91;
this.prog[20]  = gl.createProgram();
gl.attachShader(this.prog[20], this.getShader( gl, "plot_3d1vshader20" ));
gl.attachShader(this.prog[20], this.getShader( gl, "plot_3d1fshader20" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[20], 0, "aPos");
gl.bindAttribLocation(this.prog[20], 1, "aCol");
gl.linkProgram(this.prog[20]);
this.offsets[20]={vofs:0, cofs:-1, nofs:-1, radofs:3, oofs:-1, tofs:-1, stride:4};
var v=new Float32Array([
-0.01130136, 0.02599243, 0.01158796, 0.03519014
]);
this.values[20] = v;
this.normLoc[20] = gl.getAttribLocation(this.prog[20], "aNorm");
this.centers[20] = new Float32Array([
-0.01130136, 0.02599243, 0.01158796
]);
this.f[20]=new Uint16Array([
0
]);
this.mvMatLoc[20] = gl.getUniformLocation(this.prog[20],"mvMatrix");
this.prMatLoc[20] = gl.getUniformLocation(this.prog[20],"prMatrix");
this.normMatLoc[20] = gl.getUniformLocation(this.prog[20],"normMatrix");
// ****** lines object 21 ******
this.flags[21] = 128;
this.prog[21]  = gl.createProgram();
gl.attachShader(this.prog[21], this.getShader( gl, "plot_3d1vshader21" ));
gl.attachShader(this.prog[21], this.getShader( gl, "plot_3d1fshader21" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[21], 0, "aPos");
gl.bindAttribLocation(this.prog[21], 1, "aCol");
gl.linkProgram(this.prog[21]);
this.offsets[21]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.00886681, 0.0238644, 0.0217746,
-0.0121496, 0.02617985, 0.01134996,
-0.0124726, 0.0247746, 0.0254585,
-0.0121496, 0.02617985, 0.01134996,
-0.0147315, 0.0281533, 0.0238545,
-0.0121496, 0.02617985, 0.01134996,
-0.0140497, 0.0274399, 0.00957505,
-0.0121496, 0.02617985, 0.01134996,
-0.0116447, 0.0287953, 0.01982,
-0.0121496, 0.02617985, 0.01134996,
-0.0135256, 0.0311266, 0.0226846,
-0.0121496, 0.02617985, 0.01134996,
-0.0146697, 0.0281732, 0.00270888,
-0.0121496, 0.02617985, 0.01134996,
-0.0122709, 0.0273632, 0.00629289,
-0.0121496, 0.02617985, 0.01134996,
-0.013305, 0.0293633, 0.00633912,
-0.0121496, 0.02617985, 0.01134996,
-0.0122756, 0.0262672, 0.00976935,
-0.0121496, 0.02617985, 0.01134996,
-0.011765, 0.0251295, 0.0118895,
-0.0121496, 0.02617985, 0.01134996,
-0.0128186, 0.028081, 0.00958605,
-0.0121496, 0.02617985, 0.01134996,
-0.0116086, 0.0294887, 0.00805614,
-0.0121496, 0.02617985, 0.01134996,
-0.0113447, 0.0307663, 0.00405527,
-0.0121496, 0.02617985, 0.01134996,
-0.0148581, 0.0237257, 0.0160082,
-0.0121496, 0.02617985, 0.01134996,
-0.010788, 0.0238892, 0.0226584,
-0.0121496, 0.02617985, 0.01134996,
-0.0148937, 0.0232955, 0.0101953,
-0.0121496, 0.02617985, 0.01134996,
-0.00875168, 0.0261604, 0.0121802,
-0.0121496, 0.02617985, 0.01134996,
-0.008739, 0.0261481, 0.0122728,
-0.0121496, 0.02617985, 0.01134996,
-0.0108659, 0.0259289, 0.00106272,
-0.0121496, 0.02617985, 0.01134996,
-0.0130502, 0.0270812, 0.0183305,
-0.0121496, 0.02617985, 0.01134996,
-0.0134347, 0.0270132, 0.0229292,
-0.0121496, 0.02617985, 0.01134996,
-0.0118617, 0.0220373, 0.0105775,
-0.0121496, 0.02617985, 0.01134996,
-0.0130059, 0.0245835, 0.0192892,
-0.0121496, 0.02617985, 0.01134996,
-0.0102875, 0.0258827, 0.0208538,
-0.0121496, 0.02617985, 0.01134996,
-0.00910839, 0.0257005, 0.00618984,
-0.0121496, 0.02617985, 0.01134996,
-0.0128356, 0.0225055, 0.00960733,
-0.0121496, 0.02617985, 0.01134996,
-0.0112344, 0.0276306, 0.0114346,
-0.0121496, 0.02617985, 0.01134996,
-0.0106106, 0.0278096, 0.00194201,
-0.0121496, 0.02617985, 0.01134996,
-0.0115198, 0.0292207, 0.00294633,
-0.0121496, 0.02617985, 0.01134996,
-0.0133883, 0.028673, 0.0164389,
-0.0121496, 0.02617985, 0.01134996,
-0.0109423, 0.0290064, 0.0218431,
-0.0121496, 0.02617985, 0.01134996,
-0.0148488, 0.0259077, 0.0115755,
-0.0121496, 0.02617985, 0.01134996,
-0.0107891, 0.0257524, 0.00616149,
-0.0121496, 0.02617985, 0.01134996,
-0.0106291, 0.0269203, 0.0228778,
-0.0121496, 0.02617985, 0.01134996,
-0.0161089, 0.0275971, 0.0192198,
-0.0121496, 0.02617985, 0.01134996,
-0.0132678, 0.0258366, 0.0163521,
-0.0121496, 0.02617985, 0.01134996,
-0.0149124, 0.0251342, 0.00388131,
-0.0121496, 0.02617985, 0.01134996,
-0.0114892, 0.0274352, 0.00899298,
-0.0121496, 0.02617985, 0.01134996,
-0.0117562, 0.0245922, 0.0136363,
-0.0121496, 0.02617985, 0.01134996,
-0.0122278, 0.0271677, 0.0112234,
-0.0121496, 0.02617985, 0.01134996,
-0.01029, 0.0277564, 0.0160115,
-0.0121496, 0.02617985, 0.01134996,
-0.0121964, 0.0309241, 0.0139494,
-0.0121496, 0.02617985, 0.01134996,
-0.0129751, 0.0271331, 0.0260444,
-0.0121496, 0.02617985, 0.01134996,
-0.0125756, 0.0265999, 0.0224468,
-0.0121496, 0.02617985, 0.01134996,
-0.0127859, 0.027101, 0.0191604,
-0.0121496, 0.02617985, 0.01134996,
-0.00998233, 0.0253795, 0.00685042,
-0.0121496, 0.02617985, 0.01134996,
-0.0133536, 0.028689, 0.0051763,
-0.0121496, 0.02617985, 0.01134996,
-0.0117333, 0.0277402, 0.00381405,
-0.0121496, 0.02617985, 0.01134996,
-0.0147853, 0.0295933, 0.00968847,
-0.0121496, 0.02617985, 0.01134996,
-0.0109685, 0.0223538, 0.0143111,
-0.0121496, 0.02617985, 0.01134996,
-0.0096918, 0.0249463, 0.00704751,
-0.0121496, 0.02617985, 0.01134996,
-0.0155493, 0.0266224, 0.00516269,
-0.0121496, 0.02617985, 0.01134996,
-0.014836, 0.0276024, 0.0116228,
-0.0121496, 0.02617985, 0.01134996,
-0.00828352, 0.0252156, 0.0187242,
-0.0121496, 0.02617985, 0.01134996,
-0.0110414, 0.0293172, 0.00362714,
-0.0121496, 0.02617985, 0.01134996,
-0.0102891, 0.0257019, 0.00540398,
-0.0121496, 0.02617985, 0.01134996,
-0.0104394, 0.0259701, 0.00329733,
-0.0121496, 0.02617985, 0.01134996,
-0.00930721, 0.0261215, 0.00409051,
-0.0121496, 0.02617985, 0.01134996,
-0.0124193, 0.0257317, 0.0162523,
-0.0121496, 0.02617985, 0.01134996,
-0.0114044, 0.025375, 0.00361722,
-0.0121496, 0.02617985, 0.01134996,
-0.0112687, 0.0271153, 0.00987548,
-0.0121496, 0.02617985, 0.01134996,
-0.0135369, 0.0198464, 0.0192111,
-0.0121496, 0.02617985, 0.01134996,
-0.0134307, 0.0240167, 0.00338929,
-0.0121496, 0.02617985, 0.01134996,
-0.00581692, -0.000934194, -0.00182728,
-0.0121496, 0.02617985, 0.01134996,
-0.00992799, 0.0281201, 0.00421423,
-0.0121496, 0.02617985, 0.01134996,
-0.0163484, 0.0253598, 0.00679276,
-0.0121496, 0.02617985, 0.01134996,
-0.0153143, 0.0239155, 0.00922948,
-0.0121496, 0.02617985, 0.01134996,
-0.0130066, 0.0264895, 0.0219972,
-0.0121496, 0.02617985, 0.01134996,
-0.0123188, 0.0270323, 0.0130162,
-0.0121496, 0.02617985, 0.01134996,
-0.0149538, 0.0261319, 0.0246082,
-0.0121496, 0.02617985, 0.01134996,
-0.00848068, 0.0244795, 0.0126147,
-0.0121496, 0.02617985, 0.01134996,
-0.009655, 0.026754, 0.0151766,
-0.0121496, 0.02617985, 0.01134996,
-0.0110317, 0.0247415, 0.0169718,
-0.0121496, 0.02617985, 0.01134996,
-0.0105467, 0.0216758, 0.0273625,
-0.0121496, 0.02617985, 0.01134996,
-0.0111351, 0.0298442, 0.0137315,
-0.0121496, 0.02617985, 0.01134996,
-0.0148939, 0.0282641, 0.0180507,
-0.0121496, 0.02617985, 0.01134996,
-0.0133113, 0.0255374, 0.0156552,
-0.0121496, 0.02617985, 0.01134996,
-0.0152238, 0.0253733, 0.0118128,
-0.0121496, 0.02617985, 0.01134996,
-0.0165117, 0.0254165, 0.0210366,
-0.0121496, 0.02617985, 0.01134996,
-0.0172562, 0.026341, 0.0224113,
-0.0121496, 0.02617985, 0.01134996,
-0.0138025, 0.0277873, 0.00395365,
-0.0121496, 0.02617985, 0.01134996,
-0.0135819, 0.0270152, 0.00695362,
-0.0121496, 0.02617985, 0.01134996,
-0.0116353, 0.0256155, 0.000289371,
-0.0121496, 0.02617985, 0.01134996,
-0.0149184, 0.0238256, -0.00270158,
-0.0121496, 0.02617985, 0.01134996,
-0.0114351, 0.0271658, 0.0125575,
-0.0121496, 0.02617985, 0.01134996,
-0.01436, 0.0264762, 0.0173609,
-0.0121496, 0.02617985, 0.01134996,
-0.0128438, 0.0268224, 0.00444834,
-0.0121496, 0.02617985, 0.01134996,
-0.0120046, 0.0230234, 0.00796341,
-0.0121496, 0.02617985, 0.01134996,
-0.0126985, 0.0258126, 0.00514686,
-0.0121496, 0.02617985, 0.01134996,
-0.0135831, 0.0249755, 0.0107284,
-0.0121496, 0.02617985, 0.01134996,
-0.0121259, 0.0280823, 0.020544,
-0.0121496, 0.02617985, 0.01134996,
-0.0141439, 0.0265254, 0.0258433,
-0.0121496, 0.02617985, 0.01134996,
-0.0138132, 0.0284247, 0.0101188,
-0.0121496, 0.02617985, 0.01134996,
-0.013572, 0.0269507, 0.00688972,
-0.0121496, 0.02617985, 0.01134996,
-0.0113011, 0.0268327, 0.0184482,
-0.0121496, 0.02617985, 0.01134996,
-0.0100601, 0.0264789, 0.0212786,
-0.0121496, 0.02617985, 0.01134996,
-0.0113299, 0.0282418, 0.00866489,
-0.0121496, 0.02617985, 0.01134996,
-0.0114925, 0.0272719, 0.0170049,
-0.0121496, 0.02617985, 0.01134996,
-0.0104039, 0.0283855, 0.0100799,
-0.0121496, 0.02617985, 0.01134996,
-0.00956386, 0.0268284, 0.0101297,
-0.0121496, 0.02617985, 0.01134996,
-0.0121363, 0.0224437, 0.00471969,
-0.0121496, 0.02617985, 0.01134996,
-0.0129748, 0.0260496, 0.0176977,
-0.0121496, 0.02617985, 0.01134996,
-0.0128936, 0.0280627, 0.00938281,
-0.0121496, 0.02617985, 0.01134996,
-0.0114891, 0.0247891, 0.0130035,
-0.0121496, 0.02617985, 0.01134996,
-0.00577137, 0.0112307, -0.0490284,
-0.0121496, 0.02617985, 0.01134996,
-0.0102643, 0.0267855, 0.0104728,
-0.0121496, 0.02617985, 0.01134996,
-0.0123468, 0.0265473, 0.016931,
-0.0121496, 0.02617985, 0.01134996,
-0.0097784, 0.0252052, 0.00928465,
-0.0121496, 0.02617985, 0.01134996,
-0.0117949, 0.0233834, 0.0122081,
-0.0121496, 0.02617985, 0.01134996,
-0.0128608, 0.0249954, 0.0176076,
-0.0121496, 0.02617985, 0.01134996,
-0.0129981, 0.0257737, 0.0155265,
-0.0121496, 0.02617985, 0.01134996,
-0.0134316, 0.02653, 0.00353212,
-0.0121496, 0.02617985, 0.01134996,
-0.00935833, 0.0318374, 0.0100076,
-0.0121496, 0.02617985, 0.01134996,
-0.0113107, 0.0303198, 0.0116077,
-0.0121496, 0.02617985, 0.01134996,
-0.0131245, 0.0298223, 0.00180678,
-0.0121496, 0.02617985, 0.01134996,
-0.0133191, 0.0293408, 0.00662741,
-0.0121496, 0.02617985, 0.01134996,
-0.0138591, 0.0261048, 0.000836834,
-0.0121496, 0.02617985, 0.01134996,
-0.0150174, 0.0231497, -0.00112857,
-0.0121496, 0.02617985, 0.01134996,
-0.0110389, 0.0248572, 0.00176283,
-0.0121496, 0.02617985, 0.01134996,
-0.0118715, 0.0275812, 0.0178639,
-0.0121496, 0.02617985, 0.01134996,
-0.0129834, 0.0259341, 0.0186928,
-0.0121496, 0.02617985, 0.01134996,
-0.010557, 0.0273327, 0.00990001,
-0.0121496, 0.02617985, 0.01134996,
-0.0111681, 0.0273472, 0.00617783,
-0.0121496, 0.02617985, 0.01134996,
-0.0101689, 0.0280639, 0.00864267,
-0.0121496, 0.02617985, 0.01134996,
-0.00927365, 0.0255201, 0.0130722,
-0.0121496, 0.02617985, 0.01134996,
-0.010756, 0.0260178, 0.0154469,
-0.0121496, 0.02617985, 0.01134996,
-0.0122762, 0.0266211, 0.00832697,
-0.0121496, 0.02617985, 0.01134996,
-0.0132575, 0.0299597, 0.014467,
-0.0121496, 0.02617985, 0.01134996,
-0.0114548, 0.0255468, 0.0189329,
-0.0121496, 0.02617985, 0.01134996,
-0.00934806, 0.0252484, 0.00733987,
-0.0121496, 0.02617985, 0.01134996,
-0.0142405, 0.0279119, 0.0149429,
-0.0121496, 0.02617985, 0.01134996,
-0.0133535, 0.0262824, 0.00311826,
-0.0121496, 0.02617985, 0.01134996,
-0.0135127, 0.0255778, -0.0113687,
-0.0121496, 0.02617985, 0.01134996,
-0.0121261, 0.0260542, 0.0169802,
-0.0121496, 0.02617985, 0.01134996,
-0.0133854, 0.0276628, 0.00624653,
-0.0121496, 0.02617985, 0.01134996,
-0.0129197, 0.0294731, 0.0139965,
-0.0121496, 0.02617985, 0.01134996,
-0.010358, 0.0239915, 0.0158709,
-0.0121496, 0.02617985, 0.01134996,
-0.0116095, 0.0243185, 0.0147471,
-0.0121496, 0.02617985, 0.01134996,
-0.0114546, 0.0261468, 0.0128631,
-0.0121496, 0.02617985, 0.01134996
]);
this.values[21] = v;
this.buf[21] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[21]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[21], gl.STATIC_DRAW);
this.mvMatLoc[21] = gl.getUniformLocation(this.prog[21],"mvMatrix");
this.prMatLoc[21] = gl.getUniformLocation(this.prog[21],"prMatrix");
// ****** lines object 22 ******
this.flags[22] = 128;
this.prog[22]  = gl.createProgram();
gl.attachShader(this.prog[22], this.getShader( gl, "plot_3d1vshader22" ));
gl.attachShader(this.prog[22], this.getShader( gl, "plot_3d1fshader22" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[22], 0, "aPos");
gl.bindAttribLocation(this.prog[22], 1, "aCol");
gl.linkProgram(this.prog[22]);
this.offsets[22]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.04, -0.05192991, -0.1960567,
0.06, -0.05192991, -0.1960567,
-0.04, -0.05192991, -0.1960567,
-0.04, -0.05479952, -0.2022173,
-0.02, -0.05192991, -0.1960567,
-0.02, -0.05479952, -0.2022173,
0, -0.05192991, -0.1960567,
0, -0.05479952, -0.2022173,
0.02, -0.05192991, -0.1960567,
0.02, -0.05479952, -0.2022173,
0.04, -0.05192991, -0.1960567,
0.04, -0.05479952, -0.2022173,
0.06, -0.05192991, -0.1960567,
0.06, -0.05479952, -0.2022173
]);
this.values[22] = v;
this.buf[22] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[22]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[22], gl.STATIC_DRAW);
this.mvMatLoc[22] = gl.getUniformLocation(this.prog[22],"mvMatrix");
this.prMatLoc[22] = gl.getUniformLocation(this.prog[22],"prMatrix");
// ****** text object 23 ******
this.flags[23] = 40;
this.prog[23]  = gl.createProgram();
gl.attachShader(this.prog[23], this.getShader( gl, "plot_3d1vshader23" ));
gl.attachShader(this.prog[23], this.getShader( gl, "plot_3d1fshader23" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[23], 0, "aPos");
gl.bindAttribLocation(this.prog[23], 1, "aCol");
gl.linkProgram(this.prog[23]);
var texts = [
"-0.04",
"-0.02",
"0",
"0.02",
"0.04",
"0.06"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[23] = gl.getAttribLocation(this.prog[23], "aOfs");
this.texture[23] = gl.createTexture();
this.texLoc[23] = gl.getAttribLocation(this.prog[23], "aTexcoord");
this.sampler[23] = gl.getUniformLocation(this.prog[23],"uSampler");
handleLoadedTexture(this.texture[23], document.getElementById("plot_3d1textureCanvas"));
this.offsets[23]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
-0.04, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.04, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.04, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.04, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.02, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.02, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.02, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.02, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5,
0, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
0, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
0, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
0, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5,
0.02, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
0.02, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
0.02, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
0.02, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5,
0.04, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
0.04, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
0.04, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
0.04, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5,
0.06, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
0.06, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
0.06, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
0.06, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<6; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[23]["stride"]*(4*i + j) + this.offsets[23]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[23] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23
]);
this.buf[23] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[23]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[23], gl.STATIC_DRAW);
this.ibuf[23] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[23]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[23] = gl.getUniformLocation(this.prog[23],"mvMatrix");
this.prMatLoc[23] = gl.getUniformLocation(this.prog[23],"prMatrix");
this.textScaleLoc[23] = gl.getUniformLocation(this.prog[23],"textScale");
// ****** lines object 24 ******
this.flags[24] = 128;
this.prog[24]  = gl.createProgram();
gl.attachShader(this.prog[24], this.getShader( gl, "plot_3d1vshader24" ));
gl.attachShader(this.prog[24], this.getShader( gl, "plot_3d1fshader24" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[24], 0, "aPos");
gl.bindAttribLocation(this.prog[24], 1, "aCol");
gl.linkProgram(this.prog[24]);
this.offsets[24]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.04815935, -0.04, -0.1960567,
-0.04815935, 0.06, -0.1960567,
-0.04815935, -0.04, -0.1960567,
-0.0510225, -0.04, -0.2022173,
-0.04815935, -0.02, -0.1960567,
-0.0510225, -0.02, -0.2022173,
-0.04815935, 0, -0.1960567,
-0.0510225, 0, -0.2022173,
-0.04815935, 0.02, -0.1960567,
-0.0510225, 0.02, -0.2022173,
-0.04815935, 0.04, -0.1960567,
-0.0510225, 0.04, -0.2022173,
-0.04815935, 0.06, -0.1960567,
-0.0510225, 0.06, -0.2022173
]);
this.values[24] = v;
this.buf[24] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[24]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[24], gl.STATIC_DRAW);
this.mvMatLoc[24] = gl.getUniformLocation(this.prog[24],"mvMatrix");
this.prMatLoc[24] = gl.getUniformLocation(this.prog[24],"prMatrix");
// ****** text object 25 ******
this.flags[25] = 40;
this.prog[25]  = gl.createProgram();
gl.attachShader(this.prog[25], this.getShader( gl, "plot_3d1vshader25" ));
gl.attachShader(this.prog[25], this.getShader( gl, "plot_3d1fshader25" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[25], 0, "aPos");
gl.bindAttribLocation(this.prog[25], 1, "aCol");
gl.linkProgram(this.prog[25]);
var texts = [
"-0.04",
"-0.02",
"0",
"0.02",
"0.04",
"0.06"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[25] = gl.getAttribLocation(this.prog[25], "aOfs");
this.texture[25] = gl.createTexture();
this.texLoc[25] = gl.getAttribLocation(this.prog[25], "aTexcoord");
this.sampler[25] = gl.getUniformLocation(this.prog[25],"uSampler");
handleLoadedTexture(this.texture[25], document.getElementById("plot_3d1textureCanvas"));
this.offsets[25]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
-0.0567488, -0.04, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.04, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.04, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.04, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.0567488, -0.02, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.02, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.02, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.02, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.0567488, 0, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, 0, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, 0, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, 0, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.0567488, 0.02, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, 0.02, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, 0.02, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, 0.02, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.0567488, 0.04, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, 0.04, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, 0.04, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, 0.04, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.0567488, 0.06, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, 0.06, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, 0.06, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, 0.06, -0.2145385, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<6; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[25]["stride"]*(4*i + j) + this.offsets[25]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[25] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23
]);
this.buf[25] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[25]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[25], gl.STATIC_DRAW);
this.ibuf[25] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[25]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[25] = gl.getUniformLocation(this.prog[25],"mvMatrix");
this.prMatLoc[25] = gl.getUniformLocation(this.prog[25],"prMatrix");
this.textScaleLoc[25] = gl.getUniformLocation(this.prog[25],"textScale");
// ****** lines object 26 ******
this.flags[26] = 128;
this.prog[26]  = gl.createProgram();
gl.attachShader(this.prog[26], this.getShader( gl, "plot_3d1vshader26" ));
gl.attachShader(this.prog[26], this.getShader( gl, "plot_3d1fshader26" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[26], 0, "aPos");
gl.bindAttribLocation(this.prog[26], 1, "aCol");
gl.linkProgram(this.prog[26]);
this.offsets[26]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.04815935, -0.05192991, -0.15,
-0.04815935, -0.05192991, 0,
-0.04815935, -0.05192991, -0.15,
-0.0510225, -0.05479952, -0.15,
-0.04815935, -0.05192991, -0.1,
-0.0510225, -0.05479952, -0.1,
-0.04815935, -0.05192991, -0.05,
-0.0510225, -0.05479952, -0.05,
-0.04815935, -0.05192991, 0,
-0.0510225, -0.05479952, 0
]);
this.values[26] = v;
this.buf[26] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[26]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[26], gl.STATIC_DRAW);
this.mvMatLoc[26] = gl.getUniformLocation(this.prog[26],"mvMatrix");
this.prMatLoc[26] = gl.getUniformLocation(this.prog[26],"prMatrix");
// ****** text object 27 ******
this.flags[27] = 40;
this.prog[27]  = gl.createProgram();
gl.attachShader(this.prog[27], this.getShader( gl, "plot_3d1vshader27" ));
gl.attachShader(this.prog[27], this.getShader( gl, "plot_3d1fshader27" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[27], 0, "aPos");
gl.bindAttribLocation(this.prog[27], 1, "aCol");
gl.linkProgram(this.prog[27]);
var texts = [
"-0.15",
"-0.1",
"-0.05",
"0"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[27] = gl.getAttribLocation(this.prog[27], "aOfs");
this.texture[27] = gl.createTexture();
this.texLoc[27] = gl.getAttribLocation(this.prog[27], "aTexcoord");
this.sampler[27] = gl.getUniformLocation(this.prog[27],"uSampler");
handleLoadedTexture(this.texture[27], document.getElementById("plot_3d1textureCanvas"));
this.offsets[27]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
-0.0567488, -0.06053872, -0.15, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.15, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.15, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.15, 0, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.1, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.1, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.1, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.1, 0, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.05, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.05, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.05, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.05, 0, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, 0, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, 0, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, 0, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, 0, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<4; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[27]["stride"]*(4*i + j) + this.offsets[27]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[27] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15
]);
this.buf[27] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[27]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[27], gl.STATIC_DRAW);
this.ibuf[27] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[27]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[27] = gl.getUniformLocation(this.prog[27],"mvMatrix");
this.prMatLoc[27] = gl.getUniformLocation(this.prog[27],"prMatrix");
this.textScaleLoc[27] = gl.getUniformLocation(this.prog[27],"textScale");
// ****** lines object 28 ******
this.flags[28] = 128;
this.prog[28]  = gl.createProgram();
gl.attachShader(this.prog[28], this.getShader( gl, "plot_3d1vshader28" ));
gl.attachShader(this.prog[28], this.getShader( gl, "plot_3d1fshader28" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[28], 0, "aPos");
gl.bindAttribLocation(this.prog[28], 1, "aCol");
gl.linkProgram(this.prog[28]);
this.offsets[28]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.04815935, -0.05192991, -0.1960567,
-0.04815935, 0.06285418, -0.1960567,
-0.04815935, -0.05192991, 0.05036679,
-0.04815935, 0.06285418, 0.05036679,
-0.04815935, -0.05192991, -0.1960567,
-0.04815935, -0.05192991, 0.05036679,
-0.04815935, 0.06285418, -0.1960567,
-0.04815935, 0.06285418, 0.05036679,
-0.04815935, -0.05192991, -0.1960567,
0.06636666, -0.05192991, -0.1960567,
-0.04815935, -0.05192991, 0.05036679,
0.06636666, -0.05192991, 0.05036679,
-0.04815935, 0.06285418, -0.1960567,
0.06636666, 0.06285418, -0.1960567,
-0.04815935, 0.06285418, 0.05036679,
0.06636666, 0.06285418, 0.05036679,
0.06636666, -0.05192991, -0.1960567,
0.06636666, 0.06285418, -0.1960567,
0.06636666, -0.05192991, 0.05036679,
0.06636666, 0.06285418, 0.05036679,
0.06636666, -0.05192991, -0.1960567,
0.06636666, -0.05192991, 0.05036679,
0.06636666, 0.06285418, -0.1960567,
0.06636666, 0.06285418, 0.05036679
]);
this.values[28] = v;
this.buf[28] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[28]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[28], gl.STATIC_DRAW);
this.mvMatLoc[28] = gl.getUniformLocation(this.prog[28],"mvMatrix");
this.prMatLoc[28] = gl.getUniformLocation(this.prog[28],"prMatrix");
gl.enable(gl.DEPTH_TEST);
gl.depthFunc(gl.LEQUAL);
gl.clearDepth(1.0);
gl.clearColor(1,1,1,1);
var drag  = 0;
this.drawScene = function() {
gl.depthMask(true);
gl.disable(gl.BLEND);
gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);
this.drawFns[1].call(this, 1)
gl.flush ();
}
// ****** points object 7 *******
this.drawFns[7] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.enableVertexAttribArray( colLoc );
gl.vertexAttribPointer(colLoc, 4, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["cofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.POINTS, 0, 1232);
}
// ****** text object 9 *******
this.drawFns[9] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 6, gl.UNSIGNED_SHORT, 0);
}
// ****** text object 10 *******
this.drawFns[10] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 6, gl.UNSIGNED_SHORT, 0);
}
// ****** text object 11 *******
this.drawFns[11] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 6, gl.UNSIGNED_SHORT, 0);
}
// ****** lines object 14 *******
this.drawFns[14] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 8);
}
// ****** lines object 15 *******
this.drawFns[15] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 8);
}
// ****** lines object 16 *******
this.drawFns[16] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 10);
}
// ****** lines object 17 *******
this.drawFns[17] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 8);
}
// ****** lines object 18 *******
this.drawFns[18] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 10);
}
// ****** lines object 19 *******
this.drawFns[19] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 8);
}
// ****** spheres object 20 *******
this.drawFns[20] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, sphereBuf);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, sphereIbuf);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniformMatrix4fv( this.normMatLoc[id], false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
var depths = new Float32Array(1);
var faces = new Array(1);
for(var i=0; i<1; i++) {
var z = this.prmvMatrix.m13*this.centers[id][3*i] 
+ this.prmvMatrix.m23*this.centers[id][3*i+1]
+ this.prmvMatrix.m33*this.centers[id][3*i+2]
+ this.prmvMatrix.m43;
var w = this.prmvMatrix.m14*this.centers[id][3*i] 
+ this.prmvMatrix.m24*this.centers[id][3*i+1]
+ this.prmvMatrix.m34*this.centers[id][3*i+2]
+ this.prmvMatrix.m44;
depths[i] = z/w;
faces[i] = i;
}
var depthsort = function(i,j) { return depths[j] - depths[i] }
faces.sort(depthsort);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 12,  0);
gl.enableVertexAttribArray(this.normLoc[id] );
gl.vertexAttribPointer(this.normLoc[id],  3, gl.FLOAT, false, 12,  0);
gl.disableVertexAttribArray( colLoc );
var sphereNorm = new CanvasMatrix4();
sphereNorm.scale(1, 1, 1);
sphereNorm.multRight(normMatrix);
gl.uniformMatrix4fv( this.normMatLoc[id], false, new Float32Array(sphereNorm.getAsArray()) );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 0.4980392);
for (var i = 0; i < 1; i++) {
var sphereMV = new CanvasMatrix4();
var baseofs = faces[i]*plot_3d1rgl.offsets[id]["stride"];
var ofs = baseofs + this.offsets[id]["radofs"];	       
var scale = this.values[id][ofs];
sphereMV.scale(1*scale, 1*scale, 1*scale);
sphereMV.translate(this.values[id][baseofs], 
this.values[id][baseofs+1], 
this.values[id][baseofs+2]);
sphereMV.multRight(this.mvMatrix);
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(sphereMV.getAsArray()) );
gl.drawElements(gl.TRIANGLES, 384, gl.UNSIGNED_SHORT, 0);
}
}
// ****** lines object 21 *******
this.drawFns[21] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 280);
}
// ****** lines object 22 *******
this.drawFns[22] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 14);
}
// ****** text object 23 *******
this.drawFns[23] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 36, gl.UNSIGNED_SHORT, 0);
}
// ****** lines object 24 *******
this.drawFns[24] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 14);
}
// ****** text object 25 *******
this.drawFns[25] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 36, gl.UNSIGNED_SHORT, 0);
}
// ****** lines object 26 *******
this.drawFns[26] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 10);
}
// ****** text object 27 *******
this.drawFns[27] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 24, gl.UNSIGNED_SHORT, 0);
}
// ****** lines object 28 *******
this.drawFns[28] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 24);
}
// ***** subscene 1 ****
this.drawFns[1] = function(id) {
this.vp = this.viewport[id];
gl.viewport(this.vp[0], this.vp[1], this.vp[2], this.vp[3]);
gl.scissor(this.vp[0], this.vp[1], this.vp[2], this.vp[3]);
gl.clearColor(1, 1, 1, 1);
gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);
this.prMatrix.makeIdentity();
var radius = 0.1575162;
var distance = 0.3627647;
var t = tan(this.FOV[1]*PI/360);
var near = distance - radius;
var far = distance + radius;
var hlen = t*near;
var aspect = this.vp[2]/this.vp[3];
var z = this.zoom[1];
if (aspect > 1) 
this.prMatrix.frustum(-hlen*aspect*z, hlen*aspect*z, 
-hlen*z, hlen*z, near, far);
else  
this.prMatrix.frustum(-hlen*z, hlen*z, 
-hlen*z/aspect, hlen*z/aspect, 
near, far);
this.mvMatrix.makeIdentity();
this.mvMatrix.translate( -0.009103652, -0.005462132, 0.07284495 );
this.mvMatrix.scale( 1, 1, 1 );   
this.mvMatrix.multRight( plot_3d1rgl.userMatrix[1] );
this.mvMatrix.translate(-0, -0, -0.3627647);
normMatrix.makeIdentity();
normMatrix.scale( 1, 1, 1 );   
normMatrix.multRight( plot_3d1rgl.userMatrix[1] );
this.prmvMatrix = new CanvasMatrix4( this.mvMatrix );
this.prmvMatrix.multRight( this.prMatrix );
var clipids = this.clipplanes[id];
if (clipids.length > 0) {
this.invMatrix = new CanvasMatrix4(this.mvMatrix);
this.invMatrix.invert();
for (var i = 0; i < this.clipplanes[id].length; i++) 
this.drawFns[clipids[i]].call(this, clipids[i]);
}
var subids = this.opaque[id];
for (var i = 0; i < subids.length; i++) 
this.drawFns[subids[i]].call(this, subids[i], clipids);
subids = this.transparent[id];
if (subids.length > 0) {
gl.depthMask(false);
gl.blendFuncSeparate(gl.SRC_ALPHA, gl.ONE_MINUS_SRC_ALPHA,
gl.ONE, gl.ONE);
gl.enable(gl.BLEND);
for (var i = 0; i < subids.length; i++) 
this.drawFns[subids[i]].call(this, subids[i], clipids);
}
subids = this.subscenes[id];
for (var i = 0; i < subids.length; i++)
this.drawFns[subids[i]].call(this, subids[i]);
}
this.drawScene();
var vpx0 = {
1: 0
};
var vpy0 = {
1: 0
};
var vpWidths = {
1: 504
};
var vpHeights = {
1: 504
};
var activeModel = {
1: 1
};
var activeProjection = {
1: 1
};
plot_3d1rgl.listeners = {
1: [ 1 ]
};
var whichSubscene = function(coords){
if (0 <= coords.x && coords.x <= 504 && 0 <= coords.y && coords.y <= 504) return(1);
return(1);
}
var translateCoords = function(subsceneid, coords){
return {x:coords.x - vpx0[subsceneid], y:coords.y - vpy0[subsceneid]};
}
var vlen = function(v) {
return sqrt(v[0]*v[0] + v[1]*v[1] + v[2]*v[2])
}
var xprod = function(a, b) {
return [a[1]*b[2] - a[2]*b[1],
a[2]*b[0] - a[0]*b[2],
a[0]*b[1] - a[1]*b[0]];
}
var screenToVector = function(x, y) {
var width = vpWidths[activeSubscene];
var height = vpHeights[activeSubscene];
var radius = max(width, height)/2.0;
var cx = width/2.0;
var cy = height/2.0;
var px = (x-cx)/radius;
var py = (y-cy)/radius;
var plen = sqrt(px*px+py*py);
if (plen > 1.e-6) { 
px = px/plen;
py = py/plen;
}
var angle = (SQRT2 - plen)/SQRT2*PI/2;
var z = sin(angle);
var zlen = sqrt(1.0 - z*z);
px = px * zlen;
py = py * zlen;
return [px, py, z];
}
var rotBase;
var trackballdown = function(x,y) {
rotBase = screenToVector(x, y);
var l = plot_3d1rgl.listeners[activeModel[activeSubscene]];
saveMat = new Object();
for (var i = 0; i < l.length; i++) 
saveMat[l[i]] = new CanvasMatrix4(plot_3d1rgl.userMatrix[l[i]]);
}
var trackballmove = function(x,y) {
var rotCurrent = screenToVector(x,y);
var dot = rotBase[0]*rotCurrent[0] + 
rotBase[1]*rotCurrent[1] + 
rotBase[2]*rotCurrent[2];
var angle = acos( dot/vlen(rotBase)/vlen(rotCurrent) )*180./PI;
var axis = xprod(rotBase, rotCurrent);
var l = plot_3d1rgl.listeners[activeModel[activeSubscene]];
for (i = 0; i < l.length; i++) {
plot_3d1rgl.userMatrix[l[i]].load(saveMat[l[i]]);
plot_3d1rgl.userMatrix[l[i]].rotate(angle, axis[0], axis[1], axis[2]);
}
plot_3d1rgl.drawScene();
}
var trackballend = 0;
var y0zoom = 0;
var zoom0 = 0;
var zoomdown = function(x, y) {
y0zoom = y;
zoom0 = new Object();
l = plot_3d1rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
zoom0[l[i]] = log(plot_3d1rgl.zoom[l[i]]);
}
var zoommove = function(x, y) {
l = plot_3d1rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
plot_3d1rgl.zoom[l[i]] = exp(zoom0[l[i]] + (y-y0zoom)/height);
plot_3d1rgl.drawScene();
}
var zoomend = 0;
var y0fov = 0;
var fov0 = 0;
var fovdown = function(x, y) {
y0fov = y;
fov0 = new Object();
l = plot_3d1rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
fov0[l[i]] = plot_3d1rgl.FOV[l[i]];
}
var fovmove = function(x, y) {
l = plot_3d1rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
plot_3d1rgl.FOV[l[i]] = max(1, min(179, fov0[l[i]] + 180*(y-y0fov)/height));
plot_3d1rgl.drawScene();
}
var fovend = 0;
var mousedown = [trackballdown, zoomdown, fovdown];
var mousemove = [trackballmove, zoommove, fovmove];
var mouseend = [trackballend, zoomend, fovend];
function relMouseCoords(event){
var totalOffsetX = 0;
var totalOffsetY = 0;
var currentElement = canvas;
do{
totalOffsetX += currentElement.offsetLeft;
totalOffsetY += currentElement.offsetTop;
currentElement = currentElement.offsetParent;
}
while(currentElement)
var canvasX = event.pageX - totalOffsetX;
var canvasY = event.pageY - totalOffsetY;
return {x:canvasX, y:canvasY}
}
canvas.onmousedown = function ( ev ){
if (!ev.which) // Use w3c defns in preference to MS
switch (ev.button) {
case 0: ev.which = 1; break;
case 1: 
case 4: ev.which = 2; break;
case 2: ev.which = 3;
}
drag = ev.which;
var f = mousedown[drag-1];
if (f) {
var coords = relMouseCoords(ev);
coords.y = height-coords.y;
activeSubscene = whichSubscene(coords);
coords = translateCoords(activeSubscene, coords);
f(coords.x, coords.y); 
ev.preventDefault();
}
}    
canvas.onmouseup = function ( ev ){	
if ( drag == 0 ) return;
var f = mouseend[drag-1];
if (f) 
f();
drag = 0;
}
canvas.onmouseout = canvas.onmouseup;
canvas.onmousemove = function ( ev ){
if ( drag == 0 ) return;
var f = mousemove[drag-1];
if (f) {
var coords = relMouseCoords(ev);
coords.y = height - coords.y;
coords = translateCoords(activeSubscene, coords);
f(coords.x, coords.y);
}
}
var wheelHandler = function(ev) {
var del = 1.1;
if (ev.shiftKey) del = 1.01;
var ds = ((ev.detail || ev.wheelDelta) > 0) ? del : (1 / del);
l = plot_3d1rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
plot_3d1rgl.zoom[l[i]] *= ds;
plot_3d1rgl.drawScene();
ev.preventDefault();
};
canvas.addEventListener("DOMMouseScroll", wheelHandler, false);
canvas.addEventListener("mousewheel", wheelHandler, false);
}
</script>
<canvas id="plot_3d1canvas" class="rglWebGL" width="1" height="1"></canvas> 
<p id="plot_3d1debug">
<img src="plot_3d1snapshot.png" alt="plot_3d1snapshot" width=505/><br>
You must enable Javascript to view this page properly.</p>
<script>plot_3d1rgl.start();</script>

<canvas id="plot_3d2textureCanvas" style="display: none;" width="256" height="256">
<img src="plot_3d2snapshot.png" alt="plot_3d2snapshot" width=505/><br>
Your browser does not support the HTML5 canvas element.</canvas>
<!-- ****** points object 35 ****** -->
<script id="plot_3d2vshader35" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
gl_PointSize = 3.;
vCol = aCol;
}
</script>
<script id="plot_3d2fshader35" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** text object 37 ****** -->
<script id="plot_3d2vshader37" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d2fshader37" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** text object 38 ****** -->
<script id="plot_3d2vshader38" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d2fshader38" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** text object 39 ****** -->
<script id="plot_3d2vshader39" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d2fshader39" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** lines object 42 ****** -->
<script id="plot_3d2vshader42" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d2fshader42" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 43 ****** -->
<script id="plot_3d2vshader43" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d2fshader43" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 44 ****** -->
<script id="plot_3d2vshader44" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d2fshader44" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 45 ****** -->
<script id="plot_3d2vshader45" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d2fshader45" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 46 ****** -->
<script id="plot_3d2vshader46" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d2fshader46" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 47 ****** -->
<script id="plot_3d2vshader47" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d2fshader47" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** spheres object 48 ****** -->
<script id="plot_3d2vshader48" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="plot_3d2fshader48" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 49 ****** -->
<script id="plot_3d2vshader49" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d2fshader49" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 50 ****** -->
<script id="plot_3d2vshader50" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d2fshader50" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** text object 51 ****** -->
<script id="plot_3d2vshader51" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d2fshader51" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** lines object 52 ****** -->
<script id="plot_3d2vshader52" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d2fshader52" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** text object 53 ****** -->
<script id="plot_3d2vshader53" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d2fshader53" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** lines object 54 ****** -->
<script id="plot_3d2vshader54" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d2fshader54" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** text object 55 ****** -->
<script id="plot_3d2vshader55" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d2fshader55" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** lines object 56 ****** -->
<script id="plot_3d2vshader56" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d2fshader56" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<script type="text/javascript">
var plot_3d2rgl = new rglClass();
plot_3d2rgl.start = function() {
var debug = function(msg) {
document.getElementById("plot_3d2debug").innerHTML = msg;
}
debug("");
var canvas = document.getElementById("plot_3d2canvas");
if (!window.WebGLRenderingContext){
debug("<img src=\"plot_3d2snapshot.png\" alt=\"plot_3d2snapshot\" width=505/><br> Your browser does not support WebGL. See <a href=\"http://get.webgl.org\">http://get.webgl.org</a>");
return;
}
try {
// Try to grab the standard context. If it fails, fallback to experimental.
this.gl = canvas.getContext("webgl") 
|| canvas.getContext("experimental-webgl");
}
catch(e) {}
if ( !this.gl ) {
debug("<img src=\"plot_3d2snapshot.png\" alt=\"plot_3d2snapshot\" width=505/><br> Your browser appears to support WebGL, but did not create a WebGL context.  See <a href=\"http://get.webgl.org\">http://get.webgl.org</a>");
return;
}
var gl = this.gl;
var width = 505;  var height = 505;
canvas.width = width;   canvas.height = height;
var normMatrix = new CanvasMatrix4();
var saveMat = new Object();
var distance;
var posLoc = 0;
var colLoc = 1;
var activeSubscene = 29;
this.flags[29] = 1275;
this.zoom[29] = 1;
this.FOV[29] = 60;
this.viewport[29] = [0, 0, 504, 504];
this.userMatrix[29] = new CanvasMatrix4();
this.userMatrix[29].load([
0.5, 0, -0.8660254, 0,
0, 1, 0, 0,
0.8660254, 0, 0.5, 0,
0, 0, 0, 1
]);
this.clipplanes[29] = [];
this.opaque[29] = [35,37,38,39,42,43,44,45,46,47,49,50,51,52,53,54,55,56];
this.transparent[29] = [48];
this.subscenes[29] = [];
function getPowerOfTwo(value) {
var pow = 1;
while(pow<value) {
pow *= 2;
}
return pow;
}
function handleLoadedTexture(texture, textureCanvas) {
gl.pixelStorei(gl.UNPACK_FLIP_Y_WEBGL, true);
gl.bindTexture(gl.TEXTURE_2D, texture);
gl.texImage2D(gl.TEXTURE_2D, 0, gl.RGBA, gl.RGBA, gl.UNSIGNED_BYTE, textureCanvas);
gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MAG_FILTER, gl.LINEAR);
gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MIN_FILTER, gl.LINEAR_MIPMAP_NEAREST);
gl.generateMipmap(gl.TEXTURE_2D);
gl.bindTexture(gl.TEXTURE_2D, null);
}
function loadImageToTexture(filename, texture) {   
var canvas = document.getElementById("plot_3d2textureCanvas");
var ctx = canvas.getContext("2d");
var image = new Image();
image.onload = function() {
var w = image.width;
var h = image.height;
var canvasX = getPowerOfTwo(w);
var canvasY = getPowerOfTwo(h);
canvas.width = canvasX;
canvas.height = canvasY;
ctx.imageSmoothingEnabled = true;
ctx.drawImage(image, 0, 0, canvasX, canvasY);
handleLoadedTexture(texture, canvas);
plot_3d2rgl.drawScene();
}
image.src = filename;
}  	   
function drawTextToCanvas(text, cex) {
var canvasX, canvasY;
var textX, textY;
var textHeight = 20 * cex;
var textColour = "white";
var fontFamily = "Arial";
var backgroundColour = "rgba(0,0,0,0)";
var canvas = document.getElementById("plot_3d2textureCanvas");
var ctx = canvas.getContext("2d");
ctx.font = textHeight+"px "+fontFamily;
canvasX = 1;
var widths = [];
for (var i = 0; i < text.length; i++)  {
widths[i] = ctx.measureText(text[i]).width;
canvasX = (widths[i] > canvasX) ? widths[i] : canvasX;
}	  
canvasX = getPowerOfTwo(canvasX);
var offset = 2*textHeight; // offset to first baseline
var skip = 2*textHeight;   // skip between baselines	  
canvasY = getPowerOfTwo(offset + text.length*skip);
canvas.width = canvasX;
canvas.height = canvasY;
ctx.fillStyle = backgroundColour;
ctx.fillRect(0, 0, ctx.canvas.width, ctx.canvas.height);
ctx.fillStyle = textColour;
ctx.textAlign = "left";
ctx.textBaseline = "alphabetic";
ctx.font = textHeight+"px "+fontFamily;
for(var i = 0; i < text.length; i++) {
textY = i*skip + offset;
ctx.fillText(text[i], 0,  textY);
}
return {canvasX:canvasX, canvasY:canvasY,
widths:widths, textHeight:textHeight,
offset:offset, skip:skip};
}
// ****** sphere object ******
var sphereBuf = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, sphereBuf);
gl.bufferData(gl.ARRAY_BUFFER, plot_3d1rgl.sphereverts, gl.STATIC_DRAW);
var sphereIbuf = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, sphereIbuf);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, plot_3d1rgl.spherefaces, gl.STATIC_DRAW);
// ****** points object 35 ******
this.flags[35] = 0;
this.prog[35]  = gl.createProgram();
gl.attachShader(this.prog[35], this.getShader( gl, "plot_3d2vshader35" ));
gl.attachShader(this.prog[35], this.getShader( gl, "plot_3d2fshader35" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[35], 0, "aPos");
gl.bindAttribLocation(this.prog[35], 1, "aCol");
gl.linkProgram(this.prog[35]);
this.offsets[35]={vofs:0, cofs:3, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:7};
var v=new Float32Array([
-0.00886681, 0.0238644, 0.0217746, 0, 1, 1, 1,
-0.0124726, 0.0247746, 0.0254585, 0, 1, 1, 1,
-0.0147315, 0.0281533, 0.0238545, 0, 1, 1, 1,
-0.0140497, 0.0274399, 0.00957505, 0, 1, 1, 1,
-0.0116447, 0.0287953, 0.01982, 0, 1, 1, 1,
-0.0135256, 0.0311266, 0.0226846, 0, 1, 1, 1,
-0.0146697, 0.0281732, 0.00270888, 0, 1, 1, 1,
-0.0122709, 0.0273632, 0.00629289, 0, 1, 1, 1,
-0.013305, 0.0293633, 0.00633912, 0, 1, 1, 1,
-0.0122756, 0.0262672, 0.00976935, 0, 1, 1, 1,
-0.011765, 0.0251295, 0.0118895, 0, 1, 1, 1,
-0.0128186, 0.028081, 0.00958605, 0, 1, 1, 1,
-0.0116086, 0.0294887, 0.00805614, 0, 1, 1, 1,
-0.0113447, 0.0307663, 0.00405527, 0, 1, 1, 1,
-0.0148581, 0.0237257, 0.0160082, 0, 1, 1, 1,
-0.010788, 0.0238892, 0.0226584, 0, 1, 1, 1,
-0.0148937, 0.0232955, 0.0101953, 0, 1, 1, 1,
-0.00875168, 0.0261604, 0.0121802, 0, 1, 1, 1,
-0.008739, 0.0261481, 0.0122728, 0, 1, 1, 1,
-0.0108659, 0.0259289, 0.00106272, 0, 1, 1, 1,
-0.0130502, 0.0270812, 0.0183305, 0, 1, 1, 1,
-0.0134347, 0.0270132, 0.0229292, 0, 1, 1, 1,
-0.0118617, 0.0220373, 0.0105775, 0, 1, 1, 1,
-0.0130059, 0.0245835, 0.0192892, 0, 1, 1, 1,
-0.0102875, 0.0258827, 0.0208538, 0, 1, 1, 1,
-0.00910839, 0.0257005, 0.00618984, 0, 1, 1, 1,
-0.0128356, 0.0225055, 0.00960733, 0, 1, 1, 1,
-0.0112344, 0.0276306, 0.0114346, 0, 1, 1, 1,
-0.0106106, 0.0278096, 0.00194201, 0, 1, 1, 1,
-0.0115198, 0.0292207, 0.00294633, 0, 1, 1, 1,
-0.0133883, 0.028673, 0.0164389, 0, 1, 1, 1,
-0.0109423, 0.0290064, 0.0218431, 0, 1, 1, 1,
-0.0148488, 0.0259077, 0.0115755, 0, 1, 1, 1,
-0.0107891, 0.0257524, 0.00616149, 0, 1, 1, 1,
-0.0106291, 0.0269203, 0.0228778, 0, 1, 1, 1,
-0.0161089, 0.0275971, 0.0192198, 0, 1, 1, 1,
-0.0132678, 0.0258366, 0.0163521, 0, 1, 1, 1,
-0.0149124, 0.0251342, 0.00388131, 0, 1, 1, 1,
-0.0114892, 0.0274352, 0.00899298, 0, 1, 1, 1,
-0.0117562, 0.0245922, 0.0136363, 0, 1, 1, 1,
-0.0122278, 0.0271677, 0.0112234, 0, 1, 1, 1,
-0.01029, 0.0277564, 0.0160115, 0, 1, 1, 1,
-0.0121964, 0.0309241, 0.0139494, 0, 1, 1, 1,
-0.0129751, 0.0271331, 0.0260444, 0, 1, 1, 1,
-0.0125756, 0.0265999, 0.0224468, 0, 1, 1, 1,
-0.0127859, 0.027101, 0.0191604, 0, 1, 1, 1,
-0.00998233, 0.0253795, 0.00685042, 0, 1, 1, 1,
-0.0133536, 0.028689, 0.0051763, 0, 1, 1, 1,
-0.0117333, 0.0277402, 0.00381405, 0, 1, 1, 1,
-0.0147853, 0.0295933, 0.00968847, 0, 1, 1, 1,
-0.0109685, 0.0223538, 0.0143111, 0, 1, 1, 1,
-0.0096918, 0.0249463, 0.00704751, 0, 1, 1, 1,
-0.0155493, 0.0266224, 0.00516269, 0, 1, 1, 1,
-0.014836, 0.0276024, 0.0116228, 0, 1, 1, 1,
-0.00828352, 0.0252156, 0.0187242, 0, 1, 1, 1,
-0.0110414, 0.0293172, 0.00362714, 0, 1, 1, 1,
-0.0102891, 0.0257019, 0.00540398, 0, 1, 1, 1,
-0.0104394, 0.0259701, 0.00329733, 0, 1, 1, 1,
-0.00930721, 0.0261215, 0.00409051, 0, 1, 1, 1,
-0.0124193, 0.0257317, 0.0162523, 0, 1, 1, 1,
-0.0114044, 0.025375, 0.00361722, 0, 1, 1, 1,
-0.0112687, 0.0271153, 0.00987548, 0, 1, 1, 1,
-0.0135369, 0.0198464, 0.0192111, 0, 1, 1, 1,
-0.0134307, 0.0240167, 0.00338929, 0, 1, 1, 1,
-0.00581692, -0.000934194, -0.00182728, 0, 1, 1, 1,
-0.00992799, 0.0281201, 0.00421423, 0, 1, 1, 1,
-0.0163484, 0.0253598, 0.00679276, 0, 1, 1, 1,
-0.0153143, 0.0239155, 0.00922948, 0, 1, 1, 1,
-0.0130066, 0.0264895, 0.0219972, 0, 1, 1, 1,
-0.0123188, 0.0270323, 0.0130162, 0, 1, 1, 1,
-0.0149538, 0.0261319, 0.0246082, 0, 1, 1, 1,
-0.00848068, 0.0244795, 0.0126147, 0, 1, 1, 1,
-0.009655, 0.026754, 0.0151766, 0, 1, 1, 1,
-0.0110317, 0.0247415, 0.0169718, 0, 1, 1, 1,
-0.0105467, 0.0216758, 0.0273625, 0, 1, 1, 1,
-0.0111351, 0.0298442, 0.0137315, 0, 1, 1, 1,
-0.0148939, 0.0282641, 0.0180507, 0, 1, 1, 1,
-0.0133113, 0.0255374, 0.0156552, 0, 1, 1, 1,
-0.0152238, 0.0253733, 0.0118128, 0, 1, 1, 1,
-0.0165117, 0.0254165, 0.0210366, 0, 1, 1, 1,
-0.0172562, 0.026341, 0.0224113, 0, 1, 1, 1,
-0.0138025, 0.0277873, 0.00395365, 0, 1, 1, 1,
-0.0135819, 0.0270152, 0.00695362, 0, 1, 1, 1,
-0.0116353, 0.0256155, 0.000289371, 0, 1, 1, 1,
-0.0149184, 0.0238256, -0.00270158, 0, 1, 1, 1,
-0.0114351, 0.0271658, 0.0125575, 0, 1, 1, 1,
-0.01436, 0.0264762, 0.0173609, 0, 1, 1, 1,
-0.0128438, 0.0268224, 0.00444834, 0, 1, 1, 1,
-0.0120046, 0.0230234, 0.00796341, 0, 1, 1, 1,
-0.0126985, 0.0258126, 0.00514686, 0, 1, 1, 1,
-0.0135831, 0.0249755, 0.0107284, 0, 1, 1, 1,
-0.0121259, 0.0280823, 0.020544, 0, 1, 1, 1,
-0.0141439, 0.0265254, 0.0258433, 0, 1, 1, 1,
-0.0138132, 0.0284247, 0.0101188, 0, 1, 1, 1,
-0.013572, 0.0269507, 0.00688972, 0, 1, 1, 1,
-0.0113011, 0.0268327, 0.0184482, 0, 1, 1, 1,
-0.0100601, 0.0264789, 0.0212786, 0, 1, 1, 1,
-0.0113299, 0.0282418, 0.00866489, 0, 1, 1, 1,
-0.0114925, 0.0272719, 0.0170049, 0, 1, 1, 1,
-0.0104039, 0.0283855, 0.0100799, 0, 1, 1, 1,
-0.00956386, 0.0268284, 0.0101297, 0, 1, 1, 1,
-0.0121363, 0.0224437, 0.00471969, 0, 1, 1, 1,
-0.0129748, 0.0260496, 0.0176977, 0, 1, 1, 1,
-0.0128936, 0.0280627, 0.00938281, 0, 1, 1, 1,
-0.0114891, 0.0247891, 0.0130035, 0, 1, 1, 1,
-0.00577137, 0.0112307, -0.0490284, 0, 1, 1, 1,
-0.0102643, 0.0267855, 0.0104728, 0, 1, 1, 1,
-0.0123468, 0.0265473, 0.016931, 0, 1, 1, 1,
-0.0097784, 0.0252052, 0.00928465, 0, 1, 1, 1,
-0.0117949, 0.0233834, 0.0122081, 0, 1, 1, 1,
-0.0128608, 0.0249954, 0.0176076, 0, 1, 1, 1,
-0.0129981, 0.0257737, 0.0155265, 0, 1, 1, 1,
-0.0134316, 0.02653, 0.00353212, 0, 1, 1, 1,
-0.00935833, 0.0318374, 0.0100076, 0, 1, 1, 1,
-0.0113107, 0.0303198, 0.0116077, 0, 1, 1, 1,
-0.0131245, 0.0298223, 0.00180678, 0, 1, 1, 1,
-0.0133191, 0.0293408, 0.00662741, 0, 1, 1, 1,
-0.0138591, 0.0261048, 0.000836834, 0, 1, 1, 1,
-0.0150174, 0.0231497, -0.00112857, 0, 1, 1, 1,
-0.0110389, 0.0248572, 0.00176283, 0, 1, 1, 1,
-0.0118715, 0.0275812, 0.0178639, 0, 1, 1, 1,
-0.0129834, 0.0259341, 0.0186928, 0, 1, 1, 1,
-0.010557, 0.0273327, 0.00990001, 0, 1, 1, 1,
-0.0111681, 0.0273472, 0.00617783, 0, 1, 1, 1,
-0.0101689, 0.0280639, 0.00864267, 0, 1, 1, 1,
-0.00927365, 0.0255201, 0.0130722, 0, 1, 1, 1,
-0.010756, 0.0260178, 0.0154469, 0, 1, 1, 1,
-0.0122762, 0.0266211, 0.00832697, 0, 1, 1, 1,
-0.0132575, 0.0299597, 0.014467, 0, 1, 1, 1,
-0.0114548, 0.0255468, 0.0189329, 0, 1, 1, 1,
-0.00934806, 0.0252484, 0.00733987, 0, 1, 1, 1,
-0.0142405, 0.0279119, 0.0149429, 0, 1, 1, 1,
-0.0133535, 0.0262824, 0.00311826, 0, 1, 1, 1,
-0.0135127, 0.0255778, -0.0113687, 0, 1, 1, 1,
-0.0121261, 0.0260542, 0.0169802, 0, 1, 1, 1,
-0.0133854, 0.0276628, 0.00624653, 0, 1, 1, 1,
-0.0129197, 0.0294731, 0.0139965, 0, 1, 1, 1,
-0.010358, 0.0239915, 0.0158709, 0, 1, 1, 1,
-0.0116095, 0.0243185, 0.0147471, 0, 1, 1, 1,
-0.0114546, 0.0261468, 0.0128631, 0, 1, 1, 1,
-0.0123456, 0.0285583, 0.00628408, 0, 0, 1, 1,
-0.0117925, 0.0253189, 0.0229664, 0, 0, 1, 1,
-0.0111225, 0.0262298, 0.0113142, 0, 0, 1, 1,
-0.010842, 0.0316673, 0.00262647, 0, 0, 1, 1,
-0.011003, 0.0292021, 0.00452867, 0, 0, 1, 1,
-0.0126318, 0.0264219, 0.022668, 0, 0, 1, 1,
-0.0110824, 0.0288873, 0.0175002, 0, 0, 1, 1,
-0.0137003, 0.029149, 0.00303409, 0, 0, 1, 1,
-0.0145364, 0.0258709, 0.00658553, 0, 0, 1, 1,
-0.00964667, 0.0252294, 0.00449265, 0, 0, 1, 1,
-0.0111937, 0.0281303, 0.0123027, 0, 0, 1, 1,
-0.0133546, 0.0244159, 0.0072153, 0, 0, 1, 1,
-0.0107568, 0.0287884, 0.0102288, 0, 0, 1, 1,
-0.0107723, 0.029073, 0.0209563, 0, 0, 1, 1,
-0.0137524, 0.0242893, 0.0140332, 0, 0, 1, 1,
-0.0135108, 0.0276608, 0.0147682, 0, 0, 1, 1,
-0.0113502, 0.0290479, 0.0100188, 0, 0, 1, 1,
-0.0140521, 0.0284237, 0.0121027, 0, 0, 1, 1,
-0.0133882, 0.0246725, 0.0109641, 0, 0, 1, 1,
-0.00934879, 0.0254398, 0.0251435, 0, 0, 1, 1,
-0.00814159, 0.02766, 0.0161029, 0, 0, 1, 1,
-0.0124137, 0.0259852, 0.0218082, 0, 0, 1, 1,
-0.0116249, 0.0263818, 0.000654635, 0, 0, 1, 1,
-0.0101555, 0.0250924, 0.0130751, 0, 0, 1, 1,
-0.0111079, 0.0274088, 0.0107658, 0, 0, 1, 1,
-0.00997544, 0.0294545, 0.011948, 0, 0, 1, 1,
-0.0107696, 0.0283827, 0.0114661, 0, 0, 1, 1,
-0.011611, 0.0281942, 0.0162057, 0, 0, 1, 1,
-0.0130192, 0.0279643, 0.0149605, 0, 0, 1, 1,
-0.0117091, 0.0281119, 0.0134414, 0, 0, 1, 1,
-0.00799466, 0.0300204, 0.00767195, 0, 0, 1, 1,
-0.0081185, 0.0264686, 0.0116146, 0, 0, 1, 1,
-0.0118704, 0.0273652, 0.0176032, 0, 0, 1, 1,
-0.0114452, 0.0290366, 0.0107144, 0, 0, 1, 1,
-0.0138727, 0.0237636, 0.00785003, 0, 0, 1, 1,
-0.011103, 0.0269406, 0.00734299, 0, 0, 1, 1,
-0.0109101, 0.0252827, 0.0169859, 0, 0, 1, 1,
-0.0127791, 0.0272729, 0.0143903, 0, 0, 1, 1,
-0.0108161, 0.0266715, 0.0169653, 0, 0, 1, 1,
-0.00959507, 0.0230123, 0.013315, 0, 0, 1, 1,
-0.0112786, 0.0285827, 0.0123404, 0, 0, 1, 1,
-0.013363, 0.0283886, 0.0184319, 0, 0, 1, 1,
-0.0101642, 0.0270854, -0.00282684, 0, 0, 1, 1,
-0.0110129, 0.0273035, 0.0163956, 0, 0, 1, 1,
-0.0105986, 0.0252297, 0.0141097, 0, 0, 1, 1,
-0.0172698, 0.0292374, 0.0143851, 0, 0, 1, 1,
-0.0102307, 0.0286338, 0.00902648, 0, 0, 1, 1,
-0.0123649, 0.0259511, 0.0156091, 0, 0, 1, 1,
-0.010754, 0.0290541, 0.00828693, 0, 0, 1, 1,
-0.0134661, 0.0262762, 0.00974057, 0, 0, 1, 1,
-0.0107807, 0.0282124, 0.0121875, 0, 0, 1, 1,
-0.0127756, 0.0283086, 0.0238306, 0, 0, 1, 1,
-0.0118563, 0.0237655, 0.00566439, 0, 0, 1, 1,
-0.0107849, 0.0297388, 0.00567507, 0, 0, 1, 1,
-0.0117523, 0.0273594, 0.0215876, 0, 0, 1, 1,
-0.0116881, 0.0218703, 0.0105175, 0, 0, 1, 1,
-0.0129286, 0.0207332, 0.00644358, 0, 0, 1, 1,
-0.013719, 0.0291585, 0.00655579, 0, 0, 1, 1,
-0.0135172, 0.0259411, 0.0053278, 0, 0, 1, 1,
-0.0120476, 0.0166544, 0.00572823, 0, 0, 1, 1,
-0.0137358, 0.02196, 0.0243654, 0, 0, 1, 1,
-0.0171736, 0.0204457, -0.000488194, 0, 0, 1, 1,
-0.0126523, 0.0223724, 0.0179309, 0, 0, 1, 1,
-0.0156941, 0.0264025, -0.000676673, 0, 0, 1, 1,
-0.0150322, 0.0213523, 0.00899962, 0, 0, 1, 1,
-0.0137382, 0.0207818, 0.00312067, 0, 0, 1, 1,
-0.0117617, 0.0238395, 0.00826143, 0, 0, 1, 1,
-0.0136822, 0.0232097, 0.013168, 0, 0, 1, 1,
-0.0103771, 0.0248488, 0.0100654, 0, 0, 1, 1,
-0.0118399, 0.0226848, 0.027003, 0, 0, 1, 1,
-0.0123068, 0.0219538, -0.000466468, 0, 0, 1, 1,
-0.0116785, 0.0309281, 0.00863269, 0, 0, 1, 1,
-0.0102603, 0.0261693, 0.00966214, 0, 0, 1, 1,
-0.0115228, 0.024125, 0.00985874, 0, 0, 1, 1,
-0.011637, 0.0297508, 0.0108957, 0, 0, 1, 1,
-0.00911545, 0.0295601, 0.00771114, 0, 0, 1, 1,
-0.0120582, 0.0284058, -0.00147242, 0, 0, 1, 1,
-0.0131449, 0.0253438, 0.0145489, 0, 0, 1, 1,
-0.0139409, 0.0270412, 0.0116015, 0, 0, 1, 1,
-0.0115097, 0.0281264, 0.0150466, 0, 0, 1, 1,
-0.0104537, 0.0313729, 0.017718, 0, 0, 1, 1,
-0.01003, 0.0253202, 0.017903, 0, 0, 1, 1,
-0.0116143, 0.0283412, 0.0129812, 0, 0, 1, 1,
-0.0131945, 0.0291524, 0.00509658, 0, 0, 1, 1,
-0.010053, 0.0271655, 0.0143403, 0, 0, 1, 1,
-0.00915117, 0.0241514, 0.0124749, 0, 0, 1, 1,
-0.00756656, 0.0262734, 0.00467394, 0, 0, 1, 1,
-0.0106447, 0.0248234, 0.0132472, 0, 0, 1, 1,
-0.0131976, 0.0254255, 0.00522041, 0, 0, 1, 1,
-0.0139171, 0.0280579, 0.0119584, 0, 0, 1, 1,
-0.0130388, 0.0267563, -0.000893618, 0, 0, 1, 1,
-0.0113769, 0.0296269, 0.0288852, 0, 0, 1, 1,
-0.0101904, 0.0258474, 0.0037858, 0, 0, 1, 1,
-0.0109709, 0.0280555, 0.0177659, 0, 0, 1, 1,
-0.012875, 0.0275396, 0.0172013, 0, 0, 1, 1,
-0.00913852, 0.0262472, 0.0179264, 0, 0, 1, 1,
-0.0113798, 0.0246484, 0.00395389, 0, 0, 1, 1,
-0.0110402, 0.0270359, 0.017079, 0, 0, 1, 1,
-0.0119093, 0.0273195, 0.00695805, 0, 0, 1, 1,
-0.0142024, 0.0274331, 0.0115534, 0, 0, 1, 1,
-0.0117034, 0.0268889, 0.0180925, 0, 0, 1, 1,
-0.0103303, 0.0259325, 0.00457057, 0, 0, 1, 1,
-0.0141989, 0.0257875, 0.0105864, 0, 0, 1, 1,
-0.0117826, 0.0286291, 0.0166398, 0, 0, 1, 1,
-0.0142497, 0.0243231, 0.00801615, 0, 0, 1, 1,
-0.0139552, 0.0239337, 0.0137122, 0, 0, 1, 1,
-0.0136743, 0.0242532, 0.00341549, 0, 0, 1, 1,
-0.0113042, 0.0235413, 0.00977782, 0, 0, 1, 1,
-0.0154653, 0.0235517, 0.0117982, 0, 0, 1, 1,
-0.0165242, 0.0237881, 0.018162, 0, 0, 1, 1,
-0.0115394, 0.0185159, 0.0147025, 0, 0, 1, 1,
-0.0129897, 0.0202159, 0.00928637, 0, 0, 1, 1,
-0.0134737, 0.0223773, 0.0078958, 0, 0, 1, 1,
-0.0106927, 0.0240148, 0.0107681, 0, 0, 1, 1,
-0.00957613, 0.0245013, -0.00265688, 0, 0, 1, 1,
-0.0144325, 0.0214823, 0.0153915, 0, 0, 1, 1,
-0.011182, 0.0213535, 0.0165707, 0, 0, 1, 1,
-0.0160512, 0.0212972, 0.00828121, 0, 0, 1, 1,
-0.0127985, 0.0240445, 0.000725888, 0, 0, 1, 1,
-0.0119454, 0.0224038, 0.0128598, 0, 0, 1, 1,
-0.0136061, 0.0210214, 0.00988697, 0, 0, 1, 1,
-0.0145131, 0.0210188, 0.000633065, 0, 0, 1, 1,
-0.0137346, 0.0234757, 0.0108352, 0, 0, 1, 1,
-0.0135633, 0.0245155, 0.00819555, 0, 0, 1, 1,
-0.0104922, 0.0241871, 0.0156222, 0, 0, 1, 1,
-0.0134902, 0.0247944, -0.00430758, 0, 0, 1, 1,
-0.0145296, 0.0236375, 0.00979734, 0, 0, 1, 1,
-0.0138629, 0.025616, 0.0124037, 0, 0, 1, 1,
-0.0143111, 0.0195784, 0.00154331, 0, 0, 1, 1,
-0.0123259, 0.0226787, 0.0200938, 0, 0, 1, 1,
-0.0135332, 0.0210848, 0.0113033, 0, 0, 1, 1,
-0.0138219, 0.0236944, 0.0096544, 0, 0, 1, 1,
-0.0145693, 0.0197255, 0.00578477, 0, 0, 1, 1,
-0.0133557, 0.0233927, 0.0162397, 0, 0, 1, 1,
-0.0126798, 0.0216866, 0.0104805, 0, 0, 1, 1,
-0.0145758, 0.022478, 0.0114166, 0, 0, 1, 1,
-0.00980388, 0.020673, 0.0109155, 0, 0, 1, 1,
-0.00989465, 0.0275465, 0.0145505, 0, 0, 1, 1,
-0.0129017, 0.0235914, 0.0152216, 0, 0, 1, 1,
-0.0120715, 0.025734, 0.0191858, 0, 0, 1, 1,
-0.00993314, 0.0219645, 0.00870267, 0, 0, 1, 1,
-0.0144075, 0.0234614, 0.023235, 0, 0, 1, 1,
-0.0142202, 0.0268766, 0.0152755, 0, 0, 1, 1,
-0.0129626, 0.023574, 0.00601518, 0, 0, 1, 1,
-0.0131421, 0.0211668, 0.0217402, 0, 0, 1, 1,
-0.0152594, 0.0196937, -0.00193413, 0, 0, 1, 1,
-0.0147942, 0.0210297, 0.00609799, 0, 0, 1, 1,
-0.0105986, 0.0234168, 0.0102144, 0, 0, 1, 1,
-0.0132185, 0.019576, 0.0040235, 0, 0, 1, 1,
-0.0118088, 0.0232633, 0.00816838, 0, 0, 1, 1,
-0.0152803, 0.020936, 0.00739438, 0, 0, 1, 1,
-0.012553, 0.0194701, 0.0118699, 0, 0, 1, 1,
-0.0112282, 0.026829, 0.0187078, 0, 0, 1, 1,
-0.0137843, 0.0238832, 0.00750988, 0, 0, 1, 1,
-0.0136395, 0.0211789, 0.0162951, 0, 0, 1, 1,
-0.011906, 0.0236646, 0.0212473, 0, 0, 1, 1,
-0.0113808, 0.0240892, 0.00879046, 0, 0, 1, 1,
-0.0104013, 0.0250219, 0.00360141, 0, 0, 1, 1,
-0.015148, 0.0235485, 0.0149889, 0, 0, 1, 1,
-0.0134383, 0.0246615, 0.00899002, 0, 0, 1, 1,
-0.0120465, 0.0217984, 0.00884514, 0, 0, 1, 1,
-0.0149625, 0.0247689, 0.0173242, 0, 0, 1, 1,
-0.01799, 0.0269095, 0.000534468, 0, 0, 1, 1,
-0.0146238, 0.0229473, 0.00369307, 0, 0, 1, 1,
-0.0129095, 0.0256003, 0.00587418, 0, 0, 1, 1,
-0.0139598, 0.0214938, 0.00569978, 0, 0, 1, 1,
-0.0127245, 0.0182578, 0.00888825, 0, 0, 1, 1,
-0.0122696, 0.0222292, 0.0173431, 0, 0, 1, 1,
-0.0135996, 0.0226041, 0.0125327, 0, 0, 1, 1,
-0.0112277, 0.0259577, 0.0124669, 0, 0, 1, 1,
-0.0162406, 0.0207383, 0.00822197, 0, 0, 1, 1,
-0.0164621, 0.0256774, 0.00515605, 0, 0, 1, 1,
-0.0131916, 0.0223769, 0.00730401, 0, 0, 1, 1,
-0.0115478, 0.0214912, 0.0119866, 0, 0, 1, 1,
-0.0147473, 0.0256742, 0.008772, 0, 0, 1, 1,
-0.0116873, 0.0242674, 0.00475976, 0, 0, 1, 1,
-0.011117, 0.028515, 0.00157371, 0, 0, 1, 1,
-0.012997, 0.0250226, 0.00972486, 0, 0, 1, 1,
-0.016551, 0.0191626, 0.0156221, 0, 0, 1, 1,
-0.0142064, 0.022434, 0.0142188, 0, 0, 1, 1,
-0.0121835, 0.0199018, 0.0170425, 0, 0, 1, 1,
-0.0228269, -0.0475654, 0.00907309, 0, 0.8039216, 0, 1,
-0.0228553, -0.0488415, 0.0137005, 0, 0.8039216, 0, 1,
-0.0222122, -0.0457324, 0.012512, 0, 0.8039216, 0, 1,
-0.0247551, -0.0460549, 0.00507055, 0, 0.8039216, 0, 1,
-0.02469, -0.046895, 0.0163472, 0, 0.8039216, 0, 1,
-0.021029, -0.046606, 0.0135468, 0, 0.8039216, 0, 1,
-0.0218419, -0.0447786, 0.00498552, 0, 0.8039216, 0, 1,
-0.0195952, -0.0458457, 0.0214694, 0, 0.8039216, 0, 1,
-0.0230239, -0.0471733, 0.00814306, 0, 0.8039216, 0, 1,
-0.0218452, -0.0440416, 0.0113722, 0, 0.8039216, 0, 1,
-0.0201676, -0.0462737, 0.00447752, 0, 0.8039216, 0, 1,
-0.0227843, -0.0478824, 0.0085774, 0, 0.8039216, 0, 1,
-0.0197834, -0.0458426, 0.0184392, 0, 0.8039216, 0, 1,
-0.0207643, -0.0430267, 0.00884501, 0, 0.8039216, 0, 1,
-0.0206854, -0.0472078, 0.0154503, 0, 0.8039216, 0, 1,
-0.0251057, -0.0430754, 0.0208066, 0, 0.8039216, 0, 1,
-0.0195262, -0.0461964, 0.0086836, 0, 0.8039216, 0, 1,
-0.0197042, -0.0462707, 0.00125627, 0, 0.8039216, 0, 1,
-0.0203137, -0.0461741, 0.0147652, 0, 0.8039216, 0, 1,
-0.0224587, -0.0433645, 0.0142032, 0, 0.8039216, 0, 1,
-0.0214331, -0.0465056, 0.0153838, 0, 0.8039216, 0, 1,
-0.0200086, -0.044871, 0.0124984, 0, 0.8039216, 0, 1,
-0.0226511, -0.0441368, 0.0149426, 0, 0.8039216, 0, 1,
-0.0216865, -0.0465115, 0.00528324, 0, 0.8039216, 0, 1,
-0.0203666, -0.0453889, 0.0136757, 0, 0.8039216, 0, 1,
-0.0202521, -0.04288, 0.0117181, 0, 0.8039216, 0, 1,
-0.0215928, -0.0474487, 0.00474726, 0, 0.8039216, 0, 1,
-0.0217943, -0.0458128, 0.0146455, 0, 0.8039216, 0, 1,
-0.0201348, -0.0502583, 0.00825623, 0, 0.8039216, 0, 1,
-0.0206457, -0.0438358, 0.0188701, 0, 0.8039216, 0, 1,
-0.0211507, -0.0498435, 0.0258304, 0, 0.8039216, 0, 1,
-0.0226475, -0.0481702, 0.0193757, 0, 0.8039216, 0, 1,
-0.0244167, -0.0485593, 0.0124118, 0, 0.8039216, 0, 1,
-0.0227296, -0.0482857, 0.0189768, 0, 0.8039216, 0, 1,
-0.0218232, -0.0444051, 0.0105841, 0, 0.8039216, 0, 1,
-0.0215404, -0.0446985, 0.0112267, 0, 0.8039216, 0, 1,
-0.0211552, -0.0460471, 0.0119572, 0, 0.8039216, 0, 1,
-0.0216532, -0.0482607, 0.00964503, 0, 0.8039216, 0, 1,
-0.0246026, -0.0445038, 0.00968899, 0, 0.8039216, 0, 1,
-0.0196496, -0.046784, 0.0200917, 0, 0.8039216, 0, 1,
-0.0208572, -0.0487035, 0.0114415, 0, 0.8039216, 0, 1,
-0.0206629, -0.048254, 0.0162294, 0, 0.8039216, 0, 1,
-0.0214662, -0.0464055, 0.00799757, 0, 0.8039216, 0, 1,
-0.0174488, -0.0467871, 0.00752603, 0, 0.8039216, 0, 1,
-0.00795485, 0.00812255, -0.0498788, 1, 0, 0, 1,
-0.00790179, 0.022487, -0.00377724, 1, 0, 0, 1,
-0.0219649, -0.0475438, 0.0180097, 0, 0.8039216, 0, 1,
-0.0195713, -0.048466, 0.0105929, 0, 0.8039216, 0, 1,
-0.024775, -0.0441433, 0.0175566, 0, 0.8039216, 0, 1,
-0.0197837, -0.048666, 0.0123438, 0, 0.8039216, 0, 1,
-0.0214265, -0.0485158, 0.00988444, 0, 0.8039216, 0, 1,
-0.0200393, -0.0432384, 0.00318714, 0, 0.8039216, 0, 1,
-0.0209152, -0.0473638, 0.0107885, 0, 0.8039216, 0, 1,
-0.0229248, -0.0476456, 0.0154964, 0, 0.8039216, 0, 1,
-0.0209049, -0.0451975, 0.0116402, 0, 0.8039216, 0, 1,
-0.0221954, -0.0479599, 0.00898107, 0, 0.8039216, 0, 1,
-0.0201608, -0.0485583, 0.0130871, 0, 0.8039216, 0, 1,
-0.0215961, -0.0487806, 0.017531, 0, 0.8039216, 0, 1,
-0.019295, -0.0451161, 0.0111203, 0, 0.8039216, 0, 1,
-0.0188937, -0.0440494, 0.0184203, 0, 0.8039216, 0, 1,
-0.0193894, -0.0436929, 0.0147046, 0, 0.8039216, 0, 1,
-0.0204134, -0.0432386, 0.0117079, 0, 0.8039216, 0, 1,
-0.0209705, -0.0481781, 0.016546, 0, 0.8039216, 0, 1,
-0.0190802, -0.0465624, 0.00427869, 0, 0.8039216, 0, 1,
-0.0205383, -0.0482517, 0.0135549, 0, 0.8039216, 0, 1,
-0.0247985, -0.0479872, 0.00635899, 0, 0.8039216, 0, 1,
-0.0237976, -0.0468474, 0.0123341, 0, 0.8039216, 0, 1,
-0.0211247, -0.0447158, 0.00910297, 0, 0.8039216, 0, 1,
-0.023983, -0.0469959, 0.015858, 0, 0.8039216, 0, 1,
-0.0220285, -0.0468321, 0.0125847, 0, 0.8039216, 0, 1,
-0.022514, -0.0462394, 0.0074289, 0, 0.8039216, 0, 1,
-0.0225103, -0.0441683, 0.0244713, 0, 0.8039216, 0, 1,
-0.0198123, -0.0436045, 0.0123578, 0, 0.8039216, 0, 1,
-0.0201426, -0.044296, 0.0171682, 0, 0.8039216, 0, 1,
-0.0213056, -0.0442843, -0.00302645, 0, 0.8039216, 0, 1,
-0.0196703, -0.0476107, 0.015761, 0, 0.8039216, 0, 1,
-0.02276, -0.0451804, 0.0260088, 0, 0.8039216, 0, 1,
-0.0243454, -0.0477497, 0.0186077, 0, 0.8039216, 0, 1,
-0.00415007, 0.0152267, -0.0201872, 1, 0, 0, 1,
0.00722696, 0.0149141, 0.00166637, 1, 0, 0, 1,
-0.00499204, 0.00775787, -0.041528, 1, 0, 0, 1,
-0.001841, 0.00643312, -0.0448911, 1, 0, 0, 1,
-0.0238504, -0.0420786, 0.0167263, 0, 0.8039216, 0, 1,
-0.021683, -0.0474585, 0.011902, 0, 0.8039216, 0, 1,
-0.0215727, -0.044023, 0.0231612, 0, 0.8039216, 0, 1,
-0.0246791, -0.0437182, 0.0106413, 0, 0.8039216, 0, 1,
-0.0199913, -0.0427926, 0.01477, 0, 0.8039216, 0, 1,
-0.0207957, -0.0456033, 0.0186144, 0, 0.8039216, 0, 1,
-0.0218088, -0.0480775, 0.00958459, 0, 0.8039216, 0, 1,
-0.0220589, -0.0474776, 0.0116932, 0, 0.8039216, 0, 1,
-0.0221075, -0.0439485, 0.0137618, 0, 0.8039216, 0, 1,
-0.0186216, -0.0472467, 0.0179583, 0, 0.8039216, 0, 1,
-0.0220028, -0.0411969, 0.00902925, 0, 0.8039216, 0, 1,
-0.0177109, -0.0446931, 0.00978712, 0, 0.8039216, 0, 1,
-0.0226301, -0.0453304, 0.0149734, 0, 0.8039216, 0, 1,
-0.0192413, -0.0434504, 0.0265313, 0, 0.8039216, 0, 1,
-0.0213995, -0.0455914, 0.0236959, 0, 0.8039216, 0, 1,
-0.0231323, -0.0450802, 0.00225958, 0, 0.8039216, 0, 1,
-0.0226076, -0.0470682, 0.00750212, 0, 0.8039216, 0, 1,
-0.0211502, -0.0445104, 0.020368, 0, 0.8039216, 0, 1,
-0.0219155, -0.0462141, 0.0187958, 0, 0.8039216, 0, 1,
-0.0211568, -0.0471418, 0.0193367, 0, 0.8039216, 0, 1,
-0.0195172, -0.0437941, 0.0149742, 0, 0.8039216, 0, 1,
-0.0193142, -0.0452652, 0.0153511, 0, 0.8039216, 0, 1,
-0.0220431, -0.043637, 0.0107631, 0, 0.8039216, 0, 1,
-0.0226273, -0.045704, 0.0226994, 0, 0.8039216, 0, 1,
-0.0125134, 0.0160733, -0.0187445, 1, 0, 0, 1,
-0.00815361, 0.0152704, -0.0251956, 1, 0, 0, 1,
-0.00369676, 0.0187153, -0.0087253, 1, 0, 0, 1,
-0.00499599, 0.0142422, -0.0176737, 1, 0, 0, 1,
-0.00703697, 0.0234329, 0.00445764, 1, 0, 0, 1,
-0.00743565, 0.0117182, -0.0526328, 1, 0, 0, 1,
-0.0103198, 0.0197327, -0.00752555, 1, 0, 0, 1,
-0.00219664, 0.0189244, -0.0169659, 1, 0, 0, 1,
0.00107987, 0.0175363, -0.0288034, 1, 0, 0, 1,
0.0118171, 0.00921071, -0.0294031, 1, 0, 0, 1,
0.00407748, 0.0138401, -0.00154257, 1, 0, 0, 1,
-0.0090259, 0.0219026, -0.0174049, 1, 0, 0, 1,
-0.00259501, 0.0121949, -0.0357062, 1, 0, 0, 1,
0.000414678, 0.0189859, -0.0242961, 1, 0, 0, 1,
-0.00425692, 0.0213539, -0.0185576, 1, 0, 0, 1,
0.00528004, 0.0124796, -0.0315785, 1, 0, 0, 1,
-0.00377719, 0.0155882, -0.0214545, 1, 0, 0, 1,
-0.0101706, 0.0134759, -0.0217364, 1, 0, 0, 1,
-0.00280112, 0.0193844, -0.010868, 1, 0, 0, 1,
-0.0109744, 0.0176909, -0.0208527, 1, 0, 0, 1,
-0.00192708, 0.0125267, -0.0335617, 1, 0, 0, 1,
0.0015079, 0.0131907, -0.0283962, 1, 0, 0, 1,
-0.00609305, 0.0180503, -0.0239939, 1, 0, 0, 1,
-0.00926598, 0.0170506, -0.0120606, 1, 0, 0, 1,
-0.00251447, 0.0138641, -0.0269598, 1, 0, 0, 1,
0.00649685, 0.0177502, 7.03697e-05, 1, 0, 0, 1,
-0.00204832, 0.0191023, -0.0286585, 1, 0, 0, 1,
-0.000779358, 0.0155071, -0.0289354, 1, 0, 0, 1,
0.00104868, 0.0132606, -0.0306608, 1, 0, 0, 1,
-0.0033441, 0.0139588, -0.0396869, 1, 0, 0, 1,
-0.00308374, 0.0150683, -0.00627947, 1, 0, 0, 1,
0.00130953, 0.018247, 0.0017934, 1, 0, 0, 1,
0.0110746, 0.0132532, 0.00308229, 1, 0, 0, 1,
0.0376002, -0.00232169, -0.011391, 1, 0, 0, 1,
-0.00901396, 0.0219978, -0.0056065, 1, 0, 0, 1,
-0.0142024, 0.0128954, -0.0419118, 1, 0, 0, 1,
-0.00076747, -0.00263272, -0.0788129, 1, 0, 0, 1,
1.12434e-05, 0.0153257, -0.00481447, 1, 0, 0, 1,
-0.0108145, 0.0192073, -0.0106254, 1, 0, 0, 1,
-0.00424299, 0.0145319, -0.034137, 1, 0, 0, 1,
-0.0120438, 0.017742, -0.027269, 1, 0, 0, 1,
-0.0131151, 0.00897117, -0.0791053, 1, 0, 0, 1,
-0.00582257, 0.0181326, -0.022766, 1, 0, 0, 1,
-0.0118271, 0.00881032, -0.0481503, 1, 0, 0, 1,
-0.0163395, -0.000727704, -0.0804766, 1, 0, 0, 1,
0.00418304, 0.0115717, -0.0134308, 1, 0, 0, 1,
-0.00516328, 0.01625, -0.0156506, 1, 0, 0, 1,
-0.000433563, 0.0144896, -0.0179018, 1, 0, 0, 1,
-0.00128632, 0.0131526, -0.0217634, 1, 0, 0, 1,
-0.00580215, 0.0233271, 0.00579969, 1, 0, 0, 1,
-0.0105629, 0.0121982, -0.0325397, 1, 0, 0, 1,
-0.0070833, 0.0157445, -0.00707511, 1, 0, 0, 1,
-0.0018993, 0.0182465, -0.0231356, 1, 0, 0, 1,
-0.000344473, 0.00750842, -0.0530027, 1, 0, 0, 1,
0.0055304, 0.00949606, -0.0194561, 1, 0, 0, 1,
0.00366409, 0.0096184, -0.0501351, 1, 0, 0, 1,
0.00394971, 0.0168208, -0.0119509, 1, 0, 0, 1,
-0.00706465, 0.0168998, -0.0335573, 1, 0, 0, 1,
0.000451784, 0.012381, -0.0362242, 1, 0, 0, 1,
-0.000550207, 0.0145694, -0.025685, 1, 0, 0, 1,
-0.014948, 0.00766927, -0.0652735, 1, 0, 0, 1,
-0.014105, 0.00954769, -0.0551464, 1, 0, 0, 1,
-0.0161168, 0.00849367, -0.050229, 1, 0, 0, 1,
-0.0095565, 0.0137916, -0.0395294, 1, 0, 0, 1,
-0.00890177, 0.0164466, -0.0196737, 1, 0, 0, 1,
-0.00490347, -0.0075657, -0.103784, 1, 0, 0, 1,
-0.00906991, -0.00469661, -0.0840544, 1, 0, 0, 1,
-0.00686865, 0.0248223, 0.0111706, 1, 0, 0, 1,
-0.0152818, 0.00636432, -0.0884904, 1, 0, 0, 1,
-0.0119092, 0.011783, -0.0435033, 1, 0, 0, 1,
-0.0106919, 0.0282036, 0.0158341, 0, 0, 1, 1,
0.0155306, -0.00412843, -0.0723126, 1, 0, 0, 1,
-0.0104277, 0.00251749, -0.0931759, 1, 0, 0, 1,
-0.0107831, 0.0130857, -0.0291016, 1, 0, 0, 1,
-0.00221752, 0.000679596, -0.0861949, 1, 0, 0, 1,
-0.0136158, 0.00823717, -0.0485188, 1, 0, 0, 1,
-0.00677494, 0.0164935, -0.0118744, 1, 0, 0, 1,
-0.0113623, 0.0221216, -0.0146259, 1, 0, 0, 1,
-0.0105594, 0.019951, -0.0151026, 1, 0, 0, 1,
-0.0144775, 0.00864782, -0.0548592, 1, 0, 0, 1,
-0.0121341, 0.0115638, -0.0287352, 1, 0, 0, 1,
-0.0127917, 0.0134483, -0.0178458, 1, 0, 0, 1,
0.0129694, -9.40401e-05, -0.0463231, 1, 0, 0, 1,
-0.0114823, 0.00160658, -0.074798, 1, 0, 0, 1,
-0.0126399, 0.0208847, -0.0346265, 1, 0, 0, 1,
-0.0107871, 0.00666632, -0.0746042, 1, 0, 0, 1,
-0.00327709, 0.0104264, -0.0355742, 1, 0, 0, 1,
-0.0121796, -0.00109537, -0.0732059, 1, 0, 0, 1,
-0.0118903, 0.0136637, -0.0360215, 1, 0, 0, 1,
-0.00730519, 0.0177562, -0.0282389, 1, 0, 0, 1,
-0.0145873, 0.0170545, -0.0266269, 1, 0, 0, 1,
0.0158822, 0.00311518, -0.0218944, 1, 0, 0, 1,
-0.0104163, 0.0158032, -0.0151967, 1, 0, 0, 1,
0.00496317, 0.00792379, -0.0450484, 1, 0, 0, 1,
-0.0118992, 0.00608466, -0.0587854, 1, 0, 0, 1,
-0.0142518, 0.0105717, -0.0504539, 1, 0, 0, 1,
-0.0127964, 0.0128683, -0.0468989, 1, 0, 0, 1,
-0.00667883, 0.00291104, -0.0664325, 1, 0, 0, 1,
0.0013303, 0.00264684, -0.0557542, 1, 0, 0, 1,
-0.00870577, 0.0156009, -0.0240986, 1, 0, 0, 1,
-0.00128028, 0.0162832, -0.00218269, 1, 0, 0, 1,
-0.00919997, 0.0195756, -0.0308885, 1, 0, 0, 1,
-0.0101516, 0.0232036, -0.0173891, 1, 0, 0, 1,
-0.00917483, 0.0142347, -0.0184249, 1, 0, 0, 1,
-0.0124642, 0.00765488, -0.0691884, 1, 0, 0, 1,
-0.0103383, 0.00829712, -0.0688222, 1, 0, 0, 1,
-0.00745961, 0.00165397, -0.0687243, 1, 0, 0, 1,
-0.0115674, 0.0107976, -0.0513724, 1, 0, 0, 1,
-0.0127367, 0.0272446, 0.0183097, 0, 0, 1, 1,
-0.0119625, 0.0294061, 0.00888008, 0, 0, 1, 1,
-0.0126168, 0.0258055, 0.0183438, 0, 0, 1, 1,
-0.0102374, 0.0270391, 0.0129866, 0, 0, 1, 1,
-0.0100193, 0.0290679, 0.00789347, 0, 0, 1, 1,
-0.0115686, 0.0261405, 0.00963599, 0, 0, 1, 1,
-0.0104184, 0.0145465, -0.0255844, 1, 0, 0, 1,
0.00918815, -0.00657052, -0.0789912, 1, 0, 0, 1,
-0.0107646, 0.0254562, 0.00955688, 0, 0, 1, 1,
-0.00680781, 0.0288168, 0.00346046, 0, 0, 1, 1,
-0.0106277, 0.0323664, 0.00835367, 0, 0, 1, 1,
-0.00924328, 0.0258167, 0.0123296, 0, 0, 1, 1,
-0.0115461, 0.0263079, 0.00460833, 0, 0, 1, 1,
-0.0073842, 0.028101, 0.0130338, 0, 0, 1, 1,
-0.00961266, 0.028563, 0.0158073, 0, 0, 1, 1,
-0.00770294, 0.0212503, 0.0146223, 0, 0, 1, 1,
-0.0156245, 0.0223188, 0.00597563, 0, 0, 1, 1,
-0.0119385, 0.0275722, 0.0162635, 0, 0, 1, 1,
-0.0113868, 0.0297108, 0.0121137, 0, 0, 1, 1,
-0.0121334, 0.0243808, 0.00188057, 0, 0, 1, 1,
-0.0108409, 0.0279683, 0.0216673, 0, 0, 1, 1,
-0.011768, 0.0281752, 0.0136645, 0, 0, 1, 1,
-0.0114795, 0.0247793, 0.00867501, 0, 0, 1, 1,
-0.0119832, 0.0254772, 0.0181285, 0, 0, 1, 1,
-0.0101695, 0.0265409, 0.0035312, 0, 0, 1, 1,
-0.0129714, 0.0252449, 0.00879037, 0, 0, 1, 1,
-0.0118888, 0.0233199, 0.0103993, 0, 0, 1, 1,
-0.0112292, 0.0298052, 0.015427, 0, 0, 1, 1,
-0.0104211, 0.0257311, 0.0187351, 0, 0, 1, 1,
-0.0125005, 0.0271759, 0.0137337, 0, 0, 1, 1,
-0.00993213, 0.028124, 0.00792852, 0, 0, 1, 1,
-0.0142551, 0.0232998, 0.00787479, 0, 0, 1, 1,
-0.0101617, 0.0266982, 0.00367679, 0, 0, 1, 1,
-0.010707, 0.0255306, 0.0169507, 0, 0, 1, 1,
-0.0105995, 0.0290999, 0.0161926, 0, 0, 1, 1,
-0.0100796, 0.0286098, 0.0103036, 0, 0, 1, 1,
-0.0110392, 0.0293114, 0.0120815, 0, 0, 1, 1,
-0.0128383, 0.0243127, 0.0147911, 0, 0, 1, 1,
-0.0108612, 0.0263359, 0.010828, 0, 0, 1, 1,
-0.0110329, 0.028983, 0.0195216, 0, 0, 1, 1,
-0.0089694, 0.0293864, 0.00611747, 0, 0, 1, 1,
-0.0100156, 0.0275008, 0.0147042, 0, 0, 1, 1,
-0.0118111, 0.0313438, 0.020286, 0, 0, 1, 1,
-0.0135282, 0.0285555, 0.0139991, 0, 0, 1, 1,
-0.0118573, 0.028059, 0.017623, 0, 0, 1, 1,
-0.011434, 0.0298841, 0.017289, 0, 0, 1, 1,
-0.0137068, 0.0262813, 0.00895045, 0, 0, 1, 1,
-0.011303, 0.0240466, 0.0185177, 0, 0, 1, 1,
-0.0128576, 0.0289939, 0.00276648, 0, 0, 1, 1,
-0.0120312, 0.029179, 0.017439, 0, 0, 1, 1,
-0.0106222, 0.0256284, 0.00570797, 0, 0, 1, 1,
-0.00995275, 0.0273092, -0.0024934, 0, 0, 1, 1,
-0.00959611, 0.0261537, 0.00959381, 0, 0, 1, 1,
-0.0114889, 0.023797, 0.0134738, 0, 0, 1, 1,
-0.0107667, 0.0284537, 0.0112355, 0, 0, 1, 1,
-0.0116865, 0.0287125, 0.018817, 0, 0, 1, 1,
-0.010768, 0.0257793, 0.0180663, 0, 0, 1, 1,
-0.0103461, 0.0279454, 0.0188626, 0, 0, 1, 1,
-0.0125309, 0.0251358, 0.0186523, 0, 0, 1, 1,
-0.00736122, 0.025217, 0.0152209, 0, 0, 1, 1,
-0.00878201, 0.0274251, 0.0160884, 0, 0, 1, 1,
-0.0127847, 0.0254325, 0.0197265, 0, 0, 1, 1,
-0.0110028, 0.0257856, 0.00341325, 0, 0, 1, 1,
-0.0119122, 0.0261599, 0.0103964, 0, 0, 1, 1,
-0.0104002, 0.0291234, 0.0195688, 0, 0, 1, 1,
-0.0100776, 0.0254294, 0.00434181, 0, 0, 1, 1,
-0.012127, 0.0268114, -0.00219624, 0, 0, 1, 1,
-0.0105922, 0.0258903, 0.0197543, 0, 0, 1, 1,
-0.0107162, 0.0258229, 0.0131112, 0, 0, 1, 1,
-0.00995127, 0.0282215, 0.0126675, 0, 0, 1, 1,
-0.0126403, 0.0263284, 0.00452265, 0, 0, 1, 1,
-0.0109886, 0.0260791, 0.0218565, 0, 0, 1, 1,
-0.0119297, 0.0250496, 0.00935235, 0, 0, 1, 1,
-0.00946548, 0.0277378, 0.0152095, 0, 0, 1, 1,
-0.0111957, 0.0268611, 0.0264809, 0, 0, 1, 1,
-0.0105658, 0.029585, 0.0012607, 0, 0, 1, 1,
-0.0117585, 0.0254491, 0.00702256, 0, 0, 1, 1,
-0.0089961, 0.0267625, 0.00355462, 0, 0, 1, 1,
-0.00996585, 0.0254337, 0.0193859, 0, 0, 1, 1,
-0.0131239, 0.0295077, 0.0157527, 0, 0, 1, 1,
-0.0103642, 0.0253289, 0.00931815, 0, 0, 1, 1,
-0.0113159, 0.0276354, 0.00661754, 0, 0, 1, 1,
-0.0106622, 0.0283885, 0.012353, 0, 0, 1, 1,
-0.0147154, 0.0278962, 0.0199703, 0, 0, 1, 1,
-0.0102746, 0.0278862, 0.00661131, 0, 0, 1, 1,
-0.0107519, 0.0281143, 0.0112299, 0, 0, 1, 1,
-0.0127744, 0.0276239, 0.00241913, 0, 0, 1, 1,
-0.0125225, 0.0281514, 0.00985255, 0, 0, 1, 1,
-0.0110078, 0.0284701, 0.0135415, 0, 0, 1, 1,
-0.00879338, 0.0305275, 0.0143521, 0, 0, 1, 1,
-0.00835299, 0.024473, 0.0172941, 0, 0, 1, 1,
-0.0139541, 0.028084, 0.00431583, 0, 0, 1, 1,
-0.0120311, 0.0295408, 0.0138181, 0, 0, 1, 1,
-0.00768885, 0.0287506, 0.00919534, 0, 0, 1, 1,
-0.0109983, 0.0273885, 0.00652561, 0, 0, 1, 1,
-0.0116594, 0.0304115, 0.00767287, 0, 0, 1, 1,
-0.011247, 0.0255661, 0.00731042, 0, 0, 1, 1,
-0.0119091, 0.0267098, 0.00624145, 0, 0, 1, 1,
-0.0116038, 0.0242178, 0.0027479, 0, 0, 1, 1,
-0.00966045, 0.0230601, 0.00905667, 0, 0, 1, 1,
-0.0134263, 0.0256661, 0.0123583, 0, 0, 1, 1,
0.0599053, -0.0106832, 0.00225125, 0, 0, 0, 1,
0.0625425, -0.0125851, -0.00769452, 0, 0, 0, 1,
0.0598986, -0.00919164, 0.00589153, 0, 0, 0, 1,
0.0628394, -0.0075895, 0.00159738, 0, 0, 0, 1,
0.0616466, -0.00896019, 0.00134041, 0, 0, 0, 1,
0.06047, -0.0121012, 0.00901182, 0, 0, 0, 1,
0.0609213, -0.00911238, 0.00021598, 0, 0, 0, 1,
0.0571285, -0.0100801, -0.00623096, 0, 0, 0, 1,
0.0614432, -0.0116696, 0.000846609, 0, 0, 0, 1,
0.0603913, -0.0120439, 0.00348993, 0, 0, 0, 1,
0.0596827, -0.0132493, 0.00183232, 0, 0, 0, 1,
0.0591857, -0.0100486, -0.00150272, 0, 0, 0, 1,
0.0590884, -0.0110651, 0.00348026, 0, 0, 0, 1,
0.0628583, -0.0107898, 0.00566134, 0, 0, 0, 1,
0.0623594, -0.00671933, -0.000583868, 0, 0, 0, 1,
0.0614952, -0.00934114, 0.00129604, 0, 0, 0, 1,
0.0608647, -0.00710329, 0.0115746, 0, 0, 0, 1,
0.061243, -0.0104244, 0.00383985, 0, 0, 0, 1,
0.0622044, -0.00933706, 0.00605794, 0, 0, 0, 1,
-0.0202847, -0.0472571, 0.0124991, 0, 0.8039216, 0, 1,
-0.0217059, -0.0453121, 0.0102996, 0, 0.8039216, 0, 1,
-0.0203415, -0.0436946, 0.0205952, 0, 0.8039216, 0, 1,
-0.0207163, -0.0461337, 0.0046741, 0, 0.8039216, 0, 1,
-0.0212221, -0.0463474, 0.0133314, 0, 0.8039216, 0, 1,
-0.025239, -0.044723, 0.0124012, 0, 0.8039216, 0, 1,
-0.022871, -0.0436453, 0.0152662, 0, 0.8039216, 0, 1,
-0.0230623, -0.0447306, 0.0137183, 0, 0.8039216, 0, 1,
-0.023999, -0.0449555, 0.0140296, 0, 0.8039216, 0, 1,
-0.0214967, -0.0450679, 0.00732026, 0, 0.8039216, 0, 1,
-0.0218387, -0.0418631, 0.000625819, 0, 0.8039216, 0, 1,
-0.0213634, -0.0468005, 0.0122522, 0, 0.8039216, 0, 1,
-0.0205644, -0.0422387, 0.0117481, 0, 0.8039216, 0, 1,
-0.0206326, -0.0429101, 0.00311156, 0, 0.8039216, 0, 1,
-0.0204946, -0.0465157, 0.0146937, 0, 0.8039216, 0, 1,
-0.0192618, -0.0445747, 0.0180433, 0, 0.8039216, 0, 1,
-0.022117, -0.0443442, 0.0161906, 0, 0.8039216, 0, 1,
-0.0210934, -0.044948, 0.00458447, 0, 0.8039216, 0, 1,
-0.0204477, -0.0443576, 0.00181938, 0, 0.8039216, 0, 1,
-0.0212926, -0.0478972, 0.0170404, 0, 0.8039216, 0, 1,
-0.0213428, -0.0476166, 0.01323, 0, 0.8039216, 0, 1,
-0.019989, -0.0410041, 0.0114696, 0, 0.8039216, 0, 1,
-0.0214115, -0.0452313, 0.00666999, 0, 0.8039216, 0, 1,
-0.0212739, -0.0461813, -0.00493415, 0, 0.8039216, 0, 1,
-0.0208739, -0.044915, 0.0134519, 0, 0.8039216, 0, 1,
-0.023728, -0.0471651, 0.00993075, 0, 0.8039216, 0, 1,
-0.0227516, -0.0432316, 0.0031539, 0, 0.8039216, 0, 1,
-0.0213723, -0.0442536, 0.0154185, 0, 0.8039216, 0, 1,
-0.0196231, -0.0486462, 0.0167633, 0, 0.8039216, 0, 1,
-0.0226534, -0.0491136, 0.00367624, 0, 0.8039216, 0, 1,
-0.0209949, -0.0453896, 0.0152904, 0, 0.8039216, 0, 1,
-0.0202784, -0.0411598, 0.0130338, 0, 0.8039216, 0, 1,
-0.0239925, -0.0475526, 0.0188462, 0, 0.8039216, 0, 1,
-0.0198928, -0.0436333, 0.0209358, 0, 0.8039216, 0, 1,
-0.0211894, -0.0437393, 0.0142502, 0, 0.8039216, 0, 1,
-0.0207237, -0.0429967, 0.0120953, 0, 0.8039216, 0, 1,
-0.0211558, -0.046894, 0.0163715, 0, 0.8039216, 0, 1,
-0.0202537, -0.0458687, 0.00323657, 0, 0.8039216, 0, 1,
-0.0219376, -0.0460094, 0.0145599, 0, 0.8039216, 0, 1,
-0.0193695, -0.04565, 0.00710881, 0, 0.8039216, 0, 1,
-0.0220525, -0.0485406, 0.0209799, 0, 0.8039216, 0, 1,
-0.0218802, -0.0456642, 0.00983799, 0, 0.8039216, 0, 1,
-0.0220655, -0.0448156, 0.0175193, 0, 0.8039216, 0, 1,
-0.0226893, -0.0447403, 0.0158938, 0, 0.8039216, 0, 1,
-0.0245681, -0.0434349, 0.0154002, 0, 0.8039216, 0, 1,
-0.020963, -0.0468725, 0.0229494, 0, 0.8039216, 0, 1,
-0.0211417, -0.0461028, 0.0123547, 0, 0.8039216, 0, 1,
-0.0231312, -0.0470203, 0.0238995, 0, 0.8039216, 0, 1,
-0.0222229, -0.0500041, 0.00712199, 0, 0.8039216, 0, 1,
-0.0220871, -0.0427152, 0.0222066, 0, 0.8039216, 0, 1,
-0.0203151, -0.0436287, 0.00409452, 0, 0.8039216, 0, 1,
-0.0239992, -0.0426511, 0.0178353, 0, 0.8039216, 0, 1,
-0.0242331, -0.0464782, 0.0180175, 0, 0.8039216, 0, 1,
-0.0199454, -0.0459855, 0.0203439, 0, 0.8039216, 0, 1,
-0.0186327, -0.0460935, 0.0123736, 0, 0.8039216, 0, 1,
-0.0202823, -0.0494332, 0.0186634, 0, 0.8039216, 0, 1,
-0.0223193, -0.0427555, 0.00297549, 0, 0.8039216, 0, 1,
-0.0231156, -0.0406007, 0.0208259, 0, 0.8039216, 0, 1,
-0.0234198, -0.0425343, 0.0153943, 0, 0.8039216, 0, 1,
-0.019426, -0.0456293, 0.00844618, 0, 0.8039216, 0, 1,
-0.0204777, -0.045206, 0.00819859, 0, 0.8039216, 0, 1,
-0.0238881, -0.0472845, 0.00546661, 0, 0.8039216, 0, 1,
-0.0228489, -0.0475837, 0.0147575, 0, 0.8039216, 0, 1,
-0.0184592, -0.0438219, 0.0119672, 0, 0.8039216, 0, 1,
-0.0217402, -0.0453621, 0.0207005, 0, 0.8039216, 0, 1,
-0.0192859, -0.0410028, -0.00192185, 0, 0.8039216, 0, 1,
-0.0225755, -0.0429269, 0.00205903, 0, 0.8039216, 0, 1,
-0.0188304, -0.0457156, 0.00120985, 0, 0.8039216, 0, 1,
-0.0221429, -0.0446384, 0.0181926, 0, 0.8039216, 0, 1,
-0.0225637, -0.0470069, 0.00691998, 0, 0.8039216, 0, 1,
-0.0200337, -0.0416431, 0.00100243, 0, 0.8039216, 0, 1,
-0.025137, -0.0449311, 0.0160667, 0, 0.8039216, 0, 1,
-0.019851, -0.0449529, 0.00803793, 0, 0.8039216, 0, 1,
-0.0196354, -0.0468169, 0.0138081, 0, 0.8039216, 0, 1,
-0.0229864, -0.0474914, 0.0136062, 0, 0.8039216, 0, 1,
-0.0231573, -0.0437509, 0.0115025, 0, 0.8039216, 0, 1,
-0.0229461, -0.0482457, 0.016377, 0, 0.8039216, 0, 1,
-0.0211542, -0.0432692, 0.0137985, 0, 0.8039216, 0, 1,
-0.0218076, -0.0467616, 0.0134255, 0, 0.8039216, 0, 1,
-0.0212997, -0.0473553, 0.0152453, 0, 0.8039216, 0, 1,
-0.0200946, -0.0461073, 0.0198206, 0, 0.8039216, 0, 1,
-0.0184893, -0.044982, 0.0227849, 0, 0.8039216, 0, 1,
-0.0214583, -0.0413946, 0.00778561, 0, 0.8039216, 0, 1,
-0.0216616, -0.0445722, 0.00403748, 0, 0.8039216, 0, 1,
-0.0220772, -0.0455923, 0.00509658, 0, 0.8039216, 0, 1,
-0.0238939, -0.0431876, 0.00987559, 0, 0.8039216, 0, 1,
-0.0241296, -0.0436681, 0.0142829, 0, 0.8039216, 0, 1,
-0.0209841, -0.0441647, 0.0137156, 0, 0.8039216, 0, 1,
-0.0209837, -0.0476995, 0.0153286, 0, 0.8039216, 0, 1,
-0.0217043, -0.045766, 0.0179015, 0, 0.8039216, 0, 1,
-0.0257287, -0.0452895, 0.00703663, 0, 0.8039216, 0, 1,
-0.0216118, -0.0463817, 0.0127601, 0, 0.8039216, 0, 1,
-0.0245254, -0.0463528, 0.0124892, 0, 0.8039216, 0, 1,
-0.0210046, -0.0449981, 0.0109864, 0, 0.8039216, 0, 1,
-0.0186297, -0.0455902, 0.014409, 0, 0.8039216, 0, 1,
-0.0226069, -0.0454607, 0.0103677, 0, 0.8039216, 0, 1,
-0.0237898, -0.0479941, 0.00475517, 0, 0.8039216, 0, 1,
0.0615651, -0.0114194, 0.00483789, 0, 0, 0, 1,
0.0605019, -0.00824608, 0.0106619, 0, 0, 0, 1,
0.0623924, -0.00963285, 0.00352807, 0, 0, 0, 1,
0.059006, -0.00940619, 0.000529788, 0, 0, 0, 1,
0.0597301, -0.00898795, -0.0025674, 0, 0, 0, 1,
0.0638109, -0.0090004, -0.00415325, 0, 0, 0, 1,
0.0620229, -0.0124383, -0.00251443, 0, 0, 0, 1,
0.0607175, -0.0109613, 0.00375691, 0, 0, 0, 1,
0.0605571, -0.0100278, -0.00757802, 0, 0, 0, 1,
0.0610262, -0.00786094, 0.00148893, 0, 0, 0, 1,
0.0609589, -0.00900374, 0.00165908, 0, 0, 0, 1,
0.0601022, -0.0081006, -0.0026045, 0, 0, 0, 1,
0.0578977, -0.0111126, 0.00437552, 0, 0, 0, 1,
0.0611611, -0.010686, -0.00672412, 0, 0, 0, 1,
0.058406, -0.012519, 0.00219169, 0, 0, 0, 1,
0.0591024, -0.00936807, -0.00225285, 0, 0, 0, 1,
0.0607447, -0.0119905, -0.00192169, 0, 0, 0, 1,
0.0634181, -0.0105947, -0.00565163, 0, 0, 0, 1,
0.0615561, -0.011278, 0.00254935, 0, 0, 0, 1,
0.0599859, -0.0116589, 0.00205188, 0, 0, 0, 1,
0.0585396, -0.00853178, -0.00356921, 0, 0, 0, 1,
-0.0222415, -0.0448273, 0.00781225, 0, 0.8039216, 0, 1,
-0.0218567, -0.0467811, 0.00421652, 0, 0.8039216, 0, 1,
-0.0223995, -0.0444564, 0.0102462, 0, 0.8039216, 0, 1,
-0.0207254, -0.0453332, 0.0180986, 0, 0.8039216, 0, 1,
-0.0209323, -0.0465877, 0.00323769, 0, 0.8039216, 0, 1,
-0.022822, -0.0434782, 0.0126367, 0, 0.8039216, 0, 1,
-0.0206775, -0.0469926, 0.00808987, 0, 0.8039216, 0, 1,
-0.0214357, -0.0459128, 0.014337, 0, 0.8039216, 0, 1,
-0.0232706, -0.0451583, 0.00908002, 0, 0.8039216, 0, 1,
-0.0213593, -0.0422036, 0.0103028, 0, 0.8039216, 0, 1,
-0.0204227, -0.0454872, 0.00803411, 0, 0.8039216, 0, 1,
-0.0230036, -0.0468201, 0.0200449, 0, 0.8039216, 0, 1,
-0.0231405, -0.0450521, 0.0139009, 0, 0.8039216, 0, 1,
-0.0237862, -0.0475959, 0.00989577, 0, 0.8039216, 0, 1,
-0.0255804, -0.0477347, 0.0133026, 0, 0.8039216, 0, 1,
-0.0256381, -0.0426319, 0.00995458, 0, 0.8039216, 0, 1,
-0.0208277, -0.0439628, 0.013262, 0, 0.8039216, 0, 1,
-0.0215948, -0.0436067, 0.0162881, 0, 0.8039216, 0, 1,
-0.0208174, -0.0448256, 0.0107842, 0, 0.8039216, 0, 1,
-0.022658, -0.0438518, 0.0114866, 0, 0.8039216, 0, 1,
-0.0216852, -0.0472854, 0.00314969, 0, 0.8039216, 0, 1,
-0.0216565, -0.0443403, 0.00456551, 0, 0.8039216, 0, 1,
-0.0232742, -0.0438123, 0.0150447, 0, 0.8039216, 0, 1,
-0.0209092, -0.0458118, 0.0171308, 0, 0.8039216, 0, 1,
-0.0198614, -0.044429, 0.000958952, 0, 0.8039216, 0, 1,
-0.0214263, -0.0464487, 0.0163167, 0, 0.8039216, 0, 1,
-0.0218862, -0.0478768, 0.0128977, 0, 0.8039216, 0, 1,
-0.0216276, -0.0481253, 0.00600978, 0, 0.8039216, 0, 1,
-0.0240364, -0.0436308, 0.0151474, 0, 0.8039216, 0, 1,
-0.0223776, -0.0455, 0.0111137, 0, 0.8039216, 0, 1,
-0.0206891, -0.0459077, 0.0106659, 0, 0.8039216, 0, 1,
-0.0220357, -0.0486933, 0.00611285, 0, 0.8039216, 0, 1,
-0.0215109, -0.0434798, -0.00234964, 0, 0.8039216, 0, 1,
-0.0206824, -0.0419092, 0.00532416, 0, 0.8039216, 0, 1,
-0.0211499, -0.0440318, 0.00924968, 0, 0.8039216, 0, 1,
-0.0224705, -0.0437375, 0.00100655, 0, 0.8039216, 0, 1,
-0.0214306, -0.0444432, 0.0112215, 0, 0.8039216, 0, 1,
-0.0220157, -0.0433856, 0.0067475, 0, 0.8039216, 0, 1,
-0.0188126, -0.0453071, 0.00705247, 0, 0.8039216, 0, 1,
-0.0213792, -0.0452876, -0.000661209, 0, 0.8039216, 0, 1,
-0.0199325, -0.0450106, 0.00366478, 0, 0.8039216, 0, 1,
-0.0239292, -0.04319, 0.00890843, 0, 0.8039216, 0, 1,
-0.0235879, -0.0445285, 0.0119572, 0, 0.8039216, 0, 1,
-0.0275231, -0.0444496, 0.00230318, 0, 0.8039216, 0, 1,
-0.0182854, -0.0443563, 0.00676521, 0, 0.8039216, 0, 1,
-0.0207996, -0.0433684, 0.00590429, 0, 0.8039216, 0, 1,
-0.0232913, -0.045986, 0.0160425, 0, 0.8039216, 0, 1,
-0.0223044, -0.0450054, 0.02191, 0, 0.8039216, 0, 1,
-0.0194477, -0.0450752, 0.010458, 0, 0.8039216, 0, 1,
-0.0206243, -0.0419919, 0.00367034, 0, 0.8039216, 0, 1,
-0.0224244, -0.0483051, 0.0154809, 0, 0.8039216, 0, 1,
-0.0221261, -0.0435714, 0.0180401, 0, 0.8039216, 0, 1,
-0.0232637, -0.043971, 0.00966666, 0, 0.8039216, 0, 1,
-0.022883, -0.0463717, 0.0132086, 0, 0.8039216, 0, 1,
-0.0208739, -0.0439865, 0.0108011, 0, 0.8039216, 0, 1,
-0.0203368, -0.0454695, 0.00317318, 0, 0.8039216, 0, 1,
-0.021286, -0.0412478, 0.0119208, 0, 0.8039216, 0, 1,
-0.0231444, -0.0455249, 0.00459838, 0, 0.8039216, 0, 1,
-0.0215679, -0.0485457, 0.00697714, 0, 0.8039216, 0, 1,
0.061905, -0.00939373, 0.0123001, 0, 0, 0, 1,
0.0603647, -0.0112247, 0.0137288, 0, 0, 0, 1,
0.0574431, -0.0102242, 0.00573549, 0, 0, 0, 1,
0.0597009, -0.00971945, 0.00606591, 0, 0, 0, 1,
0.0568234, -0.00889099, 0.00893737, 0, 0, 0, 1,
0.0574072, -0.00844344, -0.000241673, 0, 0, 0, 1,
0.0596764, -0.00647742, -0.00166426, 0, 0, 0, 1,
0.0554901, -0.0075588, 0.00954455, 0, 0, 0, 1,
-0.020884, -0.0448253, 0.00557152, 0, 0.8039216, 0, 1,
-0.0211976, -0.0444588, 0.00571278, 0, 0.8039216, 0, 1,
-0.0228109, -0.0446718, -0.00162447, 0, 0.8039216, 0, 1,
-0.0212249, -0.04488, -0.00222036, 0, 0.8039216, 0, 1,
-0.0220836, -0.0453684, 0.0172785, 0, 0.8039216, 0, 1,
-0.0216518, -0.0418001, 0.00570977, 0, 0.8039216, 0, 1,
-0.0223224, -0.0449175, -0.00892706, 0, 0.8039216, 0, 1,
-0.023088, -0.0452832, 0.00980459, 0, 0.8039216, 0, 1,
-0.0210824, -0.0462172, 0.00214997, 0, 0.8039216, 0, 1,
-0.0201731, -0.043871, 0.0119034, 0, 0.8039216, 0, 1,
-0.0221149, -0.0431302, 0.0118773, 0, 0.8039216, 0, 1,
-0.0206758, -0.044564, -3.6632e-05, 0, 0.8039216, 0, 1,
-0.0234681, -0.0444978, 0.00957916, 0, 0.8039216, 0, 1,
-0.0251138, -0.0441199, 0.0131405, 0, 0.8039216, 0, 1,
-0.0212299, -0.043301, 0.0142874, 0, 0.8039216, 0, 1,
-0.022277, -0.0458224, -0.00106244, 0, 0.8039216, 0, 1,
-0.0217341, -0.0444599, 0.00515358, 0, 0.8039216, 0, 1,
-0.020666, -0.0444397, 0.000305985, 0, 0.8039216, 0, 1,
-0.0238042, -0.0464071, 0.0130549, 0, 0.8039216, 0, 1,
-0.022052, -0.0443309, 0.0155095, 0, 0.8039216, 0, 1,
-0.0206035, -0.0447965, 0.00815241, 0, 0.8039216, 0, 1,
-0.0198885, -0.0467051, 0.0126122, 0, 0.8039216, 0, 1,
-0.0197163, -0.0449936, 0.0060495, 0, 0.8039216, 0, 1,
-0.0209153, -0.0447079, 0.0023911, 0, 0.8039216, 0, 1,
-0.0207705, -0.0450861, 0.00344245, 0, 0.8039216, 0, 1,
-0.0221288, -0.0442687, 0.0108887, 0, 0.8039216, 0, 1,
-0.021735, -0.0475449, 0.00705834, 0, 0.8039216, 0, 1,
-0.0213647, -0.0438344, -0.00190997, 0, 0.8039216, 0, 1,
-0.022639, -0.0485181, 0.0157895, 0, 0.8039216, 0, 1,
-0.0223642, -0.0461822, 0.0100415, 0, 0.8039216, 0, 1,
0.0594787, -0.00824071, 0.0112765, 0, 0, 0, 1,
0.0619834, -0.0111216, -0.000270808, 0, 0, 0, 1,
0.0604641, -0.0111558, 0.00802687, 0, 0, 0, 1,
0.0601607, -0.00838109, -0.00536228, 0, 0, 0, 1,
0.0588683, -0.0105472, -0.00378106, 0, 0, 0, 1,
0.0608298, -0.007366, -0.00253736, 0, 0, 0, 1,
0.0605146, -0.0123193, 0.0114287, 0, 0, 0, 1,
0.0624146, -0.0112753, -0.000589016, 0, 0, 0, 1,
0.062382, -0.010613, 0.00628954, 0, 0, 0, 1,
0.0616891, -0.00954339, 0.00501299, 0, 0, 0, 1,
0.0613014, -0.0104518, 0.00345334, 0, 0, 0, 1,
0.0646988, -0.010254, 0.00349914, 0, 0, 0, 1,
0.0604107, -0.0115198, 0.000603219, 0, 0, 0, 1,
0.060158, -0.00927101, 0.00324295, 0, 0, 0, 1,
0.0601197, -0.0129354, 0.00128504, 0, 0, 0, 1,
0.0595516, -0.0102383, 4.81212e-05, 0, 0, 0, 1,
0.0593776, -0.0110439, 0.0013789, 0, 0, 0, 1,
0.0631986, -0.00990726, 0.00484874, 0, 0, 0, 1,
0.0600028, -0.0115261, 0.0014218, 0, 0, 0, 1,
0.0639068, -0.00954018, -0.00792333, 0, 0, 0, 1,
0.0618789, -0.0127468, 0.00713411, 0, 0, 0, 1,
0.0587245, -0.012889, 0.00177505, 0, 0, 0, 1,
0.0626287, -0.0113716, -0.00385835, 0, 0, 0, 1,
0.0588086, -0.0091567, -0.00219718, 0, 0, 0, 1,
0.0643593, -0.0125547, 0.0103515, 0, 0, 0, 1,
0.0609276, -0.00894115, 0.00179318, 0, 0, 0, 1,
0.0606349, -0.00890573, -0.00292431, 0, 0, 0, 1,
0.0620316, -0.0130424, 0.00806114, 0, 0, 0, 1,
0.060866, -0.0112082, 0.00899847, 0, 0, 0, 1,
0.0606319, -0.0103437, -0.00978346, 0, 0, 0, 1,
0.060977, -0.0104323, 0.000565915, 0, 0, 0, 1,
0.0614203, -0.0108144, 0.000386718, 0, 0, 0, 1,
0.0607256, -0.00980182, -0.00255826, 0, 0, 0, 1,
0.0604799, -0.00821551, 0.00442095, 0, 0, 0, 1,
0.0622716, -0.0117834, 0.00495539, 0, 0, 0, 1,
0.0613229, -0.0109662, -0.00220046, 0, 0, 0, 1,
0.0599528, -0.0133113, 0.000805838, 0, 0, 0, 1,
0.0605994, -0.0109337, 0.00370303, 0, 0, 0, 1,
0.0615868, -0.0112796, -0.000516271, 0, 0, 0, 1,
0.0595308, -0.0116468, 0.00106975, 0, 0, 0, 1,
0.0628333, -0.012437, 0.00883964, 0, 0, 0, 1,
0.0605057, -0.0114621, 0.00427488, 0, 0, 0, 1,
0.0609972, -0.00961557, 8.5199e-06, 0, 0, 0, 1,
0.0600092, -0.00913549, 0.00248726, 0, 0, 0, 1,
0.0603395, -0.00912871, 0.00338918, 0, 0, 0, 1,
0.0605854, -0.0106462, -0.00811418, 0, 0, 0, 1,
0.0594613, -0.00970633, 0.000228873, 0, 0, 0, 1,
0.0621357, -0.0100984, 0.00030153, 0, 0, 0, 1,
0.0594178, -0.0136237, 0.00396862, 0, 0, 0, 1,
0.0573748, -0.0099129, -0.00111851, 0, 0, 0, 1,
0.0571635, -0.0109801, -0.000394048, 0, 0, 0, 1,
0.0577753, -0.00932771, 0.0020172, 0, 0, 0, 1,
0.0585304, -0.00836989, -0.00069162, 0, 0, 0, 1,
0.0599197, -0.0120429, -0.00323276, 0, 0, 0, 1,
0.0570943, -0.0093666, 0.0011739, 0, 0, 0, 1,
0.0589788, -0.00805518, 0.00531933, 0, 0, 0, 1,
0.0561006, -0.00837478, 0.00440256, 0, 0, 0, 1,
0.0588358, -0.0121684, 0.0120367, 0, 0, 0, 1,
0.0585837, -0.0115023, 0.00258106, 0, 0, 0, 1,
0.057098, -0.00897674, 0.00817579, 0, 0, 0, 1,
0.0615177, -0.011127, 0.00508992, 0, 0, 0, 1,
0.0580025, -0.00858571, 0.0022176, 0, 0, 0, 1,
0.0521923, -0.00660692, 0.0128008, 0, 0, 0, 1,
0.0576378, -0.00879586, 0.00706887, 0, 0, 0, 1,
0.0570047, -0.00861263, -0.0013744, 0, 0, 0, 1,
0.0595704, -0.011024, 0.00168796, 0, 0, 0, 1,
0.0566791, -0.00847844, 0.00601824, 0, 0, 0, 1,
0.0560687, -0.00972541, 0.00599363, 0, 0, 0, 1,
0.0604336, -0.00980268, 0.00294601, 0, 0, 0, 1,
0.0564513, -0.00811645, 0.0047352, 0, 0, 0, 1,
0.058474, -0.00742528, 0.00330829, 0, 0, 0, 1,
0.0564331, -0.00909753, 0.00678921, 0, 0, 0, 1,
0.0597079, -0.00838009, 0.000955232, 0, 0, 0, 1,
0.0596186, -0.00937561, 0.0106501, 0, 0, 0, 1,
0.0560424, -0.0106017, -0.00322694, 0, 0, 0, 1,
0.0560322, -0.00746366, 0.00816929, 0, 0, 0, 1,
0.0559746, -0.0099311, -0.00287921, 0, 0, 0, 1,
0.0584866, -0.00776131, 0.00330332, 0, 0, 0, 1,
0.0576523, -0.00906006, 0.00470715, 0, 0, 0, 1,
0.0581678, -0.00956958, 0.00499682, 0, 0, 0, 1,
0.0572958, -0.00832232, 0.00167477, 0, 0, 0, 1,
0.058372, -0.0118224, 0.00156091, 0, 0, 0, 1,
0.060346, -0.00849174, 0.0108969, 0, 0, 0, 1,
0.0567653, -0.00608642, 0.00741082, 0, 0, 0, 1,
0.0583105, -0.01024, 0.00583418, 0, 0, 0, 1,
0.0579681, -0.00785526, 0.00434701, 0, 0, 0, 1,
0.0557756, -0.00894472, 0.00566352, 0, 0, 0, 1,
0.0586295, -0.00623367, 0.0053967, 0, 0, 0, 1,
0.0549749, -0.00742422, -0.000608967, 0, 0, 0, 1,
0.0585207, -0.0119364, 0.0141013, 0, 0, 0, 1,
0.0577714, -0.0118998, 0.00895478, 0, 0, 0, 1,
0.0609774, -0.0109087, 0.0154679, 0, 0, 0, 1,
0.0583365, -0.00814638, 0.0113259, 0, 0, 0, 1,
0.0557653, -0.0077785, 0.00492371, 0, 0, 0, 1,
0.0595086, -0.0107166, 0.00291277, 0, 0, 0, 1,
0.0580576, -0.0113606, 0.00943292, 0, 0, 0, 1,
0.0585356, -0.012382, 0.0126893, 0, 0, 0, 1,
0.0591328, -0.0102972, -0.00414354, 0, 0, 0, 1,
0.058046, -0.00861641, 0.0114105, 0, 0, 0, 1,
0.0548737, -0.0101817, 0.012738, 0, 0, 0, 1,
0.0588405, -0.00979834, 0.00868034, 0, 0, 0, 1,
0.0545247, -0.0106133, -0.00329577, 0, 0, 0, 1,
0.0596652, -0.0108993, -7.90873e-05, 0, 0, 0, 1,
0.0530249, -0.00655292, 0.00790205, 0, 0, 0, 1,
0.0574171, -0.0117794, 0.00367339, 0, 0, 0, 1,
0.057074, -0.00686488, 0.012714, 0, 0, 0, 1,
0.0582537, -0.0093267, 0.00572569, 0, 0, 0, 1,
0.0576155, -0.00884401, 0.00329802, 0, 0, 0, 1,
0.0618011, -0.00770923, 0.00178878, 0, 0, 0, 1,
0.0538085, -0.0103938, 0.00369883, 0, 0, 0, 1,
0.0590279, -0.0113242, 0.00368835, 0, 0, 0, 1,
0.0579662, -0.0120256, 0.00707634, 0, 0, 0, 1,
0.0589637, -0.0113875, 0.00465658, 0, 0, 0, 1,
0.0587157, -0.00971578, 0.00365459, 0, 0, 0, 1,
0.0605958, -0.0105004, 0.00674488, 0, 0, 0, 1,
0.0578624, -0.0126045, 0.000229537, 0, 0, 0, 1,
0.0617577, -0.00785544, 0.00141288, 0, 0, 0, 1,
0.0588341, -0.00625281, 0.00207669, 0, 0, 0, 1,
0.0561407, -0.0099397, 0.00553477, 0, 0, 0, 1,
0.0569665, -0.00861786, 0.0047911, 0, 0, 0, 1,
0.0583707, -0.00879823, -0.00909986, 0, 0, 0, 1,
0.0593648, -0.0109492, 0.0073572, 0, 0, 0, 1,
0.0559387, -0.00881564, 0.00315713, 0, 0, 0, 1,
0.0585948, -0.00843517, 0.000716245, 0, 0, 0, 1,
0.0579553, -0.0102646, -0.000361783, 0, 0, 0, 1,
0.0576384, -0.00868083, 0.00626685, 0, 0, 0, 1,
0.0597131, -0.00999004, 0.00542337, 0, 0, 0, 1,
0.0598217, -0.00867368, 0.00156611, 0, 0, 0, 1,
0.0574684, -0.00871725, -0.00182041, 0, 0, 0, 1,
0.0560606, -0.00814846, 0.0113239, 0, 0, 0, 1,
0.0591128, -0.0119688, -0.00210358, 0, 0, 0, 1,
0.0599115, -0.0122722, 0.0131905, 0, 0, 0, 1,
0.0585071, -0.0115935, 0.0110221, 0, 0, 0, 1,
0.0576206, -0.0106988, 0.000860496, 0, 0, 0, 1,
0.0585664, -0.011012, 0.00355595, 0, 0, 0, 1,
0.0580541, -0.0112273, 0.00820994, 0, 0, 0, 1,
0.0590993, -0.0112264, 0.00880704, 0, 0, 0, 1,
0.0454512, -0.0123173, -0.0280378, 0, 0, 0, 1,
-0.0104089, 0.0237953, -0.00967125, 1, 0, 0, 1,
-0.00954682, 0.00541017, -0.061399, 1, 0, 0, 1,
-0.0118897, 0.00999276, -0.0499399, 1, 0, 0, 1,
-0.00882252, -0.00572622, -0.105547, 1, 0, 0, 1,
-0.00275926, 0.0060367, -0.041372, 1, 0, 0, 1,
-0.0117844, -0.00388639, -0.102729, 1, 0, 0, 1,
-0.0128323, 0.0105863, -0.0737345, 1, 0, 0, 1,
-0.0102828, -0.000489453, -0.112403, 1, 0, 0, 1,
-0.0171595, -0.010455, -0.138903, 1, 0, 0, 1,
-0.0100217, -0.00295068, -0.0960525, 1, 0, 0, 1,
-0.0117859, 0.00955618, -0.0725604, 1, 0, 0, 1,
-0.0126219, 0.0187964, -0.0115062, 1, 0, 0, 1,
-0.00445579, 0.0176589, -0.0138325, 1, 0, 0, 1,
-0.00751278, 0.0209102, -0.00522342, 1, 0, 0, 1,
-0.0105533, 0.0237951, -0.0024599, 1, 0, 0, 1,
-0.00835646, -0.00183783, -0.106053, 1, 0, 0, 1,
-0.0123101, 0.00480181, -0.0699993, 1, 0, 0, 1,
-0.0106136, 0.0150573, -0.00845724, 1, 0, 0, 1,
-0.0120638, 0.00528978, -0.0925607, 1, 0, 0, 1,
0.0357177, 0.00363127, 0.00284482, 0, 0, 0, 1,
0.0371472, 0.00322565, 0.00216279, 0, 0, 0, 1,
0.0451293, 0.00167315, 0.00358953, 0, 0, 0, 1,
0.0490713, -0.00702633, 0.0004863, 0, 0, 0, 1,
0.044655, -0.00921404, -0.0102357, 0, 0, 0, 1,
0.0547532, -0.00767211, 0.011418, 0, 0, 0, 1,
0.043949, -0.00499887, 0.00227104, 0, 0, 0, 1,
0.033189, 0.00314373, 0.0036721, 0, 0, 0, 1,
-0.0158845, -0.00986643, -0.120636, 1, 0, 0, 1,
-0.00798596, -0.00115027, -0.0930881, 1, 0, 0, 1,
-0.0137619, -0.000901226, -0.1081, 1, 0, 0, 1,
-0.0192471, -0.0167788, -0.148607, 1, 0, 0, 1,
-0.011809, 0.00469023, -0.0896798, 1, 0, 0, 1,
-0.0146056, 0.009245, -0.0475536, 1, 0, 0, 1,
-0.0150933, 0.0048536, -0.0548269, 1, 0, 0, 1,
-0.0141832, -0.00133572, -0.0918304, 1, 0, 0, 1,
-0.015504, -0.023722, -0.164337, 1, 0, 0, 1,
-0.0194533, -0.0144065, -0.148527, 1, 0, 0, 1,
-0.0209005, -0.0204198, -0.192468, 1, 0, 0, 1,
-0.0188264, -0.0202139, -0.180847, 1, 0, 0, 1,
-0.0127779, 0.00279917, -0.0786768, 1, 0, 0, 1,
-0.0199878, -0.0216666, -0.1803, 1, 0, 0, 1,
-0.0120915, 7.51682e-07, -0.0664353, 1, 0, 0, 1,
-0.010827, 0.00814577, -0.0640856, 1, 0, 0, 1,
-0.0148152, -0.0139322, -0.133467, 1, 0, 0, 1,
-0.0161467, -0.016485, -0.148493, 1, 0, 0, 1,
-0.0160511, -0.00946683, -0.116779, 1, 0, 0, 1,
-0.0161405, -0.00834842, -0.123897, 1, 0, 0, 1,
-0.0107432, 0.0112308, -0.0285943, 1, 0, 0, 1,
-0.00941368, 0.00959192, -0.0419779, 1, 0, 0, 1,
-0.016936, 0.00608945, -0.0920815, 1, 0, 0, 1,
-0.0149094, -0.00537153, -0.127044, 1, 0, 0, 1,
-0.0090598, -0.0083449, -0.125094, 1, 0, 0, 1,
-0.00833894, -0.0034321, -0.0799591, 1, 0, 0, 1,
-0.0187394, -0.0152047, -0.137744, 1, 0, 0, 1,
-0.0116535, -0.00848528, -0.117197, 1, 0, 0, 1,
-0.0112206, -0.00474222, -0.110094, 1, 0, 0, 1,
-0.00808099, -0.00341407, -0.106455, 1, 0, 0, 1,
-0.00901529, 0.00447785, -0.0641462, 1, 0, 0, 1,
-0.0100595, 0.00556175, -0.0685588, 1, 0, 0, 1,
-0.0118224, 0.00337682, -0.0732822, 1, 0, 0, 1,
-0.0133566, 0.012481, -0.0520976, 1, 0, 0, 1,
-0.00255288, 0.00775675, -0.0576322, 1, 0, 0, 1,
-0.00699785, 0.00726036, -0.0500573, 1, 0, 0, 1,
-0.0081272, 0.00208711, -0.0857592, 1, 0, 0, 1,
-0.00914123, 0.014069, -0.0337228, 1, 0, 0, 1,
-0.010141, 0.0102889, -0.0610606, 1, 0, 0, 1,
-0.0116518, 0.00701751, -0.0678241, 1, 0, 0, 1,
-0.0154235, 0.000518288, -0.0898073, 1, 0, 0, 1,
-0.0127951, -0.0127493, -0.131116, 1, 0, 0, 1,
-0.0110912, -0.00540126, -0.102269, 1, 0, 0, 1,
-0.0157372, -0.00522885, -0.0964882, 1, 0, 0, 1,
-0.0110352, 0.0103645, -0.065742, 1, 0, 0, 1,
-0.0131545, 0.00904819, -0.0592014, 1, 0, 0, 1,
-0.0119828, 0.00335741, -0.0933575, 1, 0, 0, 1,
0.0169717, 0.0129781, 0.0054395, 0, 0, 0, 1,
0.0291614, 0.00767358, 0.00271452, 0, 0, 0, 1,
0.0424101, -0.00287575, 0.00339621, 0, 0, 0, 1,
0.0460594, -0.000131702, 0.00776344, 0, 0, 0, 1,
0.0500399, -0.00516417, -0.00404414, 0, 0, 0, 1,
0.054148, -0.00896673, 0.00408928, 0, 0, 0, 1,
0.0557877, -0.0101744, -0.010551, 0, 0, 0, 1,
0.0566975, -0.0106055, 0.00791452, 0, 0, 0, 1,
0.0481185, -0.00245042, 0.00565698, 0, 0, 0, 1,
0.0335189, 0.00102821, 0.0199998, 0, 0, 0, 1,
0.0507252, -0.00587411, -0.00300148, 0, 0, 0, 1,
0.0550302, -0.00766317, 0.0106118, 0, 0, 0, 1,
0.0474204, -0.00175925, 0.00367148, 0, 0, 0, 1,
0.0302282, 0.00220633, -0.00394852, 0, 0, 0, 1,
0.0407151, -0.000235234, -0.00134203, 0, 0, 0, 1,
0.0294141, 0.00370818, -0.00516306, 0, 0, 0, 1,
0.04947, -0.00489582, -0.00183878, 0, 0, 0, 1,
0.0387895, 0.00319641, -0.00762304, 0, 0, 0, 1,
0.0504626, -0.00974138, 0.00154856, 0, 0, 0, 1,
0.0305081, 0.00408691, 0.00494746, 0, 0, 0, 1,
0.0474299, -0.00191162, 0.00293413, 0, 0, 0, 1,
0.0356042, 0.00272444, 0.0156965, 0, 0, 0, 1,
0.0217446, 0.00782978, -0.00366482, 0, 0, 0, 1,
0.0558056, -0.00661438, 0.00640769, 0, 0, 0, 1,
0.0317567, 0.00635479, 0.00310502, 0, 0, 0, 1,
0.0529789, -0.00923252, -0.00239121, 0, 0, 0, 1,
0.037446, 0.000458223, -0.00171451, 0, 0, 0, 1,
0.0581908, -0.0106526, -0.00393471, 0, 0, 0, 1,
0.0605993, -0.0114288, -0.000287795, 0, 0, 0, 1,
0.0513532, -0.00332404, -0.00123897, 0, 0, 0, 1,
0.0543328, -0.00667842, -0.00276732, 0, 0, 0, 1,
0.0183807, -0.00805563, -0.0562366, 0, 0, 0, 1,
-0.0186661, -0.0111683, -0.117656, 0, 0, 0, 1,
0.0414489, 0.00100455, 0.0151506, 0, 0, 0, 1,
0.049831, -0.00312961, -0.00434046, 0, 0, 0, 1,
0.0548418, -0.00424023, 0.000248617, 0, 0, 0, 1,
0.0232621, 0.010571, 0.00319005, 0, 0, 0, 1,
0.0396667, 0.0033939, -0.00254618, 0, 0, 0, 1,
0.060624, -0.0112842, 0.00133835, 0, 0, 0, 1,
0.0535137, -0.00281288, -0.000145218, 0, 0, 0, 1,
0.044104, -0.00311658, 0.00165518, 0, 0, 0, 1,
0.0248292, 0.00537637, 0.00674953, 0, 0, 0, 1,
0.0414083, -0.000455653, 0.00505968, 0, 0, 0, 1,
0.0568232, -0.00722061, -0.00176511, 0, 0, 0, 1,
0.0543498, -0.00454622, -0.00193067, 0, 0, 0, 1,
0.0359021, 0.00521797, 0.0122278, 0, 0, 0, 1,
0.0499256, -0.00888146, -0.00565542, 0, 0, 0, 1,
0.0512119, -0.00455375, 0.00548056, 0, 0, 0, 1,
0.0412672, -0.00106388, 0.00424907, 0, 0, 0, 1,
0.0350701, 0.0048813, -0.000759242, 0, 0, 0, 1,
0.0449414, -0.000929474, -0.00377543, 0, 0, 0, 1,
0.0113374, -0.0119405, -0.0670087, 0, 0, 0, 1,
-0.0102696, 0.0282878, 0.0209961, 0, 0, 1, 1,
-0.0137318, 0.0264393, 0.00980357, 0, 0, 1, 1,
-0.0100819, 0.0271898, 0.0174362, 0, 0, 1, 1,
-0.00848981, 0.0293538, 0.0168312, 0, 0, 1, 1,
-0.0100527, 0.0243865, 0.0163955, 0, 0, 1, 1,
-0.0101109, 0.0287325, 0.0162384, 0, 0, 1, 1,
-0.00679631, 0.0271408, 0.0133718, 0, 0, 1, 1,
-0.00983778, 0.0230228, 0.0136499, 0, 0, 1, 1,
-0.0100053, 0.0243386, 0.0167752, 0, 0, 1, 1,
-0.0114464, 0.0275468, 0.00962702, 0, 0, 1, 1,
-0.0079621, 0.0261701, 0.0120553, 0, 0, 1, 1,
-0.00894135, 0.0278949, 0.0129402, 0, 0, 1, 1,
-0.011235, 0.0263966, 0.0133823, 0, 0, 1, 1,
-0.00975067, 0.0271189, 0.00946479, 0, 0, 1, 1,
-0.0131884, 0.0250117, 0.0189004, 0, 0, 1, 1,
-0.00915161, 0.0277849, 0.0146565, 0, 0, 1, 1,
-0.00682502, 0.026755, 0.0119884, 0, 0, 1, 1,
-0.00606389, 0.0272248, 0.0189761, 0, 0, 1, 1,
-0.0112538, 0.0273165, 0.00914202, 0, 0, 1, 1,
-0.00762168, 0.0303376, 0.0138994, 0, 0, 1, 1,
-0.0109021, 0.0288172, 0.0111349, 0, 0, 1, 1,
-0.00706274, 0.0282865, 0.0156126, 0, 0, 1, 1,
-0.00919575, 0.023982, 0.00936446, 0, 0, 1, 1,
-0.00913969, 0.0283912, 0.0154593, 0, 0, 1, 1,
-0.00954215, 0.024589, 0.0214024, 0, 0, 1, 1,
-0.00756885, 0.0284213, 0.0174655, 0, 0, 1, 1,
-0.00665317, 0.024219, 0.015278, 0, 0, 1, 1,
-0.0110634, 0.0239957, 0.018463, 0, 0, 1, 1,
-0.00661914, 0.025588, 0.00558132, 0, 0, 1, 1,
-0.00892307, 0.0306318, 0.0140666, 0, 0, 1, 1,
-0.00933177, 0.0264503, 0.0163681, 0, 0, 1, 1,
-0.00697938, 0.0223958, 0.0164659, 0, 0, 1, 1,
-0.0109777, 0.0254437, 0.0187151, 0, 0, 1, 1,
-0.0120141, 0.0269899, 0.0118639, 0, 0, 1, 1,
-0.00871812, 0.0276269, 0.00653824, 0, 0, 1, 1,
-0.0115548, 0.0267786, 0.00812987, 0, 0, 1, 1,
-0.0121489, 0.0245186, 0.00603117, 0, 0, 1, 1,
-0.0119324, 0.0290431, 0.0101157, 0, 0, 1, 1,
-0.0118678, 0.0264786, 0.00746853, 0, 0, 1, 1,
-0.00871356, 0.0237823, 0.0175548, 0, 0, 1, 1,
-0.0105039, 0.0292328, 0.0118308, 0, 0, 1, 1,
-0.0091493, 0.026237, 0.00909589, 0, 0, 1, 1,
-0.0115165, 0.0248263, 0.0112216, 0, 0, 1, 1,
-0.00992583, 0.0238752, 0.0218562, 0, 0, 1, 1,
-0.00993673, 0.0275121, 0.00800056, 0, 0, 1, 1,
-0.00906338, 0.0310028, 0.00426915, 0, 0, 1, 1,
-0.0118239, 0.024042, 0.0149493, 0, 0, 1, 1,
-0.0111421, 0.0289015, 0.00559211, 0, 0, 1, 1,
-0.0113797, 0.0277816, 0.0222316, 0, 0, 1, 1,
-0.00986206, 0.0264902, 0.00474868, 0, 0, 1, 1,
-0.00573201, 0.0289302, 0.0189155, 0, 0, 1, 1,
-0.00832712, 0.0304806, 0.000307511, 0, 0, 1, 1,
-0.00679564, 0.0262042, 0.015485, 0, 0, 1, 1,
-0.0130541, 0.0263821, 0.00799086, 0, 0, 1, 1,
-0.0107218, 0.0241173, 0.00885294, 0, 0, 1, 1,
-0.0102764, 0.0273905, 0.00945649, 0, 0, 1, 1,
-0.010388, 0.0251407, 0.0231797, 0, 0, 1, 1,
-0.00653349, 0.0266279, 0.012035, 0, 0, 1, 1,
-0.00723016, 0.0308112, 0.0119328, 0, 0, 1, 1,
-0.0137295, 0.0284478, 0.000448284, 0, 0, 1, 1,
-0.00642578, 0.021937, 0.0202086, 0, 0, 1, 1,
-0.00842373, 0.0261524, 0.0177347, 0, 0, 1, 1,
-0.00818549, 0.0217926, 0.0203974, 0, 0, 1, 1,
-0.00771042, 0.0271938, 0.00900855, 0, 0, 1, 1,
-0.01113, 0.0263657, 0.0119497, 0, 0, 1, 1,
-0.0117861, 0.0271739, 0.0117943, 0, 0, 1, 1,
-0.00769249, 0.02631, 0.00923256, 0, 0, 1, 1,
-0.0125462, 0.0271379, 0.0165152, 0, 0, 1, 1,
-0.0081182, 0.0267064, 0.00975211, 0, 0, 1, 1,
-0.00715706, 0.0233023, 0.0109862, 0, 0, 1, 1,
-0.00951019, 0.0256183, 0.00972567, 0, 0, 1, 1,
-0.0129219, 0.028582, 0.0198644, 0, 0, 1, 1,
-0.00939765, 0.0248106, 0.0215154, 0, 0, 1, 1,
-0.0106514, 0.0262053, 0.000950693, 0, 0, 1, 1,
-0.00953833, 0.0275344, 0.00566691, 0, 0, 1, 1,
-0.00752898, 0.0277853, 0.0141119, 0, 0, 1, 1,
-0.0100811, 0.0276051, 0.0102856, 0, 0, 1, 1,
-0.00944503, 0.0292187, 0.00678969, 0, 0, 1, 1,
-0.0094808, 0.0304793, 0.00506879, 0, 0, 1, 1,
-0.00550303, 0.0280735, 0.0215714, 0, 0, 1, 1,
-0.0067349, 0.0278645, 0.00997695, 0, 0, 1, 1,
-0.00827914, 0.0262112, 0.00257818, 0, 0, 1, 1,
-0.00903212, 0.0273792, 0.00438174, 0, 0, 1, 1,
-0.00881656, 0.0284194, 0.0167786, 0, 0, 1, 1,
-0.0125575, 0.0218558, 0.0278779, 0, 0, 1, 1,
-0.00815451, 0.0285895, 0.00951594, 0, 0, 1, 1,
-0.0101773, 0.0264846, 0.0289299, 0, 0, 1, 1,
-0.0066145, 0.0285738, 0.00980551, 0, 0, 1, 1,
-0.00975177, 0.0297376, 0.00594824, 0, 0, 1, 1,
-0.00786561, 0.0260781, 0.00437162, 0, 0, 1, 1,
-0.0111383, 0.0276527, 0.00350812, 0, 0, 1, 1,
-0.0125779, 0.0244579, 0.0182879, 0, 0, 1, 1,
-0.00622485, 0.0273065, 0.0149143, 0, 0, 1, 1,
-0.00848216, 0.0249242, 0.00150063, 0, 0, 1, 1,
-0.0105461, 0.0242417, 0.00873604, 0, 0, 1, 1,
-0.0093052, 0.0252476, 0.00824535, 0, 0, 1, 1,
-0.0083247, 0.0249034, 0.0117392, 0, 0, 1, 1,
-0.00966163, 0.0272379, 0.0201071, 0, 0, 1, 1
]);
this.values[35] = v;
this.buf[35] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[35]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[35], gl.STATIC_DRAW);
this.mvMatLoc[35] = gl.getUniformLocation(this.prog[35],"mvMatrix");
this.prMatLoc[35] = gl.getUniformLocation(this.prog[35],"prMatrix");
// ****** text object 37 ******
this.flags[37] = 40;
this.prog[37]  = gl.createProgram();
gl.attachShader(this.prog[37], this.getShader( gl, "plot_3d2vshader37" ));
gl.attachShader(this.prog[37], this.getShader( gl, "plot_3d2fshader37" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[37], 0, "aPos");
gl.bindAttribLocation(this.prog[37], 1, "aCol");
gl.linkProgram(this.prog[37]);
var texts = [
"p1"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[37] = gl.getAttribLocation(this.prog[37], "aOfs");
this.texture[37] = gl.createTexture();
this.texLoc[37] = gl.getAttribLocation(this.prog[37], "aTexcoord");
this.sampler[37] = gl.getUniformLocation(this.prog[37],"uSampler");
handleLoadedTexture(this.texture[37], document.getElementById("plot_3d2textureCanvas"));
this.offsets[37]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
0.01858785, -0.06426319, -0.229995, 0, -0.5, 0.5, 0.5,
0.01858785, -0.06426319, -0.229995, 1, -0.5, 0.5, 0.5,
0.01858785, -0.06426319, -0.229995, 1, 1.5, 0.5, 0.5,
0.01858785, -0.06426319, -0.229995, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<1; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[37]["stride"]*(4*i + j) + this.offsets[37]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[37] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3
]);
this.buf[37] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[37]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[37], gl.STATIC_DRAW);
this.ibuf[37] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[37]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[37] = gl.getUniformLocation(this.prog[37],"mvMatrix");
this.prMatLoc[37] = gl.getUniformLocation(this.prog[37],"prMatrix");
this.textScaleLoc[37] = gl.getUniformLocation(this.prog[37],"textScale");
// ****** text object 38 ******
this.flags[38] = 40;
this.prog[38]  = gl.createProgram();
gl.attachShader(this.prog[38], this.getShader( gl, "plot_3d2vshader38" ));
gl.attachShader(this.prog[38], this.getShader( gl, "plot_3d2fshader38" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[38], 0, "aPos");
gl.bindAttribLocation(this.prog[38], 1, "aCol");
gl.linkProgram(this.prog[38]);
var texts = [
"p2"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[38] = gl.getAttribLocation(this.prog[38], "aOfs");
this.texture[38] = gl.createTexture();
this.texLoc[38] = gl.getAttribLocation(this.prog[38], "aTexcoord");
this.sampler[38] = gl.getUniformLocation(this.prog[38],"uSampler");
handleLoadedTexture(this.texture[38], document.getElementById("plot_3d2textureCanvas"));
this.offsets[38]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
-0.04315471, -0.008945951, -0.229995, 0, -0.5, 0.5, 0.5,
-0.04315471, -0.008945951, -0.229995, 1, -0.5, 0.5, 0.5,
-0.04315471, -0.008945951, -0.229995, 1, 1.5, 0.5, 0.5,
-0.04315471, -0.008945951, -0.229995, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<1; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[38]["stride"]*(4*i + j) + this.offsets[38]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[38] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3
]);
this.buf[38] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[38]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[38], gl.STATIC_DRAW);
this.ibuf[38] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[38]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[38] = gl.getUniformLocation(this.prog[38],"mvMatrix");
this.prMatLoc[38] = gl.getUniformLocation(this.prog[38],"prMatrix");
this.textScaleLoc[38] = gl.getUniformLocation(this.prog[38],"textScale");
// ****** text object 39 ******
this.flags[39] = 40;
this.prog[39]  = gl.createProgram();
gl.attachShader(this.prog[39], this.getShader( gl, "plot_3d2vshader39" ));
gl.attachShader(this.prog[39], this.getShader( gl, "plot_3d2fshader39" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[39], 0, "aPos");
gl.bindAttribLocation(this.prog[39], 1, "aCol");
gl.linkProgram(this.prog[39]);
var texts = [
"p3"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[39] = gl.getAttribLocation(this.prog[39], "aOfs");
this.texture[39] = gl.createTexture();
this.texLoc[39] = gl.getAttribLocation(this.prog[39], "aTexcoord");
this.sampler[39] = gl.getUniformLocation(this.prog[39],"uSampler");
handleLoadedTexture(this.texture[39], document.getElementById("plot_3d2textureCanvas"));
this.offsets[39]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
-0.04315471, -0.06426319, -0.08176905, 0, -0.5, 0.5, 0.5,
-0.04315471, -0.06426319, -0.08176905, 1, -0.5, 0.5, 0.5,
-0.04315471, -0.06426319, -0.08176905, 1, 1.5, 0.5, 0.5,
-0.04315471, -0.06426319, -0.08176905, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<1; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[39]["stride"]*(4*i + j) + this.offsets[39]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[39] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3
]);
this.buf[39] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[39]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[39], gl.STATIC_DRAW);
this.ibuf[39] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[39]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[39] = gl.getUniformLocation(this.prog[39],"mvMatrix");
this.prMatLoc[39] = gl.getUniformLocation(this.prog[39],"prMatrix");
this.textScaleLoc[39] = gl.getUniformLocation(this.prog[39],"textScale");
// ****** lines object 42 ******
this.flags[42] = 128;
this.prog[42]  = gl.createProgram();
gl.attachShader(this.prog[42], this.getShader( gl, "plot_3d2vshader42" ));
gl.attachShader(this.prog[42], this.getShader( gl, "plot_3d2fshader42" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[42], 0, "aPos");
gl.bindAttribLocation(this.prog[42], 1, "aCol");
gl.linkProgram(this.prog[42]);
this.offsets[42]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02890643, -0.04, -0.195789,
-0.02890643, -0.04, 0.03225087,
-0.02890643, -0.02, -0.195789,
-0.02890643, -0.02, 0.03225087,
-0.02890643, 0, -0.195789,
-0.02890643, 0, 0.03225087,
-0.02890643, 0.02, -0.195789,
-0.02890643, 0.02, 0.03225087
]);
this.values[42] = v;
this.buf[42] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[42]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[42], gl.STATIC_DRAW);
this.mvMatLoc[42] = gl.getUniformLocation(this.prog[42],"mvMatrix");
this.prMatLoc[42] = gl.getUniformLocation(this.prog[42],"prMatrix");
// ****** lines object 43 ******
this.flags[43] = 128;
this.prog[43]  = gl.createProgram();
gl.attachShader(this.prog[43], this.getShader( gl, "plot_3d2vshader43" ));
gl.attachShader(this.prog[43], this.getShader( gl, "plot_3d2fshader43" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[43], 0, "aPos");
gl.bindAttribLocation(this.prog[43], 1, "aCol");
gl.linkProgram(this.prog[43]);
this.offsets[43]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02890643, -0.05149767, -0.15,
-0.02890643, 0.03360577, -0.15,
-0.02890643, -0.05149767, -0.1,
-0.02890643, 0.03360577, -0.1,
-0.02890643, -0.05149767, -0.05,
-0.02890643, 0.03360577, -0.05,
-0.02890643, -0.05149767, 0,
-0.02890643, 0.03360577, 0
]);
this.values[43] = v;
this.buf[43] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[43]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[43], gl.STATIC_DRAW);
this.mvMatLoc[43] = gl.getUniformLocation(this.prog[43],"mvMatrix");
this.prMatLoc[43] = gl.getUniformLocation(this.prog[43],"prMatrix");
// ****** lines object 44 ******
this.flags[44] = 128;
this.prog[44]  = gl.createProgram();
gl.attachShader(this.prog[44], this.getShader( gl, "plot_3d2vshader44" ));
gl.attachShader(this.prog[44], this.getShader( gl, "plot_3d2fshader44" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[44], 0, "aPos");
gl.bindAttribLocation(this.prog[44], 1, "aCol");
gl.linkProgram(this.prog[44]);
this.offsets[44]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02, -0.05149767, -0.195789,
-0.02, -0.05149767, 0.03225087,
0, -0.05149767, -0.195789,
0, -0.05149767, 0.03225087,
0.02, -0.05149767, -0.195789,
0.02, -0.05149767, 0.03225087,
0.04, -0.05149767, -0.195789,
0.04, -0.05149767, 0.03225087,
0.06, -0.05149767, -0.195789,
0.06, -0.05149767, 0.03225087
]);
this.values[44] = v;
this.buf[44] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[44]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[44], gl.STATIC_DRAW);
this.mvMatLoc[44] = gl.getUniformLocation(this.prog[44],"mvMatrix");
this.prMatLoc[44] = gl.getUniformLocation(this.prog[44],"prMatrix");
// ****** lines object 45 ******
this.flags[45] = 128;
this.prog[45]  = gl.createProgram();
gl.attachShader(this.prog[45], this.getShader( gl, "plot_3d2vshader45" ));
gl.attachShader(this.prog[45], this.getShader( gl, "plot_3d2fshader45" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[45], 0, "aPos");
gl.bindAttribLocation(this.prog[45], 1, "aCol");
gl.linkProgram(this.prog[45]);
this.offsets[45]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02890643, -0.05149767, -0.15,
0.06608213, -0.05149767, -0.15,
-0.02890643, -0.05149767, -0.1,
0.06608213, -0.05149767, -0.1,
-0.02890643, -0.05149767, -0.05,
0.06608213, -0.05149767, -0.05,
-0.02890643, -0.05149767, 0,
0.06608213, -0.05149767, 0
]);
this.values[45] = v;
this.buf[45] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[45]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[45], gl.STATIC_DRAW);
this.mvMatLoc[45] = gl.getUniformLocation(this.prog[45],"mvMatrix");
this.prMatLoc[45] = gl.getUniformLocation(this.prog[45],"prMatrix");
// ****** lines object 46 ******
this.flags[46] = 128;
this.prog[46]  = gl.createProgram();
gl.attachShader(this.prog[46], this.getShader( gl, "plot_3d2vshader46" ));
gl.attachShader(this.prog[46], this.getShader( gl, "plot_3d2fshader46" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[46], 0, "aPos");
gl.bindAttribLocation(this.prog[46], 1, "aCol");
gl.linkProgram(this.prog[46]);
this.offsets[46]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02, -0.05149767, -0.195789,
-0.02, 0.03360577, -0.195789,
0, -0.05149767, -0.195789,
0, 0.03360577, -0.195789,
0.02, -0.05149767, -0.195789,
0.02, 0.03360577, -0.195789,
0.04, -0.05149767, -0.195789,
0.04, 0.03360577, -0.195789,
0.06, -0.05149767, -0.195789,
0.06, 0.03360577, -0.195789
]);
this.values[46] = v;
this.buf[46] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[46]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[46], gl.STATIC_DRAW);
this.mvMatLoc[46] = gl.getUniformLocation(this.prog[46],"mvMatrix");
this.prMatLoc[46] = gl.getUniformLocation(this.prog[46],"prMatrix");
// ****** lines object 47 ******
this.flags[47] = 128;
this.prog[47]  = gl.createProgram();
gl.attachShader(this.prog[47], this.getShader( gl, "plot_3d2vshader47" ));
gl.attachShader(this.prog[47], this.getShader( gl, "plot_3d2fshader47" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[47], 0, "aPos");
gl.bindAttribLocation(this.prog[47], 1, "aCol");
gl.linkProgram(this.prog[47]);
this.offsets[47]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02890643, -0.04, -0.195789,
0.06608213, -0.04, -0.195789,
-0.02890643, -0.02, -0.195789,
0.06608213, -0.02, -0.195789,
-0.02890643, 0, -0.195789,
0.06608213, 0, -0.195789,
-0.02890643, 0.02, -0.195789,
0.06608213, 0.02, -0.195789
]);
this.values[47] = v;
this.buf[47] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[47]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[47], gl.STATIC_DRAW);
this.mvMatLoc[47] = gl.getUniformLocation(this.prog[47],"mvMatrix");
this.prMatLoc[47] = gl.getUniformLocation(this.prog[47],"prMatrix");
// ****** spheres object 48 ******
this.flags[48] = 91;
this.prog[48]  = gl.createProgram();
gl.attachShader(this.prog[48], this.getShader( gl, "plot_3d2vshader48" ));
gl.attachShader(this.prog[48], this.getShader( gl, "plot_3d2fshader48" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[48], 0, "aPos");
gl.bindAttribLocation(this.prog[48], 1, "aCol");
gl.linkProgram(this.prog[48]);
this.offsets[48]={vofs:0, cofs:-1, nofs:-1, radofs:3, oofs:-1, tofs:-1, stride:4};
var v=new Float32Array([
-0.01130136, 0.02599243, 0.01158796, 0.03519014
]);
this.values[48] = v;
this.normLoc[48] = gl.getAttribLocation(this.prog[48], "aNorm");
this.centers[48] = new Float32Array([
-0.01130136, 0.02599243, 0.01158796
]);
this.f[48]=new Uint16Array([
0
]);
this.mvMatLoc[48] = gl.getUniformLocation(this.prog[48],"mvMatrix");
this.prMatLoc[48] = gl.getUniformLocation(this.prog[48],"prMatrix");
this.normMatLoc[48] = gl.getUniformLocation(this.prog[48],"normMatrix");
// ****** lines object 49 ******
this.flags[49] = 128;
this.prog[49]  = gl.createProgram();
gl.attachShader(this.prog[49], this.getShader( gl, "plot_3d2vshader49" ));
gl.attachShader(this.prog[49], this.getShader( gl, "plot_3d2fshader49" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[49], 0, "aPos");
gl.bindAttribLocation(this.prog[49], 1, "aCol");
gl.linkProgram(this.prog[49]);
this.offsets[49]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.00886681, 0.0238644, 0.0217746,
-0.0121496, 0.02617985, 0.01134996,
-0.0124726, 0.0247746, 0.0254585,
-0.0121496, 0.02617985, 0.01134996,
-0.0147315, 0.0281533, 0.0238545,
-0.0121496, 0.02617985, 0.01134996,
-0.0140497, 0.0274399, 0.00957505,
-0.0121496, 0.02617985, 0.01134996,
-0.0116447, 0.0287953, 0.01982,
-0.0121496, 0.02617985, 0.01134996,
-0.0135256, 0.0311266, 0.0226846,
-0.0121496, 0.02617985, 0.01134996,
-0.0146697, 0.0281732, 0.00270888,
-0.0121496, 0.02617985, 0.01134996,
-0.0122709, 0.0273632, 0.00629289,
-0.0121496, 0.02617985, 0.01134996,
-0.013305, 0.0293633, 0.00633912,
-0.0121496, 0.02617985, 0.01134996,
-0.0122756, 0.0262672, 0.00976935,
-0.0121496, 0.02617985, 0.01134996,
-0.011765, 0.0251295, 0.0118895,
-0.0121496, 0.02617985, 0.01134996,
-0.0128186, 0.028081, 0.00958605,
-0.0121496, 0.02617985, 0.01134996,
-0.0116086, 0.0294887, 0.00805614,
-0.0121496, 0.02617985, 0.01134996,
-0.0113447, 0.0307663, 0.00405527,
-0.0121496, 0.02617985, 0.01134996,
-0.0148581, 0.0237257, 0.0160082,
-0.0121496, 0.02617985, 0.01134996,
-0.010788, 0.0238892, 0.0226584,
-0.0121496, 0.02617985, 0.01134996,
-0.0148937, 0.0232955, 0.0101953,
-0.0121496, 0.02617985, 0.01134996,
-0.00875168, 0.0261604, 0.0121802,
-0.0121496, 0.02617985, 0.01134996,
-0.008739, 0.0261481, 0.0122728,
-0.0121496, 0.02617985, 0.01134996,
-0.0108659, 0.0259289, 0.00106272,
-0.0121496, 0.02617985, 0.01134996,
-0.0130502, 0.0270812, 0.0183305,
-0.0121496, 0.02617985, 0.01134996,
-0.0134347, 0.0270132, 0.0229292,
-0.0121496, 0.02617985, 0.01134996,
-0.0118617, 0.0220373, 0.0105775,
-0.0121496, 0.02617985, 0.01134996,
-0.0130059, 0.0245835, 0.0192892,
-0.0121496, 0.02617985, 0.01134996,
-0.0102875, 0.0258827, 0.0208538,
-0.0121496, 0.02617985, 0.01134996,
-0.00910839, 0.0257005, 0.00618984,
-0.0121496, 0.02617985, 0.01134996,
-0.0128356, 0.0225055, 0.00960733,
-0.0121496, 0.02617985, 0.01134996,
-0.0112344, 0.0276306, 0.0114346,
-0.0121496, 0.02617985, 0.01134996,
-0.0106106, 0.0278096, 0.00194201,
-0.0121496, 0.02617985, 0.01134996,
-0.0115198, 0.0292207, 0.00294633,
-0.0121496, 0.02617985, 0.01134996,
-0.0133883, 0.028673, 0.0164389,
-0.0121496, 0.02617985, 0.01134996,
-0.0109423, 0.0290064, 0.0218431,
-0.0121496, 0.02617985, 0.01134996,
-0.0148488, 0.0259077, 0.0115755,
-0.0121496, 0.02617985, 0.01134996,
-0.0107891, 0.0257524, 0.00616149,
-0.0121496, 0.02617985, 0.01134996,
-0.0106291, 0.0269203, 0.0228778,
-0.0121496, 0.02617985, 0.01134996,
-0.0161089, 0.0275971, 0.0192198,
-0.0121496, 0.02617985, 0.01134996,
-0.0132678, 0.0258366, 0.0163521,
-0.0121496, 0.02617985, 0.01134996,
-0.0149124, 0.0251342, 0.00388131,
-0.0121496, 0.02617985, 0.01134996,
-0.0114892, 0.0274352, 0.00899298,
-0.0121496, 0.02617985, 0.01134996,
-0.0117562, 0.0245922, 0.0136363,
-0.0121496, 0.02617985, 0.01134996,
-0.0122278, 0.0271677, 0.0112234,
-0.0121496, 0.02617985, 0.01134996,
-0.01029, 0.0277564, 0.0160115,
-0.0121496, 0.02617985, 0.01134996,
-0.0121964, 0.0309241, 0.0139494,
-0.0121496, 0.02617985, 0.01134996,
-0.0129751, 0.0271331, 0.0260444,
-0.0121496, 0.02617985, 0.01134996,
-0.0125756, 0.0265999, 0.0224468,
-0.0121496, 0.02617985, 0.01134996,
-0.0127859, 0.027101, 0.0191604,
-0.0121496, 0.02617985, 0.01134996,
-0.00998233, 0.0253795, 0.00685042,
-0.0121496, 0.02617985, 0.01134996,
-0.0133536, 0.028689, 0.0051763,
-0.0121496, 0.02617985, 0.01134996,
-0.0117333, 0.0277402, 0.00381405,
-0.0121496, 0.02617985, 0.01134996,
-0.0147853, 0.0295933, 0.00968847,
-0.0121496, 0.02617985, 0.01134996,
-0.0109685, 0.0223538, 0.0143111,
-0.0121496, 0.02617985, 0.01134996,
-0.0096918, 0.0249463, 0.00704751,
-0.0121496, 0.02617985, 0.01134996,
-0.0155493, 0.0266224, 0.00516269,
-0.0121496, 0.02617985, 0.01134996,
-0.014836, 0.0276024, 0.0116228,
-0.0121496, 0.02617985, 0.01134996,
-0.00828352, 0.0252156, 0.0187242,
-0.0121496, 0.02617985, 0.01134996,
-0.0110414, 0.0293172, 0.00362714,
-0.0121496, 0.02617985, 0.01134996,
-0.0102891, 0.0257019, 0.00540398,
-0.0121496, 0.02617985, 0.01134996,
-0.0104394, 0.0259701, 0.00329733,
-0.0121496, 0.02617985, 0.01134996,
-0.00930721, 0.0261215, 0.00409051,
-0.0121496, 0.02617985, 0.01134996,
-0.0124193, 0.0257317, 0.0162523,
-0.0121496, 0.02617985, 0.01134996,
-0.0114044, 0.025375, 0.00361722,
-0.0121496, 0.02617985, 0.01134996,
-0.0112687, 0.0271153, 0.00987548,
-0.0121496, 0.02617985, 0.01134996,
-0.0135369, 0.0198464, 0.0192111,
-0.0121496, 0.02617985, 0.01134996,
-0.0134307, 0.0240167, 0.00338929,
-0.0121496, 0.02617985, 0.01134996,
-0.00581692, -0.000934194, -0.00182728,
-0.0121496, 0.02617985, 0.01134996,
-0.00992799, 0.0281201, 0.00421423,
-0.0121496, 0.02617985, 0.01134996,
-0.0163484, 0.0253598, 0.00679276,
-0.0121496, 0.02617985, 0.01134996,
-0.0153143, 0.0239155, 0.00922948,
-0.0121496, 0.02617985, 0.01134996,
-0.0130066, 0.0264895, 0.0219972,
-0.0121496, 0.02617985, 0.01134996,
-0.0123188, 0.0270323, 0.0130162,
-0.0121496, 0.02617985, 0.01134996,
-0.0149538, 0.0261319, 0.0246082,
-0.0121496, 0.02617985, 0.01134996,
-0.00848068, 0.0244795, 0.0126147,
-0.0121496, 0.02617985, 0.01134996,
-0.009655, 0.026754, 0.0151766,
-0.0121496, 0.02617985, 0.01134996,
-0.0110317, 0.0247415, 0.0169718,
-0.0121496, 0.02617985, 0.01134996,
-0.0105467, 0.0216758, 0.0273625,
-0.0121496, 0.02617985, 0.01134996,
-0.0111351, 0.0298442, 0.0137315,
-0.0121496, 0.02617985, 0.01134996,
-0.0148939, 0.0282641, 0.0180507,
-0.0121496, 0.02617985, 0.01134996,
-0.0133113, 0.0255374, 0.0156552,
-0.0121496, 0.02617985, 0.01134996,
-0.0152238, 0.0253733, 0.0118128,
-0.0121496, 0.02617985, 0.01134996,
-0.0165117, 0.0254165, 0.0210366,
-0.0121496, 0.02617985, 0.01134996,
-0.0172562, 0.026341, 0.0224113,
-0.0121496, 0.02617985, 0.01134996,
-0.0138025, 0.0277873, 0.00395365,
-0.0121496, 0.02617985, 0.01134996,
-0.0135819, 0.0270152, 0.00695362,
-0.0121496, 0.02617985, 0.01134996,
-0.0116353, 0.0256155, 0.000289371,
-0.0121496, 0.02617985, 0.01134996,
-0.0149184, 0.0238256, -0.00270158,
-0.0121496, 0.02617985, 0.01134996,
-0.0114351, 0.0271658, 0.0125575,
-0.0121496, 0.02617985, 0.01134996,
-0.01436, 0.0264762, 0.0173609,
-0.0121496, 0.02617985, 0.01134996,
-0.0128438, 0.0268224, 0.00444834,
-0.0121496, 0.02617985, 0.01134996,
-0.0120046, 0.0230234, 0.00796341,
-0.0121496, 0.02617985, 0.01134996,
-0.0126985, 0.0258126, 0.00514686,
-0.0121496, 0.02617985, 0.01134996,
-0.0135831, 0.0249755, 0.0107284,
-0.0121496, 0.02617985, 0.01134996,
-0.0121259, 0.0280823, 0.020544,
-0.0121496, 0.02617985, 0.01134996,
-0.0141439, 0.0265254, 0.0258433,
-0.0121496, 0.02617985, 0.01134996,
-0.0138132, 0.0284247, 0.0101188,
-0.0121496, 0.02617985, 0.01134996,
-0.013572, 0.0269507, 0.00688972,
-0.0121496, 0.02617985, 0.01134996,
-0.0113011, 0.0268327, 0.0184482,
-0.0121496, 0.02617985, 0.01134996,
-0.0100601, 0.0264789, 0.0212786,
-0.0121496, 0.02617985, 0.01134996,
-0.0113299, 0.0282418, 0.00866489,
-0.0121496, 0.02617985, 0.01134996,
-0.0114925, 0.0272719, 0.0170049,
-0.0121496, 0.02617985, 0.01134996,
-0.0104039, 0.0283855, 0.0100799,
-0.0121496, 0.02617985, 0.01134996,
-0.00956386, 0.0268284, 0.0101297,
-0.0121496, 0.02617985, 0.01134996,
-0.0121363, 0.0224437, 0.00471969,
-0.0121496, 0.02617985, 0.01134996,
-0.0129748, 0.0260496, 0.0176977,
-0.0121496, 0.02617985, 0.01134996,
-0.0128936, 0.0280627, 0.00938281,
-0.0121496, 0.02617985, 0.01134996,
-0.0114891, 0.0247891, 0.0130035,
-0.0121496, 0.02617985, 0.01134996,
-0.00577137, 0.0112307, -0.0490284,
-0.0121496, 0.02617985, 0.01134996,
-0.0102643, 0.0267855, 0.0104728,
-0.0121496, 0.02617985, 0.01134996,
-0.0123468, 0.0265473, 0.016931,
-0.0121496, 0.02617985, 0.01134996,
-0.0097784, 0.0252052, 0.00928465,
-0.0121496, 0.02617985, 0.01134996,
-0.0117949, 0.0233834, 0.0122081,
-0.0121496, 0.02617985, 0.01134996,
-0.0128608, 0.0249954, 0.0176076,
-0.0121496, 0.02617985, 0.01134996,
-0.0129981, 0.0257737, 0.0155265,
-0.0121496, 0.02617985, 0.01134996,
-0.0134316, 0.02653, 0.00353212,
-0.0121496, 0.02617985, 0.01134996,
-0.00935833, 0.0318374, 0.0100076,
-0.0121496, 0.02617985, 0.01134996,
-0.0113107, 0.0303198, 0.0116077,
-0.0121496, 0.02617985, 0.01134996,
-0.0131245, 0.0298223, 0.00180678,
-0.0121496, 0.02617985, 0.01134996,
-0.0133191, 0.0293408, 0.00662741,
-0.0121496, 0.02617985, 0.01134996,
-0.0138591, 0.0261048, 0.000836834,
-0.0121496, 0.02617985, 0.01134996,
-0.0150174, 0.0231497, -0.00112857,
-0.0121496, 0.02617985, 0.01134996,
-0.0110389, 0.0248572, 0.00176283,
-0.0121496, 0.02617985, 0.01134996,
-0.0118715, 0.0275812, 0.0178639,
-0.0121496, 0.02617985, 0.01134996,
-0.0129834, 0.0259341, 0.0186928,
-0.0121496, 0.02617985, 0.01134996,
-0.010557, 0.0273327, 0.00990001,
-0.0121496, 0.02617985, 0.01134996,
-0.0111681, 0.0273472, 0.00617783,
-0.0121496, 0.02617985, 0.01134996,
-0.0101689, 0.0280639, 0.00864267,
-0.0121496, 0.02617985, 0.01134996,
-0.00927365, 0.0255201, 0.0130722,
-0.0121496, 0.02617985, 0.01134996,
-0.010756, 0.0260178, 0.0154469,
-0.0121496, 0.02617985, 0.01134996,
-0.0122762, 0.0266211, 0.00832697,
-0.0121496, 0.02617985, 0.01134996,
-0.0132575, 0.0299597, 0.014467,
-0.0121496, 0.02617985, 0.01134996,
-0.0114548, 0.0255468, 0.0189329,
-0.0121496, 0.02617985, 0.01134996,
-0.00934806, 0.0252484, 0.00733987,
-0.0121496, 0.02617985, 0.01134996,
-0.0142405, 0.0279119, 0.0149429,
-0.0121496, 0.02617985, 0.01134996,
-0.0133535, 0.0262824, 0.00311826,
-0.0121496, 0.02617985, 0.01134996,
-0.0135127, 0.0255778, -0.0113687,
-0.0121496, 0.02617985, 0.01134996,
-0.0121261, 0.0260542, 0.0169802,
-0.0121496, 0.02617985, 0.01134996,
-0.0133854, 0.0276628, 0.00624653,
-0.0121496, 0.02617985, 0.01134996,
-0.0129197, 0.0294731, 0.0139965,
-0.0121496, 0.02617985, 0.01134996,
-0.010358, 0.0239915, 0.0158709,
-0.0121496, 0.02617985, 0.01134996,
-0.0116095, 0.0243185, 0.0147471,
-0.0121496, 0.02617985, 0.01134996,
-0.0114546, 0.0261468, 0.0128631,
-0.0121496, 0.02617985, 0.01134996
]);
this.values[49] = v;
this.buf[49] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[49]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[49], gl.STATIC_DRAW);
this.mvMatLoc[49] = gl.getUniformLocation(this.prog[49],"mvMatrix");
this.prMatLoc[49] = gl.getUniformLocation(this.prog[49],"prMatrix");
// ****** lines object 50 ******
this.flags[50] = 128;
this.prog[50]  = gl.createProgram();
gl.attachShader(this.prog[50], this.getShader( gl, "plot_3d2vshader50" ));
gl.attachShader(this.prog[50], this.getShader( gl, "plot_3d2fshader50" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[50], 0, "aPos");
gl.bindAttribLocation(this.prog[50], 1, "aCol");
gl.linkProgram(this.prog[50]);
this.offsets[50]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.04, -0.05192991, -0.1960567,
0.06, -0.05192991, -0.1960567,
-0.04, -0.05192991, -0.1960567,
-0.04, -0.05479952, -0.2022173,
-0.02, -0.05192991, -0.1960567,
-0.02, -0.05479952, -0.2022173,
0, -0.05192991, -0.1960567,
0, -0.05479952, -0.2022173,
0.02, -0.05192991, -0.1960567,
0.02, -0.05479952, -0.2022173,
0.04, -0.05192991, -0.1960567,
0.04, -0.05479952, -0.2022173,
0.06, -0.05192991, -0.1960567,
0.06, -0.05479952, -0.2022173
]);
this.values[50] = v;
this.buf[50] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[50]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[50], gl.STATIC_DRAW);
this.mvMatLoc[50] = gl.getUniformLocation(this.prog[50],"mvMatrix");
this.prMatLoc[50] = gl.getUniformLocation(this.prog[50],"prMatrix");
// ****** text object 51 ******
this.flags[51] = 40;
this.prog[51]  = gl.createProgram();
gl.attachShader(this.prog[51], this.getShader( gl, "plot_3d2vshader51" ));
gl.attachShader(this.prog[51], this.getShader( gl, "plot_3d2fshader51" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[51], 0, "aPos");
gl.bindAttribLocation(this.prog[51], 1, "aCol");
gl.linkProgram(this.prog[51]);
var texts = [
"-0.04",
"-0.02",
"0",
"0.02",
"0.04",
"0.06"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[51] = gl.getAttribLocation(this.prog[51], "aOfs");
this.texture[51] = gl.createTexture();
this.texLoc[51] = gl.getAttribLocation(this.prog[51], "aTexcoord");
this.sampler[51] = gl.getUniformLocation(this.prog[51],"uSampler");
handleLoadedTexture(this.texture[51], document.getElementById("plot_3d2textureCanvas"));
this.offsets[51]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
-0.04, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.04, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.04, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.04, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.02, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.02, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.02, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.02, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5,
0, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
0, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
0, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
0, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5,
0.02, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
0.02, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
0.02, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
0.02, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5,
0.04, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
0.04, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
0.04, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
0.04, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5,
0.06, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
0.06, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
0.06, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
0.06, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<6; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[51]["stride"]*(4*i + j) + this.offsets[51]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[51] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23
]);
this.buf[51] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[51]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[51], gl.STATIC_DRAW);
this.ibuf[51] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[51]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[51] = gl.getUniformLocation(this.prog[51],"mvMatrix");
this.prMatLoc[51] = gl.getUniformLocation(this.prog[51],"prMatrix");
this.textScaleLoc[51] = gl.getUniformLocation(this.prog[51],"textScale");
// ****** lines object 52 ******
this.flags[52] = 128;
this.prog[52]  = gl.createProgram();
gl.attachShader(this.prog[52], this.getShader( gl, "plot_3d2vshader52" ));
gl.attachShader(this.prog[52], this.getShader( gl, "plot_3d2fshader52" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[52], 0, "aPos");
gl.bindAttribLocation(this.prog[52], 1, "aCol");
gl.linkProgram(this.prog[52]);
this.offsets[52]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.04815935, -0.04, -0.1960567,
-0.04815935, 0.06, -0.1960567,
-0.04815935, -0.04, -0.1960567,
-0.0510225, -0.04, -0.2022173,
-0.04815935, -0.02, -0.1960567,
-0.0510225, -0.02, -0.2022173,
-0.04815935, 0, -0.1960567,
-0.0510225, 0, -0.2022173,
-0.04815935, 0.02, -0.1960567,
-0.0510225, 0.02, -0.2022173,
-0.04815935, 0.04, -0.1960567,
-0.0510225, 0.04, -0.2022173,
-0.04815935, 0.06, -0.1960567,
-0.0510225, 0.06, -0.2022173
]);
this.values[52] = v;
this.buf[52] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[52]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[52], gl.STATIC_DRAW);
this.mvMatLoc[52] = gl.getUniformLocation(this.prog[52],"mvMatrix");
this.prMatLoc[52] = gl.getUniformLocation(this.prog[52],"prMatrix");
// ****** text object 53 ******
this.flags[53] = 40;
this.prog[53]  = gl.createProgram();
gl.attachShader(this.prog[53], this.getShader( gl, "plot_3d2vshader53" ));
gl.attachShader(this.prog[53], this.getShader( gl, "plot_3d2fshader53" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[53], 0, "aPos");
gl.bindAttribLocation(this.prog[53], 1, "aCol");
gl.linkProgram(this.prog[53]);
var texts = [
"-0.04",
"-0.02",
"0",
"0.02",
"0.04",
"0.06"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[53] = gl.getAttribLocation(this.prog[53], "aOfs");
this.texture[53] = gl.createTexture();
this.texLoc[53] = gl.getAttribLocation(this.prog[53], "aTexcoord");
this.sampler[53] = gl.getUniformLocation(this.prog[53],"uSampler");
handleLoadedTexture(this.texture[53], document.getElementById("plot_3d2textureCanvas"));
this.offsets[53]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
-0.0567488, -0.04, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.04, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.04, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.04, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.0567488, -0.02, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.02, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.02, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.02, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.0567488, 0, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, 0, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, 0, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, 0, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.0567488, 0.02, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, 0.02, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, 0.02, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, 0.02, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.0567488, 0.04, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, 0.04, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, 0.04, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, 0.04, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.0567488, 0.06, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, 0.06, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, 0.06, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, 0.06, -0.2145385, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<6; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[53]["stride"]*(4*i + j) + this.offsets[53]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[53] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23
]);
this.buf[53] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[53]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[53], gl.STATIC_DRAW);
this.ibuf[53] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[53]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[53] = gl.getUniformLocation(this.prog[53],"mvMatrix");
this.prMatLoc[53] = gl.getUniformLocation(this.prog[53],"prMatrix");
this.textScaleLoc[53] = gl.getUniformLocation(this.prog[53],"textScale");
// ****** lines object 54 ******
this.flags[54] = 128;
this.prog[54]  = gl.createProgram();
gl.attachShader(this.prog[54], this.getShader( gl, "plot_3d2vshader54" ));
gl.attachShader(this.prog[54], this.getShader( gl, "plot_3d2fshader54" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[54], 0, "aPos");
gl.bindAttribLocation(this.prog[54], 1, "aCol");
gl.linkProgram(this.prog[54]);
this.offsets[54]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.04815935, -0.05192991, -0.15,
-0.04815935, -0.05192991, 0,
-0.04815935, -0.05192991, -0.15,
-0.0510225, -0.05479952, -0.15,
-0.04815935, -0.05192991, -0.1,
-0.0510225, -0.05479952, -0.1,
-0.04815935, -0.05192991, -0.05,
-0.0510225, -0.05479952, -0.05,
-0.04815935, -0.05192991, 0,
-0.0510225, -0.05479952, 0
]);
this.values[54] = v;
this.buf[54] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[54]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[54], gl.STATIC_DRAW);
this.mvMatLoc[54] = gl.getUniformLocation(this.prog[54],"mvMatrix");
this.prMatLoc[54] = gl.getUniformLocation(this.prog[54],"prMatrix");
// ****** text object 55 ******
this.flags[55] = 40;
this.prog[55]  = gl.createProgram();
gl.attachShader(this.prog[55], this.getShader( gl, "plot_3d2vshader55" ));
gl.attachShader(this.prog[55], this.getShader( gl, "plot_3d2fshader55" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[55], 0, "aPos");
gl.bindAttribLocation(this.prog[55], 1, "aCol");
gl.linkProgram(this.prog[55]);
var texts = [
"-0.15",
"-0.1",
"-0.05",
"0"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[55] = gl.getAttribLocation(this.prog[55], "aOfs");
this.texture[55] = gl.createTexture();
this.texLoc[55] = gl.getAttribLocation(this.prog[55], "aTexcoord");
this.sampler[55] = gl.getUniformLocation(this.prog[55],"uSampler");
handleLoadedTexture(this.texture[55], document.getElementById("plot_3d2textureCanvas"));
this.offsets[55]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
-0.0567488, -0.06053872, -0.15, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.15, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.15, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.15, 0, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.1, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.1, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.1, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.1, 0, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.05, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.05, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.05, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.05, 0, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, 0, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, 0, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, 0, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, 0, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<4; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[55]["stride"]*(4*i + j) + this.offsets[55]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[55] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15
]);
this.buf[55] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[55]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[55], gl.STATIC_DRAW);
this.ibuf[55] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[55]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[55] = gl.getUniformLocation(this.prog[55],"mvMatrix");
this.prMatLoc[55] = gl.getUniformLocation(this.prog[55],"prMatrix");
this.textScaleLoc[55] = gl.getUniformLocation(this.prog[55],"textScale");
// ****** lines object 56 ******
this.flags[56] = 128;
this.prog[56]  = gl.createProgram();
gl.attachShader(this.prog[56], this.getShader( gl, "plot_3d2vshader56" ));
gl.attachShader(this.prog[56], this.getShader( gl, "plot_3d2fshader56" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[56], 0, "aPos");
gl.bindAttribLocation(this.prog[56], 1, "aCol");
gl.linkProgram(this.prog[56]);
this.offsets[56]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.04815935, -0.05192991, -0.1960567,
-0.04815935, 0.06285418, -0.1960567,
-0.04815935, -0.05192991, 0.05036679,
-0.04815935, 0.06285418, 0.05036679,
-0.04815935, -0.05192991, -0.1960567,
-0.04815935, -0.05192991, 0.05036679,
-0.04815935, 0.06285418, -0.1960567,
-0.04815935, 0.06285418, 0.05036679,
-0.04815935, -0.05192991, -0.1960567,
0.06636666, -0.05192991, -0.1960567,
-0.04815935, -0.05192991, 0.05036679,
0.06636666, -0.05192991, 0.05036679,
-0.04815935, 0.06285418, -0.1960567,
0.06636666, 0.06285418, -0.1960567,
-0.04815935, 0.06285418, 0.05036679,
0.06636666, 0.06285418, 0.05036679,
0.06636666, -0.05192991, -0.1960567,
0.06636666, 0.06285418, -0.1960567,
0.06636666, -0.05192991, 0.05036679,
0.06636666, 0.06285418, 0.05036679,
0.06636666, -0.05192991, -0.1960567,
0.06636666, -0.05192991, 0.05036679,
0.06636666, 0.06285418, -0.1960567,
0.06636666, 0.06285418, 0.05036679
]);
this.values[56] = v;
this.buf[56] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[56]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[56], gl.STATIC_DRAW);
this.mvMatLoc[56] = gl.getUniformLocation(this.prog[56],"mvMatrix");
this.prMatLoc[56] = gl.getUniformLocation(this.prog[56],"prMatrix");
gl.enable(gl.DEPTH_TEST);
gl.depthFunc(gl.LEQUAL);
gl.clearDepth(1.0);
gl.clearColor(1,1,1,1);
var drag  = 0;
this.drawScene = function() {
gl.depthMask(true);
gl.disable(gl.BLEND);
gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);
this.drawFns[29].call(this, 29)
gl.flush ();
}
// ****** points object 35 *******
this.drawFns[35] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.enableVertexAttribArray( colLoc );
gl.vertexAttribPointer(colLoc, 4, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["cofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.POINTS, 0, 1232);
}
// ****** text object 37 *******
this.drawFns[37] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 6, gl.UNSIGNED_SHORT, 0);
}
// ****** text object 38 *******
this.drawFns[38] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 6, gl.UNSIGNED_SHORT, 0);
}
// ****** text object 39 *******
this.drawFns[39] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 6, gl.UNSIGNED_SHORT, 0);
}
// ****** lines object 42 *******
this.drawFns[42] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 8);
}
// ****** lines object 43 *******
this.drawFns[43] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 8);
}
// ****** lines object 44 *******
this.drawFns[44] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 10);
}
// ****** lines object 45 *******
this.drawFns[45] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 8);
}
// ****** lines object 46 *******
this.drawFns[46] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 10);
}
// ****** lines object 47 *******
this.drawFns[47] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 8);
}
// ****** spheres object 48 *******
this.drawFns[48] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, sphereBuf);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, sphereIbuf);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniformMatrix4fv( this.normMatLoc[id], false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
var depths = new Float32Array(1);
var faces = new Array(1);
for(var i=0; i<1; i++) {
var z = this.prmvMatrix.m13*this.centers[id][3*i] 
+ this.prmvMatrix.m23*this.centers[id][3*i+1]
+ this.prmvMatrix.m33*this.centers[id][3*i+2]
+ this.prmvMatrix.m43;
var w = this.prmvMatrix.m14*this.centers[id][3*i] 
+ this.prmvMatrix.m24*this.centers[id][3*i+1]
+ this.prmvMatrix.m34*this.centers[id][3*i+2]
+ this.prmvMatrix.m44;
depths[i] = z/w;
faces[i] = i;
}
var depthsort = function(i,j) { return depths[j] - depths[i] }
faces.sort(depthsort);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 12,  0);
gl.enableVertexAttribArray(this.normLoc[id] );
gl.vertexAttribPointer(this.normLoc[id],  3, gl.FLOAT, false, 12,  0);
gl.disableVertexAttribArray( colLoc );
var sphereNorm = new CanvasMatrix4();
sphereNorm.scale(1, 1, 1);
sphereNorm.multRight(normMatrix);
gl.uniformMatrix4fv( this.normMatLoc[id], false, new Float32Array(sphereNorm.getAsArray()) );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 0.4980392);
for (var i = 0; i < 1; i++) {
var sphereMV = new CanvasMatrix4();
var baseofs = faces[i]*plot_3d2rgl.offsets[id]["stride"];
var ofs = baseofs + this.offsets[id]["radofs"];	       
var scale = this.values[id][ofs];
sphereMV.scale(1*scale, 1*scale, 1*scale);
sphereMV.translate(this.values[id][baseofs], 
this.values[id][baseofs+1], 
this.values[id][baseofs+2]);
sphereMV.multRight(this.mvMatrix);
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(sphereMV.getAsArray()) );
gl.drawElements(gl.TRIANGLES, 384, gl.UNSIGNED_SHORT, 0);
}
}
// ****** lines object 49 *******
this.drawFns[49] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 280);
}
// ****** lines object 50 *******
this.drawFns[50] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 14);
}
// ****** text object 51 *******
this.drawFns[51] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 36, gl.UNSIGNED_SHORT, 0);
}
// ****** lines object 52 *******
this.drawFns[52] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 14);
}
// ****** text object 53 *******
this.drawFns[53] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 36, gl.UNSIGNED_SHORT, 0);
}
// ****** lines object 54 *******
this.drawFns[54] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 10);
}
// ****** text object 55 *******
this.drawFns[55] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 24, gl.UNSIGNED_SHORT, 0);
}
// ****** lines object 56 *******
this.drawFns[56] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 24);
}
// ***** subscene 29 ****
this.drawFns[29] = function(id) {
this.vp = this.viewport[id];
gl.viewport(this.vp[0], this.vp[1], this.vp[2], this.vp[3]);
gl.scissor(this.vp[0], this.vp[1], this.vp[2], this.vp[3]);
gl.clearColor(1, 1, 1, 1);
gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);
this.prMatrix.makeIdentity();
var radius = 0.1575162;
var distance = 0.3627647;
var t = tan(this.FOV[29]*PI/360);
var near = distance - radius;
var far = distance + radius;
var hlen = t*near;
var aspect = this.vp[2]/this.vp[3];
var z = this.zoom[29];
if (aspect > 1) 
this.prMatrix.frustum(-hlen*aspect*z, hlen*aspect*z, 
-hlen*z, hlen*z, near, far);
else  
this.prMatrix.frustum(-hlen*z, hlen*z, 
-hlen*z/aspect, hlen*z/aspect, 
near, far);
this.mvMatrix.makeIdentity();
this.mvMatrix.translate( -0.009103652, -0.005462132, 0.07284495 );
this.mvMatrix.scale( 1, 1, 1 );   
this.mvMatrix.multRight( plot_3d2rgl.userMatrix[29] );
this.mvMatrix.translate(-0, -0, -0.3627647);
normMatrix.makeIdentity();
normMatrix.scale( 1, 1, 1 );   
normMatrix.multRight( plot_3d2rgl.userMatrix[29] );
this.prmvMatrix = new CanvasMatrix4( this.mvMatrix );
this.prmvMatrix.multRight( this.prMatrix );
var clipids = this.clipplanes[id];
if (clipids.length > 0) {
this.invMatrix = new CanvasMatrix4(this.mvMatrix);
this.invMatrix.invert();
for (var i = 0; i < this.clipplanes[id].length; i++) 
this.drawFns[clipids[i]].call(this, clipids[i]);
}
var subids = this.opaque[id];
for (var i = 0; i < subids.length; i++) 
this.drawFns[subids[i]].call(this, subids[i], clipids);
subids = this.transparent[id];
if (subids.length > 0) {
gl.depthMask(false);
gl.blendFuncSeparate(gl.SRC_ALPHA, gl.ONE_MINUS_SRC_ALPHA,
gl.ONE, gl.ONE);
gl.enable(gl.BLEND);
for (var i = 0; i < subids.length; i++) 
this.drawFns[subids[i]].call(this, subids[i], clipids);
}
subids = this.subscenes[id];
for (var i = 0; i < subids.length; i++)
this.drawFns[subids[i]].call(this, subids[i]);
}
this.drawScene();
var vpx0 = {
29: 0
};
var vpy0 = {
29: 0
};
var vpWidths = {
29: 504
};
var vpHeights = {
29: 504
};
var activeModel = {
29: 29
};
var activeProjection = {
29: 29
};
plot_3d2rgl.listeners = {
29: [ 29 ]
};
var whichSubscene = function(coords){
if (0 <= coords.x && coords.x <= 504 && 0 <= coords.y && coords.y <= 504) return(29);
return(29);
}
var translateCoords = function(subsceneid, coords){
return {x:coords.x - vpx0[subsceneid], y:coords.y - vpy0[subsceneid]};
}
var vlen = function(v) {
return sqrt(v[0]*v[0] + v[1]*v[1] + v[2]*v[2])
}
var xprod = function(a, b) {
return [a[1]*b[2] - a[2]*b[1],
a[2]*b[0] - a[0]*b[2],
a[0]*b[1] - a[1]*b[0]];
}
var screenToVector = function(x, y) {
var width = vpWidths[activeSubscene];
var height = vpHeights[activeSubscene];
var radius = max(width, height)/2.0;
var cx = width/2.0;
var cy = height/2.0;
var px = (x-cx)/radius;
var py = (y-cy)/radius;
var plen = sqrt(px*px+py*py);
if (plen > 1.e-6) { 
px = px/plen;
py = py/plen;
}
var angle = (SQRT2 - plen)/SQRT2*PI/2;
var z = sin(angle);
var zlen = sqrt(1.0 - z*z);
px = px * zlen;
py = py * zlen;
return [px, py, z];
}
var rotBase;
var trackballdown = function(x,y) {
rotBase = screenToVector(x, y);
var l = plot_3d2rgl.listeners[activeModel[activeSubscene]];
saveMat = new Object();
for (var i = 0; i < l.length; i++) 
saveMat[l[i]] = new CanvasMatrix4(plot_3d2rgl.userMatrix[l[i]]);
}
var trackballmove = function(x,y) {
var rotCurrent = screenToVector(x,y);
var dot = rotBase[0]*rotCurrent[0] + 
rotBase[1]*rotCurrent[1] + 
rotBase[2]*rotCurrent[2];
var angle = acos( dot/vlen(rotBase)/vlen(rotCurrent) )*180./PI;
var axis = xprod(rotBase, rotCurrent);
var l = plot_3d2rgl.listeners[activeModel[activeSubscene]];
for (i = 0; i < l.length; i++) {
plot_3d2rgl.userMatrix[l[i]].load(saveMat[l[i]]);
plot_3d2rgl.userMatrix[l[i]].rotate(angle, axis[0], axis[1], axis[2]);
}
plot_3d2rgl.drawScene();
}
var trackballend = 0;
var y0zoom = 0;
var zoom0 = 0;
var zoomdown = function(x, y) {
y0zoom = y;
zoom0 = new Object();
l = plot_3d2rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
zoom0[l[i]] = log(plot_3d2rgl.zoom[l[i]]);
}
var zoommove = function(x, y) {
l = plot_3d2rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
plot_3d2rgl.zoom[l[i]] = exp(zoom0[l[i]] + (y-y0zoom)/height);
plot_3d2rgl.drawScene();
}
var zoomend = 0;
var y0fov = 0;
var fov0 = 0;
var fovdown = function(x, y) {
y0fov = y;
fov0 = new Object();
l = plot_3d2rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
fov0[l[i]] = plot_3d2rgl.FOV[l[i]];
}
var fovmove = function(x, y) {
l = plot_3d2rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
plot_3d2rgl.FOV[l[i]] = max(1, min(179, fov0[l[i]] + 180*(y-y0fov)/height));
plot_3d2rgl.drawScene();
}
var fovend = 0;
var mousedown = [trackballdown, zoomdown, fovdown];
var mousemove = [trackballmove, zoommove, fovmove];
var mouseend = [trackballend, zoomend, fovend];
function relMouseCoords(event){
var totalOffsetX = 0;
var totalOffsetY = 0;
var currentElement = canvas;
do{
totalOffsetX += currentElement.offsetLeft;
totalOffsetY += currentElement.offsetTop;
currentElement = currentElement.offsetParent;
}
while(currentElement)
var canvasX = event.pageX - totalOffsetX;
var canvasY = event.pageY - totalOffsetY;
return {x:canvasX, y:canvasY}
}
canvas.onmousedown = function ( ev ){
if (!ev.which) // Use w3c defns in preference to MS
switch (ev.button) {
case 0: ev.which = 1; break;
case 1: 
case 4: ev.which = 2; break;
case 2: ev.which = 3;
}
drag = ev.which;
var f = mousedown[drag-1];
if (f) {
var coords = relMouseCoords(ev);
coords.y = height-coords.y;
activeSubscene = whichSubscene(coords);
coords = translateCoords(activeSubscene, coords);
f(coords.x, coords.y); 
ev.preventDefault();
}
}    
canvas.onmouseup = function ( ev ){	
if ( drag == 0 ) return;
var f = mouseend[drag-1];
if (f) 
f();
drag = 0;
}
canvas.onmouseout = canvas.onmouseup;
canvas.onmousemove = function ( ev ){
if ( drag == 0 ) return;
var f = mousemove[drag-1];
if (f) {
var coords = relMouseCoords(ev);
coords.y = height - coords.y;
coords = translateCoords(activeSubscene, coords);
f(coords.x, coords.y);
}
}
var wheelHandler = function(ev) {
var del = 1.1;
if (ev.shiftKey) del = 1.01;
var ds = ((ev.detail || ev.wheelDelta) > 0) ? del : (1 / del);
l = plot_3d2rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
plot_3d2rgl.zoom[l[i]] *= ds;
plot_3d2rgl.drawScene();
ev.preventDefault();
};
canvas.addEventListener("DOMMouseScroll", wheelHandler, false);
canvas.addEventListener("mousewheel", wheelHandler, false);
}
</script>
<canvas id="plot_3d2canvas" class="rglWebGL" width="1" height="1"></canvas> 
<p id="plot_3d2debug">
<img src="plot_3d2snapshot.png" alt="plot_3d2snapshot" width=505/><br>
You must enable Javascript to view this page properly.</p>
<script>plot_3d2rgl.start();</script>

<canvas id="plot_3d3textureCanvas" style="display: none;" width="256" height="256">
<img src="plot_3d3snapshot.png" alt="plot_3d3snapshot" width=505/><br>
Your browser does not support the HTML5 canvas element.</canvas>
<!-- ****** points object 63 ****** -->
<script id="plot_3d3vshader63" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
gl_PointSize = 3.;
vCol = aCol;
}
</script>
<script id="plot_3d3fshader63" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** text object 65 ****** -->
<script id="plot_3d3vshader65" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d3fshader65" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** text object 66 ****** -->
<script id="plot_3d3vshader66" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d3fshader66" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** text object 67 ****** -->
<script id="plot_3d3vshader67" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d3fshader67" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** lines object 70 ****** -->
<script id="plot_3d3vshader70" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d3fshader70" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 71 ****** -->
<script id="plot_3d3vshader71" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d3fshader71" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 72 ****** -->
<script id="plot_3d3vshader72" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d3fshader72" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 73 ****** -->
<script id="plot_3d3vshader73" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d3fshader73" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 74 ****** -->
<script id="plot_3d3vshader74" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d3fshader74" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 75 ****** -->
<script id="plot_3d3vshader75" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d3fshader75" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** spheres object 76 ****** -->
<script id="plot_3d3vshader76" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="plot_3d3fshader76" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 77 ****** -->
<script id="plot_3d3vshader77" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d3fshader77" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 78 ****** -->
<script id="plot_3d3vshader78" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d3fshader78" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** text object 79 ****** -->
<script id="plot_3d3vshader79" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d3fshader79" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** lines object 80 ****** -->
<script id="plot_3d3vshader80" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d3fshader80" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** text object 81 ****** -->
<script id="plot_3d3vshader81" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d3fshader81" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** lines object 82 ****** -->
<script id="plot_3d3vshader82" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d3fshader82" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** text object 83 ****** -->
<script id="plot_3d3vshader83" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d3fshader83" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** lines object 84 ****** -->
<script id="plot_3d3vshader84" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d3fshader84" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<script type="text/javascript">
var plot_3d3rgl = new rglClass();
plot_3d3rgl.start = function() {
var debug = function(msg) {
document.getElementById("plot_3d3debug").innerHTML = msg;
}
debug("");
var canvas = document.getElementById("plot_3d3canvas");
if (!window.WebGLRenderingContext){
debug("<img src=\"plot_3d3snapshot.png\" alt=\"plot_3d3snapshot\" width=505/><br> Your browser does not support WebGL. See <a href=\"http://get.webgl.org\">http://get.webgl.org</a>");
return;
}
try {
// Try to grab the standard context. If it fails, fallback to experimental.
this.gl = canvas.getContext("webgl") 
|| canvas.getContext("experimental-webgl");
}
catch(e) {}
if ( !this.gl ) {
debug("<img src=\"plot_3d3snapshot.png\" alt=\"plot_3d3snapshot\" width=505/><br> Your browser appears to support WebGL, but did not create a WebGL context.  See <a href=\"http://get.webgl.org\">http://get.webgl.org</a>");
return;
}
var gl = this.gl;
var width = 505;  var height = 505;
canvas.width = width;   canvas.height = height;
var normMatrix = new CanvasMatrix4();
var saveMat = new Object();
var distance;
var posLoc = 0;
var colLoc = 1;
var activeSubscene = 57;
this.flags[57] = 1275;
this.zoom[57] = 1;
this.FOV[57] = 60;
this.viewport[57] = [0, 0, 504, 504];
this.userMatrix[57] = new CanvasMatrix4();
this.userMatrix[57].load([
0.8660254, 0, 0.5, 0,
0, 1, 0, 0,
-0.5, 0, 0.8660254, 0,
0, 0, 0, 1
]);
this.clipplanes[57] = [];
this.opaque[57] = [63,65,66,67,70,71,72,73,74,75,77,78,79,80,81,82,83,84];
this.transparent[57] = [76];
this.subscenes[57] = [];
function getPowerOfTwo(value) {
var pow = 1;
while(pow<value) {
pow *= 2;
}
return pow;
}
function handleLoadedTexture(texture, textureCanvas) {
gl.pixelStorei(gl.UNPACK_FLIP_Y_WEBGL, true);
gl.bindTexture(gl.TEXTURE_2D, texture);
gl.texImage2D(gl.TEXTURE_2D, 0, gl.RGBA, gl.RGBA, gl.UNSIGNED_BYTE, textureCanvas);
gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MAG_FILTER, gl.LINEAR);
gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MIN_FILTER, gl.LINEAR_MIPMAP_NEAREST);
gl.generateMipmap(gl.TEXTURE_2D);
gl.bindTexture(gl.TEXTURE_2D, null);
}
function loadImageToTexture(filename, texture) {   
var canvas = document.getElementById("plot_3d3textureCanvas");
var ctx = canvas.getContext("2d");
var image = new Image();
image.onload = function() {
var w = image.width;
var h = image.height;
var canvasX = getPowerOfTwo(w);
var canvasY = getPowerOfTwo(h);
canvas.width = canvasX;
canvas.height = canvasY;
ctx.imageSmoothingEnabled = true;
ctx.drawImage(image, 0, 0, canvasX, canvasY);
handleLoadedTexture(texture, canvas);
plot_3d3rgl.drawScene();
}
image.src = filename;
}  	   
function drawTextToCanvas(text, cex) {
var canvasX, canvasY;
var textX, textY;
var textHeight = 20 * cex;
var textColour = "white";
var fontFamily = "Arial";
var backgroundColour = "rgba(0,0,0,0)";
var canvas = document.getElementById("plot_3d3textureCanvas");
var ctx = canvas.getContext("2d");
ctx.font = textHeight+"px "+fontFamily;
canvasX = 1;
var widths = [];
for (var i = 0; i < text.length; i++)  {
widths[i] = ctx.measureText(text[i]).width;
canvasX = (widths[i] > canvasX) ? widths[i] : canvasX;
}	  
canvasX = getPowerOfTwo(canvasX);
var offset = 2*textHeight; // offset to first baseline
var skip = 2*textHeight;   // skip between baselines	  
canvasY = getPowerOfTwo(offset + text.length*skip);
canvas.width = canvasX;
canvas.height = canvasY;
ctx.fillStyle = backgroundColour;
ctx.fillRect(0, 0, ctx.canvas.width, ctx.canvas.height);
ctx.fillStyle = textColour;
ctx.textAlign = "left";
ctx.textBaseline = "alphabetic";
ctx.font = textHeight+"px "+fontFamily;
for(var i = 0; i < text.length; i++) {
textY = i*skip + offset;
ctx.fillText(text[i], 0,  textY);
}
return {canvasX:canvasX, canvasY:canvasY,
widths:widths, textHeight:textHeight,
offset:offset, skip:skip};
}
// ****** sphere object ******
var sphereBuf = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, sphereBuf);
gl.bufferData(gl.ARRAY_BUFFER, plot_3d1rgl.sphereverts, gl.STATIC_DRAW);
var sphereIbuf = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, sphereIbuf);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, plot_3d1rgl.spherefaces, gl.STATIC_DRAW);
// ****** points object 63 ******
this.flags[63] = 0;
this.prog[63]  = gl.createProgram();
gl.attachShader(this.prog[63], this.getShader( gl, "plot_3d3vshader63" ));
gl.attachShader(this.prog[63], this.getShader( gl, "plot_3d3fshader63" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[63], 0, "aPos");
gl.bindAttribLocation(this.prog[63], 1, "aCol");
gl.linkProgram(this.prog[63]);
this.offsets[63]={vofs:0, cofs:3, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:7};
var v=new Float32Array([
-0.00886681, 0.0238644, 0.0217746, 0, 1, 1, 1,
-0.0124726, 0.0247746, 0.0254585, 0, 1, 1, 1,
-0.0147315, 0.0281533, 0.0238545, 0, 1, 1, 1,
-0.0140497, 0.0274399, 0.00957505, 0, 1, 1, 1,
-0.0116447, 0.0287953, 0.01982, 0, 1, 1, 1,
-0.0135256, 0.0311266, 0.0226846, 0, 1, 1, 1,
-0.0146697, 0.0281732, 0.00270888, 0, 1, 1, 1,
-0.0122709, 0.0273632, 0.00629289, 0, 1, 1, 1,
-0.013305, 0.0293633, 0.00633912, 0, 1, 1, 1,
-0.0122756, 0.0262672, 0.00976935, 0, 1, 1, 1,
-0.011765, 0.0251295, 0.0118895, 0, 1, 1, 1,
-0.0128186, 0.028081, 0.00958605, 0, 1, 1, 1,
-0.0116086, 0.0294887, 0.00805614, 0, 1, 1, 1,
-0.0113447, 0.0307663, 0.00405527, 0, 1, 1, 1,
-0.0148581, 0.0237257, 0.0160082, 0, 1, 1, 1,
-0.010788, 0.0238892, 0.0226584, 0, 1, 1, 1,
-0.0148937, 0.0232955, 0.0101953, 0, 1, 1, 1,
-0.00875168, 0.0261604, 0.0121802, 0, 1, 1, 1,
-0.008739, 0.0261481, 0.0122728, 0, 1, 1, 1,
-0.0108659, 0.0259289, 0.00106272, 0, 1, 1, 1,
-0.0130502, 0.0270812, 0.0183305, 0, 1, 1, 1,
-0.0134347, 0.0270132, 0.0229292, 0, 1, 1, 1,
-0.0118617, 0.0220373, 0.0105775, 0, 1, 1, 1,
-0.0130059, 0.0245835, 0.0192892, 0, 1, 1, 1,
-0.0102875, 0.0258827, 0.0208538, 0, 1, 1, 1,
-0.00910839, 0.0257005, 0.00618984, 0, 1, 1, 1,
-0.0128356, 0.0225055, 0.00960733, 0, 1, 1, 1,
-0.0112344, 0.0276306, 0.0114346, 0, 1, 1, 1,
-0.0106106, 0.0278096, 0.00194201, 0, 1, 1, 1,
-0.0115198, 0.0292207, 0.00294633, 0, 1, 1, 1,
-0.0133883, 0.028673, 0.0164389, 0, 1, 1, 1,
-0.0109423, 0.0290064, 0.0218431, 0, 1, 1, 1,
-0.0148488, 0.0259077, 0.0115755, 0, 1, 1, 1,
-0.0107891, 0.0257524, 0.00616149, 0, 1, 1, 1,
-0.0106291, 0.0269203, 0.0228778, 0, 1, 1, 1,
-0.0161089, 0.0275971, 0.0192198, 0, 1, 1, 1,
-0.0132678, 0.0258366, 0.0163521, 0, 1, 1, 1,
-0.0149124, 0.0251342, 0.00388131, 0, 1, 1, 1,
-0.0114892, 0.0274352, 0.00899298, 0, 1, 1, 1,
-0.0117562, 0.0245922, 0.0136363, 0, 1, 1, 1,
-0.0122278, 0.0271677, 0.0112234, 0, 1, 1, 1,
-0.01029, 0.0277564, 0.0160115, 0, 1, 1, 1,
-0.0121964, 0.0309241, 0.0139494, 0, 1, 1, 1,
-0.0129751, 0.0271331, 0.0260444, 0, 1, 1, 1,
-0.0125756, 0.0265999, 0.0224468, 0, 1, 1, 1,
-0.0127859, 0.027101, 0.0191604, 0, 1, 1, 1,
-0.00998233, 0.0253795, 0.00685042, 0, 1, 1, 1,
-0.0133536, 0.028689, 0.0051763, 0, 1, 1, 1,
-0.0117333, 0.0277402, 0.00381405, 0, 1, 1, 1,
-0.0147853, 0.0295933, 0.00968847, 0, 1, 1, 1,
-0.0109685, 0.0223538, 0.0143111, 0, 1, 1, 1,
-0.0096918, 0.0249463, 0.00704751, 0, 1, 1, 1,
-0.0155493, 0.0266224, 0.00516269, 0, 1, 1, 1,
-0.014836, 0.0276024, 0.0116228, 0, 1, 1, 1,
-0.00828352, 0.0252156, 0.0187242, 0, 1, 1, 1,
-0.0110414, 0.0293172, 0.00362714, 0, 1, 1, 1,
-0.0102891, 0.0257019, 0.00540398, 0, 1, 1, 1,
-0.0104394, 0.0259701, 0.00329733, 0, 1, 1, 1,
-0.00930721, 0.0261215, 0.00409051, 0, 1, 1, 1,
-0.0124193, 0.0257317, 0.0162523, 0, 1, 1, 1,
-0.0114044, 0.025375, 0.00361722, 0, 1, 1, 1,
-0.0112687, 0.0271153, 0.00987548, 0, 1, 1, 1,
-0.0135369, 0.0198464, 0.0192111, 0, 1, 1, 1,
-0.0134307, 0.0240167, 0.00338929, 0, 1, 1, 1,
-0.00581692, -0.000934194, -0.00182728, 0, 1, 1, 1,
-0.00992799, 0.0281201, 0.00421423, 0, 1, 1, 1,
-0.0163484, 0.0253598, 0.00679276, 0, 1, 1, 1,
-0.0153143, 0.0239155, 0.00922948, 0, 1, 1, 1,
-0.0130066, 0.0264895, 0.0219972, 0, 1, 1, 1,
-0.0123188, 0.0270323, 0.0130162, 0, 1, 1, 1,
-0.0149538, 0.0261319, 0.0246082, 0, 1, 1, 1,
-0.00848068, 0.0244795, 0.0126147, 0, 1, 1, 1,
-0.009655, 0.026754, 0.0151766, 0, 1, 1, 1,
-0.0110317, 0.0247415, 0.0169718, 0, 1, 1, 1,
-0.0105467, 0.0216758, 0.0273625, 0, 1, 1, 1,
-0.0111351, 0.0298442, 0.0137315, 0, 1, 1, 1,
-0.0148939, 0.0282641, 0.0180507, 0, 1, 1, 1,
-0.0133113, 0.0255374, 0.0156552, 0, 1, 1, 1,
-0.0152238, 0.0253733, 0.0118128, 0, 1, 1, 1,
-0.0165117, 0.0254165, 0.0210366, 0, 1, 1, 1,
-0.0172562, 0.026341, 0.0224113, 0, 1, 1, 1,
-0.0138025, 0.0277873, 0.00395365, 0, 1, 1, 1,
-0.0135819, 0.0270152, 0.00695362, 0, 1, 1, 1,
-0.0116353, 0.0256155, 0.000289371, 0, 1, 1, 1,
-0.0149184, 0.0238256, -0.00270158, 0, 1, 1, 1,
-0.0114351, 0.0271658, 0.0125575, 0, 1, 1, 1,
-0.01436, 0.0264762, 0.0173609, 0, 1, 1, 1,
-0.0128438, 0.0268224, 0.00444834, 0, 1, 1, 1,
-0.0120046, 0.0230234, 0.00796341, 0, 1, 1, 1,
-0.0126985, 0.0258126, 0.00514686, 0, 1, 1, 1,
-0.0135831, 0.0249755, 0.0107284, 0, 1, 1, 1,
-0.0121259, 0.0280823, 0.020544, 0, 1, 1, 1,
-0.0141439, 0.0265254, 0.0258433, 0, 1, 1, 1,
-0.0138132, 0.0284247, 0.0101188, 0, 1, 1, 1,
-0.013572, 0.0269507, 0.00688972, 0, 1, 1, 1,
-0.0113011, 0.0268327, 0.0184482, 0, 1, 1, 1,
-0.0100601, 0.0264789, 0.0212786, 0, 1, 1, 1,
-0.0113299, 0.0282418, 0.00866489, 0, 1, 1, 1,
-0.0114925, 0.0272719, 0.0170049, 0, 1, 1, 1,
-0.0104039, 0.0283855, 0.0100799, 0, 1, 1, 1,
-0.00956386, 0.0268284, 0.0101297, 0, 1, 1, 1,
-0.0121363, 0.0224437, 0.00471969, 0, 1, 1, 1,
-0.0129748, 0.0260496, 0.0176977, 0, 1, 1, 1,
-0.0128936, 0.0280627, 0.00938281, 0, 1, 1, 1,
-0.0114891, 0.0247891, 0.0130035, 0, 1, 1, 1,
-0.00577137, 0.0112307, -0.0490284, 0, 1, 1, 1,
-0.0102643, 0.0267855, 0.0104728, 0, 1, 1, 1,
-0.0123468, 0.0265473, 0.016931, 0, 1, 1, 1,
-0.0097784, 0.0252052, 0.00928465, 0, 1, 1, 1,
-0.0117949, 0.0233834, 0.0122081, 0, 1, 1, 1,
-0.0128608, 0.0249954, 0.0176076, 0, 1, 1, 1,
-0.0129981, 0.0257737, 0.0155265, 0, 1, 1, 1,
-0.0134316, 0.02653, 0.00353212, 0, 1, 1, 1,
-0.00935833, 0.0318374, 0.0100076, 0, 1, 1, 1,
-0.0113107, 0.0303198, 0.0116077, 0, 1, 1, 1,
-0.0131245, 0.0298223, 0.00180678, 0, 1, 1, 1,
-0.0133191, 0.0293408, 0.00662741, 0, 1, 1, 1,
-0.0138591, 0.0261048, 0.000836834, 0, 1, 1, 1,
-0.0150174, 0.0231497, -0.00112857, 0, 1, 1, 1,
-0.0110389, 0.0248572, 0.00176283, 0, 1, 1, 1,
-0.0118715, 0.0275812, 0.0178639, 0, 1, 1, 1,
-0.0129834, 0.0259341, 0.0186928, 0, 1, 1, 1,
-0.010557, 0.0273327, 0.00990001, 0, 1, 1, 1,
-0.0111681, 0.0273472, 0.00617783, 0, 1, 1, 1,
-0.0101689, 0.0280639, 0.00864267, 0, 1, 1, 1,
-0.00927365, 0.0255201, 0.0130722, 0, 1, 1, 1,
-0.010756, 0.0260178, 0.0154469, 0, 1, 1, 1,
-0.0122762, 0.0266211, 0.00832697, 0, 1, 1, 1,
-0.0132575, 0.0299597, 0.014467, 0, 1, 1, 1,
-0.0114548, 0.0255468, 0.0189329, 0, 1, 1, 1,
-0.00934806, 0.0252484, 0.00733987, 0, 1, 1, 1,
-0.0142405, 0.0279119, 0.0149429, 0, 1, 1, 1,
-0.0133535, 0.0262824, 0.00311826, 0, 1, 1, 1,
-0.0135127, 0.0255778, -0.0113687, 0, 1, 1, 1,
-0.0121261, 0.0260542, 0.0169802, 0, 1, 1, 1,
-0.0133854, 0.0276628, 0.00624653, 0, 1, 1, 1,
-0.0129197, 0.0294731, 0.0139965, 0, 1, 1, 1,
-0.010358, 0.0239915, 0.0158709, 0, 1, 1, 1,
-0.0116095, 0.0243185, 0.0147471, 0, 1, 1, 1,
-0.0114546, 0.0261468, 0.0128631, 0, 1, 1, 1,
-0.0123456, 0.0285583, 0.00628408, 0, 0, 1, 1,
-0.0117925, 0.0253189, 0.0229664, 0, 0, 1, 1,
-0.0111225, 0.0262298, 0.0113142, 0, 0, 1, 1,
-0.010842, 0.0316673, 0.00262647, 0, 0, 1, 1,
-0.011003, 0.0292021, 0.00452867, 0, 0, 1, 1,
-0.0126318, 0.0264219, 0.022668, 0, 0, 1, 1,
-0.0110824, 0.0288873, 0.0175002, 0, 0, 1, 1,
-0.0137003, 0.029149, 0.00303409, 0, 0, 1, 1,
-0.0145364, 0.0258709, 0.00658553, 0, 0, 1, 1,
-0.00964667, 0.0252294, 0.00449265, 0, 0, 1, 1,
-0.0111937, 0.0281303, 0.0123027, 0, 0, 1, 1,
-0.0133546, 0.0244159, 0.0072153, 0, 0, 1, 1,
-0.0107568, 0.0287884, 0.0102288, 0, 0, 1, 1,
-0.0107723, 0.029073, 0.0209563, 0, 0, 1, 1,
-0.0137524, 0.0242893, 0.0140332, 0, 0, 1, 1,
-0.0135108, 0.0276608, 0.0147682, 0, 0, 1, 1,
-0.0113502, 0.0290479, 0.0100188, 0, 0, 1, 1,
-0.0140521, 0.0284237, 0.0121027, 0, 0, 1, 1,
-0.0133882, 0.0246725, 0.0109641, 0, 0, 1, 1,
-0.00934879, 0.0254398, 0.0251435, 0, 0, 1, 1,
-0.00814159, 0.02766, 0.0161029, 0, 0, 1, 1,
-0.0124137, 0.0259852, 0.0218082, 0, 0, 1, 1,
-0.0116249, 0.0263818, 0.000654635, 0, 0, 1, 1,
-0.0101555, 0.0250924, 0.0130751, 0, 0, 1, 1,
-0.0111079, 0.0274088, 0.0107658, 0, 0, 1, 1,
-0.00997544, 0.0294545, 0.011948, 0, 0, 1, 1,
-0.0107696, 0.0283827, 0.0114661, 0, 0, 1, 1,
-0.011611, 0.0281942, 0.0162057, 0, 0, 1, 1,
-0.0130192, 0.0279643, 0.0149605, 0, 0, 1, 1,
-0.0117091, 0.0281119, 0.0134414, 0, 0, 1, 1,
-0.00799466, 0.0300204, 0.00767195, 0, 0, 1, 1,
-0.0081185, 0.0264686, 0.0116146, 0, 0, 1, 1,
-0.0118704, 0.0273652, 0.0176032, 0, 0, 1, 1,
-0.0114452, 0.0290366, 0.0107144, 0, 0, 1, 1,
-0.0138727, 0.0237636, 0.00785003, 0, 0, 1, 1,
-0.011103, 0.0269406, 0.00734299, 0, 0, 1, 1,
-0.0109101, 0.0252827, 0.0169859, 0, 0, 1, 1,
-0.0127791, 0.0272729, 0.0143903, 0, 0, 1, 1,
-0.0108161, 0.0266715, 0.0169653, 0, 0, 1, 1,
-0.00959507, 0.0230123, 0.013315, 0, 0, 1, 1,
-0.0112786, 0.0285827, 0.0123404, 0, 0, 1, 1,
-0.013363, 0.0283886, 0.0184319, 0, 0, 1, 1,
-0.0101642, 0.0270854, -0.00282684, 0, 0, 1, 1,
-0.0110129, 0.0273035, 0.0163956, 0, 0, 1, 1,
-0.0105986, 0.0252297, 0.0141097, 0, 0, 1, 1,
-0.0172698, 0.0292374, 0.0143851, 0, 0, 1, 1,
-0.0102307, 0.0286338, 0.00902648, 0, 0, 1, 1,
-0.0123649, 0.0259511, 0.0156091, 0, 0, 1, 1,
-0.010754, 0.0290541, 0.00828693, 0, 0, 1, 1,
-0.0134661, 0.0262762, 0.00974057, 0, 0, 1, 1,
-0.0107807, 0.0282124, 0.0121875, 0, 0, 1, 1,
-0.0127756, 0.0283086, 0.0238306, 0, 0, 1, 1,
-0.0118563, 0.0237655, 0.00566439, 0, 0, 1, 1,
-0.0107849, 0.0297388, 0.00567507, 0, 0, 1, 1,
-0.0117523, 0.0273594, 0.0215876, 0, 0, 1, 1,
-0.0116881, 0.0218703, 0.0105175, 0, 0, 1, 1,
-0.0129286, 0.0207332, 0.00644358, 0, 0, 1, 1,
-0.013719, 0.0291585, 0.00655579, 0, 0, 1, 1,
-0.0135172, 0.0259411, 0.0053278, 0, 0, 1, 1,
-0.0120476, 0.0166544, 0.00572823, 0, 0, 1, 1,
-0.0137358, 0.02196, 0.0243654, 0, 0, 1, 1,
-0.0171736, 0.0204457, -0.000488194, 0, 0, 1, 1,
-0.0126523, 0.0223724, 0.0179309, 0, 0, 1, 1,
-0.0156941, 0.0264025, -0.000676673, 0, 0, 1, 1,
-0.0150322, 0.0213523, 0.00899962, 0, 0, 1, 1,
-0.0137382, 0.0207818, 0.00312067, 0, 0, 1, 1,
-0.0117617, 0.0238395, 0.00826143, 0, 0, 1, 1,
-0.0136822, 0.0232097, 0.013168, 0, 0, 1, 1,
-0.0103771, 0.0248488, 0.0100654, 0, 0, 1, 1,
-0.0118399, 0.0226848, 0.027003, 0, 0, 1, 1,
-0.0123068, 0.0219538, -0.000466468, 0, 0, 1, 1,
-0.0116785, 0.0309281, 0.00863269, 0, 0, 1, 1,
-0.0102603, 0.0261693, 0.00966214, 0, 0, 1, 1,
-0.0115228, 0.024125, 0.00985874, 0, 0, 1, 1,
-0.011637, 0.0297508, 0.0108957, 0, 0, 1, 1,
-0.00911545, 0.0295601, 0.00771114, 0, 0, 1, 1,
-0.0120582, 0.0284058, -0.00147242, 0, 0, 1, 1,
-0.0131449, 0.0253438, 0.0145489, 0, 0, 1, 1,
-0.0139409, 0.0270412, 0.0116015, 0, 0, 1, 1,
-0.0115097, 0.0281264, 0.0150466, 0, 0, 1, 1,
-0.0104537, 0.0313729, 0.017718, 0, 0, 1, 1,
-0.01003, 0.0253202, 0.017903, 0, 0, 1, 1,
-0.0116143, 0.0283412, 0.0129812, 0, 0, 1, 1,
-0.0131945, 0.0291524, 0.00509658, 0, 0, 1, 1,
-0.010053, 0.0271655, 0.0143403, 0, 0, 1, 1,
-0.00915117, 0.0241514, 0.0124749, 0, 0, 1, 1,
-0.00756656, 0.0262734, 0.00467394, 0, 0, 1, 1,
-0.0106447, 0.0248234, 0.0132472, 0, 0, 1, 1,
-0.0131976, 0.0254255, 0.00522041, 0, 0, 1, 1,
-0.0139171, 0.0280579, 0.0119584, 0, 0, 1, 1,
-0.0130388, 0.0267563, -0.000893618, 0, 0, 1, 1,
-0.0113769, 0.0296269, 0.0288852, 0, 0, 1, 1,
-0.0101904, 0.0258474, 0.0037858, 0, 0, 1, 1,
-0.0109709, 0.0280555, 0.0177659, 0, 0, 1, 1,
-0.012875, 0.0275396, 0.0172013, 0, 0, 1, 1,
-0.00913852, 0.0262472, 0.0179264, 0, 0, 1, 1,
-0.0113798, 0.0246484, 0.00395389, 0, 0, 1, 1,
-0.0110402, 0.0270359, 0.017079, 0, 0, 1, 1,
-0.0119093, 0.0273195, 0.00695805, 0, 0, 1, 1,
-0.0142024, 0.0274331, 0.0115534, 0, 0, 1, 1,
-0.0117034, 0.0268889, 0.0180925, 0, 0, 1, 1,
-0.0103303, 0.0259325, 0.00457057, 0, 0, 1, 1,
-0.0141989, 0.0257875, 0.0105864, 0, 0, 1, 1,
-0.0117826, 0.0286291, 0.0166398, 0, 0, 1, 1,
-0.0142497, 0.0243231, 0.00801615, 0, 0, 1, 1,
-0.0139552, 0.0239337, 0.0137122, 0, 0, 1, 1,
-0.0136743, 0.0242532, 0.00341549, 0, 0, 1, 1,
-0.0113042, 0.0235413, 0.00977782, 0, 0, 1, 1,
-0.0154653, 0.0235517, 0.0117982, 0, 0, 1, 1,
-0.0165242, 0.0237881, 0.018162, 0, 0, 1, 1,
-0.0115394, 0.0185159, 0.0147025, 0, 0, 1, 1,
-0.0129897, 0.0202159, 0.00928637, 0, 0, 1, 1,
-0.0134737, 0.0223773, 0.0078958, 0, 0, 1, 1,
-0.0106927, 0.0240148, 0.0107681, 0, 0, 1, 1,
-0.00957613, 0.0245013, -0.00265688, 0, 0, 1, 1,
-0.0144325, 0.0214823, 0.0153915, 0, 0, 1, 1,
-0.011182, 0.0213535, 0.0165707, 0, 0, 1, 1,
-0.0160512, 0.0212972, 0.00828121, 0, 0, 1, 1,
-0.0127985, 0.0240445, 0.000725888, 0, 0, 1, 1,
-0.0119454, 0.0224038, 0.0128598, 0, 0, 1, 1,
-0.0136061, 0.0210214, 0.00988697, 0, 0, 1, 1,
-0.0145131, 0.0210188, 0.000633065, 0, 0, 1, 1,
-0.0137346, 0.0234757, 0.0108352, 0, 0, 1, 1,
-0.0135633, 0.0245155, 0.00819555, 0, 0, 1, 1,
-0.0104922, 0.0241871, 0.0156222, 0, 0, 1, 1,
-0.0134902, 0.0247944, -0.00430758, 0, 0, 1, 1,
-0.0145296, 0.0236375, 0.00979734, 0, 0, 1, 1,
-0.0138629, 0.025616, 0.0124037, 0, 0, 1, 1,
-0.0143111, 0.0195784, 0.00154331, 0, 0, 1, 1,
-0.0123259, 0.0226787, 0.0200938, 0, 0, 1, 1,
-0.0135332, 0.0210848, 0.0113033, 0, 0, 1, 1,
-0.0138219, 0.0236944, 0.0096544, 0, 0, 1, 1,
-0.0145693, 0.0197255, 0.00578477, 0, 0, 1, 1,
-0.0133557, 0.0233927, 0.0162397, 0, 0, 1, 1,
-0.0126798, 0.0216866, 0.0104805, 0, 0, 1, 1,
-0.0145758, 0.022478, 0.0114166, 0, 0, 1, 1,
-0.00980388, 0.020673, 0.0109155, 0, 0, 1, 1,
-0.00989465, 0.0275465, 0.0145505, 0, 0, 1, 1,
-0.0129017, 0.0235914, 0.0152216, 0, 0, 1, 1,
-0.0120715, 0.025734, 0.0191858, 0, 0, 1, 1,
-0.00993314, 0.0219645, 0.00870267, 0, 0, 1, 1,
-0.0144075, 0.0234614, 0.023235, 0, 0, 1, 1,
-0.0142202, 0.0268766, 0.0152755, 0, 0, 1, 1,
-0.0129626, 0.023574, 0.00601518, 0, 0, 1, 1,
-0.0131421, 0.0211668, 0.0217402, 0, 0, 1, 1,
-0.0152594, 0.0196937, -0.00193413, 0, 0, 1, 1,
-0.0147942, 0.0210297, 0.00609799, 0, 0, 1, 1,
-0.0105986, 0.0234168, 0.0102144, 0, 0, 1, 1,
-0.0132185, 0.019576, 0.0040235, 0, 0, 1, 1,
-0.0118088, 0.0232633, 0.00816838, 0, 0, 1, 1,
-0.0152803, 0.020936, 0.00739438, 0, 0, 1, 1,
-0.012553, 0.0194701, 0.0118699, 0, 0, 1, 1,
-0.0112282, 0.026829, 0.0187078, 0, 0, 1, 1,
-0.0137843, 0.0238832, 0.00750988, 0, 0, 1, 1,
-0.0136395, 0.0211789, 0.0162951, 0, 0, 1, 1,
-0.011906, 0.0236646, 0.0212473, 0, 0, 1, 1,
-0.0113808, 0.0240892, 0.00879046, 0, 0, 1, 1,
-0.0104013, 0.0250219, 0.00360141, 0, 0, 1, 1,
-0.015148, 0.0235485, 0.0149889, 0, 0, 1, 1,
-0.0134383, 0.0246615, 0.00899002, 0, 0, 1, 1,
-0.0120465, 0.0217984, 0.00884514, 0, 0, 1, 1,
-0.0149625, 0.0247689, 0.0173242, 0, 0, 1, 1,
-0.01799, 0.0269095, 0.000534468, 0, 0, 1, 1,
-0.0146238, 0.0229473, 0.00369307, 0, 0, 1, 1,
-0.0129095, 0.0256003, 0.00587418, 0, 0, 1, 1,
-0.0139598, 0.0214938, 0.00569978, 0, 0, 1, 1,
-0.0127245, 0.0182578, 0.00888825, 0, 0, 1, 1,
-0.0122696, 0.0222292, 0.0173431, 0, 0, 1, 1,
-0.0135996, 0.0226041, 0.0125327, 0, 0, 1, 1,
-0.0112277, 0.0259577, 0.0124669, 0, 0, 1, 1,
-0.0162406, 0.0207383, 0.00822197, 0, 0, 1, 1,
-0.0164621, 0.0256774, 0.00515605, 0, 0, 1, 1,
-0.0131916, 0.0223769, 0.00730401, 0, 0, 1, 1,
-0.0115478, 0.0214912, 0.0119866, 0, 0, 1, 1,
-0.0147473, 0.0256742, 0.008772, 0, 0, 1, 1,
-0.0116873, 0.0242674, 0.00475976, 0, 0, 1, 1,
-0.011117, 0.028515, 0.00157371, 0, 0, 1, 1,
-0.012997, 0.0250226, 0.00972486, 0, 0, 1, 1,
-0.016551, 0.0191626, 0.0156221, 0, 0, 1, 1,
-0.0142064, 0.022434, 0.0142188, 0, 0, 1, 1,
-0.0121835, 0.0199018, 0.0170425, 0, 0, 1, 1,
-0.0228269, -0.0475654, 0.00907309, 0, 0.8039216, 0, 1,
-0.0228553, -0.0488415, 0.0137005, 0, 0.8039216, 0, 1,
-0.0222122, -0.0457324, 0.012512, 0, 0.8039216, 0, 1,
-0.0247551, -0.0460549, 0.00507055, 0, 0.8039216, 0, 1,
-0.02469, -0.046895, 0.0163472, 0, 0.8039216, 0, 1,
-0.021029, -0.046606, 0.0135468, 0, 0.8039216, 0, 1,
-0.0218419, -0.0447786, 0.00498552, 0, 0.8039216, 0, 1,
-0.0195952, -0.0458457, 0.0214694, 0, 0.8039216, 0, 1,
-0.0230239, -0.0471733, 0.00814306, 0, 0.8039216, 0, 1,
-0.0218452, -0.0440416, 0.0113722, 0, 0.8039216, 0, 1,
-0.0201676, -0.0462737, 0.00447752, 0, 0.8039216, 0, 1,
-0.0227843, -0.0478824, 0.0085774, 0, 0.8039216, 0, 1,
-0.0197834, -0.0458426, 0.0184392, 0, 0.8039216, 0, 1,
-0.0207643, -0.0430267, 0.00884501, 0, 0.8039216, 0, 1,
-0.0206854, -0.0472078, 0.0154503, 0, 0.8039216, 0, 1,
-0.0251057, -0.0430754, 0.0208066, 0, 0.8039216, 0, 1,
-0.0195262, -0.0461964, 0.0086836, 0, 0.8039216, 0, 1,
-0.0197042, -0.0462707, 0.00125627, 0, 0.8039216, 0, 1,
-0.0203137, -0.0461741, 0.0147652, 0, 0.8039216, 0, 1,
-0.0224587, -0.0433645, 0.0142032, 0, 0.8039216, 0, 1,
-0.0214331, -0.0465056, 0.0153838, 0, 0.8039216, 0, 1,
-0.0200086, -0.044871, 0.0124984, 0, 0.8039216, 0, 1,
-0.0226511, -0.0441368, 0.0149426, 0, 0.8039216, 0, 1,
-0.0216865, -0.0465115, 0.00528324, 0, 0.8039216, 0, 1,
-0.0203666, -0.0453889, 0.0136757, 0, 0.8039216, 0, 1,
-0.0202521, -0.04288, 0.0117181, 0, 0.8039216, 0, 1,
-0.0215928, -0.0474487, 0.00474726, 0, 0.8039216, 0, 1,
-0.0217943, -0.0458128, 0.0146455, 0, 0.8039216, 0, 1,
-0.0201348, -0.0502583, 0.00825623, 0, 0.8039216, 0, 1,
-0.0206457, -0.0438358, 0.0188701, 0, 0.8039216, 0, 1,
-0.0211507, -0.0498435, 0.0258304, 0, 0.8039216, 0, 1,
-0.0226475, -0.0481702, 0.0193757, 0, 0.8039216, 0, 1,
-0.0244167, -0.0485593, 0.0124118, 0, 0.8039216, 0, 1,
-0.0227296, -0.0482857, 0.0189768, 0, 0.8039216, 0, 1,
-0.0218232, -0.0444051, 0.0105841, 0, 0.8039216, 0, 1,
-0.0215404, -0.0446985, 0.0112267, 0, 0.8039216, 0, 1,
-0.0211552, -0.0460471, 0.0119572, 0, 0.8039216, 0, 1,
-0.0216532, -0.0482607, 0.00964503, 0, 0.8039216, 0, 1,
-0.0246026, -0.0445038, 0.00968899, 0, 0.8039216, 0, 1,
-0.0196496, -0.046784, 0.0200917, 0, 0.8039216, 0, 1,
-0.0208572, -0.0487035, 0.0114415, 0, 0.8039216, 0, 1,
-0.0206629, -0.048254, 0.0162294, 0, 0.8039216, 0, 1,
-0.0214662, -0.0464055, 0.00799757, 0, 0.8039216, 0, 1,
-0.0174488, -0.0467871, 0.00752603, 0, 0.8039216, 0, 1,
-0.00795485, 0.00812255, -0.0498788, 1, 0, 0, 1,
-0.00790179, 0.022487, -0.00377724, 1, 0, 0, 1,
-0.0219649, -0.0475438, 0.0180097, 0, 0.8039216, 0, 1,
-0.0195713, -0.048466, 0.0105929, 0, 0.8039216, 0, 1,
-0.024775, -0.0441433, 0.0175566, 0, 0.8039216, 0, 1,
-0.0197837, -0.048666, 0.0123438, 0, 0.8039216, 0, 1,
-0.0214265, -0.0485158, 0.00988444, 0, 0.8039216, 0, 1,
-0.0200393, -0.0432384, 0.00318714, 0, 0.8039216, 0, 1,
-0.0209152, -0.0473638, 0.0107885, 0, 0.8039216, 0, 1,
-0.0229248, -0.0476456, 0.0154964, 0, 0.8039216, 0, 1,
-0.0209049, -0.0451975, 0.0116402, 0, 0.8039216, 0, 1,
-0.0221954, -0.0479599, 0.00898107, 0, 0.8039216, 0, 1,
-0.0201608, -0.0485583, 0.0130871, 0, 0.8039216, 0, 1,
-0.0215961, -0.0487806, 0.017531, 0, 0.8039216, 0, 1,
-0.019295, -0.0451161, 0.0111203, 0, 0.8039216, 0, 1,
-0.0188937, -0.0440494, 0.0184203, 0, 0.8039216, 0, 1,
-0.0193894, -0.0436929, 0.0147046, 0, 0.8039216, 0, 1,
-0.0204134, -0.0432386, 0.0117079, 0, 0.8039216, 0, 1,
-0.0209705, -0.0481781, 0.016546, 0, 0.8039216, 0, 1,
-0.0190802, -0.0465624, 0.00427869, 0, 0.8039216, 0, 1,
-0.0205383, -0.0482517, 0.0135549, 0, 0.8039216, 0, 1,
-0.0247985, -0.0479872, 0.00635899, 0, 0.8039216, 0, 1,
-0.0237976, -0.0468474, 0.0123341, 0, 0.8039216, 0, 1,
-0.0211247, -0.0447158, 0.00910297, 0, 0.8039216, 0, 1,
-0.023983, -0.0469959, 0.015858, 0, 0.8039216, 0, 1,
-0.0220285, -0.0468321, 0.0125847, 0, 0.8039216, 0, 1,
-0.022514, -0.0462394, 0.0074289, 0, 0.8039216, 0, 1,
-0.0225103, -0.0441683, 0.0244713, 0, 0.8039216, 0, 1,
-0.0198123, -0.0436045, 0.0123578, 0, 0.8039216, 0, 1,
-0.0201426, -0.044296, 0.0171682, 0, 0.8039216, 0, 1,
-0.0213056, -0.0442843, -0.00302645, 0, 0.8039216, 0, 1,
-0.0196703, -0.0476107, 0.015761, 0, 0.8039216, 0, 1,
-0.02276, -0.0451804, 0.0260088, 0, 0.8039216, 0, 1,
-0.0243454, -0.0477497, 0.0186077, 0, 0.8039216, 0, 1,
-0.00415007, 0.0152267, -0.0201872, 1, 0, 0, 1,
0.00722696, 0.0149141, 0.00166637, 1, 0, 0, 1,
-0.00499204, 0.00775787, -0.041528, 1, 0, 0, 1,
-0.001841, 0.00643312, -0.0448911, 1, 0, 0, 1,
-0.0238504, -0.0420786, 0.0167263, 0, 0.8039216, 0, 1,
-0.021683, -0.0474585, 0.011902, 0, 0.8039216, 0, 1,
-0.0215727, -0.044023, 0.0231612, 0, 0.8039216, 0, 1,
-0.0246791, -0.0437182, 0.0106413, 0, 0.8039216, 0, 1,
-0.0199913, -0.0427926, 0.01477, 0, 0.8039216, 0, 1,
-0.0207957, -0.0456033, 0.0186144, 0, 0.8039216, 0, 1,
-0.0218088, -0.0480775, 0.00958459, 0, 0.8039216, 0, 1,
-0.0220589, -0.0474776, 0.0116932, 0, 0.8039216, 0, 1,
-0.0221075, -0.0439485, 0.0137618, 0, 0.8039216, 0, 1,
-0.0186216, -0.0472467, 0.0179583, 0, 0.8039216, 0, 1,
-0.0220028, -0.0411969, 0.00902925, 0, 0.8039216, 0, 1,
-0.0177109, -0.0446931, 0.00978712, 0, 0.8039216, 0, 1,
-0.0226301, -0.0453304, 0.0149734, 0, 0.8039216, 0, 1,
-0.0192413, -0.0434504, 0.0265313, 0, 0.8039216, 0, 1,
-0.0213995, -0.0455914, 0.0236959, 0, 0.8039216, 0, 1,
-0.0231323, -0.0450802, 0.00225958, 0, 0.8039216, 0, 1,
-0.0226076, -0.0470682, 0.00750212, 0, 0.8039216, 0, 1,
-0.0211502, -0.0445104, 0.020368, 0, 0.8039216, 0, 1,
-0.0219155, -0.0462141, 0.0187958, 0, 0.8039216, 0, 1,
-0.0211568, -0.0471418, 0.0193367, 0, 0.8039216, 0, 1,
-0.0195172, -0.0437941, 0.0149742, 0, 0.8039216, 0, 1,
-0.0193142, -0.0452652, 0.0153511, 0, 0.8039216, 0, 1,
-0.0220431, -0.043637, 0.0107631, 0, 0.8039216, 0, 1,
-0.0226273, -0.045704, 0.0226994, 0, 0.8039216, 0, 1,
-0.0125134, 0.0160733, -0.0187445, 1, 0, 0, 1,
-0.00815361, 0.0152704, -0.0251956, 1, 0, 0, 1,
-0.00369676, 0.0187153, -0.0087253, 1, 0, 0, 1,
-0.00499599, 0.0142422, -0.0176737, 1, 0, 0, 1,
-0.00703697, 0.0234329, 0.00445764, 1, 0, 0, 1,
-0.00743565, 0.0117182, -0.0526328, 1, 0, 0, 1,
-0.0103198, 0.0197327, -0.00752555, 1, 0, 0, 1,
-0.00219664, 0.0189244, -0.0169659, 1, 0, 0, 1,
0.00107987, 0.0175363, -0.0288034, 1, 0, 0, 1,
0.0118171, 0.00921071, -0.0294031, 1, 0, 0, 1,
0.00407748, 0.0138401, -0.00154257, 1, 0, 0, 1,
-0.0090259, 0.0219026, -0.0174049, 1, 0, 0, 1,
-0.00259501, 0.0121949, -0.0357062, 1, 0, 0, 1,
0.000414678, 0.0189859, -0.0242961, 1, 0, 0, 1,
-0.00425692, 0.0213539, -0.0185576, 1, 0, 0, 1,
0.00528004, 0.0124796, -0.0315785, 1, 0, 0, 1,
-0.00377719, 0.0155882, -0.0214545, 1, 0, 0, 1,
-0.0101706, 0.0134759, -0.0217364, 1, 0, 0, 1,
-0.00280112, 0.0193844, -0.010868, 1, 0, 0, 1,
-0.0109744, 0.0176909, -0.0208527, 1, 0, 0, 1,
-0.00192708, 0.0125267, -0.0335617, 1, 0, 0, 1,
0.0015079, 0.0131907, -0.0283962, 1, 0, 0, 1,
-0.00609305, 0.0180503, -0.0239939, 1, 0, 0, 1,
-0.00926598, 0.0170506, -0.0120606, 1, 0, 0, 1,
-0.00251447, 0.0138641, -0.0269598, 1, 0, 0, 1,
0.00649685, 0.0177502, 7.03697e-05, 1, 0, 0, 1,
-0.00204832, 0.0191023, -0.0286585, 1, 0, 0, 1,
-0.000779358, 0.0155071, -0.0289354, 1, 0, 0, 1,
0.00104868, 0.0132606, -0.0306608, 1, 0, 0, 1,
-0.0033441, 0.0139588, -0.0396869, 1, 0, 0, 1,
-0.00308374, 0.0150683, -0.00627947, 1, 0, 0, 1,
0.00130953, 0.018247, 0.0017934, 1, 0, 0, 1,
0.0110746, 0.0132532, 0.00308229, 1, 0, 0, 1,
0.0376002, -0.00232169, -0.011391, 1, 0, 0, 1,
-0.00901396, 0.0219978, -0.0056065, 1, 0, 0, 1,
-0.0142024, 0.0128954, -0.0419118, 1, 0, 0, 1,
-0.00076747, -0.00263272, -0.0788129, 1, 0, 0, 1,
1.12434e-05, 0.0153257, -0.00481447, 1, 0, 0, 1,
-0.0108145, 0.0192073, -0.0106254, 1, 0, 0, 1,
-0.00424299, 0.0145319, -0.034137, 1, 0, 0, 1,
-0.0120438, 0.017742, -0.027269, 1, 0, 0, 1,
-0.0131151, 0.00897117, -0.0791053, 1, 0, 0, 1,
-0.00582257, 0.0181326, -0.022766, 1, 0, 0, 1,
-0.0118271, 0.00881032, -0.0481503, 1, 0, 0, 1,
-0.0163395, -0.000727704, -0.0804766, 1, 0, 0, 1,
0.00418304, 0.0115717, -0.0134308, 1, 0, 0, 1,
-0.00516328, 0.01625, -0.0156506, 1, 0, 0, 1,
-0.000433563, 0.0144896, -0.0179018, 1, 0, 0, 1,
-0.00128632, 0.0131526, -0.0217634, 1, 0, 0, 1,
-0.00580215, 0.0233271, 0.00579969, 1, 0, 0, 1,
-0.0105629, 0.0121982, -0.0325397, 1, 0, 0, 1,
-0.0070833, 0.0157445, -0.00707511, 1, 0, 0, 1,
-0.0018993, 0.0182465, -0.0231356, 1, 0, 0, 1,
-0.000344473, 0.00750842, -0.0530027, 1, 0, 0, 1,
0.0055304, 0.00949606, -0.0194561, 1, 0, 0, 1,
0.00366409, 0.0096184, -0.0501351, 1, 0, 0, 1,
0.00394971, 0.0168208, -0.0119509, 1, 0, 0, 1,
-0.00706465, 0.0168998, -0.0335573, 1, 0, 0, 1,
0.000451784, 0.012381, -0.0362242, 1, 0, 0, 1,
-0.000550207, 0.0145694, -0.025685, 1, 0, 0, 1,
-0.014948, 0.00766927, -0.0652735, 1, 0, 0, 1,
-0.014105, 0.00954769, -0.0551464, 1, 0, 0, 1,
-0.0161168, 0.00849367, -0.050229, 1, 0, 0, 1,
-0.0095565, 0.0137916, -0.0395294, 1, 0, 0, 1,
-0.00890177, 0.0164466, -0.0196737, 1, 0, 0, 1,
-0.00490347, -0.0075657, -0.103784, 1, 0, 0, 1,
-0.00906991, -0.00469661, -0.0840544, 1, 0, 0, 1,
-0.00686865, 0.0248223, 0.0111706, 1, 0, 0, 1,
-0.0152818, 0.00636432, -0.0884904, 1, 0, 0, 1,
-0.0119092, 0.011783, -0.0435033, 1, 0, 0, 1,
-0.0106919, 0.0282036, 0.0158341, 0, 0, 1, 1,
0.0155306, -0.00412843, -0.0723126, 1, 0, 0, 1,
-0.0104277, 0.00251749, -0.0931759, 1, 0, 0, 1,
-0.0107831, 0.0130857, -0.0291016, 1, 0, 0, 1,
-0.00221752, 0.000679596, -0.0861949, 1, 0, 0, 1,
-0.0136158, 0.00823717, -0.0485188, 1, 0, 0, 1,
-0.00677494, 0.0164935, -0.0118744, 1, 0, 0, 1,
-0.0113623, 0.0221216, -0.0146259, 1, 0, 0, 1,
-0.0105594, 0.019951, -0.0151026, 1, 0, 0, 1,
-0.0144775, 0.00864782, -0.0548592, 1, 0, 0, 1,
-0.0121341, 0.0115638, -0.0287352, 1, 0, 0, 1,
-0.0127917, 0.0134483, -0.0178458, 1, 0, 0, 1,
0.0129694, -9.40401e-05, -0.0463231, 1, 0, 0, 1,
-0.0114823, 0.00160658, -0.074798, 1, 0, 0, 1,
-0.0126399, 0.0208847, -0.0346265, 1, 0, 0, 1,
-0.0107871, 0.00666632, -0.0746042, 1, 0, 0, 1,
-0.00327709, 0.0104264, -0.0355742, 1, 0, 0, 1,
-0.0121796, -0.00109537, -0.0732059, 1, 0, 0, 1,
-0.0118903, 0.0136637, -0.0360215, 1, 0, 0, 1,
-0.00730519, 0.0177562, -0.0282389, 1, 0, 0, 1,
-0.0145873, 0.0170545, -0.0266269, 1, 0, 0, 1,
0.0158822, 0.00311518, -0.0218944, 1, 0, 0, 1,
-0.0104163, 0.0158032, -0.0151967, 1, 0, 0, 1,
0.00496317, 0.00792379, -0.0450484, 1, 0, 0, 1,
-0.0118992, 0.00608466, -0.0587854, 1, 0, 0, 1,
-0.0142518, 0.0105717, -0.0504539, 1, 0, 0, 1,
-0.0127964, 0.0128683, -0.0468989, 1, 0, 0, 1,
-0.00667883, 0.00291104, -0.0664325, 1, 0, 0, 1,
0.0013303, 0.00264684, -0.0557542, 1, 0, 0, 1,
-0.00870577, 0.0156009, -0.0240986, 1, 0, 0, 1,
-0.00128028, 0.0162832, -0.00218269, 1, 0, 0, 1,
-0.00919997, 0.0195756, -0.0308885, 1, 0, 0, 1,
-0.0101516, 0.0232036, -0.0173891, 1, 0, 0, 1,
-0.00917483, 0.0142347, -0.0184249, 1, 0, 0, 1,
-0.0124642, 0.00765488, -0.0691884, 1, 0, 0, 1,
-0.0103383, 0.00829712, -0.0688222, 1, 0, 0, 1,
-0.00745961, 0.00165397, -0.0687243, 1, 0, 0, 1,
-0.0115674, 0.0107976, -0.0513724, 1, 0, 0, 1,
-0.0127367, 0.0272446, 0.0183097, 0, 0, 1, 1,
-0.0119625, 0.0294061, 0.00888008, 0, 0, 1, 1,
-0.0126168, 0.0258055, 0.0183438, 0, 0, 1, 1,
-0.0102374, 0.0270391, 0.0129866, 0, 0, 1, 1,
-0.0100193, 0.0290679, 0.00789347, 0, 0, 1, 1,
-0.0115686, 0.0261405, 0.00963599, 0, 0, 1, 1,
-0.0104184, 0.0145465, -0.0255844, 1, 0, 0, 1,
0.00918815, -0.00657052, -0.0789912, 1, 0, 0, 1,
-0.0107646, 0.0254562, 0.00955688, 0, 0, 1, 1,
-0.00680781, 0.0288168, 0.00346046, 0, 0, 1, 1,
-0.0106277, 0.0323664, 0.00835367, 0, 0, 1, 1,
-0.00924328, 0.0258167, 0.0123296, 0, 0, 1, 1,
-0.0115461, 0.0263079, 0.00460833, 0, 0, 1, 1,
-0.0073842, 0.028101, 0.0130338, 0, 0, 1, 1,
-0.00961266, 0.028563, 0.0158073, 0, 0, 1, 1,
-0.00770294, 0.0212503, 0.0146223, 0, 0, 1, 1,
-0.0156245, 0.0223188, 0.00597563, 0, 0, 1, 1,
-0.0119385, 0.0275722, 0.0162635, 0, 0, 1, 1,
-0.0113868, 0.0297108, 0.0121137, 0, 0, 1, 1,
-0.0121334, 0.0243808, 0.00188057, 0, 0, 1, 1,
-0.0108409, 0.0279683, 0.0216673, 0, 0, 1, 1,
-0.011768, 0.0281752, 0.0136645, 0, 0, 1, 1,
-0.0114795, 0.0247793, 0.00867501, 0, 0, 1, 1,
-0.0119832, 0.0254772, 0.0181285, 0, 0, 1, 1,
-0.0101695, 0.0265409, 0.0035312, 0, 0, 1, 1,
-0.0129714, 0.0252449, 0.00879037, 0, 0, 1, 1,
-0.0118888, 0.0233199, 0.0103993, 0, 0, 1, 1,
-0.0112292, 0.0298052, 0.015427, 0, 0, 1, 1,
-0.0104211, 0.0257311, 0.0187351, 0, 0, 1, 1,
-0.0125005, 0.0271759, 0.0137337, 0, 0, 1, 1,
-0.00993213, 0.028124, 0.00792852, 0, 0, 1, 1,
-0.0142551, 0.0232998, 0.00787479, 0, 0, 1, 1,
-0.0101617, 0.0266982, 0.00367679, 0, 0, 1, 1,
-0.010707, 0.0255306, 0.0169507, 0, 0, 1, 1,
-0.0105995, 0.0290999, 0.0161926, 0, 0, 1, 1,
-0.0100796, 0.0286098, 0.0103036, 0, 0, 1, 1,
-0.0110392, 0.0293114, 0.0120815, 0, 0, 1, 1,
-0.0128383, 0.0243127, 0.0147911, 0, 0, 1, 1,
-0.0108612, 0.0263359, 0.010828, 0, 0, 1, 1,
-0.0110329, 0.028983, 0.0195216, 0, 0, 1, 1,
-0.0089694, 0.0293864, 0.00611747, 0, 0, 1, 1,
-0.0100156, 0.0275008, 0.0147042, 0, 0, 1, 1,
-0.0118111, 0.0313438, 0.020286, 0, 0, 1, 1,
-0.0135282, 0.0285555, 0.0139991, 0, 0, 1, 1,
-0.0118573, 0.028059, 0.017623, 0, 0, 1, 1,
-0.011434, 0.0298841, 0.017289, 0, 0, 1, 1,
-0.0137068, 0.0262813, 0.00895045, 0, 0, 1, 1,
-0.011303, 0.0240466, 0.0185177, 0, 0, 1, 1,
-0.0128576, 0.0289939, 0.00276648, 0, 0, 1, 1,
-0.0120312, 0.029179, 0.017439, 0, 0, 1, 1,
-0.0106222, 0.0256284, 0.00570797, 0, 0, 1, 1,
-0.00995275, 0.0273092, -0.0024934, 0, 0, 1, 1,
-0.00959611, 0.0261537, 0.00959381, 0, 0, 1, 1,
-0.0114889, 0.023797, 0.0134738, 0, 0, 1, 1,
-0.0107667, 0.0284537, 0.0112355, 0, 0, 1, 1,
-0.0116865, 0.0287125, 0.018817, 0, 0, 1, 1,
-0.010768, 0.0257793, 0.0180663, 0, 0, 1, 1,
-0.0103461, 0.0279454, 0.0188626, 0, 0, 1, 1,
-0.0125309, 0.0251358, 0.0186523, 0, 0, 1, 1,
-0.00736122, 0.025217, 0.0152209, 0, 0, 1, 1,
-0.00878201, 0.0274251, 0.0160884, 0, 0, 1, 1,
-0.0127847, 0.0254325, 0.0197265, 0, 0, 1, 1,
-0.0110028, 0.0257856, 0.00341325, 0, 0, 1, 1,
-0.0119122, 0.0261599, 0.0103964, 0, 0, 1, 1,
-0.0104002, 0.0291234, 0.0195688, 0, 0, 1, 1,
-0.0100776, 0.0254294, 0.00434181, 0, 0, 1, 1,
-0.012127, 0.0268114, -0.00219624, 0, 0, 1, 1,
-0.0105922, 0.0258903, 0.0197543, 0, 0, 1, 1,
-0.0107162, 0.0258229, 0.0131112, 0, 0, 1, 1,
-0.00995127, 0.0282215, 0.0126675, 0, 0, 1, 1,
-0.0126403, 0.0263284, 0.00452265, 0, 0, 1, 1,
-0.0109886, 0.0260791, 0.0218565, 0, 0, 1, 1,
-0.0119297, 0.0250496, 0.00935235, 0, 0, 1, 1,
-0.00946548, 0.0277378, 0.0152095, 0, 0, 1, 1,
-0.0111957, 0.0268611, 0.0264809, 0, 0, 1, 1,
-0.0105658, 0.029585, 0.0012607, 0, 0, 1, 1,
-0.0117585, 0.0254491, 0.00702256, 0, 0, 1, 1,
-0.0089961, 0.0267625, 0.00355462, 0, 0, 1, 1,
-0.00996585, 0.0254337, 0.0193859, 0, 0, 1, 1,
-0.0131239, 0.0295077, 0.0157527, 0, 0, 1, 1,
-0.0103642, 0.0253289, 0.00931815, 0, 0, 1, 1,
-0.0113159, 0.0276354, 0.00661754, 0, 0, 1, 1,
-0.0106622, 0.0283885, 0.012353, 0, 0, 1, 1,
-0.0147154, 0.0278962, 0.0199703, 0, 0, 1, 1,
-0.0102746, 0.0278862, 0.00661131, 0, 0, 1, 1,
-0.0107519, 0.0281143, 0.0112299, 0, 0, 1, 1,
-0.0127744, 0.0276239, 0.00241913, 0, 0, 1, 1,
-0.0125225, 0.0281514, 0.00985255, 0, 0, 1, 1,
-0.0110078, 0.0284701, 0.0135415, 0, 0, 1, 1,
-0.00879338, 0.0305275, 0.0143521, 0, 0, 1, 1,
-0.00835299, 0.024473, 0.0172941, 0, 0, 1, 1,
-0.0139541, 0.028084, 0.00431583, 0, 0, 1, 1,
-0.0120311, 0.0295408, 0.0138181, 0, 0, 1, 1,
-0.00768885, 0.0287506, 0.00919534, 0, 0, 1, 1,
-0.0109983, 0.0273885, 0.00652561, 0, 0, 1, 1,
-0.0116594, 0.0304115, 0.00767287, 0, 0, 1, 1,
-0.011247, 0.0255661, 0.00731042, 0, 0, 1, 1,
-0.0119091, 0.0267098, 0.00624145, 0, 0, 1, 1,
-0.0116038, 0.0242178, 0.0027479, 0, 0, 1, 1,
-0.00966045, 0.0230601, 0.00905667, 0, 0, 1, 1,
-0.0134263, 0.0256661, 0.0123583, 0, 0, 1, 1,
0.0599053, -0.0106832, 0.00225125, 0, 0, 0, 1,
0.0625425, -0.0125851, -0.00769452, 0, 0, 0, 1,
0.0598986, -0.00919164, 0.00589153, 0, 0, 0, 1,
0.0628394, -0.0075895, 0.00159738, 0, 0, 0, 1,
0.0616466, -0.00896019, 0.00134041, 0, 0, 0, 1,
0.06047, -0.0121012, 0.00901182, 0, 0, 0, 1,
0.0609213, -0.00911238, 0.00021598, 0, 0, 0, 1,
0.0571285, -0.0100801, -0.00623096, 0, 0, 0, 1,
0.0614432, -0.0116696, 0.000846609, 0, 0, 0, 1,
0.0603913, -0.0120439, 0.00348993, 0, 0, 0, 1,
0.0596827, -0.0132493, 0.00183232, 0, 0, 0, 1,
0.0591857, -0.0100486, -0.00150272, 0, 0, 0, 1,
0.0590884, -0.0110651, 0.00348026, 0, 0, 0, 1,
0.0628583, -0.0107898, 0.00566134, 0, 0, 0, 1,
0.0623594, -0.00671933, -0.000583868, 0, 0, 0, 1,
0.0614952, -0.00934114, 0.00129604, 0, 0, 0, 1,
0.0608647, -0.00710329, 0.0115746, 0, 0, 0, 1,
0.061243, -0.0104244, 0.00383985, 0, 0, 0, 1,
0.0622044, -0.00933706, 0.00605794, 0, 0, 0, 1,
-0.0202847, -0.0472571, 0.0124991, 0, 0.8039216, 0, 1,
-0.0217059, -0.0453121, 0.0102996, 0, 0.8039216, 0, 1,
-0.0203415, -0.0436946, 0.0205952, 0, 0.8039216, 0, 1,
-0.0207163, -0.0461337, 0.0046741, 0, 0.8039216, 0, 1,
-0.0212221, -0.0463474, 0.0133314, 0, 0.8039216, 0, 1,
-0.025239, -0.044723, 0.0124012, 0, 0.8039216, 0, 1,
-0.022871, -0.0436453, 0.0152662, 0, 0.8039216, 0, 1,
-0.0230623, -0.0447306, 0.0137183, 0, 0.8039216, 0, 1,
-0.023999, -0.0449555, 0.0140296, 0, 0.8039216, 0, 1,
-0.0214967, -0.0450679, 0.00732026, 0, 0.8039216, 0, 1,
-0.0218387, -0.0418631, 0.000625819, 0, 0.8039216, 0, 1,
-0.0213634, -0.0468005, 0.0122522, 0, 0.8039216, 0, 1,
-0.0205644, -0.0422387, 0.0117481, 0, 0.8039216, 0, 1,
-0.0206326, -0.0429101, 0.00311156, 0, 0.8039216, 0, 1,
-0.0204946, -0.0465157, 0.0146937, 0, 0.8039216, 0, 1,
-0.0192618, -0.0445747, 0.0180433, 0, 0.8039216, 0, 1,
-0.022117, -0.0443442, 0.0161906, 0, 0.8039216, 0, 1,
-0.0210934, -0.044948, 0.00458447, 0, 0.8039216, 0, 1,
-0.0204477, -0.0443576, 0.00181938, 0, 0.8039216, 0, 1,
-0.0212926, -0.0478972, 0.0170404, 0, 0.8039216, 0, 1,
-0.0213428, -0.0476166, 0.01323, 0, 0.8039216, 0, 1,
-0.019989, -0.0410041, 0.0114696, 0, 0.8039216, 0, 1,
-0.0214115, -0.0452313, 0.00666999, 0, 0.8039216, 0, 1,
-0.0212739, -0.0461813, -0.00493415, 0, 0.8039216, 0, 1,
-0.0208739, -0.044915, 0.0134519, 0, 0.8039216, 0, 1,
-0.023728, -0.0471651, 0.00993075, 0, 0.8039216, 0, 1,
-0.0227516, -0.0432316, 0.0031539, 0, 0.8039216, 0, 1,
-0.0213723, -0.0442536, 0.0154185, 0, 0.8039216, 0, 1,
-0.0196231, -0.0486462, 0.0167633, 0, 0.8039216, 0, 1,
-0.0226534, -0.0491136, 0.00367624, 0, 0.8039216, 0, 1,
-0.0209949, -0.0453896, 0.0152904, 0, 0.8039216, 0, 1,
-0.0202784, -0.0411598, 0.0130338, 0, 0.8039216, 0, 1,
-0.0239925, -0.0475526, 0.0188462, 0, 0.8039216, 0, 1,
-0.0198928, -0.0436333, 0.0209358, 0, 0.8039216, 0, 1,
-0.0211894, -0.0437393, 0.0142502, 0, 0.8039216, 0, 1,
-0.0207237, -0.0429967, 0.0120953, 0, 0.8039216, 0, 1,
-0.0211558, -0.046894, 0.0163715, 0, 0.8039216, 0, 1,
-0.0202537, -0.0458687, 0.00323657, 0, 0.8039216, 0, 1,
-0.0219376, -0.0460094, 0.0145599, 0, 0.8039216, 0, 1,
-0.0193695, -0.04565, 0.00710881, 0, 0.8039216, 0, 1,
-0.0220525, -0.0485406, 0.0209799, 0, 0.8039216, 0, 1,
-0.0218802, -0.0456642, 0.00983799, 0, 0.8039216, 0, 1,
-0.0220655, -0.0448156, 0.0175193, 0, 0.8039216, 0, 1,
-0.0226893, -0.0447403, 0.0158938, 0, 0.8039216, 0, 1,
-0.0245681, -0.0434349, 0.0154002, 0, 0.8039216, 0, 1,
-0.020963, -0.0468725, 0.0229494, 0, 0.8039216, 0, 1,
-0.0211417, -0.0461028, 0.0123547, 0, 0.8039216, 0, 1,
-0.0231312, -0.0470203, 0.0238995, 0, 0.8039216, 0, 1,
-0.0222229, -0.0500041, 0.00712199, 0, 0.8039216, 0, 1,
-0.0220871, -0.0427152, 0.0222066, 0, 0.8039216, 0, 1,
-0.0203151, -0.0436287, 0.00409452, 0, 0.8039216, 0, 1,
-0.0239992, -0.0426511, 0.0178353, 0, 0.8039216, 0, 1,
-0.0242331, -0.0464782, 0.0180175, 0, 0.8039216, 0, 1,
-0.0199454, -0.0459855, 0.0203439, 0, 0.8039216, 0, 1,
-0.0186327, -0.0460935, 0.0123736, 0, 0.8039216, 0, 1,
-0.0202823, -0.0494332, 0.0186634, 0, 0.8039216, 0, 1,
-0.0223193, -0.0427555, 0.00297549, 0, 0.8039216, 0, 1,
-0.0231156, -0.0406007, 0.0208259, 0, 0.8039216, 0, 1,
-0.0234198, -0.0425343, 0.0153943, 0, 0.8039216, 0, 1,
-0.019426, -0.0456293, 0.00844618, 0, 0.8039216, 0, 1,
-0.0204777, -0.045206, 0.00819859, 0, 0.8039216, 0, 1,
-0.0238881, -0.0472845, 0.00546661, 0, 0.8039216, 0, 1,
-0.0228489, -0.0475837, 0.0147575, 0, 0.8039216, 0, 1,
-0.0184592, -0.0438219, 0.0119672, 0, 0.8039216, 0, 1,
-0.0217402, -0.0453621, 0.0207005, 0, 0.8039216, 0, 1,
-0.0192859, -0.0410028, -0.00192185, 0, 0.8039216, 0, 1,
-0.0225755, -0.0429269, 0.00205903, 0, 0.8039216, 0, 1,
-0.0188304, -0.0457156, 0.00120985, 0, 0.8039216, 0, 1,
-0.0221429, -0.0446384, 0.0181926, 0, 0.8039216, 0, 1,
-0.0225637, -0.0470069, 0.00691998, 0, 0.8039216, 0, 1,
-0.0200337, -0.0416431, 0.00100243, 0, 0.8039216, 0, 1,
-0.025137, -0.0449311, 0.0160667, 0, 0.8039216, 0, 1,
-0.019851, -0.0449529, 0.00803793, 0, 0.8039216, 0, 1,
-0.0196354, -0.0468169, 0.0138081, 0, 0.8039216, 0, 1,
-0.0229864, -0.0474914, 0.0136062, 0, 0.8039216, 0, 1,
-0.0231573, -0.0437509, 0.0115025, 0, 0.8039216, 0, 1,
-0.0229461, -0.0482457, 0.016377, 0, 0.8039216, 0, 1,
-0.0211542, -0.0432692, 0.0137985, 0, 0.8039216, 0, 1,
-0.0218076, -0.0467616, 0.0134255, 0, 0.8039216, 0, 1,
-0.0212997, -0.0473553, 0.0152453, 0, 0.8039216, 0, 1,
-0.0200946, -0.0461073, 0.0198206, 0, 0.8039216, 0, 1,
-0.0184893, -0.044982, 0.0227849, 0, 0.8039216, 0, 1,
-0.0214583, -0.0413946, 0.00778561, 0, 0.8039216, 0, 1,
-0.0216616, -0.0445722, 0.00403748, 0, 0.8039216, 0, 1,
-0.0220772, -0.0455923, 0.00509658, 0, 0.8039216, 0, 1,
-0.0238939, -0.0431876, 0.00987559, 0, 0.8039216, 0, 1,
-0.0241296, -0.0436681, 0.0142829, 0, 0.8039216, 0, 1,
-0.0209841, -0.0441647, 0.0137156, 0, 0.8039216, 0, 1,
-0.0209837, -0.0476995, 0.0153286, 0, 0.8039216, 0, 1,
-0.0217043, -0.045766, 0.0179015, 0, 0.8039216, 0, 1,
-0.0257287, -0.0452895, 0.00703663, 0, 0.8039216, 0, 1,
-0.0216118, -0.0463817, 0.0127601, 0, 0.8039216, 0, 1,
-0.0245254, -0.0463528, 0.0124892, 0, 0.8039216, 0, 1,
-0.0210046, -0.0449981, 0.0109864, 0, 0.8039216, 0, 1,
-0.0186297, -0.0455902, 0.014409, 0, 0.8039216, 0, 1,
-0.0226069, -0.0454607, 0.0103677, 0, 0.8039216, 0, 1,
-0.0237898, -0.0479941, 0.00475517, 0, 0.8039216, 0, 1,
0.0615651, -0.0114194, 0.00483789, 0, 0, 0, 1,
0.0605019, -0.00824608, 0.0106619, 0, 0, 0, 1,
0.0623924, -0.00963285, 0.00352807, 0, 0, 0, 1,
0.059006, -0.00940619, 0.000529788, 0, 0, 0, 1,
0.0597301, -0.00898795, -0.0025674, 0, 0, 0, 1,
0.0638109, -0.0090004, -0.00415325, 0, 0, 0, 1,
0.0620229, -0.0124383, -0.00251443, 0, 0, 0, 1,
0.0607175, -0.0109613, 0.00375691, 0, 0, 0, 1,
0.0605571, -0.0100278, -0.00757802, 0, 0, 0, 1,
0.0610262, -0.00786094, 0.00148893, 0, 0, 0, 1,
0.0609589, -0.00900374, 0.00165908, 0, 0, 0, 1,
0.0601022, -0.0081006, -0.0026045, 0, 0, 0, 1,
0.0578977, -0.0111126, 0.00437552, 0, 0, 0, 1,
0.0611611, -0.010686, -0.00672412, 0, 0, 0, 1,
0.058406, -0.012519, 0.00219169, 0, 0, 0, 1,
0.0591024, -0.00936807, -0.00225285, 0, 0, 0, 1,
0.0607447, -0.0119905, -0.00192169, 0, 0, 0, 1,
0.0634181, -0.0105947, -0.00565163, 0, 0, 0, 1,
0.0615561, -0.011278, 0.00254935, 0, 0, 0, 1,
0.0599859, -0.0116589, 0.00205188, 0, 0, 0, 1,
0.0585396, -0.00853178, -0.00356921, 0, 0, 0, 1,
-0.0222415, -0.0448273, 0.00781225, 0, 0.8039216, 0, 1,
-0.0218567, -0.0467811, 0.00421652, 0, 0.8039216, 0, 1,
-0.0223995, -0.0444564, 0.0102462, 0, 0.8039216, 0, 1,
-0.0207254, -0.0453332, 0.0180986, 0, 0.8039216, 0, 1,
-0.0209323, -0.0465877, 0.00323769, 0, 0.8039216, 0, 1,
-0.022822, -0.0434782, 0.0126367, 0, 0.8039216, 0, 1,
-0.0206775, -0.0469926, 0.00808987, 0, 0.8039216, 0, 1,
-0.0214357, -0.0459128, 0.014337, 0, 0.8039216, 0, 1,
-0.0232706, -0.0451583, 0.00908002, 0, 0.8039216, 0, 1,
-0.0213593, -0.0422036, 0.0103028, 0, 0.8039216, 0, 1,
-0.0204227, -0.0454872, 0.00803411, 0, 0.8039216, 0, 1,
-0.0230036, -0.0468201, 0.0200449, 0, 0.8039216, 0, 1,
-0.0231405, -0.0450521, 0.0139009, 0, 0.8039216, 0, 1,
-0.0237862, -0.0475959, 0.00989577, 0, 0.8039216, 0, 1,
-0.0255804, -0.0477347, 0.0133026, 0, 0.8039216, 0, 1,
-0.0256381, -0.0426319, 0.00995458, 0, 0.8039216, 0, 1,
-0.0208277, -0.0439628, 0.013262, 0, 0.8039216, 0, 1,
-0.0215948, -0.0436067, 0.0162881, 0, 0.8039216, 0, 1,
-0.0208174, -0.0448256, 0.0107842, 0, 0.8039216, 0, 1,
-0.022658, -0.0438518, 0.0114866, 0, 0.8039216, 0, 1,
-0.0216852, -0.0472854, 0.00314969, 0, 0.8039216, 0, 1,
-0.0216565, -0.0443403, 0.00456551, 0, 0.8039216, 0, 1,
-0.0232742, -0.0438123, 0.0150447, 0, 0.8039216, 0, 1,
-0.0209092, -0.0458118, 0.0171308, 0, 0.8039216, 0, 1,
-0.0198614, -0.044429, 0.000958952, 0, 0.8039216, 0, 1,
-0.0214263, -0.0464487, 0.0163167, 0, 0.8039216, 0, 1,
-0.0218862, -0.0478768, 0.0128977, 0, 0.8039216, 0, 1,
-0.0216276, -0.0481253, 0.00600978, 0, 0.8039216, 0, 1,
-0.0240364, -0.0436308, 0.0151474, 0, 0.8039216, 0, 1,
-0.0223776, -0.0455, 0.0111137, 0, 0.8039216, 0, 1,
-0.0206891, -0.0459077, 0.0106659, 0, 0.8039216, 0, 1,
-0.0220357, -0.0486933, 0.00611285, 0, 0.8039216, 0, 1,
-0.0215109, -0.0434798, -0.00234964, 0, 0.8039216, 0, 1,
-0.0206824, -0.0419092, 0.00532416, 0, 0.8039216, 0, 1,
-0.0211499, -0.0440318, 0.00924968, 0, 0.8039216, 0, 1,
-0.0224705, -0.0437375, 0.00100655, 0, 0.8039216, 0, 1,
-0.0214306, -0.0444432, 0.0112215, 0, 0.8039216, 0, 1,
-0.0220157, -0.0433856, 0.0067475, 0, 0.8039216, 0, 1,
-0.0188126, -0.0453071, 0.00705247, 0, 0.8039216, 0, 1,
-0.0213792, -0.0452876, -0.000661209, 0, 0.8039216, 0, 1,
-0.0199325, -0.0450106, 0.00366478, 0, 0.8039216, 0, 1,
-0.0239292, -0.04319, 0.00890843, 0, 0.8039216, 0, 1,
-0.0235879, -0.0445285, 0.0119572, 0, 0.8039216, 0, 1,
-0.0275231, -0.0444496, 0.00230318, 0, 0.8039216, 0, 1,
-0.0182854, -0.0443563, 0.00676521, 0, 0.8039216, 0, 1,
-0.0207996, -0.0433684, 0.00590429, 0, 0.8039216, 0, 1,
-0.0232913, -0.045986, 0.0160425, 0, 0.8039216, 0, 1,
-0.0223044, -0.0450054, 0.02191, 0, 0.8039216, 0, 1,
-0.0194477, -0.0450752, 0.010458, 0, 0.8039216, 0, 1,
-0.0206243, -0.0419919, 0.00367034, 0, 0.8039216, 0, 1,
-0.0224244, -0.0483051, 0.0154809, 0, 0.8039216, 0, 1,
-0.0221261, -0.0435714, 0.0180401, 0, 0.8039216, 0, 1,
-0.0232637, -0.043971, 0.00966666, 0, 0.8039216, 0, 1,
-0.022883, -0.0463717, 0.0132086, 0, 0.8039216, 0, 1,
-0.0208739, -0.0439865, 0.0108011, 0, 0.8039216, 0, 1,
-0.0203368, -0.0454695, 0.00317318, 0, 0.8039216, 0, 1,
-0.021286, -0.0412478, 0.0119208, 0, 0.8039216, 0, 1,
-0.0231444, -0.0455249, 0.00459838, 0, 0.8039216, 0, 1,
-0.0215679, -0.0485457, 0.00697714, 0, 0.8039216, 0, 1,
0.061905, -0.00939373, 0.0123001, 0, 0, 0, 1,
0.0603647, -0.0112247, 0.0137288, 0, 0, 0, 1,
0.0574431, -0.0102242, 0.00573549, 0, 0, 0, 1,
0.0597009, -0.00971945, 0.00606591, 0, 0, 0, 1,
0.0568234, -0.00889099, 0.00893737, 0, 0, 0, 1,
0.0574072, -0.00844344, -0.000241673, 0, 0, 0, 1,
0.0596764, -0.00647742, -0.00166426, 0, 0, 0, 1,
0.0554901, -0.0075588, 0.00954455, 0, 0, 0, 1,
-0.020884, -0.0448253, 0.00557152, 0, 0.8039216, 0, 1,
-0.0211976, -0.0444588, 0.00571278, 0, 0.8039216, 0, 1,
-0.0228109, -0.0446718, -0.00162447, 0, 0.8039216, 0, 1,
-0.0212249, -0.04488, -0.00222036, 0, 0.8039216, 0, 1,
-0.0220836, -0.0453684, 0.0172785, 0, 0.8039216, 0, 1,
-0.0216518, -0.0418001, 0.00570977, 0, 0.8039216, 0, 1,
-0.0223224, -0.0449175, -0.00892706, 0, 0.8039216, 0, 1,
-0.023088, -0.0452832, 0.00980459, 0, 0.8039216, 0, 1,
-0.0210824, -0.0462172, 0.00214997, 0, 0.8039216, 0, 1,
-0.0201731, -0.043871, 0.0119034, 0, 0.8039216, 0, 1,
-0.0221149, -0.0431302, 0.0118773, 0, 0.8039216, 0, 1,
-0.0206758, -0.044564, -3.6632e-05, 0, 0.8039216, 0, 1,
-0.0234681, -0.0444978, 0.00957916, 0, 0.8039216, 0, 1,
-0.0251138, -0.0441199, 0.0131405, 0, 0.8039216, 0, 1,
-0.0212299, -0.043301, 0.0142874, 0, 0.8039216, 0, 1,
-0.022277, -0.0458224, -0.00106244, 0, 0.8039216, 0, 1,
-0.0217341, -0.0444599, 0.00515358, 0, 0.8039216, 0, 1,
-0.020666, -0.0444397, 0.000305985, 0, 0.8039216, 0, 1,
-0.0238042, -0.0464071, 0.0130549, 0, 0.8039216, 0, 1,
-0.022052, -0.0443309, 0.0155095, 0, 0.8039216, 0, 1,
-0.0206035, -0.0447965, 0.00815241, 0, 0.8039216, 0, 1,
-0.0198885, -0.0467051, 0.0126122, 0, 0.8039216, 0, 1,
-0.0197163, -0.0449936, 0.0060495, 0, 0.8039216, 0, 1,
-0.0209153, -0.0447079, 0.0023911, 0, 0.8039216, 0, 1,
-0.0207705, -0.0450861, 0.00344245, 0, 0.8039216, 0, 1,
-0.0221288, -0.0442687, 0.0108887, 0, 0.8039216, 0, 1,
-0.021735, -0.0475449, 0.00705834, 0, 0.8039216, 0, 1,
-0.0213647, -0.0438344, -0.00190997, 0, 0.8039216, 0, 1,
-0.022639, -0.0485181, 0.0157895, 0, 0.8039216, 0, 1,
-0.0223642, -0.0461822, 0.0100415, 0, 0.8039216, 0, 1,
0.0594787, -0.00824071, 0.0112765, 0, 0, 0, 1,
0.0619834, -0.0111216, -0.000270808, 0, 0, 0, 1,
0.0604641, -0.0111558, 0.00802687, 0, 0, 0, 1,
0.0601607, -0.00838109, -0.00536228, 0, 0, 0, 1,
0.0588683, -0.0105472, -0.00378106, 0, 0, 0, 1,
0.0608298, -0.007366, -0.00253736, 0, 0, 0, 1,
0.0605146, -0.0123193, 0.0114287, 0, 0, 0, 1,
0.0624146, -0.0112753, -0.000589016, 0, 0, 0, 1,
0.062382, -0.010613, 0.00628954, 0, 0, 0, 1,
0.0616891, -0.00954339, 0.00501299, 0, 0, 0, 1,
0.0613014, -0.0104518, 0.00345334, 0, 0, 0, 1,
0.0646988, -0.010254, 0.00349914, 0, 0, 0, 1,
0.0604107, -0.0115198, 0.000603219, 0, 0, 0, 1,
0.060158, -0.00927101, 0.00324295, 0, 0, 0, 1,
0.0601197, -0.0129354, 0.00128504, 0, 0, 0, 1,
0.0595516, -0.0102383, 4.81212e-05, 0, 0, 0, 1,
0.0593776, -0.0110439, 0.0013789, 0, 0, 0, 1,
0.0631986, -0.00990726, 0.00484874, 0, 0, 0, 1,
0.0600028, -0.0115261, 0.0014218, 0, 0, 0, 1,
0.0639068, -0.00954018, -0.00792333, 0, 0, 0, 1,
0.0618789, -0.0127468, 0.00713411, 0, 0, 0, 1,
0.0587245, -0.012889, 0.00177505, 0, 0, 0, 1,
0.0626287, -0.0113716, -0.00385835, 0, 0, 0, 1,
0.0588086, -0.0091567, -0.00219718, 0, 0, 0, 1,
0.0643593, -0.0125547, 0.0103515, 0, 0, 0, 1,
0.0609276, -0.00894115, 0.00179318, 0, 0, 0, 1,
0.0606349, -0.00890573, -0.00292431, 0, 0, 0, 1,
0.0620316, -0.0130424, 0.00806114, 0, 0, 0, 1,
0.060866, -0.0112082, 0.00899847, 0, 0, 0, 1,
0.0606319, -0.0103437, -0.00978346, 0, 0, 0, 1,
0.060977, -0.0104323, 0.000565915, 0, 0, 0, 1,
0.0614203, -0.0108144, 0.000386718, 0, 0, 0, 1,
0.0607256, -0.00980182, -0.00255826, 0, 0, 0, 1,
0.0604799, -0.00821551, 0.00442095, 0, 0, 0, 1,
0.0622716, -0.0117834, 0.00495539, 0, 0, 0, 1,
0.0613229, -0.0109662, -0.00220046, 0, 0, 0, 1,
0.0599528, -0.0133113, 0.000805838, 0, 0, 0, 1,
0.0605994, -0.0109337, 0.00370303, 0, 0, 0, 1,
0.0615868, -0.0112796, -0.000516271, 0, 0, 0, 1,
0.0595308, -0.0116468, 0.00106975, 0, 0, 0, 1,
0.0628333, -0.012437, 0.00883964, 0, 0, 0, 1,
0.0605057, -0.0114621, 0.00427488, 0, 0, 0, 1,
0.0609972, -0.00961557, 8.5199e-06, 0, 0, 0, 1,
0.0600092, -0.00913549, 0.00248726, 0, 0, 0, 1,
0.0603395, -0.00912871, 0.00338918, 0, 0, 0, 1,
0.0605854, -0.0106462, -0.00811418, 0, 0, 0, 1,
0.0594613, -0.00970633, 0.000228873, 0, 0, 0, 1,
0.0621357, -0.0100984, 0.00030153, 0, 0, 0, 1,
0.0594178, -0.0136237, 0.00396862, 0, 0, 0, 1,
0.0573748, -0.0099129, -0.00111851, 0, 0, 0, 1,
0.0571635, -0.0109801, -0.000394048, 0, 0, 0, 1,
0.0577753, -0.00932771, 0.0020172, 0, 0, 0, 1,
0.0585304, -0.00836989, -0.00069162, 0, 0, 0, 1,
0.0599197, -0.0120429, -0.00323276, 0, 0, 0, 1,
0.0570943, -0.0093666, 0.0011739, 0, 0, 0, 1,
0.0589788, -0.00805518, 0.00531933, 0, 0, 0, 1,
0.0561006, -0.00837478, 0.00440256, 0, 0, 0, 1,
0.0588358, -0.0121684, 0.0120367, 0, 0, 0, 1,
0.0585837, -0.0115023, 0.00258106, 0, 0, 0, 1,
0.057098, -0.00897674, 0.00817579, 0, 0, 0, 1,
0.0615177, -0.011127, 0.00508992, 0, 0, 0, 1,
0.0580025, -0.00858571, 0.0022176, 0, 0, 0, 1,
0.0521923, -0.00660692, 0.0128008, 0, 0, 0, 1,
0.0576378, -0.00879586, 0.00706887, 0, 0, 0, 1,
0.0570047, -0.00861263, -0.0013744, 0, 0, 0, 1,
0.0595704, -0.011024, 0.00168796, 0, 0, 0, 1,
0.0566791, -0.00847844, 0.00601824, 0, 0, 0, 1,
0.0560687, -0.00972541, 0.00599363, 0, 0, 0, 1,
0.0604336, -0.00980268, 0.00294601, 0, 0, 0, 1,
0.0564513, -0.00811645, 0.0047352, 0, 0, 0, 1,
0.058474, -0.00742528, 0.00330829, 0, 0, 0, 1,
0.0564331, -0.00909753, 0.00678921, 0, 0, 0, 1,
0.0597079, -0.00838009, 0.000955232, 0, 0, 0, 1,
0.0596186, -0.00937561, 0.0106501, 0, 0, 0, 1,
0.0560424, -0.0106017, -0.00322694, 0, 0, 0, 1,
0.0560322, -0.00746366, 0.00816929, 0, 0, 0, 1,
0.0559746, -0.0099311, -0.00287921, 0, 0, 0, 1,
0.0584866, -0.00776131, 0.00330332, 0, 0, 0, 1,
0.0576523, -0.00906006, 0.00470715, 0, 0, 0, 1,
0.0581678, -0.00956958, 0.00499682, 0, 0, 0, 1,
0.0572958, -0.00832232, 0.00167477, 0, 0, 0, 1,
0.058372, -0.0118224, 0.00156091, 0, 0, 0, 1,
0.060346, -0.00849174, 0.0108969, 0, 0, 0, 1,
0.0567653, -0.00608642, 0.00741082, 0, 0, 0, 1,
0.0583105, -0.01024, 0.00583418, 0, 0, 0, 1,
0.0579681, -0.00785526, 0.00434701, 0, 0, 0, 1,
0.0557756, -0.00894472, 0.00566352, 0, 0, 0, 1,
0.0586295, -0.00623367, 0.0053967, 0, 0, 0, 1,
0.0549749, -0.00742422, -0.000608967, 0, 0, 0, 1,
0.0585207, -0.0119364, 0.0141013, 0, 0, 0, 1,
0.0577714, -0.0118998, 0.00895478, 0, 0, 0, 1,
0.0609774, -0.0109087, 0.0154679, 0, 0, 0, 1,
0.0583365, -0.00814638, 0.0113259, 0, 0, 0, 1,
0.0557653, -0.0077785, 0.00492371, 0, 0, 0, 1,
0.0595086, -0.0107166, 0.00291277, 0, 0, 0, 1,
0.0580576, -0.0113606, 0.00943292, 0, 0, 0, 1,
0.0585356, -0.012382, 0.0126893, 0, 0, 0, 1,
0.0591328, -0.0102972, -0.00414354, 0, 0, 0, 1,
0.058046, -0.00861641, 0.0114105, 0, 0, 0, 1,
0.0548737, -0.0101817, 0.012738, 0, 0, 0, 1,
0.0588405, -0.00979834, 0.00868034, 0, 0, 0, 1,
0.0545247, -0.0106133, -0.00329577, 0, 0, 0, 1,
0.0596652, -0.0108993, -7.90873e-05, 0, 0, 0, 1,
0.0530249, -0.00655292, 0.00790205, 0, 0, 0, 1,
0.0574171, -0.0117794, 0.00367339, 0, 0, 0, 1,
0.057074, -0.00686488, 0.012714, 0, 0, 0, 1,
0.0582537, -0.0093267, 0.00572569, 0, 0, 0, 1,
0.0576155, -0.00884401, 0.00329802, 0, 0, 0, 1,
0.0618011, -0.00770923, 0.00178878, 0, 0, 0, 1,
0.0538085, -0.0103938, 0.00369883, 0, 0, 0, 1,
0.0590279, -0.0113242, 0.00368835, 0, 0, 0, 1,
0.0579662, -0.0120256, 0.00707634, 0, 0, 0, 1,
0.0589637, -0.0113875, 0.00465658, 0, 0, 0, 1,
0.0587157, -0.00971578, 0.00365459, 0, 0, 0, 1,
0.0605958, -0.0105004, 0.00674488, 0, 0, 0, 1,
0.0578624, -0.0126045, 0.000229537, 0, 0, 0, 1,
0.0617577, -0.00785544, 0.00141288, 0, 0, 0, 1,
0.0588341, -0.00625281, 0.00207669, 0, 0, 0, 1,
0.0561407, -0.0099397, 0.00553477, 0, 0, 0, 1,
0.0569665, -0.00861786, 0.0047911, 0, 0, 0, 1,
0.0583707, -0.00879823, -0.00909986, 0, 0, 0, 1,
0.0593648, -0.0109492, 0.0073572, 0, 0, 0, 1,
0.0559387, -0.00881564, 0.00315713, 0, 0, 0, 1,
0.0585948, -0.00843517, 0.000716245, 0, 0, 0, 1,
0.0579553, -0.0102646, -0.000361783, 0, 0, 0, 1,
0.0576384, -0.00868083, 0.00626685, 0, 0, 0, 1,
0.0597131, -0.00999004, 0.00542337, 0, 0, 0, 1,
0.0598217, -0.00867368, 0.00156611, 0, 0, 0, 1,
0.0574684, -0.00871725, -0.00182041, 0, 0, 0, 1,
0.0560606, -0.00814846, 0.0113239, 0, 0, 0, 1,
0.0591128, -0.0119688, -0.00210358, 0, 0, 0, 1,
0.0599115, -0.0122722, 0.0131905, 0, 0, 0, 1,
0.0585071, -0.0115935, 0.0110221, 0, 0, 0, 1,
0.0576206, -0.0106988, 0.000860496, 0, 0, 0, 1,
0.0585664, -0.011012, 0.00355595, 0, 0, 0, 1,
0.0580541, -0.0112273, 0.00820994, 0, 0, 0, 1,
0.0590993, -0.0112264, 0.00880704, 0, 0, 0, 1,
0.0454512, -0.0123173, -0.0280378, 0, 0, 0, 1,
-0.0104089, 0.0237953, -0.00967125, 1, 0, 0, 1,
-0.00954682, 0.00541017, -0.061399, 1, 0, 0, 1,
-0.0118897, 0.00999276, -0.0499399, 1, 0, 0, 1,
-0.00882252, -0.00572622, -0.105547, 1, 0, 0, 1,
-0.00275926, 0.0060367, -0.041372, 1, 0, 0, 1,
-0.0117844, -0.00388639, -0.102729, 1, 0, 0, 1,
-0.0128323, 0.0105863, -0.0737345, 1, 0, 0, 1,
-0.0102828, -0.000489453, -0.112403, 1, 0, 0, 1,
-0.0171595, -0.010455, -0.138903, 1, 0, 0, 1,
-0.0100217, -0.00295068, -0.0960525, 1, 0, 0, 1,
-0.0117859, 0.00955618, -0.0725604, 1, 0, 0, 1,
-0.0126219, 0.0187964, -0.0115062, 1, 0, 0, 1,
-0.00445579, 0.0176589, -0.0138325, 1, 0, 0, 1,
-0.00751278, 0.0209102, -0.00522342, 1, 0, 0, 1,
-0.0105533, 0.0237951, -0.0024599, 1, 0, 0, 1,
-0.00835646, -0.00183783, -0.106053, 1, 0, 0, 1,
-0.0123101, 0.00480181, -0.0699993, 1, 0, 0, 1,
-0.0106136, 0.0150573, -0.00845724, 1, 0, 0, 1,
-0.0120638, 0.00528978, -0.0925607, 1, 0, 0, 1,
0.0357177, 0.00363127, 0.00284482, 0, 0, 0, 1,
0.0371472, 0.00322565, 0.00216279, 0, 0, 0, 1,
0.0451293, 0.00167315, 0.00358953, 0, 0, 0, 1,
0.0490713, -0.00702633, 0.0004863, 0, 0, 0, 1,
0.044655, -0.00921404, -0.0102357, 0, 0, 0, 1,
0.0547532, -0.00767211, 0.011418, 0, 0, 0, 1,
0.043949, -0.00499887, 0.00227104, 0, 0, 0, 1,
0.033189, 0.00314373, 0.0036721, 0, 0, 0, 1,
-0.0158845, -0.00986643, -0.120636, 1, 0, 0, 1,
-0.00798596, -0.00115027, -0.0930881, 1, 0, 0, 1,
-0.0137619, -0.000901226, -0.1081, 1, 0, 0, 1,
-0.0192471, -0.0167788, -0.148607, 1, 0, 0, 1,
-0.011809, 0.00469023, -0.0896798, 1, 0, 0, 1,
-0.0146056, 0.009245, -0.0475536, 1, 0, 0, 1,
-0.0150933, 0.0048536, -0.0548269, 1, 0, 0, 1,
-0.0141832, -0.00133572, -0.0918304, 1, 0, 0, 1,
-0.015504, -0.023722, -0.164337, 1, 0, 0, 1,
-0.0194533, -0.0144065, -0.148527, 1, 0, 0, 1,
-0.0209005, -0.0204198, -0.192468, 1, 0, 0, 1,
-0.0188264, -0.0202139, -0.180847, 1, 0, 0, 1,
-0.0127779, 0.00279917, -0.0786768, 1, 0, 0, 1,
-0.0199878, -0.0216666, -0.1803, 1, 0, 0, 1,
-0.0120915, 7.51682e-07, -0.0664353, 1, 0, 0, 1,
-0.010827, 0.00814577, -0.0640856, 1, 0, 0, 1,
-0.0148152, -0.0139322, -0.133467, 1, 0, 0, 1,
-0.0161467, -0.016485, -0.148493, 1, 0, 0, 1,
-0.0160511, -0.00946683, -0.116779, 1, 0, 0, 1,
-0.0161405, -0.00834842, -0.123897, 1, 0, 0, 1,
-0.0107432, 0.0112308, -0.0285943, 1, 0, 0, 1,
-0.00941368, 0.00959192, -0.0419779, 1, 0, 0, 1,
-0.016936, 0.00608945, -0.0920815, 1, 0, 0, 1,
-0.0149094, -0.00537153, -0.127044, 1, 0, 0, 1,
-0.0090598, -0.0083449, -0.125094, 1, 0, 0, 1,
-0.00833894, -0.0034321, -0.0799591, 1, 0, 0, 1,
-0.0187394, -0.0152047, -0.137744, 1, 0, 0, 1,
-0.0116535, -0.00848528, -0.117197, 1, 0, 0, 1,
-0.0112206, -0.00474222, -0.110094, 1, 0, 0, 1,
-0.00808099, -0.00341407, -0.106455, 1, 0, 0, 1,
-0.00901529, 0.00447785, -0.0641462, 1, 0, 0, 1,
-0.0100595, 0.00556175, -0.0685588, 1, 0, 0, 1,
-0.0118224, 0.00337682, -0.0732822, 1, 0, 0, 1,
-0.0133566, 0.012481, -0.0520976, 1, 0, 0, 1,
-0.00255288, 0.00775675, -0.0576322, 1, 0, 0, 1,
-0.00699785, 0.00726036, -0.0500573, 1, 0, 0, 1,
-0.0081272, 0.00208711, -0.0857592, 1, 0, 0, 1,
-0.00914123, 0.014069, -0.0337228, 1, 0, 0, 1,
-0.010141, 0.0102889, -0.0610606, 1, 0, 0, 1,
-0.0116518, 0.00701751, -0.0678241, 1, 0, 0, 1,
-0.0154235, 0.000518288, -0.0898073, 1, 0, 0, 1,
-0.0127951, -0.0127493, -0.131116, 1, 0, 0, 1,
-0.0110912, -0.00540126, -0.102269, 1, 0, 0, 1,
-0.0157372, -0.00522885, -0.0964882, 1, 0, 0, 1,
-0.0110352, 0.0103645, -0.065742, 1, 0, 0, 1,
-0.0131545, 0.00904819, -0.0592014, 1, 0, 0, 1,
-0.0119828, 0.00335741, -0.0933575, 1, 0, 0, 1,
0.0169717, 0.0129781, 0.0054395, 0, 0, 0, 1,
0.0291614, 0.00767358, 0.00271452, 0, 0, 0, 1,
0.0424101, -0.00287575, 0.00339621, 0, 0, 0, 1,
0.0460594, -0.000131702, 0.00776344, 0, 0, 0, 1,
0.0500399, -0.00516417, -0.00404414, 0, 0, 0, 1,
0.054148, -0.00896673, 0.00408928, 0, 0, 0, 1,
0.0557877, -0.0101744, -0.010551, 0, 0, 0, 1,
0.0566975, -0.0106055, 0.00791452, 0, 0, 0, 1,
0.0481185, -0.00245042, 0.00565698, 0, 0, 0, 1,
0.0335189, 0.00102821, 0.0199998, 0, 0, 0, 1,
0.0507252, -0.00587411, -0.00300148, 0, 0, 0, 1,
0.0550302, -0.00766317, 0.0106118, 0, 0, 0, 1,
0.0474204, -0.00175925, 0.00367148, 0, 0, 0, 1,
0.0302282, 0.00220633, -0.00394852, 0, 0, 0, 1,
0.0407151, -0.000235234, -0.00134203, 0, 0, 0, 1,
0.0294141, 0.00370818, -0.00516306, 0, 0, 0, 1,
0.04947, -0.00489582, -0.00183878, 0, 0, 0, 1,
0.0387895, 0.00319641, -0.00762304, 0, 0, 0, 1,
0.0504626, -0.00974138, 0.00154856, 0, 0, 0, 1,
0.0305081, 0.00408691, 0.00494746, 0, 0, 0, 1,
0.0474299, -0.00191162, 0.00293413, 0, 0, 0, 1,
0.0356042, 0.00272444, 0.0156965, 0, 0, 0, 1,
0.0217446, 0.00782978, -0.00366482, 0, 0, 0, 1,
0.0558056, -0.00661438, 0.00640769, 0, 0, 0, 1,
0.0317567, 0.00635479, 0.00310502, 0, 0, 0, 1,
0.0529789, -0.00923252, -0.00239121, 0, 0, 0, 1,
0.037446, 0.000458223, -0.00171451, 0, 0, 0, 1,
0.0581908, -0.0106526, -0.00393471, 0, 0, 0, 1,
0.0605993, -0.0114288, -0.000287795, 0, 0, 0, 1,
0.0513532, -0.00332404, -0.00123897, 0, 0, 0, 1,
0.0543328, -0.00667842, -0.00276732, 0, 0, 0, 1,
0.0183807, -0.00805563, -0.0562366, 0, 0, 0, 1,
-0.0186661, -0.0111683, -0.117656, 0, 0, 0, 1,
0.0414489, 0.00100455, 0.0151506, 0, 0, 0, 1,
0.049831, -0.00312961, -0.00434046, 0, 0, 0, 1,
0.0548418, -0.00424023, 0.000248617, 0, 0, 0, 1,
0.0232621, 0.010571, 0.00319005, 0, 0, 0, 1,
0.0396667, 0.0033939, -0.00254618, 0, 0, 0, 1,
0.060624, -0.0112842, 0.00133835, 0, 0, 0, 1,
0.0535137, -0.00281288, -0.000145218, 0, 0, 0, 1,
0.044104, -0.00311658, 0.00165518, 0, 0, 0, 1,
0.0248292, 0.00537637, 0.00674953, 0, 0, 0, 1,
0.0414083, -0.000455653, 0.00505968, 0, 0, 0, 1,
0.0568232, -0.00722061, -0.00176511, 0, 0, 0, 1,
0.0543498, -0.00454622, -0.00193067, 0, 0, 0, 1,
0.0359021, 0.00521797, 0.0122278, 0, 0, 0, 1,
0.0499256, -0.00888146, -0.00565542, 0, 0, 0, 1,
0.0512119, -0.00455375, 0.00548056, 0, 0, 0, 1,
0.0412672, -0.00106388, 0.00424907, 0, 0, 0, 1,
0.0350701, 0.0048813, -0.000759242, 0, 0, 0, 1,
0.0449414, -0.000929474, -0.00377543, 0, 0, 0, 1,
0.0113374, -0.0119405, -0.0670087, 0, 0, 0, 1,
-0.0102696, 0.0282878, 0.0209961, 0, 0, 1, 1,
-0.0137318, 0.0264393, 0.00980357, 0, 0, 1, 1,
-0.0100819, 0.0271898, 0.0174362, 0, 0, 1, 1,
-0.00848981, 0.0293538, 0.0168312, 0, 0, 1, 1,
-0.0100527, 0.0243865, 0.0163955, 0, 0, 1, 1,
-0.0101109, 0.0287325, 0.0162384, 0, 0, 1, 1,
-0.00679631, 0.0271408, 0.0133718, 0, 0, 1, 1,
-0.00983778, 0.0230228, 0.0136499, 0, 0, 1, 1,
-0.0100053, 0.0243386, 0.0167752, 0, 0, 1, 1,
-0.0114464, 0.0275468, 0.00962702, 0, 0, 1, 1,
-0.0079621, 0.0261701, 0.0120553, 0, 0, 1, 1,
-0.00894135, 0.0278949, 0.0129402, 0, 0, 1, 1,
-0.011235, 0.0263966, 0.0133823, 0, 0, 1, 1,
-0.00975067, 0.0271189, 0.00946479, 0, 0, 1, 1,
-0.0131884, 0.0250117, 0.0189004, 0, 0, 1, 1,
-0.00915161, 0.0277849, 0.0146565, 0, 0, 1, 1,
-0.00682502, 0.026755, 0.0119884, 0, 0, 1, 1,
-0.00606389, 0.0272248, 0.0189761, 0, 0, 1, 1,
-0.0112538, 0.0273165, 0.00914202, 0, 0, 1, 1,
-0.00762168, 0.0303376, 0.0138994, 0, 0, 1, 1,
-0.0109021, 0.0288172, 0.0111349, 0, 0, 1, 1,
-0.00706274, 0.0282865, 0.0156126, 0, 0, 1, 1,
-0.00919575, 0.023982, 0.00936446, 0, 0, 1, 1,
-0.00913969, 0.0283912, 0.0154593, 0, 0, 1, 1,
-0.00954215, 0.024589, 0.0214024, 0, 0, 1, 1,
-0.00756885, 0.0284213, 0.0174655, 0, 0, 1, 1,
-0.00665317, 0.024219, 0.015278, 0, 0, 1, 1,
-0.0110634, 0.0239957, 0.018463, 0, 0, 1, 1,
-0.00661914, 0.025588, 0.00558132, 0, 0, 1, 1,
-0.00892307, 0.0306318, 0.0140666, 0, 0, 1, 1,
-0.00933177, 0.0264503, 0.0163681, 0, 0, 1, 1,
-0.00697938, 0.0223958, 0.0164659, 0, 0, 1, 1,
-0.0109777, 0.0254437, 0.0187151, 0, 0, 1, 1,
-0.0120141, 0.0269899, 0.0118639, 0, 0, 1, 1,
-0.00871812, 0.0276269, 0.00653824, 0, 0, 1, 1,
-0.0115548, 0.0267786, 0.00812987, 0, 0, 1, 1,
-0.0121489, 0.0245186, 0.00603117, 0, 0, 1, 1,
-0.0119324, 0.0290431, 0.0101157, 0, 0, 1, 1,
-0.0118678, 0.0264786, 0.00746853, 0, 0, 1, 1,
-0.00871356, 0.0237823, 0.0175548, 0, 0, 1, 1,
-0.0105039, 0.0292328, 0.0118308, 0, 0, 1, 1,
-0.0091493, 0.026237, 0.00909589, 0, 0, 1, 1,
-0.0115165, 0.0248263, 0.0112216, 0, 0, 1, 1,
-0.00992583, 0.0238752, 0.0218562, 0, 0, 1, 1,
-0.00993673, 0.0275121, 0.00800056, 0, 0, 1, 1,
-0.00906338, 0.0310028, 0.00426915, 0, 0, 1, 1,
-0.0118239, 0.024042, 0.0149493, 0, 0, 1, 1,
-0.0111421, 0.0289015, 0.00559211, 0, 0, 1, 1,
-0.0113797, 0.0277816, 0.0222316, 0, 0, 1, 1,
-0.00986206, 0.0264902, 0.00474868, 0, 0, 1, 1,
-0.00573201, 0.0289302, 0.0189155, 0, 0, 1, 1,
-0.00832712, 0.0304806, 0.000307511, 0, 0, 1, 1,
-0.00679564, 0.0262042, 0.015485, 0, 0, 1, 1,
-0.0130541, 0.0263821, 0.00799086, 0, 0, 1, 1,
-0.0107218, 0.0241173, 0.00885294, 0, 0, 1, 1,
-0.0102764, 0.0273905, 0.00945649, 0, 0, 1, 1,
-0.010388, 0.0251407, 0.0231797, 0, 0, 1, 1,
-0.00653349, 0.0266279, 0.012035, 0, 0, 1, 1,
-0.00723016, 0.0308112, 0.0119328, 0, 0, 1, 1,
-0.0137295, 0.0284478, 0.000448284, 0, 0, 1, 1,
-0.00642578, 0.021937, 0.0202086, 0, 0, 1, 1,
-0.00842373, 0.0261524, 0.0177347, 0, 0, 1, 1,
-0.00818549, 0.0217926, 0.0203974, 0, 0, 1, 1,
-0.00771042, 0.0271938, 0.00900855, 0, 0, 1, 1,
-0.01113, 0.0263657, 0.0119497, 0, 0, 1, 1,
-0.0117861, 0.0271739, 0.0117943, 0, 0, 1, 1,
-0.00769249, 0.02631, 0.00923256, 0, 0, 1, 1,
-0.0125462, 0.0271379, 0.0165152, 0, 0, 1, 1,
-0.0081182, 0.0267064, 0.00975211, 0, 0, 1, 1,
-0.00715706, 0.0233023, 0.0109862, 0, 0, 1, 1,
-0.00951019, 0.0256183, 0.00972567, 0, 0, 1, 1,
-0.0129219, 0.028582, 0.0198644, 0, 0, 1, 1,
-0.00939765, 0.0248106, 0.0215154, 0, 0, 1, 1,
-0.0106514, 0.0262053, 0.000950693, 0, 0, 1, 1,
-0.00953833, 0.0275344, 0.00566691, 0, 0, 1, 1,
-0.00752898, 0.0277853, 0.0141119, 0, 0, 1, 1,
-0.0100811, 0.0276051, 0.0102856, 0, 0, 1, 1,
-0.00944503, 0.0292187, 0.00678969, 0, 0, 1, 1,
-0.0094808, 0.0304793, 0.00506879, 0, 0, 1, 1,
-0.00550303, 0.0280735, 0.0215714, 0, 0, 1, 1,
-0.0067349, 0.0278645, 0.00997695, 0, 0, 1, 1,
-0.00827914, 0.0262112, 0.00257818, 0, 0, 1, 1,
-0.00903212, 0.0273792, 0.00438174, 0, 0, 1, 1,
-0.00881656, 0.0284194, 0.0167786, 0, 0, 1, 1,
-0.0125575, 0.0218558, 0.0278779, 0, 0, 1, 1,
-0.00815451, 0.0285895, 0.00951594, 0, 0, 1, 1,
-0.0101773, 0.0264846, 0.0289299, 0, 0, 1, 1,
-0.0066145, 0.0285738, 0.00980551, 0, 0, 1, 1,
-0.00975177, 0.0297376, 0.00594824, 0, 0, 1, 1,
-0.00786561, 0.0260781, 0.00437162, 0, 0, 1, 1,
-0.0111383, 0.0276527, 0.00350812, 0, 0, 1, 1,
-0.0125779, 0.0244579, 0.0182879, 0, 0, 1, 1,
-0.00622485, 0.0273065, 0.0149143, 0, 0, 1, 1,
-0.00848216, 0.0249242, 0.00150063, 0, 0, 1, 1,
-0.0105461, 0.0242417, 0.00873604, 0, 0, 1, 1,
-0.0093052, 0.0252476, 0.00824535, 0, 0, 1, 1,
-0.0083247, 0.0249034, 0.0117392, 0, 0, 1, 1,
-0.00966163, 0.0272379, 0.0201071, 0, 0, 1, 1
]);
this.values[63] = v;
this.buf[63] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[63]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[63], gl.STATIC_DRAW);
this.mvMatLoc[63] = gl.getUniformLocation(this.prog[63],"mvMatrix");
this.prMatLoc[63] = gl.getUniformLocation(this.prog[63],"prMatrix");
// ****** text object 65 ******
this.flags[65] = 40;
this.prog[65]  = gl.createProgram();
gl.attachShader(this.prog[65], this.getShader( gl, "plot_3d3vshader65" ));
gl.attachShader(this.prog[65], this.getShader( gl, "plot_3d3fshader65" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[65], 0, "aPos");
gl.bindAttribLocation(this.prog[65], 1, "aCol");
gl.linkProgram(this.prog[65]);
var texts = [
"p1"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[65] = gl.getAttribLocation(this.prog[65], "aOfs");
this.texture[65] = gl.createTexture();
this.texLoc[65] = gl.getAttribLocation(this.prog[65], "aTexcoord");
this.sampler[65] = gl.getUniformLocation(this.prog[65],"uSampler");
handleLoadedTexture(this.texture[65], document.getElementById("plot_3d3textureCanvas"));
this.offsets[65]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
0.01858785, -0.06426319, -0.229995, 0, -0.5, 0.5, 0.5,
0.01858785, -0.06426319, -0.229995, 1, -0.5, 0.5, 0.5,
0.01858785, -0.06426319, -0.229995, 1, 1.5, 0.5, 0.5,
0.01858785, -0.06426319, -0.229995, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<1; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[65]["stride"]*(4*i + j) + this.offsets[65]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[65] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3
]);
this.buf[65] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[65]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[65], gl.STATIC_DRAW);
this.ibuf[65] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[65]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[65] = gl.getUniformLocation(this.prog[65],"mvMatrix");
this.prMatLoc[65] = gl.getUniformLocation(this.prog[65],"prMatrix");
this.textScaleLoc[65] = gl.getUniformLocation(this.prog[65],"textScale");
// ****** text object 66 ******
this.flags[66] = 40;
this.prog[66]  = gl.createProgram();
gl.attachShader(this.prog[66], this.getShader( gl, "plot_3d3vshader66" ));
gl.attachShader(this.prog[66], this.getShader( gl, "plot_3d3fshader66" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[66], 0, "aPos");
gl.bindAttribLocation(this.prog[66], 1, "aCol");
gl.linkProgram(this.prog[66]);
var texts = [
"p2"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[66] = gl.getAttribLocation(this.prog[66], "aOfs");
this.texture[66] = gl.createTexture();
this.texLoc[66] = gl.getAttribLocation(this.prog[66], "aTexcoord");
this.sampler[66] = gl.getUniformLocation(this.prog[66],"uSampler");
handleLoadedTexture(this.texture[66], document.getElementById("plot_3d3textureCanvas"));
this.offsets[66]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
-0.04315471, -0.008945951, -0.229995, 0, -0.5, 0.5, 0.5,
-0.04315471, -0.008945951, -0.229995, 1, -0.5, 0.5, 0.5,
-0.04315471, -0.008945951, -0.229995, 1, 1.5, 0.5, 0.5,
-0.04315471, -0.008945951, -0.229995, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<1; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[66]["stride"]*(4*i + j) + this.offsets[66]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[66] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3
]);
this.buf[66] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[66]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[66], gl.STATIC_DRAW);
this.ibuf[66] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[66]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[66] = gl.getUniformLocation(this.prog[66],"mvMatrix");
this.prMatLoc[66] = gl.getUniformLocation(this.prog[66],"prMatrix");
this.textScaleLoc[66] = gl.getUniformLocation(this.prog[66],"textScale");
// ****** text object 67 ******
this.flags[67] = 40;
this.prog[67]  = gl.createProgram();
gl.attachShader(this.prog[67], this.getShader( gl, "plot_3d3vshader67" ));
gl.attachShader(this.prog[67], this.getShader( gl, "plot_3d3fshader67" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[67], 0, "aPos");
gl.bindAttribLocation(this.prog[67], 1, "aCol");
gl.linkProgram(this.prog[67]);
var texts = [
"p3"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[67] = gl.getAttribLocation(this.prog[67], "aOfs");
this.texture[67] = gl.createTexture();
this.texLoc[67] = gl.getAttribLocation(this.prog[67], "aTexcoord");
this.sampler[67] = gl.getUniformLocation(this.prog[67],"uSampler");
handleLoadedTexture(this.texture[67], document.getElementById("plot_3d3textureCanvas"));
this.offsets[67]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
-0.04315471, -0.06426319, -0.08176905, 0, -0.5, 0.5, 0.5,
-0.04315471, -0.06426319, -0.08176905, 1, -0.5, 0.5, 0.5,
-0.04315471, -0.06426319, -0.08176905, 1, 1.5, 0.5, 0.5,
-0.04315471, -0.06426319, -0.08176905, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<1; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[67]["stride"]*(4*i + j) + this.offsets[67]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[67] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3
]);
this.buf[67] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[67]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[67], gl.STATIC_DRAW);
this.ibuf[67] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[67]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[67] = gl.getUniformLocation(this.prog[67],"mvMatrix");
this.prMatLoc[67] = gl.getUniformLocation(this.prog[67],"prMatrix");
this.textScaleLoc[67] = gl.getUniformLocation(this.prog[67],"textScale");
// ****** lines object 70 ******
this.flags[70] = 128;
this.prog[70]  = gl.createProgram();
gl.attachShader(this.prog[70], this.getShader( gl, "plot_3d3vshader70" ));
gl.attachShader(this.prog[70], this.getShader( gl, "plot_3d3fshader70" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[70], 0, "aPos");
gl.bindAttribLocation(this.prog[70], 1, "aCol");
gl.linkProgram(this.prog[70]);
this.offsets[70]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02890643, -0.04, -0.195789,
-0.02890643, -0.04, 0.03225087,
-0.02890643, -0.02, -0.195789,
-0.02890643, -0.02, 0.03225087,
-0.02890643, 0, -0.195789,
-0.02890643, 0, 0.03225087,
-0.02890643, 0.02, -0.195789,
-0.02890643, 0.02, 0.03225087
]);
this.values[70] = v;
this.buf[70] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[70]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[70], gl.STATIC_DRAW);
this.mvMatLoc[70] = gl.getUniformLocation(this.prog[70],"mvMatrix");
this.prMatLoc[70] = gl.getUniformLocation(this.prog[70],"prMatrix");
// ****** lines object 71 ******
this.flags[71] = 128;
this.prog[71]  = gl.createProgram();
gl.attachShader(this.prog[71], this.getShader( gl, "plot_3d3vshader71" ));
gl.attachShader(this.prog[71], this.getShader( gl, "plot_3d3fshader71" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[71], 0, "aPos");
gl.bindAttribLocation(this.prog[71], 1, "aCol");
gl.linkProgram(this.prog[71]);
this.offsets[71]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02890643, -0.05149767, -0.15,
-0.02890643, 0.03360577, -0.15,
-0.02890643, -0.05149767, -0.1,
-0.02890643, 0.03360577, -0.1,
-0.02890643, -0.05149767, -0.05,
-0.02890643, 0.03360577, -0.05,
-0.02890643, -0.05149767, 0,
-0.02890643, 0.03360577, 0
]);
this.values[71] = v;
this.buf[71] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[71]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[71], gl.STATIC_DRAW);
this.mvMatLoc[71] = gl.getUniformLocation(this.prog[71],"mvMatrix");
this.prMatLoc[71] = gl.getUniformLocation(this.prog[71],"prMatrix");
// ****** lines object 72 ******
this.flags[72] = 128;
this.prog[72]  = gl.createProgram();
gl.attachShader(this.prog[72], this.getShader( gl, "plot_3d3vshader72" ));
gl.attachShader(this.prog[72], this.getShader( gl, "plot_3d3fshader72" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[72], 0, "aPos");
gl.bindAttribLocation(this.prog[72], 1, "aCol");
gl.linkProgram(this.prog[72]);
this.offsets[72]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02, -0.05149767, -0.195789,
-0.02, -0.05149767, 0.03225087,
0, -0.05149767, -0.195789,
0, -0.05149767, 0.03225087,
0.02, -0.05149767, -0.195789,
0.02, -0.05149767, 0.03225087,
0.04, -0.05149767, -0.195789,
0.04, -0.05149767, 0.03225087,
0.06, -0.05149767, -0.195789,
0.06, -0.05149767, 0.03225087
]);
this.values[72] = v;
this.buf[72] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[72]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[72], gl.STATIC_DRAW);
this.mvMatLoc[72] = gl.getUniformLocation(this.prog[72],"mvMatrix");
this.prMatLoc[72] = gl.getUniformLocation(this.prog[72],"prMatrix");
// ****** lines object 73 ******
this.flags[73] = 128;
this.prog[73]  = gl.createProgram();
gl.attachShader(this.prog[73], this.getShader( gl, "plot_3d3vshader73" ));
gl.attachShader(this.prog[73], this.getShader( gl, "plot_3d3fshader73" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[73], 0, "aPos");
gl.bindAttribLocation(this.prog[73], 1, "aCol");
gl.linkProgram(this.prog[73]);
this.offsets[73]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02890643, -0.05149767, -0.15,
0.06608213, -0.05149767, -0.15,
-0.02890643, -0.05149767, -0.1,
0.06608213, -0.05149767, -0.1,
-0.02890643, -0.05149767, -0.05,
0.06608213, -0.05149767, -0.05,
-0.02890643, -0.05149767, 0,
0.06608213, -0.05149767, 0
]);
this.values[73] = v;
this.buf[73] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[73]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[73], gl.STATIC_DRAW);
this.mvMatLoc[73] = gl.getUniformLocation(this.prog[73],"mvMatrix");
this.prMatLoc[73] = gl.getUniformLocation(this.prog[73],"prMatrix");
// ****** lines object 74 ******
this.flags[74] = 128;
this.prog[74]  = gl.createProgram();
gl.attachShader(this.prog[74], this.getShader( gl, "plot_3d3vshader74" ));
gl.attachShader(this.prog[74], this.getShader( gl, "plot_3d3fshader74" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[74], 0, "aPos");
gl.bindAttribLocation(this.prog[74], 1, "aCol");
gl.linkProgram(this.prog[74]);
this.offsets[74]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02, -0.05149767, -0.195789,
-0.02, 0.03360577, -0.195789,
0, -0.05149767, -0.195789,
0, 0.03360577, -0.195789,
0.02, -0.05149767, -0.195789,
0.02, 0.03360577, -0.195789,
0.04, -0.05149767, -0.195789,
0.04, 0.03360577, -0.195789,
0.06, -0.05149767, -0.195789,
0.06, 0.03360577, -0.195789
]);
this.values[74] = v;
this.buf[74] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[74]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[74], gl.STATIC_DRAW);
this.mvMatLoc[74] = gl.getUniformLocation(this.prog[74],"mvMatrix");
this.prMatLoc[74] = gl.getUniformLocation(this.prog[74],"prMatrix");
// ****** lines object 75 ******
this.flags[75] = 128;
this.prog[75]  = gl.createProgram();
gl.attachShader(this.prog[75], this.getShader( gl, "plot_3d3vshader75" ));
gl.attachShader(this.prog[75], this.getShader( gl, "plot_3d3fshader75" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[75], 0, "aPos");
gl.bindAttribLocation(this.prog[75], 1, "aCol");
gl.linkProgram(this.prog[75]);
this.offsets[75]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02890643, -0.04, -0.195789,
0.06608213, -0.04, -0.195789,
-0.02890643, -0.02, -0.195789,
0.06608213, -0.02, -0.195789,
-0.02890643, 0, -0.195789,
0.06608213, 0, -0.195789,
-0.02890643, 0.02, -0.195789,
0.06608213, 0.02, -0.195789
]);
this.values[75] = v;
this.buf[75] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[75]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[75], gl.STATIC_DRAW);
this.mvMatLoc[75] = gl.getUniformLocation(this.prog[75],"mvMatrix");
this.prMatLoc[75] = gl.getUniformLocation(this.prog[75],"prMatrix");
// ****** spheres object 76 ******
this.flags[76] = 91;
this.prog[76]  = gl.createProgram();
gl.attachShader(this.prog[76], this.getShader( gl, "plot_3d3vshader76" ));
gl.attachShader(this.prog[76], this.getShader( gl, "plot_3d3fshader76" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[76], 0, "aPos");
gl.bindAttribLocation(this.prog[76], 1, "aCol");
gl.linkProgram(this.prog[76]);
this.offsets[76]={vofs:0, cofs:-1, nofs:-1, radofs:3, oofs:-1, tofs:-1, stride:4};
var v=new Float32Array([
-0.01130136, 0.02599243, 0.01158796, 0.03519014
]);
this.values[76] = v;
this.normLoc[76] = gl.getAttribLocation(this.prog[76], "aNorm");
this.centers[76] = new Float32Array([
-0.01130136, 0.02599243, 0.01158796
]);
this.f[76]=new Uint16Array([
0
]);
this.mvMatLoc[76] = gl.getUniformLocation(this.prog[76],"mvMatrix");
this.prMatLoc[76] = gl.getUniformLocation(this.prog[76],"prMatrix");
this.normMatLoc[76] = gl.getUniformLocation(this.prog[76],"normMatrix");
// ****** lines object 77 ******
this.flags[77] = 128;
this.prog[77]  = gl.createProgram();
gl.attachShader(this.prog[77], this.getShader( gl, "plot_3d3vshader77" ));
gl.attachShader(this.prog[77], this.getShader( gl, "plot_3d3fshader77" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[77], 0, "aPos");
gl.bindAttribLocation(this.prog[77], 1, "aCol");
gl.linkProgram(this.prog[77]);
this.offsets[77]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.00886681, 0.0238644, 0.0217746,
-0.0121496, 0.02617985, 0.01134996,
-0.0124726, 0.0247746, 0.0254585,
-0.0121496, 0.02617985, 0.01134996,
-0.0147315, 0.0281533, 0.0238545,
-0.0121496, 0.02617985, 0.01134996,
-0.0140497, 0.0274399, 0.00957505,
-0.0121496, 0.02617985, 0.01134996,
-0.0116447, 0.0287953, 0.01982,
-0.0121496, 0.02617985, 0.01134996,
-0.0135256, 0.0311266, 0.0226846,
-0.0121496, 0.02617985, 0.01134996,
-0.0146697, 0.0281732, 0.00270888,
-0.0121496, 0.02617985, 0.01134996,
-0.0122709, 0.0273632, 0.00629289,
-0.0121496, 0.02617985, 0.01134996,
-0.013305, 0.0293633, 0.00633912,
-0.0121496, 0.02617985, 0.01134996,
-0.0122756, 0.0262672, 0.00976935,
-0.0121496, 0.02617985, 0.01134996,
-0.011765, 0.0251295, 0.0118895,
-0.0121496, 0.02617985, 0.01134996,
-0.0128186, 0.028081, 0.00958605,
-0.0121496, 0.02617985, 0.01134996,
-0.0116086, 0.0294887, 0.00805614,
-0.0121496, 0.02617985, 0.01134996,
-0.0113447, 0.0307663, 0.00405527,
-0.0121496, 0.02617985, 0.01134996,
-0.0148581, 0.0237257, 0.0160082,
-0.0121496, 0.02617985, 0.01134996,
-0.010788, 0.0238892, 0.0226584,
-0.0121496, 0.02617985, 0.01134996,
-0.0148937, 0.0232955, 0.0101953,
-0.0121496, 0.02617985, 0.01134996,
-0.00875168, 0.0261604, 0.0121802,
-0.0121496, 0.02617985, 0.01134996,
-0.008739, 0.0261481, 0.0122728,
-0.0121496, 0.02617985, 0.01134996,
-0.0108659, 0.0259289, 0.00106272,
-0.0121496, 0.02617985, 0.01134996,
-0.0130502, 0.0270812, 0.0183305,
-0.0121496, 0.02617985, 0.01134996,
-0.0134347, 0.0270132, 0.0229292,
-0.0121496, 0.02617985, 0.01134996,
-0.0118617, 0.0220373, 0.0105775,
-0.0121496, 0.02617985, 0.01134996,
-0.0130059, 0.0245835, 0.0192892,
-0.0121496, 0.02617985, 0.01134996,
-0.0102875, 0.0258827, 0.0208538,
-0.0121496, 0.02617985, 0.01134996,
-0.00910839, 0.0257005, 0.00618984,
-0.0121496, 0.02617985, 0.01134996,
-0.0128356, 0.0225055, 0.00960733,
-0.0121496, 0.02617985, 0.01134996,
-0.0112344, 0.0276306, 0.0114346,
-0.0121496, 0.02617985, 0.01134996,
-0.0106106, 0.0278096, 0.00194201,
-0.0121496, 0.02617985, 0.01134996,
-0.0115198, 0.0292207, 0.00294633,
-0.0121496, 0.02617985, 0.01134996,
-0.0133883, 0.028673, 0.0164389,
-0.0121496, 0.02617985, 0.01134996,
-0.0109423, 0.0290064, 0.0218431,
-0.0121496, 0.02617985, 0.01134996,
-0.0148488, 0.0259077, 0.0115755,
-0.0121496, 0.02617985, 0.01134996,
-0.0107891, 0.0257524, 0.00616149,
-0.0121496, 0.02617985, 0.01134996,
-0.0106291, 0.0269203, 0.0228778,
-0.0121496, 0.02617985, 0.01134996,
-0.0161089, 0.0275971, 0.0192198,
-0.0121496, 0.02617985, 0.01134996,
-0.0132678, 0.0258366, 0.0163521,
-0.0121496, 0.02617985, 0.01134996,
-0.0149124, 0.0251342, 0.00388131,
-0.0121496, 0.02617985, 0.01134996,
-0.0114892, 0.0274352, 0.00899298,
-0.0121496, 0.02617985, 0.01134996,
-0.0117562, 0.0245922, 0.0136363,
-0.0121496, 0.02617985, 0.01134996,
-0.0122278, 0.0271677, 0.0112234,
-0.0121496, 0.02617985, 0.01134996,
-0.01029, 0.0277564, 0.0160115,
-0.0121496, 0.02617985, 0.01134996,
-0.0121964, 0.0309241, 0.0139494,
-0.0121496, 0.02617985, 0.01134996,
-0.0129751, 0.0271331, 0.0260444,
-0.0121496, 0.02617985, 0.01134996,
-0.0125756, 0.0265999, 0.0224468,
-0.0121496, 0.02617985, 0.01134996,
-0.0127859, 0.027101, 0.0191604,
-0.0121496, 0.02617985, 0.01134996,
-0.00998233, 0.0253795, 0.00685042,
-0.0121496, 0.02617985, 0.01134996,
-0.0133536, 0.028689, 0.0051763,
-0.0121496, 0.02617985, 0.01134996,
-0.0117333, 0.0277402, 0.00381405,
-0.0121496, 0.02617985, 0.01134996,
-0.0147853, 0.0295933, 0.00968847,
-0.0121496, 0.02617985, 0.01134996,
-0.0109685, 0.0223538, 0.0143111,
-0.0121496, 0.02617985, 0.01134996,
-0.0096918, 0.0249463, 0.00704751,
-0.0121496, 0.02617985, 0.01134996,
-0.0155493, 0.0266224, 0.00516269,
-0.0121496, 0.02617985, 0.01134996,
-0.014836, 0.0276024, 0.0116228,
-0.0121496, 0.02617985, 0.01134996,
-0.00828352, 0.0252156, 0.0187242,
-0.0121496, 0.02617985, 0.01134996,
-0.0110414, 0.0293172, 0.00362714,
-0.0121496, 0.02617985, 0.01134996,
-0.0102891, 0.0257019, 0.00540398,
-0.0121496, 0.02617985, 0.01134996,
-0.0104394, 0.0259701, 0.00329733,
-0.0121496, 0.02617985, 0.01134996,
-0.00930721, 0.0261215, 0.00409051,
-0.0121496, 0.02617985, 0.01134996,
-0.0124193, 0.0257317, 0.0162523,
-0.0121496, 0.02617985, 0.01134996,
-0.0114044, 0.025375, 0.00361722,
-0.0121496, 0.02617985, 0.01134996,
-0.0112687, 0.0271153, 0.00987548,
-0.0121496, 0.02617985, 0.01134996,
-0.0135369, 0.0198464, 0.0192111,
-0.0121496, 0.02617985, 0.01134996,
-0.0134307, 0.0240167, 0.00338929,
-0.0121496, 0.02617985, 0.01134996,
-0.00581692, -0.000934194, -0.00182728,
-0.0121496, 0.02617985, 0.01134996,
-0.00992799, 0.0281201, 0.00421423,
-0.0121496, 0.02617985, 0.01134996,
-0.0163484, 0.0253598, 0.00679276,
-0.0121496, 0.02617985, 0.01134996,
-0.0153143, 0.0239155, 0.00922948,
-0.0121496, 0.02617985, 0.01134996,
-0.0130066, 0.0264895, 0.0219972,
-0.0121496, 0.02617985, 0.01134996,
-0.0123188, 0.0270323, 0.0130162,
-0.0121496, 0.02617985, 0.01134996,
-0.0149538, 0.0261319, 0.0246082,
-0.0121496, 0.02617985, 0.01134996,
-0.00848068, 0.0244795, 0.0126147,
-0.0121496, 0.02617985, 0.01134996,
-0.009655, 0.026754, 0.0151766,
-0.0121496, 0.02617985, 0.01134996,
-0.0110317, 0.0247415, 0.0169718,
-0.0121496, 0.02617985, 0.01134996,
-0.0105467, 0.0216758, 0.0273625,
-0.0121496, 0.02617985, 0.01134996,
-0.0111351, 0.0298442, 0.0137315,
-0.0121496, 0.02617985, 0.01134996,
-0.0148939, 0.0282641, 0.0180507,
-0.0121496, 0.02617985, 0.01134996,
-0.0133113, 0.0255374, 0.0156552,
-0.0121496, 0.02617985, 0.01134996,
-0.0152238, 0.0253733, 0.0118128,
-0.0121496, 0.02617985, 0.01134996,
-0.0165117, 0.0254165, 0.0210366,
-0.0121496, 0.02617985, 0.01134996,
-0.0172562, 0.026341, 0.0224113,
-0.0121496, 0.02617985, 0.01134996,
-0.0138025, 0.0277873, 0.00395365,
-0.0121496, 0.02617985, 0.01134996,
-0.0135819, 0.0270152, 0.00695362,
-0.0121496, 0.02617985, 0.01134996,
-0.0116353, 0.0256155, 0.000289371,
-0.0121496, 0.02617985, 0.01134996,
-0.0149184, 0.0238256, -0.00270158,
-0.0121496, 0.02617985, 0.01134996,
-0.0114351, 0.0271658, 0.0125575,
-0.0121496, 0.02617985, 0.01134996,
-0.01436, 0.0264762, 0.0173609,
-0.0121496, 0.02617985, 0.01134996,
-0.0128438, 0.0268224, 0.00444834,
-0.0121496, 0.02617985, 0.01134996,
-0.0120046, 0.0230234, 0.00796341,
-0.0121496, 0.02617985, 0.01134996,
-0.0126985, 0.0258126, 0.00514686,
-0.0121496, 0.02617985, 0.01134996,
-0.0135831, 0.0249755, 0.0107284,
-0.0121496, 0.02617985, 0.01134996,
-0.0121259, 0.0280823, 0.020544,
-0.0121496, 0.02617985, 0.01134996,
-0.0141439, 0.0265254, 0.0258433,
-0.0121496, 0.02617985, 0.01134996,
-0.0138132, 0.0284247, 0.0101188,
-0.0121496, 0.02617985, 0.01134996,
-0.013572, 0.0269507, 0.00688972,
-0.0121496, 0.02617985, 0.01134996,
-0.0113011, 0.0268327, 0.0184482,
-0.0121496, 0.02617985, 0.01134996,
-0.0100601, 0.0264789, 0.0212786,
-0.0121496, 0.02617985, 0.01134996,
-0.0113299, 0.0282418, 0.00866489,
-0.0121496, 0.02617985, 0.01134996,
-0.0114925, 0.0272719, 0.0170049,
-0.0121496, 0.02617985, 0.01134996,
-0.0104039, 0.0283855, 0.0100799,
-0.0121496, 0.02617985, 0.01134996,
-0.00956386, 0.0268284, 0.0101297,
-0.0121496, 0.02617985, 0.01134996,
-0.0121363, 0.0224437, 0.00471969,
-0.0121496, 0.02617985, 0.01134996,
-0.0129748, 0.0260496, 0.0176977,
-0.0121496, 0.02617985, 0.01134996,
-0.0128936, 0.0280627, 0.00938281,
-0.0121496, 0.02617985, 0.01134996,
-0.0114891, 0.0247891, 0.0130035,
-0.0121496, 0.02617985, 0.01134996,
-0.00577137, 0.0112307, -0.0490284,
-0.0121496, 0.02617985, 0.01134996,
-0.0102643, 0.0267855, 0.0104728,
-0.0121496, 0.02617985, 0.01134996,
-0.0123468, 0.0265473, 0.016931,
-0.0121496, 0.02617985, 0.01134996,
-0.0097784, 0.0252052, 0.00928465,
-0.0121496, 0.02617985, 0.01134996,
-0.0117949, 0.0233834, 0.0122081,
-0.0121496, 0.02617985, 0.01134996,
-0.0128608, 0.0249954, 0.0176076,
-0.0121496, 0.02617985, 0.01134996,
-0.0129981, 0.0257737, 0.0155265,
-0.0121496, 0.02617985, 0.01134996,
-0.0134316, 0.02653, 0.00353212,
-0.0121496, 0.02617985, 0.01134996,
-0.00935833, 0.0318374, 0.0100076,
-0.0121496, 0.02617985, 0.01134996,
-0.0113107, 0.0303198, 0.0116077,
-0.0121496, 0.02617985, 0.01134996,
-0.0131245, 0.0298223, 0.00180678,
-0.0121496, 0.02617985, 0.01134996,
-0.0133191, 0.0293408, 0.00662741,
-0.0121496, 0.02617985, 0.01134996,
-0.0138591, 0.0261048, 0.000836834,
-0.0121496, 0.02617985, 0.01134996,
-0.0150174, 0.0231497, -0.00112857,
-0.0121496, 0.02617985, 0.01134996,
-0.0110389, 0.0248572, 0.00176283,
-0.0121496, 0.02617985, 0.01134996,
-0.0118715, 0.0275812, 0.0178639,
-0.0121496, 0.02617985, 0.01134996,
-0.0129834, 0.0259341, 0.0186928,
-0.0121496, 0.02617985, 0.01134996,
-0.010557, 0.0273327, 0.00990001,
-0.0121496, 0.02617985, 0.01134996,
-0.0111681, 0.0273472, 0.00617783,
-0.0121496, 0.02617985, 0.01134996,
-0.0101689, 0.0280639, 0.00864267,
-0.0121496, 0.02617985, 0.01134996,
-0.00927365, 0.0255201, 0.0130722,
-0.0121496, 0.02617985, 0.01134996,
-0.010756, 0.0260178, 0.0154469,
-0.0121496, 0.02617985, 0.01134996,
-0.0122762, 0.0266211, 0.00832697,
-0.0121496, 0.02617985, 0.01134996,
-0.0132575, 0.0299597, 0.014467,
-0.0121496, 0.02617985, 0.01134996,
-0.0114548, 0.0255468, 0.0189329,
-0.0121496, 0.02617985, 0.01134996,
-0.00934806, 0.0252484, 0.00733987,
-0.0121496, 0.02617985, 0.01134996,
-0.0142405, 0.0279119, 0.0149429,
-0.0121496, 0.02617985, 0.01134996,
-0.0133535, 0.0262824, 0.00311826,
-0.0121496, 0.02617985, 0.01134996,
-0.0135127, 0.0255778, -0.0113687,
-0.0121496, 0.02617985, 0.01134996,
-0.0121261, 0.0260542, 0.0169802,
-0.0121496, 0.02617985, 0.01134996,
-0.0133854, 0.0276628, 0.00624653,
-0.0121496, 0.02617985, 0.01134996,
-0.0129197, 0.0294731, 0.0139965,
-0.0121496, 0.02617985, 0.01134996,
-0.010358, 0.0239915, 0.0158709,
-0.0121496, 0.02617985, 0.01134996,
-0.0116095, 0.0243185, 0.0147471,
-0.0121496, 0.02617985, 0.01134996,
-0.0114546, 0.0261468, 0.0128631,
-0.0121496, 0.02617985, 0.01134996
]);
this.values[77] = v;
this.buf[77] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[77]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[77], gl.STATIC_DRAW);
this.mvMatLoc[77] = gl.getUniformLocation(this.prog[77],"mvMatrix");
this.prMatLoc[77] = gl.getUniformLocation(this.prog[77],"prMatrix");
// ****** lines object 78 ******
this.flags[78] = 128;
this.prog[78]  = gl.createProgram();
gl.attachShader(this.prog[78], this.getShader( gl, "plot_3d3vshader78" ));
gl.attachShader(this.prog[78], this.getShader( gl, "plot_3d3fshader78" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[78], 0, "aPos");
gl.bindAttribLocation(this.prog[78], 1, "aCol");
gl.linkProgram(this.prog[78]);
this.offsets[78]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.04, -0.05192991, -0.1960567,
0.06, -0.05192991, -0.1960567,
-0.04, -0.05192991, -0.1960567,
-0.04, -0.05479952, -0.2022173,
-0.02, -0.05192991, -0.1960567,
-0.02, -0.05479952, -0.2022173,
0, -0.05192991, -0.1960567,
0, -0.05479952, -0.2022173,
0.02, -0.05192991, -0.1960567,
0.02, -0.05479952, -0.2022173,
0.04, -0.05192991, -0.1960567,
0.04, -0.05479952, -0.2022173,
0.06, -0.05192991, -0.1960567,
0.06, -0.05479952, -0.2022173
]);
this.values[78] = v;
this.buf[78] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[78]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[78], gl.STATIC_DRAW);
this.mvMatLoc[78] = gl.getUniformLocation(this.prog[78],"mvMatrix");
this.prMatLoc[78] = gl.getUniformLocation(this.prog[78],"prMatrix");
// ****** text object 79 ******
this.flags[79] = 40;
this.prog[79]  = gl.createProgram();
gl.attachShader(this.prog[79], this.getShader( gl, "plot_3d3vshader79" ));
gl.attachShader(this.prog[79], this.getShader( gl, "plot_3d3fshader79" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[79], 0, "aPos");
gl.bindAttribLocation(this.prog[79], 1, "aCol");
gl.linkProgram(this.prog[79]);
var texts = [
"-0.04",
"-0.02",
"0",
"0.02",
"0.04",
"0.06"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[79] = gl.getAttribLocation(this.prog[79], "aOfs");
this.texture[79] = gl.createTexture();
this.texLoc[79] = gl.getAttribLocation(this.prog[79], "aTexcoord");
this.sampler[79] = gl.getUniformLocation(this.prog[79],"uSampler");
handleLoadedTexture(this.texture[79], document.getElementById("plot_3d3textureCanvas"));
this.offsets[79]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
-0.04, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.04, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.04, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.04, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.02, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.02, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.02, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.02, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5,
0, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
0, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
0, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
0, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5,
0.02, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
0.02, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
0.02, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
0.02, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5,
0.04, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
0.04, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
0.04, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
0.04, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5,
0.06, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
0.06, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
0.06, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
0.06, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<6; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[79]["stride"]*(4*i + j) + this.offsets[79]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[79] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23
]);
this.buf[79] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[79]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[79], gl.STATIC_DRAW);
this.ibuf[79] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[79]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[79] = gl.getUniformLocation(this.prog[79],"mvMatrix");
this.prMatLoc[79] = gl.getUniformLocation(this.prog[79],"prMatrix");
this.textScaleLoc[79] = gl.getUniformLocation(this.prog[79],"textScale");
// ****** lines object 80 ******
this.flags[80] = 128;
this.prog[80]  = gl.createProgram();
gl.attachShader(this.prog[80], this.getShader( gl, "plot_3d3vshader80" ));
gl.attachShader(this.prog[80], this.getShader( gl, "plot_3d3fshader80" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[80], 0, "aPos");
gl.bindAttribLocation(this.prog[80], 1, "aCol");
gl.linkProgram(this.prog[80]);
this.offsets[80]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.04815935, -0.04, -0.1960567,
-0.04815935, 0.06, -0.1960567,
-0.04815935, -0.04, -0.1960567,
-0.0510225, -0.04, -0.2022173,
-0.04815935, -0.02, -0.1960567,
-0.0510225, -0.02, -0.2022173,
-0.04815935, 0, -0.1960567,
-0.0510225, 0, -0.2022173,
-0.04815935, 0.02, -0.1960567,
-0.0510225, 0.02, -0.2022173,
-0.04815935, 0.04, -0.1960567,
-0.0510225, 0.04, -0.2022173,
-0.04815935, 0.06, -0.1960567,
-0.0510225, 0.06, -0.2022173
]);
this.values[80] = v;
this.buf[80] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[80]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[80], gl.STATIC_DRAW);
this.mvMatLoc[80] = gl.getUniformLocation(this.prog[80],"mvMatrix");
this.prMatLoc[80] = gl.getUniformLocation(this.prog[80],"prMatrix");
// ****** text object 81 ******
this.flags[81] = 40;
this.prog[81]  = gl.createProgram();
gl.attachShader(this.prog[81], this.getShader( gl, "plot_3d3vshader81" ));
gl.attachShader(this.prog[81], this.getShader( gl, "plot_3d3fshader81" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[81], 0, "aPos");
gl.bindAttribLocation(this.prog[81], 1, "aCol");
gl.linkProgram(this.prog[81]);
var texts = [
"-0.04",
"-0.02",
"0",
"0.02",
"0.04",
"0.06"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[81] = gl.getAttribLocation(this.prog[81], "aOfs");
this.texture[81] = gl.createTexture();
this.texLoc[81] = gl.getAttribLocation(this.prog[81], "aTexcoord");
this.sampler[81] = gl.getUniformLocation(this.prog[81],"uSampler");
handleLoadedTexture(this.texture[81], document.getElementById("plot_3d3textureCanvas"));
this.offsets[81]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
-0.0567488, -0.04, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.04, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.04, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.04, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.0567488, -0.02, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.02, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.02, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.02, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.0567488, 0, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, 0, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, 0, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, 0, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.0567488, 0.02, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, 0.02, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, 0.02, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, 0.02, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.0567488, 0.04, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, 0.04, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, 0.04, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, 0.04, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.0567488, 0.06, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, 0.06, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, 0.06, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, 0.06, -0.2145385, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<6; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[81]["stride"]*(4*i + j) + this.offsets[81]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[81] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23
]);
this.buf[81] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[81]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[81], gl.STATIC_DRAW);
this.ibuf[81] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[81]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[81] = gl.getUniformLocation(this.prog[81],"mvMatrix");
this.prMatLoc[81] = gl.getUniformLocation(this.prog[81],"prMatrix");
this.textScaleLoc[81] = gl.getUniformLocation(this.prog[81],"textScale");
// ****** lines object 82 ******
this.flags[82] = 128;
this.prog[82]  = gl.createProgram();
gl.attachShader(this.prog[82], this.getShader( gl, "plot_3d3vshader82" ));
gl.attachShader(this.prog[82], this.getShader( gl, "plot_3d3fshader82" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[82], 0, "aPos");
gl.bindAttribLocation(this.prog[82], 1, "aCol");
gl.linkProgram(this.prog[82]);
this.offsets[82]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.04815935, -0.05192991, -0.15,
-0.04815935, -0.05192991, 0,
-0.04815935, -0.05192991, -0.15,
-0.0510225, -0.05479952, -0.15,
-0.04815935, -0.05192991, -0.1,
-0.0510225, -0.05479952, -0.1,
-0.04815935, -0.05192991, -0.05,
-0.0510225, -0.05479952, -0.05,
-0.04815935, -0.05192991, 0,
-0.0510225, -0.05479952, 0
]);
this.values[82] = v;
this.buf[82] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[82]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[82], gl.STATIC_DRAW);
this.mvMatLoc[82] = gl.getUniformLocation(this.prog[82],"mvMatrix");
this.prMatLoc[82] = gl.getUniformLocation(this.prog[82],"prMatrix");
// ****** text object 83 ******
this.flags[83] = 40;
this.prog[83]  = gl.createProgram();
gl.attachShader(this.prog[83], this.getShader( gl, "plot_3d3vshader83" ));
gl.attachShader(this.prog[83], this.getShader( gl, "plot_3d3fshader83" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[83], 0, "aPos");
gl.bindAttribLocation(this.prog[83], 1, "aCol");
gl.linkProgram(this.prog[83]);
var texts = [
"-0.15",
"-0.1",
"-0.05",
"0"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[83] = gl.getAttribLocation(this.prog[83], "aOfs");
this.texture[83] = gl.createTexture();
this.texLoc[83] = gl.getAttribLocation(this.prog[83], "aTexcoord");
this.sampler[83] = gl.getUniformLocation(this.prog[83],"uSampler");
handleLoadedTexture(this.texture[83], document.getElementById("plot_3d3textureCanvas"));
this.offsets[83]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
-0.0567488, -0.06053872, -0.15, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.15, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.15, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.15, 0, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.1, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.1, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.1, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.1, 0, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.05, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.05, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.05, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.05, 0, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, 0, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, 0, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, 0, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, 0, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<4; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[83]["stride"]*(4*i + j) + this.offsets[83]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[83] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15
]);
this.buf[83] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[83]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[83], gl.STATIC_DRAW);
this.ibuf[83] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[83]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[83] = gl.getUniformLocation(this.prog[83],"mvMatrix");
this.prMatLoc[83] = gl.getUniformLocation(this.prog[83],"prMatrix");
this.textScaleLoc[83] = gl.getUniformLocation(this.prog[83],"textScale");
// ****** lines object 84 ******
this.flags[84] = 128;
this.prog[84]  = gl.createProgram();
gl.attachShader(this.prog[84], this.getShader( gl, "plot_3d3vshader84" ));
gl.attachShader(this.prog[84], this.getShader( gl, "plot_3d3fshader84" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[84], 0, "aPos");
gl.bindAttribLocation(this.prog[84], 1, "aCol");
gl.linkProgram(this.prog[84]);
this.offsets[84]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.04815935, -0.05192991, -0.1960567,
-0.04815935, 0.06285418, -0.1960567,
-0.04815935, -0.05192991, 0.05036679,
-0.04815935, 0.06285418, 0.05036679,
-0.04815935, -0.05192991, -0.1960567,
-0.04815935, -0.05192991, 0.05036679,
-0.04815935, 0.06285418, -0.1960567,
-0.04815935, 0.06285418, 0.05036679,
-0.04815935, -0.05192991, -0.1960567,
0.06636666, -0.05192991, -0.1960567,
-0.04815935, -0.05192991, 0.05036679,
0.06636666, -0.05192991, 0.05036679,
-0.04815935, 0.06285418, -0.1960567,
0.06636666, 0.06285418, -0.1960567,
-0.04815935, 0.06285418, 0.05036679,
0.06636666, 0.06285418, 0.05036679,
0.06636666, -0.05192991, -0.1960567,
0.06636666, 0.06285418, -0.1960567,
0.06636666, -0.05192991, 0.05036679,
0.06636666, 0.06285418, 0.05036679,
0.06636666, -0.05192991, -0.1960567,
0.06636666, -0.05192991, 0.05036679,
0.06636666, 0.06285418, -0.1960567,
0.06636666, 0.06285418, 0.05036679
]);
this.values[84] = v;
this.buf[84] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[84]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[84], gl.STATIC_DRAW);
this.mvMatLoc[84] = gl.getUniformLocation(this.prog[84],"mvMatrix");
this.prMatLoc[84] = gl.getUniformLocation(this.prog[84],"prMatrix");
gl.enable(gl.DEPTH_TEST);
gl.depthFunc(gl.LEQUAL);
gl.clearDepth(1.0);
gl.clearColor(1,1,1,1);
var drag  = 0;
this.drawScene = function() {
gl.depthMask(true);
gl.disable(gl.BLEND);
gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);
this.drawFns[57].call(this, 57)
gl.flush ();
}
// ****** points object 63 *******
this.drawFns[63] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.enableVertexAttribArray( colLoc );
gl.vertexAttribPointer(colLoc, 4, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["cofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.POINTS, 0, 1232);
}
// ****** text object 65 *******
this.drawFns[65] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 6, gl.UNSIGNED_SHORT, 0);
}
// ****** text object 66 *******
this.drawFns[66] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 6, gl.UNSIGNED_SHORT, 0);
}
// ****** text object 67 *******
this.drawFns[67] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 6, gl.UNSIGNED_SHORT, 0);
}
// ****** lines object 70 *******
this.drawFns[70] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 8);
}
// ****** lines object 71 *******
this.drawFns[71] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 8);
}
// ****** lines object 72 *******
this.drawFns[72] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 10);
}
// ****** lines object 73 *******
this.drawFns[73] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 8);
}
// ****** lines object 74 *******
this.drawFns[74] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 10);
}
// ****** lines object 75 *******
this.drawFns[75] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 8);
}
// ****** spheres object 76 *******
this.drawFns[76] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, sphereBuf);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, sphereIbuf);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniformMatrix4fv( this.normMatLoc[id], false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
var depths = new Float32Array(1);
var faces = new Array(1);
for(var i=0; i<1; i++) {
var z = this.prmvMatrix.m13*this.centers[id][3*i] 
+ this.prmvMatrix.m23*this.centers[id][3*i+1]
+ this.prmvMatrix.m33*this.centers[id][3*i+2]
+ this.prmvMatrix.m43;
var w = this.prmvMatrix.m14*this.centers[id][3*i] 
+ this.prmvMatrix.m24*this.centers[id][3*i+1]
+ this.prmvMatrix.m34*this.centers[id][3*i+2]
+ this.prmvMatrix.m44;
depths[i] = z/w;
faces[i] = i;
}
var depthsort = function(i,j) { return depths[j] - depths[i] }
faces.sort(depthsort);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 12,  0);
gl.enableVertexAttribArray(this.normLoc[id] );
gl.vertexAttribPointer(this.normLoc[id],  3, gl.FLOAT, false, 12,  0);
gl.disableVertexAttribArray( colLoc );
var sphereNorm = new CanvasMatrix4();
sphereNorm.scale(1, 1, 1);
sphereNorm.multRight(normMatrix);
gl.uniformMatrix4fv( this.normMatLoc[id], false, new Float32Array(sphereNorm.getAsArray()) );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 0.4980392);
for (var i = 0; i < 1; i++) {
var sphereMV = new CanvasMatrix4();
var baseofs = faces[i]*plot_3d3rgl.offsets[id]["stride"];
var ofs = baseofs + this.offsets[id]["radofs"];	       
var scale = this.values[id][ofs];
sphereMV.scale(1*scale, 1*scale, 1*scale);
sphereMV.translate(this.values[id][baseofs], 
this.values[id][baseofs+1], 
this.values[id][baseofs+2]);
sphereMV.multRight(this.mvMatrix);
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(sphereMV.getAsArray()) );
gl.drawElements(gl.TRIANGLES, 384, gl.UNSIGNED_SHORT, 0);
}
}
// ****** lines object 77 *******
this.drawFns[77] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 280);
}
// ****** lines object 78 *******
this.drawFns[78] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 14);
}
// ****** text object 79 *******
this.drawFns[79] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 36, gl.UNSIGNED_SHORT, 0);
}
// ****** lines object 80 *******
this.drawFns[80] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 14);
}
// ****** text object 81 *******
this.drawFns[81] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 36, gl.UNSIGNED_SHORT, 0);
}
// ****** lines object 82 *******
this.drawFns[82] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 10);
}
// ****** text object 83 *******
this.drawFns[83] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 24, gl.UNSIGNED_SHORT, 0);
}
// ****** lines object 84 *******
this.drawFns[84] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 24);
}
// ***** subscene 57 ****
this.drawFns[57] = function(id) {
this.vp = this.viewport[id];
gl.viewport(this.vp[0], this.vp[1], this.vp[2], this.vp[3]);
gl.scissor(this.vp[0], this.vp[1], this.vp[2], this.vp[3]);
gl.clearColor(1, 1, 1, 1);
gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);
this.prMatrix.makeIdentity();
var radius = 0.1575162;
var distance = 0.3627647;
var t = tan(this.FOV[57]*PI/360);
var near = distance - radius;
var far = distance + radius;
var hlen = t*near;
var aspect = this.vp[2]/this.vp[3];
var z = this.zoom[57];
if (aspect > 1) 
this.prMatrix.frustum(-hlen*aspect*z, hlen*aspect*z, 
-hlen*z, hlen*z, near, far);
else  
this.prMatrix.frustum(-hlen*z, hlen*z, 
-hlen*z/aspect, hlen*z/aspect, 
near, far);
this.mvMatrix.makeIdentity();
this.mvMatrix.translate( -0.009103652, -0.005462132, 0.07284495 );
this.mvMatrix.scale( 1, 1, 1 );   
this.mvMatrix.multRight( plot_3d3rgl.userMatrix[57] );
this.mvMatrix.translate(-0, -0, -0.3627647);
normMatrix.makeIdentity();
normMatrix.scale( 1, 1, 1 );   
normMatrix.multRight( plot_3d3rgl.userMatrix[57] );
this.prmvMatrix = new CanvasMatrix4( this.mvMatrix );
this.prmvMatrix.multRight( this.prMatrix );
var clipids = this.clipplanes[id];
if (clipids.length > 0) {
this.invMatrix = new CanvasMatrix4(this.mvMatrix);
this.invMatrix.invert();
for (var i = 0; i < this.clipplanes[id].length; i++) 
this.drawFns[clipids[i]].call(this, clipids[i]);
}
var subids = this.opaque[id];
for (var i = 0; i < subids.length; i++) 
this.drawFns[subids[i]].call(this, subids[i], clipids);
subids = this.transparent[id];
if (subids.length > 0) {
gl.depthMask(false);
gl.blendFuncSeparate(gl.SRC_ALPHA, gl.ONE_MINUS_SRC_ALPHA,
gl.ONE, gl.ONE);
gl.enable(gl.BLEND);
for (var i = 0; i < subids.length; i++) 
this.drawFns[subids[i]].call(this, subids[i], clipids);
}
subids = this.subscenes[id];
for (var i = 0; i < subids.length; i++)
this.drawFns[subids[i]].call(this, subids[i]);
}
this.drawScene();
var vpx0 = {
57: 0
};
var vpy0 = {
57: 0
};
var vpWidths = {
57: 504
};
var vpHeights = {
57: 504
};
var activeModel = {
57: 57
};
var activeProjection = {
57: 57
};
plot_3d3rgl.listeners = {
57: [ 57 ]
};
var whichSubscene = function(coords){
if (0 <= coords.x && coords.x <= 504 && 0 <= coords.y && coords.y <= 504) return(57);
return(57);
}
var translateCoords = function(subsceneid, coords){
return {x:coords.x - vpx0[subsceneid], y:coords.y - vpy0[subsceneid]};
}
var vlen = function(v) {
return sqrt(v[0]*v[0] + v[1]*v[1] + v[2]*v[2])
}
var xprod = function(a, b) {
return [a[1]*b[2] - a[2]*b[1],
a[2]*b[0] - a[0]*b[2],
a[0]*b[1] - a[1]*b[0]];
}
var screenToVector = function(x, y) {
var width = vpWidths[activeSubscene];
var height = vpHeights[activeSubscene];
var radius = max(width, height)/2.0;
var cx = width/2.0;
var cy = height/2.0;
var px = (x-cx)/radius;
var py = (y-cy)/radius;
var plen = sqrt(px*px+py*py);
if (plen > 1.e-6) { 
px = px/plen;
py = py/plen;
}
var angle = (SQRT2 - plen)/SQRT2*PI/2;
var z = sin(angle);
var zlen = sqrt(1.0 - z*z);
px = px * zlen;
py = py * zlen;
return [px, py, z];
}
var rotBase;
var trackballdown = function(x,y) {
rotBase = screenToVector(x, y);
var l = plot_3d3rgl.listeners[activeModel[activeSubscene]];
saveMat = new Object();
for (var i = 0; i < l.length; i++) 
saveMat[l[i]] = new CanvasMatrix4(plot_3d3rgl.userMatrix[l[i]]);
}
var trackballmove = function(x,y) {
var rotCurrent = screenToVector(x,y);
var dot = rotBase[0]*rotCurrent[0] + 
rotBase[1]*rotCurrent[1] + 
rotBase[2]*rotCurrent[2];
var angle = acos( dot/vlen(rotBase)/vlen(rotCurrent) )*180./PI;
var axis = xprod(rotBase, rotCurrent);
var l = plot_3d3rgl.listeners[activeModel[activeSubscene]];
for (i = 0; i < l.length; i++) {
plot_3d3rgl.userMatrix[l[i]].load(saveMat[l[i]]);
plot_3d3rgl.userMatrix[l[i]].rotate(angle, axis[0], axis[1], axis[2]);
}
plot_3d3rgl.drawScene();
}
var trackballend = 0;
var y0zoom = 0;
var zoom0 = 0;
var zoomdown = function(x, y) {
y0zoom = y;
zoom0 = new Object();
l = plot_3d3rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
zoom0[l[i]] = log(plot_3d3rgl.zoom[l[i]]);
}
var zoommove = function(x, y) {
l = plot_3d3rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
plot_3d3rgl.zoom[l[i]] = exp(zoom0[l[i]] + (y-y0zoom)/height);
plot_3d3rgl.drawScene();
}
var zoomend = 0;
var y0fov = 0;
var fov0 = 0;
var fovdown = function(x, y) {
y0fov = y;
fov0 = new Object();
l = plot_3d3rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
fov0[l[i]] = plot_3d3rgl.FOV[l[i]];
}
var fovmove = function(x, y) {
l = plot_3d3rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
plot_3d3rgl.FOV[l[i]] = max(1, min(179, fov0[l[i]] + 180*(y-y0fov)/height));
plot_3d3rgl.drawScene();
}
var fovend = 0;
var mousedown = [trackballdown, zoomdown, fovdown];
var mousemove = [trackballmove, zoommove, fovmove];
var mouseend = [trackballend, zoomend, fovend];
function relMouseCoords(event){
var totalOffsetX = 0;
var totalOffsetY = 0;
var currentElement = canvas;
do{
totalOffsetX += currentElement.offsetLeft;
totalOffsetY += currentElement.offsetTop;
currentElement = currentElement.offsetParent;
}
while(currentElement)
var canvasX = event.pageX - totalOffsetX;
var canvasY = event.pageY - totalOffsetY;
return {x:canvasX, y:canvasY}
}
canvas.onmousedown = function ( ev ){
if (!ev.which) // Use w3c defns in preference to MS
switch (ev.button) {
case 0: ev.which = 1; break;
case 1: 
case 4: ev.which = 2; break;
case 2: ev.which = 3;
}
drag = ev.which;
var f = mousedown[drag-1];
if (f) {
var coords = relMouseCoords(ev);
coords.y = height-coords.y;
activeSubscene = whichSubscene(coords);
coords = translateCoords(activeSubscene, coords);
f(coords.x, coords.y); 
ev.preventDefault();
}
}    
canvas.onmouseup = function ( ev ){	
if ( drag == 0 ) return;
var f = mouseend[drag-1];
if (f) 
f();
drag = 0;
}
canvas.onmouseout = canvas.onmouseup;
canvas.onmousemove = function ( ev ){
if ( drag == 0 ) return;
var f = mousemove[drag-1];
if (f) {
var coords = relMouseCoords(ev);
coords.y = height - coords.y;
coords = translateCoords(activeSubscene, coords);
f(coords.x, coords.y);
}
}
var wheelHandler = function(ev) {
var del = 1.1;
if (ev.shiftKey) del = 1.01;
var ds = ((ev.detail || ev.wheelDelta) > 0) ? del : (1 / del);
l = plot_3d3rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
plot_3d3rgl.zoom[l[i]] *= ds;
plot_3d3rgl.drawScene();
ev.preventDefault();
};
canvas.addEventListener("DOMMouseScroll", wheelHandler, false);
canvas.addEventListener("mousewheel", wheelHandler, false);
}
</script>
<canvas id="plot_3d3canvas" class="rglWebGL" width="1" height="1"></canvas> 
<p id="plot_3d3debug">
<img src="plot_3d3snapshot.png" alt="plot_3d3snapshot" width=505/><br>
You must enable Javascript to view this page properly.</p>
<script>plot_3d3rgl.start();</script>

<canvas id="plot_3d4textureCanvas" style="display: none;" width="256" height="256">
<img src="plot_3d4snapshot.png" alt="plot_3d4snapshot" width=505/><br>
Your browser does not support the HTML5 canvas element.</canvas>
<!-- ****** points object 91 ****** -->
<script id="plot_3d4vshader91" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
gl_PointSize = 3.;
vCol = aCol;
}
</script>
<script id="plot_3d4fshader91" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** text object 93 ****** -->
<script id="plot_3d4vshader93" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d4fshader93" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** text object 94 ****** -->
<script id="plot_3d4vshader94" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d4fshader94" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** text object 95 ****** -->
<script id="plot_3d4vshader95" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d4fshader95" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** lines object 98 ****** -->
<script id="plot_3d4vshader98" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d4fshader98" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 99 ****** -->
<script id="plot_3d4vshader99" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d4fshader99" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 100 ****** -->
<script id="plot_3d4vshader100" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d4fshader100" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 101 ****** -->
<script id="plot_3d4vshader101" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d4fshader101" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 102 ****** -->
<script id="plot_3d4vshader102" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d4fshader102" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 103 ****** -->
<script id="plot_3d4vshader103" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d4fshader103" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** spheres object 104 ****** -->
<script id="plot_3d4vshader104" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="plot_3d4fshader104" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 105 ****** -->
<script id="plot_3d4vshader105" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d4fshader105" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** lines object 106 ****** -->
<script id="plot_3d4vshader106" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d4fshader106" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** text object 107 ****** -->
<script id="plot_3d4vshader107" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d4fshader107" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** lines object 108 ****** -->
<script id="plot_3d4vshader108" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d4fshader108" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** text object 109 ****** -->
<script id="plot_3d4vshader109" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d4fshader109" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** lines object 110 ****** -->
<script id="plot_3d4vshader110" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d4fshader110" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** text object 111 ****** -->
<script id="plot_3d4vshader111" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="plot_3d4fshader111" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** lines object 112 ****** -->
<script id="plot_3d4vshader112" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
}
</script>
<script id="plot_3d4fshader112" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
gl_FragColor = lighteffect;
}
</script> 
<script type="text/javascript">
var plot_3d4rgl = new rglClass();
plot_3d4rgl.start = function() {
var debug = function(msg) {
document.getElementById("plot_3d4debug").innerHTML = msg;
}
debug("");
var canvas = document.getElementById("plot_3d4canvas");
if (!window.WebGLRenderingContext){
debug("<img src=\"plot_3d4snapshot.png\" alt=\"plot_3d4snapshot\" width=505/><br> Your browser does not support WebGL. See <a href=\"http://get.webgl.org\">http://get.webgl.org</a>");
return;
}
try {
// Try to grab the standard context. If it fails, fallback to experimental.
this.gl = canvas.getContext("webgl") 
|| canvas.getContext("experimental-webgl");
}
catch(e) {}
if ( !this.gl ) {
debug("<img src=\"plot_3d4snapshot.png\" alt=\"plot_3d4snapshot\" width=505/><br> Your browser appears to support WebGL, but did not create a WebGL context.  See <a href=\"http://get.webgl.org\">http://get.webgl.org</a>");
return;
}
var gl = this.gl;
var width = 505;  var height = 505;
canvas.width = width;   canvas.height = height;
var normMatrix = new CanvasMatrix4();
var saveMat = new Object();
var distance;
var posLoc = 0;
var colLoc = 1;
var activeSubscene = 85;
this.flags[85] = 1275;
this.zoom[85] = 1;
this.FOV[85] = 60;
this.viewport[85] = [0, 0, 504, 504];
this.userMatrix[85] = new CanvasMatrix4();
this.userMatrix[85].load([
-4.371139e-08, -0.8660254, 0.5, 0,
0, 0.5, 0.8660254, 0,
-1, 3.785517e-08, -2.185569e-08, 0,
0, 0, 0, 1
]);
this.clipplanes[85] = [];
this.opaque[85] = [91,93,94,95,98,99,100,101,102,103,105,106,107,108,109,110,111,112];
this.transparent[85] = [104];
this.subscenes[85] = [];
function getPowerOfTwo(value) {
var pow = 1;
while(pow<value) {
pow *= 2;
}
return pow;
}
function handleLoadedTexture(texture, textureCanvas) {
gl.pixelStorei(gl.UNPACK_FLIP_Y_WEBGL, true);
gl.bindTexture(gl.TEXTURE_2D, texture);
gl.texImage2D(gl.TEXTURE_2D, 0, gl.RGBA, gl.RGBA, gl.UNSIGNED_BYTE, textureCanvas);
gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MAG_FILTER, gl.LINEAR);
gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MIN_FILTER, gl.LINEAR_MIPMAP_NEAREST);
gl.generateMipmap(gl.TEXTURE_2D);
gl.bindTexture(gl.TEXTURE_2D, null);
}
function loadImageToTexture(filename, texture) {   
var canvas = document.getElementById("plot_3d4textureCanvas");
var ctx = canvas.getContext("2d");
var image = new Image();
image.onload = function() {
var w = image.width;
var h = image.height;
var canvasX = getPowerOfTwo(w);
var canvasY = getPowerOfTwo(h);
canvas.width = canvasX;
canvas.height = canvasY;
ctx.imageSmoothingEnabled = true;
ctx.drawImage(image, 0, 0, canvasX, canvasY);
handleLoadedTexture(texture, canvas);
plot_3d4rgl.drawScene();
}
image.src = filename;
}  	   
function drawTextToCanvas(text, cex) {
var canvasX, canvasY;
var textX, textY;
var textHeight = 20 * cex;
var textColour = "white";
var fontFamily = "Arial";
var backgroundColour = "rgba(0,0,0,0)";
var canvas = document.getElementById("plot_3d4textureCanvas");
var ctx = canvas.getContext("2d");
ctx.font = textHeight+"px "+fontFamily;
canvasX = 1;
var widths = [];
for (var i = 0; i < text.length; i++)  {
widths[i] = ctx.measureText(text[i]).width;
canvasX = (widths[i] > canvasX) ? widths[i] : canvasX;
}	  
canvasX = getPowerOfTwo(canvasX);
var offset = 2*textHeight; // offset to first baseline
var skip = 2*textHeight;   // skip between baselines	  
canvasY = getPowerOfTwo(offset + text.length*skip);
canvas.width = canvasX;
canvas.height = canvasY;
ctx.fillStyle = backgroundColour;
ctx.fillRect(0, 0, ctx.canvas.width, ctx.canvas.height);
ctx.fillStyle = textColour;
ctx.textAlign = "left";
ctx.textBaseline = "alphabetic";
ctx.font = textHeight+"px "+fontFamily;
for(var i = 0; i < text.length; i++) {
textY = i*skip + offset;
ctx.fillText(text[i], 0,  textY);
}
return {canvasX:canvasX, canvasY:canvasY,
widths:widths, textHeight:textHeight,
offset:offset, skip:skip};
}
// ****** sphere object ******
var sphereBuf = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, sphereBuf);
gl.bufferData(gl.ARRAY_BUFFER, plot_3d1rgl.sphereverts, gl.STATIC_DRAW);
var sphereIbuf = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, sphereIbuf);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, plot_3d1rgl.spherefaces, gl.STATIC_DRAW);
// ****** points object 91 ******
this.flags[91] = 0;
this.prog[91]  = gl.createProgram();
gl.attachShader(this.prog[91], this.getShader( gl, "plot_3d4vshader91" ));
gl.attachShader(this.prog[91], this.getShader( gl, "plot_3d4fshader91" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[91], 0, "aPos");
gl.bindAttribLocation(this.prog[91], 1, "aCol");
gl.linkProgram(this.prog[91]);
this.offsets[91]={vofs:0, cofs:3, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:7};
var v=new Float32Array([
-0.00886681, 0.0238644, 0.0217746, 0, 1, 1, 1,
-0.0124726, 0.0247746, 0.0254585, 0, 1, 1, 1,
-0.0147315, 0.0281533, 0.0238545, 0, 1, 1, 1,
-0.0140497, 0.0274399, 0.00957505, 0, 1, 1, 1,
-0.0116447, 0.0287953, 0.01982, 0, 1, 1, 1,
-0.0135256, 0.0311266, 0.0226846, 0, 1, 1, 1,
-0.0146697, 0.0281732, 0.00270888, 0, 1, 1, 1,
-0.0122709, 0.0273632, 0.00629289, 0, 1, 1, 1,
-0.013305, 0.0293633, 0.00633912, 0, 1, 1, 1,
-0.0122756, 0.0262672, 0.00976935, 0, 1, 1, 1,
-0.011765, 0.0251295, 0.0118895, 0, 1, 1, 1,
-0.0128186, 0.028081, 0.00958605, 0, 1, 1, 1,
-0.0116086, 0.0294887, 0.00805614, 0, 1, 1, 1,
-0.0113447, 0.0307663, 0.00405527, 0, 1, 1, 1,
-0.0148581, 0.0237257, 0.0160082, 0, 1, 1, 1,
-0.010788, 0.0238892, 0.0226584, 0, 1, 1, 1,
-0.0148937, 0.0232955, 0.0101953, 0, 1, 1, 1,
-0.00875168, 0.0261604, 0.0121802, 0, 1, 1, 1,
-0.008739, 0.0261481, 0.0122728, 0, 1, 1, 1,
-0.0108659, 0.0259289, 0.00106272, 0, 1, 1, 1,
-0.0130502, 0.0270812, 0.0183305, 0, 1, 1, 1,
-0.0134347, 0.0270132, 0.0229292, 0, 1, 1, 1,
-0.0118617, 0.0220373, 0.0105775, 0, 1, 1, 1,
-0.0130059, 0.0245835, 0.0192892, 0, 1, 1, 1,
-0.0102875, 0.0258827, 0.0208538, 0, 1, 1, 1,
-0.00910839, 0.0257005, 0.00618984, 0, 1, 1, 1,
-0.0128356, 0.0225055, 0.00960733, 0, 1, 1, 1,
-0.0112344, 0.0276306, 0.0114346, 0, 1, 1, 1,
-0.0106106, 0.0278096, 0.00194201, 0, 1, 1, 1,
-0.0115198, 0.0292207, 0.00294633, 0, 1, 1, 1,
-0.0133883, 0.028673, 0.0164389, 0, 1, 1, 1,
-0.0109423, 0.0290064, 0.0218431, 0, 1, 1, 1,
-0.0148488, 0.0259077, 0.0115755, 0, 1, 1, 1,
-0.0107891, 0.0257524, 0.00616149, 0, 1, 1, 1,
-0.0106291, 0.0269203, 0.0228778, 0, 1, 1, 1,
-0.0161089, 0.0275971, 0.0192198, 0, 1, 1, 1,
-0.0132678, 0.0258366, 0.0163521, 0, 1, 1, 1,
-0.0149124, 0.0251342, 0.00388131, 0, 1, 1, 1,
-0.0114892, 0.0274352, 0.00899298, 0, 1, 1, 1,
-0.0117562, 0.0245922, 0.0136363, 0, 1, 1, 1,
-0.0122278, 0.0271677, 0.0112234, 0, 1, 1, 1,
-0.01029, 0.0277564, 0.0160115, 0, 1, 1, 1,
-0.0121964, 0.0309241, 0.0139494, 0, 1, 1, 1,
-0.0129751, 0.0271331, 0.0260444, 0, 1, 1, 1,
-0.0125756, 0.0265999, 0.0224468, 0, 1, 1, 1,
-0.0127859, 0.027101, 0.0191604, 0, 1, 1, 1,
-0.00998233, 0.0253795, 0.00685042, 0, 1, 1, 1,
-0.0133536, 0.028689, 0.0051763, 0, 1, 1, 1,
-0.0117333, 0.0277402, 0.00381405, 0, 1, 1, 1,
-0.0147853, 0.0295933, 0.00968847, 0, 1, 1, 1,
-0.0109685, 0.0223538, 0.0143111, 0, 1, 1, 1,
-0.0096918, 0.0249463, 0.00704751, 0, 1, 1, 1,
-0.0155493, 0.0266224, 0.00516269, 0, 1, 1, 1,
-0.014836, 0.0276024, 0.0116228, 0, 1, 1, 1,
-0.00828352, 0.0252156, 0.0187242, 0, 1, 1, 1,
-0.0110414, 0.0293172, 0.00362714, 0, 1, 1, 1,
-0.0102891, 0.0257019, 0.00540398, 0, 1, 1, 1,
-0.0104394, 0.0259701, 0.00329733, 0, 1, 1, 1,
-0.00930721, 0.0261215, 0.00409051, 0, 1, 1, 1,
-0.0124193, 0.0257317, 0.0162523, 0, 1, 1, 1,
-0.0114044, 0.025375, 0.00361722, 0, 1, 1, 1,
-0.0112687, 0.0271153, 0.00987548, 0, 1, 1, 1,
-0.0135369, 0.0198464, 0.0192111, 0, 1, 1, 1,
-0.0134307, 0.0240167, 0.00338929, 0, 1, 1, 1,
-0.00581692, -0.000934194, -0.00182728, 0, 1, 1, 1,
-0.00992799, 0.0281201, 0.00421423, 0, 1, 1, 1,
-0.0163484, 0.0253598, 0.00679276, 0, 1, 1, 1,
-0.0153143, 0.0239155, 0.00922948, 0, 1, 1, 1,
-0.0130066, 0.0264895, 0.0219972, 0, 1, 1, 1,
-0.0123188, 0.0270323, 0.0130162, 0, 1, 1, 1,
-0.0149538, 0.0261319, 0.0246082, 0, 1, 1, 1,
-0.00848068, 0.0244795, 0.0126147, 0, 1, 1, 1,
-0.009655, 0.026754, 0.0151766, 0, 1, 1, 1,
-0.0110317, 0.0247415, 0.0169718, 0, 1, 1, 1,
-0.0105467, 0.0216758, 0.0273625, 0, 1, 1, 1,
-0.0111351, 0.0298442, 0.0137315, 0, 1, 1, 1,
-0.0148939, 0.0282641, 0.0180507, 0, 1, 1, 1,
-0.0133113, 0.0255374, 0.0156552, 0, 1, 1, 1,
-0.0152238, 0.0253733, 0.0118128, 0, 1, 1, 1,
-0.0165117, 0.0254165, 0.0210366, 0, 1, 1, 1,
-0.0172562, 0.026341, 0.0224113, 0, 1, 1, 1,
-0.0138025, 0.0277873, 0.00395365, 0, 1, 1, 1,
-0.0135819, 0.0270152, 0.00695362, 0, 1, 1, 1,
-0.0116353, 0.0256155, 0.000289371, 0, 1, 1, 1,
-0.0149184, 0.0238256, -0.00270158, 0, 1, 1, 1,
-0.0114351, 0.0271658, 0.0125575, 0, 1, 1, 1,
-0.01436, 0.0264762, 0.0173609, 0, 1, 1, 1,
-0.0128438, 0.0268224, 0.00444834, 0, 1, 1, 1,
-0.0120046, 0.0230234, 0.00796341, 0, 1, 1, 1,
-0.0126985, 0.0258126, 0.00514686, 0, 1, 1, 1,
-0.0135831, 0.0249755, 0.0107284, 0, 1, 1, 1,
-0.0121259, 0.0280823, 0.020544, 0, 1, 1, 1,
-0.0141439, 0.0265254, 0.0258433, 0, 1, 1, 1,
-0.0138132, 0.0284247, 0.0101188, 0, 1, 1, 1,
-0.013572, 0.0269507, 0.00688972, 0, 1, 1, 1,
-0.0113011, 0.0268327, 0.0184482, 0, 1, 1, 1,
-0.0100601, 0.0264789, 0.0212786, 0, 1, 1, 1,
-0.0113299, 0.0282418, 0.00866489, 0, 1, 1, 1,
-0.0114925, 0.0272719, 0.0170049, 0, 1, 1, 1,
-0.0104039, 0.0283855, 0.0100799, 0, 1, 1, 1,
-0.00956386, 0.0268284, 0.0101297, 0, 1, 1, 1,
-0.0121363, 0.0224437, 0.00471969, 0, 1, 1, 1,
-0.0129748, 0.0260496, 0.0176977, 0, 1, 1, 1,
-0.0128936, 0.0280627, 0.00938281, 0, 1, 1, 1,
-0.0114891, 0.0247891, 0.0130035, 0, 1, 1, 1,
-0.00577137, 0.0112307, -0.0490284, 0, 1, 1, 1,
-0.0102643, 0.0267855, 0.0104728, 0, 1, 1, 1,
-0.0123468, 0.0265473, 0.016931, 0, 1, 1, 1,
-0.0097784, 0.0252052, 0.00928465, 0, 1, 1, 1,
-0.0117949, 0.0233834, 0.0122081, 0, 1, 1, 1,
-0.0128608, 0.0249954, 0.0176076, 0, 1, 1, 1,
-0.0129981, 0.0257737, 0.0155265, 0, 1, 1, 1,
-0.0134316, 0.02653, 0.00353212, 0, 1, 1, 1,
-0.00935833, 0.0318374, 0.0100076, 0, 1, 1, 1,
-0.0113107, 0.0303198, 0.0116077, 0, 1, 1, 1,
-0.0131245, 0.0298223, 0.00180678, 0, 1, 1, 1,
-0.0133191, 0.0293408, 0.00662741, 0, 1, 1, 1,
-0.0138591, 0.0261048, 0.000836834, 0, 1, 1, 1,
-0.0150174, 0.0231497, -0.00112857, 0, 1, 1, 1,
-0.0110389, 0.0248572, 0.00176283, 0, 1, 1, 1,
-0.0118715, 0.0275812, 0.0178639, 0, 1, 1, 1,
-0.0129834, 0.0259341, 0.0186928, 0, 1, 1, 1,
-0.010557, 0.0273327, 0.00990001, 0, 1, 1, 1,
-0.0111681, 0.0273472, 0.00617783, 0, 1, 1, 1,
-0.0101689, 0.0280639, 0.00864267, 0, 1, 1, 1,
-0.00927365, 0.0255201, 0.0130722, 0, 1, 1, 1,
-0.010756, 0.0260178, 0.0154469, 0, 1, 1, 1,
-0.0122762, 0.0266211, 0.00832697, 0, 1, 1, 1,
-0.0132575, 0.0299597, 0.014467, 0, 1, 1, 1,
-0.0114548, 0.0255468, 0.0189329, 0, 1, 1, 1,
-0.00934806, 0.0252484, 0.00733987, 0, 1, 1, 1,
-0.0142405, 0.0279119, 0.0149429, 0, 1, 1, 1,
-0.0133535, 0.0262824, 0.00311826, 0, 1, 1, 1,
-0.0135127, 0.0255778, -0.0113687, 0, 1, 1, 1,
-0.0121261, 0.0260542, 0.0169802, 0, 1, 1, 1,
-0.0133854, 0.0276628, 0.00624653, 0, 1, 1, 1,
-0.0129197, 0.0294731, 0.0139965, 0, 1, 1, 1,
-0.010358, 0.0239915, 0.0158709, 0, 1, 1, 1,
-0.0116095, 0.0243185, 0.0147471, 0, 1, 1, 1,
-0.0114546, 0.0261468, 0.0128631, 0, 1, 1, 1,
-0.0123456, 0.0285583, 0.00628408, 0, 0, 1, 1,
-0.0117925, 0.0253189, 0.0229664, 0, 0, 1, 1,
-0.0111225, 0.0262298, 0.0113142, 0, 0, 1, 1,
-0.010842, 0.0316673, 0.00262647, 0, 0, 1, 1,
-0.011003, 0.0292021, 0.00452867, 0, 0, 1, 1,
-0.0126318, 0.0264219, 0.022668, 0, 0, 1, 1,
-0.0110824, 0.0288873, 0.0175002, 0, 0, 1, 1,
-0.0137003, 0.029149, 0.00303409, 0, 0, 1, 1,
-0.0145364, 0.0258709, 0.00658553, 0, 0, 1, 1,
-0.00964667, 0.0252294, 0.00449265, 0, 0, 1, 1,
-0.0111937, 0.0281303, 0.0123027, 0, 0, 1, 1,
-0.0133546, 0.0244159, 0.0072153, 0, 0, 1, 1,
-0.0107568, 0.0287884, 0.0102288, 0, 0, 1, 1,
-0.0107723, 0.029073, 0.0209563, 0, 0, 1, 1,
-0.0137524, 0.0242893, 0.0140332, 0, 0, 1, 1,
-0.0135108, 0.0276608, 0.0147682, 0, 0, 1, 1,
-0.0113502, 0.0290479, 0.0100188, 0, 0, 1, 1,
-0.0140521, 0.0284237, 0.0121027, 0, 0, 1, 1,
-0.0133882, 0.0246725, 0.0109641, 0, 0, 1, 1,
-0.00934879, 0.0254398, 0.0251435, 0, 0, 1, 1,
-0.00814159, 0.02766, 0.0161029, 0, 0, 1, 1,
-0.0124137, 0.0259852, 0.0218082, 0, 0, 1, 1,
-0.0116249, 0.0263818, 0.000654635, 0, 0, 1, 1,
-0.0101555, 0.0250924, 0.0130751, 0, 0, 1, 1,
-0.0111079, 0.0274088, 0.0107658, 0, 0, 1, 1,
-0.00997544, 0.0294545, 0.011948, 0, 0, 1, 1,
-0.0107696, 0.0283827, 0.0114661, 0, 0, 1, 1,
-0.011611, 0.0281942, 0.0162057, 0, 0, 1, 1,
-0.0130192, 0.0279643, 0.0149605, 0, 0, 1, 1,
-0.0117091, 0.0281119, 0.0134414, 0, 0, 1, 1,
-0.00799466, 0.0300204, 0.00767195, 0, 0, 1, 1,
-0.0081185, 0.0264686, 0.0116146, 0, 0, 1, 1,
-0.0118704, 0.0273652, 0.0176032, 0, 0, 1, 1,
-0.0114452, 0.0290366, 0.0107144, 0, 0, 1, 1,
-0.0138727, 0.0237636, 0.00785003, 0, 0, 1, 1,
-0.011103, 0.0269406, 0.00734299, 0, 0, 1, 1,
-0.0109101, 0.0252827, 0.0169859, 0, 0, 1, 1,
-0.0127791, 0.0272729, 0.0143903, 0, 0, 1, 1,
-0.0108161, 0.0266715, 0.0169653, 0, 0, 1, 1,
-0.00959507, 0.0230123, 0.013315, 0, 0, 1, 1,
-0.0112786, 0.0285827, 0.0123404, 0, 0, 1, 1,
-0.013363, 0.0283886, 0.0184319, 0, 0, 1, 1,
-0.0101642, 0.0270854, -0.00282684, 0, 0, 1, 1,
-0.0110129, 0.0273035, 0.0163956, 0, 0, 1, 1,
-0.0105986, 0.0252297, 0.0141097, 0, 0, 1, 1,
-0.0172698, 0.0292374, 0.0143851, 0, 0, 1, 1,
-0.0102307, 0.0286338, 0.00902648, 0, 0, 1, 1,
-0.0123649, 0.0259511, 0.0156091, 0, 0, 1, 1,
-0.010754, 0.0290541, 0.00828693, 0, 0, 1, 1,
-0.0134661, 0.0262762, 0.00974057, 0, 0, 1, 1,
-0.0107807, 0.0282124, 0.0121875, 0, 0, 1, 1,
-0.0127756, 0.0283086, 0.0238306, 0, 0, 1, 1,
-0.0118563, 0.0237655, 0.00566439, 0, 0, 1, 1,
-0.0107849, 0.0297388, 0.00567507, 0, 0, 1, 1,
-0.0117523, 0.0273594, 0.0215876, 0, 0, 1, 1,
-0.0116881, 0.0218703, 0.0105175, 0, 0, 1, 1,
-0.0129286, 0.0207332, 0.00644358, 0, 0, 1, 1,
-0.013719, 0.0291585, 0.00655579, 0, 0, 1, 1,
-0.0135172, 0.0259411, 0.0053278, 0, 0, 1, 1,
-0.0120476, 0.0166544, 0.00572823, 0, 0, 1, 1,
-0.0137358, 0.02196, 0.0243654, 0, 0, 1, 1,
-0.0171736, 0.0204457, -0.000488194, 0, 0, 1, 1,
-0.0126523, 0.0223724, 0.0179309, 0, 0, 1, 1,
-0.0156941, 0.0264025, -0.000676673, 0, 0, 1, 1,
-0.0150322, 0.0213523, 0.00899962, 0, 0, 1, 1,
-0.0137382, 0.0207818, 0.00312067, 0, 0, 1, 1,
-0.0117617, 0.0238395, 0.00826143, 0, 0, 1, 1,
-0.0136822, 0.0232097, 0.013168, 0, 0, 1, 1,
-0.0103771, 0.0248488, 0.0100654, 0, 0, 1, 1,
-0.0118399, 0.0226848, 0.027003, 0, 0, 1, 1,
-0.0123068, 0.0219538, -0.000466468, 0, 0, 1, 1,
-0.0116785, 0.0309281, 0.00863269, 0, 0, 1, 1,
-0.0102603, 0.0261693, 0.00966214, 0, 0, 1, 1,
-0.0115228, 0.024125, 0.00985874, 0, 0, 1, 1,
-0.011637, 0.0297508, 0.0108957, 0, 0, 1, 1,
-0.00911545, 0.0295601, 0.00771114, 0, 0, 1, 1,
-0.0120582, 0.0284058, -0.00147242, 0, 0, 1, 1,
-0.0131449, 0.0253438, 0.0145489, 0, 0, 1, 1,
-0.0139409, 0.0270412, 0.0116015, 0, 0, 1, 1,
-0.0115097, 0.0281264, 0.0150466, 0, 0, 1, 1,
-0.0104537, 0.0313729, 0.017718, 0, 0, 1, 1,
-0.01003, 0.0253202, 0.017903, 0, 0, 1, 1,
-0.0116143, 0.0283412, 0.0129812, 0, 0, 1, 1,
-0.0131945, 0.0291524, 0.00509658, 0, 0, 1, 1,
-0.010053, 0.0271655, 0.0143403, 0, 0, 1, 1,
-0.00915117, 0.0241514, 0.0124749, 0, 0, 1, 1,
-0.00756656, 0.0262734, 0.00467394, 0, 0, 1, 1,
-0.0106447, 0.0248234, 0.0132472, 0, 0, 1, 1,
-0.0131976, 0.0254255, 0.00522041, 0, 0, 1, 1,
-0.0139171, 0.0280579, 0.0119584, 0, 0, 1, 1,
-0.0130388, 0.0267563, -0.000893618, 0, 0, 1, 1,
-0.0113769, 0.0296269, 0.0288852, 0, 0, 1, 1,
-0.0101904, 0.0258474, 0.0037858, 0, 0, 1, 1,
-0.0109709, 0.0280555, 0.0177659, 0, 0, 1, 1,
-0.012875, 0.0275396, 0.0172013, 0, 0, 1, 1,
-0.00913852, 0.0262472, 0.0179264, 0, 0, 1, 1,
-0.0113798, 0.0246484, 0.00395389, 0, 0, 1, 1,
-0.0110402, 0.0270359, 0.017079, 0, 0, 1, 1,
-0.0119093, 0.0273195, 0.00695805, 0, 0, 1, 1,
-0.0142024, 0.0274331, 0.0115534, 0, 0, 1, 1,
-0.0117034, 0.0268889, 0.0180925, 0, 0, 1, 1,
-0.0103303, 0.0259325, 0.00457057, 0, 0, 1, 1,
-0.0141989, 0.0257875, 0.0105864, 0, 0, 1, 1,
-0.0117826, 0.0286291, 0.0166398, 0, 0, 1, 1,
-0.0142497, 0.0243231, 0.00801615, 0, 0, 1, 1,
-0.0139552, 0.0239337, 0.0137122, 0, 0, 1, 1,
-0.0136743, 0.0242532, 0.00341549, 0, 0, 1, 1,
-0.0113042, 0.0235413, 0.00977782, 0, 0, 1, 1,
-0.0154653, 0.0235517, 0.0117982, 0, 0, 1, 1,
-0.0165242, 0.0237881, 0.018162, 0, 0, 1, 1,
-0.0115394, 0.0185159, 0.0147025, 0, 0, 1, 1,
-0.0129897, 0.0202159, 0.00928637, 0, 0, 1, 1,
-0.0134737, 0.0223773, 0.0078958, 0, 0, 1, 1,
-0.0106927, 0.0240148, 0.0107681, 0, 0, 1, 1,
-0.00957613, 0.0245013, -0.00265688, 0, 0, 1, 1,
-0.0144325, 0.0214823, 0.0153915, 0, 0, 1, 1,
-0.011182, 0.0213535, 0.0165707, 0, 0, 1, 1,
-0.0160512, 0.0212972, 0.00828121, 0, 0, 1, 1,
-0.0127985, 0.0240445, 0.000725888, 0, 0, 1, 1,
-0.0119454, 0.0224038, 0.0128598, 0, 0, 1, 1,
-0.0136061, 0.0210214, 0.00988697, 0, 0, 1, 1,
-0.0145131, 0.0210188, 0.000633065, 0, 0, 1, 1,
-0.0137346, 0.0234757, 0.0108352, 0, 0, 1, 1,
-0.0135633, 0.0245155, 0.00819555, 0, 0, 1, 1,
-0.0104922, 0.0241871, 0.0156222, 0, 0, 1, 1,
-0.0134902, 0.0247944, -0.00430758, 0, 0, 1, 1,
-0.0145296, 0.0236375, 0.00979734, 0, 0, 1, 1,
-0.0138629, 0.025616, 0.0124037, 0, 0, 1, 1,
-0.0143111, 0.0195784, 0.00154331, 0, 0, 1, 1,
-0.0123259, 0.0226787, 0.0200938, 0, 0, 1, 1,
-0.0135332, 0.0210848, 0.0113033, 0, 0, 1, 1,
-0.0138219, 0.0236944, 0.0096544, 0, 0, 1, 1,
-0.0145693, 0.0197255, 0.00578477, 0, 0, 1, 1,
-0.0133557, 0.0233927, 0.0162397, 0, 0, 1, 1,
-0.0126798, 0.0216866, 0.0104805, 0, 0, 1, 1,
-0.0145758, 0.022478, 0.0114166, 0, 0, 1, 1,
-0.00980388, 0.020673, 0.0109155, 0, 0, 1, 1,
-0.00989465, 0.0275465, 0.0145505, 0, 0, 1, 1,
-0.0129017, 0.0235914, 0.0152216, 0, 0, 1, 1,
-0.0120715, 0.025734, 0.0191858, 0, 0, 1, 1,
-0.00993314, 0.0219645, 0.00870267, 0, 0, 1, 1,
-0.0144075, 0.0234614, 0.023235, 0, 0, 1, 1,
-0.0142202, 0.0268766, 0.0152755, 0, 0, 1, 1,
-0.0129626, 0.023574, 0.00601518, 0, 0, 1, 1,
-0.0131421, 0.0211668, 0.0217402, 0, 0, 1, 1,
-0.0152594, 0.0196937, -0.00193413, 0, 0, 1, 1,
-0.0147942, 0.0210297, 0.00609799, 0, 0, 1, 1,
-0.0105986, 0.0234168, 0.0102144, 0, 0, 1, 1,
-0.0132185, 0.019576, 0.0040235, 0, 0, 1, 1,
-0.0118088, 0.0232633, 0.00816838, 0, 0, 1, 1,
-0.0152803, 0.020936, 0.00739438, 0, 0, 1, 1,
-0.012553, 0.0194701, 0.0118699, 0, 0, 1, 1,
-0.0112282, 0.026829, 0.0187078, 0, 0, 1, 1,
-0.0137843, 0.0238832, 0.00750988, 0, 0, 1, 1,
-0.0136395, 0.0211789, 0.0162951, 0, 0, 1, 1,
-0.011906, 0.0236646, 0.0212473, 0, 0, 1, 1,
-0.0113808, 0.0240892, 0.00879046, 0, 0, 1, 1,
-0.0104013, 0.0250219, 0.00360141, 0, 0, 1, 1,
-0.015148, 0.0235485, 0.0149889, 0, 0, 1, 1,
-0.0134383, 0.0246615, 0.00899002, 0, 0, 1, 1,
-0.0120465, 0.0217984, 0.00884514, 0, 0, 1, 1,
-0.0149625, 0.0247689, 0.0173242, 0, 0, 1, 1,
-0.01799, 0.0269095, 0.000534468, 0, 0, 1, 1,
-0.0146238, 0.0229473, 0.00369307, 0, 0, 1, 1,
-0.0129095, 0.0256003, 0.00587418, 0, 0, 1, 1,
-0.0139598, 0.0214938, 0.00569978, 0, 0, 1, 1,
-0.0127245, 0.0182578, 0.00888825, 0, 0, 1, 1,
-0.0122696, 0.0222292, 0.0173431, 0, 0, 1, 1,
-0.0135996, 0.0226041, 0.0125327, 0, 0, 1, 1,
-0.0112277, 0.0259577, 0.0124669, 0, 0, 1, 1,
-0.0162406, 0.0207383, 0.00822197, 0, 0, 1, 1,
-0.0164621, 0.0256774, 0.00515605, 0, 0, 1, 1,
-0.0131916, 0.0223769, 0.00730401, 0, 0, 1, 1,
-0.0115478, 0.0214912, 0.0119866, 0, 0, 1, 1,
-0.0147473, 0.0256742, 0.008772, 0, 0, 1, 1,
-0.0116873, 0.0242674, 0.00475976, 0, 0, 1, 1,
-0.011117, 0.028515, 0.00157371, 0, 0, 1, 1,
-0.012997, 0.0250226, 0.00972486, 0, 0, 1, 1,
-0.016551, 0.0191626, 0.0156221, 0, 0, 1, 1,
-0.0142064, 0.022434, 0.0142188, 0, 0, 1, 1,
-0.0121835, 0.0199018, 0.0170425, 0, 0, 1, 1,
-0.0228269, -0.0475654, 0.00907309, 0, 0.8039216, 0, 1,
-0.0228553, -0.0488415, 0.0137005, 0, 0.8039216, 0, 1,
-0.0222122, -0.0457324, 0.012512, 0, 0.8039216, 0, 1,
-0.0247551, -0.0460549, 0.00507055, 0, 0.8039216, 0, 1,
-0.02469, -0.046895, 0.0163472, 0, 0.8039216, 0, 1,
-0.021029, -0.046606, 0.0135468, 0, 0.8039216, 0, 1,
-0.0218419, -0.0447786, 0.00498552, 0, 0.8039216, 0, 1,
-0.0195952, -0.0458457, 0.0214694, 0, 0.8039216, 0, 1,
-0.0230239, -0.0471733, 0.00814306, 0, 0.8039216, 0, 1,
-0.0218452, -0.0440416, 0.0113722, 0, 0.8039216, 0, 1,
-0.0201676, -0.0462737, 0.00447752, 0, 0.8039216, 0, 1,
-0.0227843, -0.0478824, 0.0085774, 0, 0.8039216, 0, 1,
-0.0197834, -0.0458426, 0.0184392, 0, 0.8039216, 0, 1,
-0.0207643, -0.0430267, 0.00884501, 0, 0.8039216, 0, 1,
-0.0206854, -0.0472078, 0.0154503, 0, 0.8039216, 0, 1,
-0.0251057, -0.0430754, 0.0208066, 0, 0.8039216, 0, 1,
-0.0195262, -0.0461964, 0.0086836, 0, 0.8039216, 0, 1,
-0.0197042, -0.0462707, 0.00125627, 0, 0.8039216, 0, 1,
-0.0203137, -0.0461741, 0.0147652, 0, 0.8039216, 0, 1,
-0.0224587, -0.0433645, 0.0142032, 0, 0.8039216, 0, 1,
-0.0214331, -0.0465056, 0.0153838, 0, 0.8039216, 0, 1,
-0.0200086, -0.044871, 0.0124984, 0, 0.8039216, 0, 1,
-0.0226511, -0.0441368, 0.0149426, 0, 0.8039216, 0, 1,
-0.0216865, -0.0465115, 0.00528324, 0, 0.8039216, 0, 1,
-0.0203666, -0.0453889, 0.0136757, 0, 0.8039216, 0, 1,
-0.0202521, -0.04288, 0.0117181, 0, 0.8039216, 0, 1,
-0.0215928, -0.0474487, 0.00474726, 0, 0.8039216, 0, 1,
-0.0217943, -0.0458128, 0.0146455, 0, 0.8039216, 0, 1,
-0.0201348, -0.0502583, 0.00825623, 0, 0.8039216, 0, 1,
-0.0206457, -0.0438358, 0.0188701, 0, 0.8039216, 0, 1,
-0.0211507, -0.0498435, 0.0258304, 0, 0.8039216, 0, 1,
-0.0226475, -0.0481702, 0.0193757, 0, 0.8039216, 0, 1,
-0.0244167, -0.0485593, 0.0124118, 0, 0.8039216, 0, 1,
-0.0227296, -0.0482857, 0.0189768, 0, 0.8039216, 0, 1,
-0.0218232, -0.0444051, 0.0105841, 0, 0.8039216, 0, 1,
-0.0215404, -0.0446985, 0.0112267, 0, 0.8039216, 0, 1,
-0.0211552, -0.0460471, 0.0119572, 0, 0.8039216, 0, 1,
-0.0216532, -0.0482607, 0.00964503, 0, 0.8039216, 0, 1,
-0.0246026, -0.0445038, 0.00968899, 0, 0.8039216, 0, 1,
-0.0196496, -0.046784, 0.0200917, 0, 0.8039216, 0, 1,
-0.0208572, -0.0487035, 0.0114415, 0, 0.8039216, 0, 1,
-0.0206629, -0.048254, 0.0162294, 0, 0.8039216, 0, 1,
-0.0214662, -0.0464055, 0.00799757, 0, 0.8039216, 0, 1,
-0.0174488, -0.0467871, 0.00752603, 0, 0.8039216, 0, 1,
-0.00795485, 0.00812255, -0.0498788, 1, 0, 0, 1,
-0.00790179, 0.022487, -0.00377724, 1, 0, 0, 1,
-0.0219649, -0.0475438, 0.0180097, 0, 0.8039216, 0, 1,
-0.0195713, -0.048466, 0.0105929, 0, 0.8039216, 0, 1,
-0.024775, -0.0441433, 0.0175566, 0, 0.8039216, 0, 1,
-0.0197837, -0.048666, 0.0123438, 0, 0.8039216, 0, 1,
-0.0214265, -0.0485158, 0.00988444, 0, 0.8039216, 0, 1,
-0.0200393, -0.0432384, 0.00318714, 0, 0.8039216, 0, 1,
-0.0209152, -0.0473638, 0.0107885, 0, 0.8039216, 0, 1,
-0.0229248, -0.0476456, 0.0154964, 0, 0.8039216, 0, 1,
-0.0209049, -0.0451975, 0.0116402, 0, 0.8039216, 0, 1,
-0.0221954, -0.0479599, 0.00898107, 0, 0.8039216, 0, 1,
-0.0201608, -0.0485583, 0.0130871, 0, 0.8039216, 0, 1,
-0.0215961, -0.0487806, 0.017531, 0, 0.8039216, 0, 1,
-0.019295, -0.0451161, 0.0111203, 0, 0.8039216, 0, 1,
-0.0188937, -0.0440494, 0.0184203, 0, 0.8039216, 0, 1,
-0.0193894, -0.0436929, 0.0147046, 0, 0.8039216, 0, 1,
-0.0204134, -0.0432386, 0.0117079, 0, 0.8039216, 0, 1,
-0.0209705, -0.0481781, 0.016546, 0, 0.8039216, 0, 1,
-0.0190802, -0.0465624, 0.00427869, 0, 0.8039216, 0, 1,
-0.0205383, -0.0482517, 0.0135549, 0, 0.8039216, 0, 1,
-0.0247985, -0.0479872, 0.00635899, 0, 0.8039216, 0, 1,
-0.0237976, -0.0468474, 0.0123341, 0, 0.8039216, 0, 1,
-0.0211247, -0.0447158, 0.00910297, 0, 0.8039216, 0, 1,
-0.023983, -0.0469959, 0.015858, 0, 0.8039216, 0, 1,
-0.0220285, -0.0468321, 0.0125847, 0, 0.8039216, 0, 1,
-0.022514, -0.0462394, 0.0074289, 0, 0.8039216, 0, 1,
-0.0225103, -0.0441683, 0.0244713, 0, 0.8039216, 0, 1,
-0.0198123, -0.0436045, 0.0123578, 0, 0.8039216, 0, 1,
-0.0201426, -0.044296, 0.0171682, 0, 0.8039216, 0, 1,
-0.0213056, -0.0442843, -0.00302645, 0, 0.8039216, 0, 1,
-0.0196703, -0.0476107, 0.015761, 0, 0.8039216, 0, 1,
-0.02276, -0.0451804, 0.0260088, 0, 0.8039216, 0, 1,
-0.0243454, -0.0477497, 0.0186077, 0, 0.8039216, 0, 1,
-0.00415007, 0.0152267, -0.0201872, 1, 0, 0, 1,
0.00722696, 0.0149141, 0.00166637, 1, 0, 0, 1,
-0.00499204, 0.00775787, -0.041528, 1, 0, 0, 1,
-0.001841, 0.00643312, -0.0448911, 1, 0, 0, 1,
-0.0238504, -0.0420786, 0.0167263, 0, 0.8039216, 0, 1,
-0.021683, -0.0474585, 0.011902, 0, 0.8039216, 0, 1,
-0.0215727, -0.044023, 0.0231612, 0, 0.8039216, 0, 1,
-0.0246791, -0.0437182, 0.0106413, 0, 0.8039216, 0, 1,
-0.0199913, -0.0427926, 0.01477, 0, 0.8039216, 0, 1,
-0.0207957, -0.0456033, 0.0186144, 0, 0.8039216, 0, 1,
-0.0218088, -0.0480775, 0.00958459, 0, 0.8039216, 0, 1,
-0.0220589, -0.0474776, 0.0116932, 0, 0.8039216, 0, 1,
-0.0221075, -0.0439485, 0.0137618, 0, 0.8039216, 0, 1,
-0.0186216, -0.0472467, 0.0179583, 0, 0.8039216, 0, 1,
-0.0220028, -0.0411969, 0.00902925, 0, 0.8039216, 0, 1,
-0.0177109, -0.0446931, 0.00978712, 0, 0.8039216, 0, 1,
-0.0226301, -0.0453304, 0.0149734, 0, 0.8039216, 0, 1,
-0.0192413, -0.0434504, 0.0265313, 0, 0.8039216, 0, 1,
-0.0213995, -0.0455914, 0.0236959, 0, 0.8039216, 0, 1,
-0.0231323, -0.0450802, 0.00225958, 0, 0.8039216, 0, 1,
-0.0226076, -0.0470682, 0.00750212, 0, 0.8039216, 0, 1,
-0.0211502, -0.0445104, 0.020368, 0, 0.8039216, 0, 1,
-0.0219155, -0.0462141, 0.0187958, 0, 0.8039216, 0, 1,
-0.0211568, -0.0471418, 0.0193367, 0, 0.8039216, 0, 1,
-0.0195172, -0.0437941, 0.0149742, 0, 0.8039216, 0, 1,
-0.0193142, -0.0452652, 0.0153511, 0, 0.8039216, 0, 1,
-0.0220431, -0.043637, 0.0107631, 0, 0.8039216, 0, 1,
-0.0226273, -0.045704, 0.0226994, 0, 0.8039216, 0, 1,
-0.0125134, 0.0160733, -0.0187445, 1, 0, 0, 1,
-0.00815361, 0.0152704, -0.0251956, 1, 0, 0, 1,
-0.00369676, 0.0187153, -0.0087253, 1, 0, 0, 1,
-0.00499599, 0.0142422, -0.0176737, 1, 0, 0, 1,
-0.00703697, 0.0234329, 0.00445764, 1, 0, 0, 1,
-0.00743565, 0.0117182, -0.0526328, 1, 0, 0, 1,
-0.0103198, 0.0197327, -0.00752555, 1, 0, 0, 1,
-0.00219664, 0.0189244, -0.0169659, 1, 0, 0, 1,
0.00107987, 0.0175363, -0.0288034, 1, 0, 0, 1,
0.0118171, 0.00921071, -0.0294031, 1, 0, 0, 1,
0.00407748, 0.0138401, -0.00154257, 1, 0, 0, 1,
-0.0090259, 0.0219026, -0.0174049, 1, 0, 0, 1,
-0.00259501, 0.0121949, -0.0357062, 1, 0, 0, 1,
0.000414678, 0.0189859, -0.0242961, 1, 0, 0, 1,
-0.00425692, 0.0213539, -0.0185576, 1, 0, 0, 1,
0.00528004, 0.0124796, -0.0315785, 1, 0, 0, 1,
-0.00377719, 0.0155882, -0.0214545, 1, 0, 0, 1,
-0.0101706, 0.0134759, -0.0217364, 1, 0, 0, 1,
-0.00280112, 0.0193844, -0.010868, 1, 0, 0, 1,
-0.0109744, 0.0176909, -0.0208527, 1, 0, 0, 1,
-0.00192708, 0.0125267, -0.0335617, 1, 0, 0, 1,
0.0015079, 0.0131907, -0.0283962, 1, 0, 0, 1,
-0.00609305, 0.0180503, -0.0239939, 1, 0, 0, 1,
-0.00926598, 0.0170506, -0.0120606, 1, 0, 0, 1,
-0.00251447, 0.0138641, -0.0269598, 1, 0, 0, 1,
0.00649685, 0.0177502, 7.03697e-05, 1, 0, 0, 1,
-0.00204832, 0.0191023, -0.0286585, 1, 0, 0, 1,
-0.000779358, 0.0155071, -0.0289354, 1, 0, 0, 1,
0.00104868, 0.0132606, -0.0306608, 1, 0, 0, 1,
-0.0033441, 0.0139588, -0.0396869, 1, 0, 0, 1,
-0.00308374, 0.0150683, -0.00627947, 1, 0, 0, 1,
0.00130953, 0.018247, 0.0017934, 1, 0, 0, 1,
0.0110746, 0.0132532, 0.00308229, 1, 0, 0, 1,
0.0376002, -0.00232169, -0.011391, 1, 0, 0, 1,
-0.00901396, 0.0219978, -0.0056065, 1, 0, 0, 1,
-0.0142024, 0.0128954, -0.0419118, 1, 0, 0, 1,
-0.00076747, -0.00263272, -0.0788129, 1, 0, 0, 1,
1.12434e-05, 0.0153257, -0.00481447, 1, 0, 0, 1,
-0.0108145, 0.0192073, -0.0106254, 1, 0, 0, 1,
-0.00424299, 0.0145319, -0.034137, 1, 0, 0, 1,
-0.0120438, 0.017742, -0.027269, 1, 0, 0, 1,
-0.0131151, 0.00897117, -0.0791053, 1, 0, 0, 1,
-0.00582257, 0.0181326, -0.022766, 1, 0, 0, 1,
-0.0118271, 0.00881032, -0.0481503, 1, 0, 0, 1,
-0.0163395, -0.000727704, -0.0804766, 1, 0, 0, 1,
0.00418304, 0.0115717, -0.0134308, 1, 0, 0, 1,
-0.00516328, 0.01625, -0.0156506, 1, 0, 0, 1,
-0.000433563, 0.0144896, -0.0179018, 1, 0, 0, 1,
-0.00128632, 0.0131526, -0.0217634, 1, 0, 0, 1,
-0.00580215, 0.0233271, 0.00579969, 1, 0, 0, 1,
-0.0105629, 0.0121982, -0.0325397, 1, 0, 0, 1,
-0.0070833, 0.0157445, -0.00707511, 1, 0, 0, 1,
-0.0018993, 0.0182465, -0.0231356, 1, 0, 0, 1,
-0.000344473, 0.00750842, -0.0530027, 1, 0, 0, 1,
0.0055304, 0.00949606, -0.0194561, 1, 0, 0, 1,
0.00366409, 0.0096184, -0.0501351, 1, 0, 0, 1,
0.00394971, 0.0168208, -0.0119509, 1, 0, 0, 1,
-0.00706465, 0.0168998, -0.0335573, 1, 0, 0, 1,
0.000451784, 0.012381, -0.0362242, 1, 0, 0, 1,
-0.000550207, 0.0145694, -0.025685, 1, 0, 0, 1,
-0.014948, 0.00766927, -0.0652735, 1, 0, 0, 1,
-0.014105, 0.00954769, -0.0551464, 1, 0, 0, 1,
-0.0161168, 0.00849367, -0.050229, 1, 0, 0, 1,
-0.0095565, 0.0137916, -0.0395294, 1, 0, 0, 1,
-0.00890177, 0.0164466, -0.0196737, 1, 0, 0, 1,
-0.00490347, -0.0075657, -0.103784, 1, 0, 0, 1,
-0.00906991, -0.00469661, -0.0840544, 1, 0, 0, 1,
-0.00686865, 0.0248223, 0.0111706, 1, 0, 0, 1,
-0.0152818, 0.00636432, -0.0884904, 1, 0, 0, 1,
-0.0119092, 0.011783, -0.0435033, 1, 0, 0, 1,
-0.0106919, 0.0282036, 0.0158341, 0, 0, 1, 1,
0.0155306, -0.00412843, -0.0723126, 1, 0, 0, 1,
-0.0104277, 0.00251749, -0.0931759, 1, 0, 0, 1,
-0.0107831, 0.0130857, -0.0291016, 1, 0, 0, 1,
-0.00221752, 0.000679596, -0.0861949, 1, 0, 0, 1,
-0.0136158, 0.00823717, -0.0485188, 1, 0, 0, 1,
-0.00677494, 0.0164935, -0.0118744, 1, 0, 0, 1,
-0.0113623, 0.0221216, -0.0146259, 1, 0, 0, 1,
-0.0105594, 0.019951, -0.0151026, 1, 0, 0, 1,
-0.0144775, 0.00864782, -0.0548592, 1, 0, 0, 1,
-0.0121341, 0.0115638, -0.0287352, 1, 0, 0, 1,
-0.0127917, 0.0134483, -0.0178458, 1, 0, 0, 1,
0.0129694, -9.40401e-05, -0.0463231, 1, 0, 0, 1,
-0.0114823, 0.00160658, -0.074798, 1, 0, 0, 1,
-0.0126399, 0.0208847, -0.0346265, 1, 0, 0, 1,
-0.0107871, 0.00666632, -0.0746042, 1, 0, 0, 1,
-0.00327709, 0.0104264, -0.0355742, 1, 0, 0, 1,
-0.0121796, -0.00109537, -0.0732059, 1, 0, 0, 1,
-0.0118903, 0.0136637, -0.0360215, 1, 0, 0, 1,
-0.00730519, 0.0177562, -0.0282389, 1, 0, 0, 1,
-0.0145873, 0.0170545, -0.0266269, 1, 0, 0, 1,
0.0158822, 0.00311518, -0.0218944, 1, 0, 0, 1,
-0.0104163, 0.0158032, -0.0151967, 1, 0, 0, 1,
0.00496317, 0.00792379, -0.0450484, 1, 0, 0, 1,
-0.0118992, 0.00608466, -0.0587854, 1, 0, 0, 1,
-0.0142518, 0.0105717, -0.0504539, 1, 0, 0, 1,
-0.0127964, 0.0128683, -0.0468989, 1, 0, 0, 1,
-0.00667883, 0.00291104, -0.0664325, 1, 0, 0, 1,
0.0013303, 0.00264684, -0.0557542, 1, 0, 0, 1,
-0.00870577, 0.0156009, -0.0240986, 1, 0, 0, 1,
-0.00128028, 0.0162832, -0.00218269, 1, 0, 0, 1,
-0.00919997, 0.0195756, -0.0308885, 1, 0, 0, 1,
-0.0101516, 0.0232036, -0.0173891, 1, 0, 0, 1,
-0.00917483, 0.0142347, -0.0184249, 1, 0, 0, 1,
-0.0124642, 0.00765488, -0.0691884, 1, 0, 0, 1,
-0.0103383, 0.00829712, -0.0688222, 1, 0, 0, 1,
-0.00745961, 0.00165397, -0.0687243, 1, 0, 0, 1,
-0.0115674, 0.0107976, -0.0513724, 1, 0, 0, 1,
-0.0127367, 0.0272446, 0.0183097, 0, 0, 1, 1,
-0.0119625, 0.0294061, 0.00888008, 0, 0, 1, 1,
-0.0126168, 0.0258055, 0.0183438, 0, 0, 1, 1,
-0.0102374, 0.0270391, 0.0129866, 0, 0, 1, 1,
-0.0100193, 0.0290679, 0.00789347, 0, 0, 1, 1,
-0.0115686, 0.0261405, 0.00963599, 0, 0, 1, 1,
-0.0104184, 0.0145465, -0.0255844, 1, 0, 0, 1,
0.00918815, -0.00657052, -0.0789912, 1, 0, 0, 1,
-0.0107646, 0.0254562, 0.00955688, 0, 0, 1, 1,
-0.00680781, 0.0288168, 0.00346046, 0, 0, 1, 1,
-0.0106277, 0.0323664, 0.00835367, 0, 0, 1, 1,
-0.00924328, 0.0258167, 0.0123296, 0, 0, 1, 1,
-0.0115461, 0.0263079, 0.00460833, 0, 0, 1, 1,
-0.0073842, 0.028101, 0.0130338, 0, 0, 1, 1,
-0.00961266, 0.028563, 0.0158073, 0, 0, 1, 1,
-0.00770294, 0.0212503, 0.0146223, 0, 0, 1, 1,
-0.0156245, 0.0223188, 0.00597563, 0, 0, 1, 1,
-0.0119385, 0.0275722, 0.0162635, 0, 0, 1, 1,
-0.0113868, 0.0297108, 0.0121137, 0, 0, 1, 1,
-0.0121334, 0.0243808, 0.00188057, 0, 0, 1, 1,
-0.0108409, 0.0279683, 0.0216673, 0, 0, 1, 1,
-0.011768, 0.0281752, 0.0136645, 0, 0, 1, 1,
-0.0114795, 0.0247793, 0.00867501, 0, 0, 1, 1,
-0.0119832, 0.0254772, 0.0181285, 0, 0, 1, 1,
-0.0101695, 0.0265409, 0.0035312, 0, 0, 1, 1,
-0.0129714, 0.0252449, 0.00879037, 0, 0, 1, 1,
-0.0118888, 0.0233199, 0.0103993, 0, 0, 1, 1,
-0.0112292, 0.0298052, 0.015427, 0, 0, 1, 1,
-0.0104211, 0.0257311, 0.0187351, 0, 0, 1, 1,
-0.0125005, 0.0271759, 0.0137337, 0, 0, 1, 1,
-0.00993213, 0.028124, 0.00792852, 0, 0, 1, 1,
-0.0142551, 0.0232998, 0.00787479, 0, 0, 1, 1,
-0.0101617, 0.0266982, 0.00367679, 0, 0, 1, 1,
-0.010707, 0.0255306, 0.0169507, 0, 0, 1, 1,
-0.0105995, 0.0290999, 0.0161926, 0, 0, 1, 1,
-0.0100796, 0.0286098, 0.0103036, 0, 0, 1, 1,
-0.0110392, 0.0293114, 0.0120815, 0, 0, 1, 1,
-0.0128383, 0.0243127, 0.0147911, 0, 0, 1, 1,
-0.0108612, 0.0263359, 0.010828, 0, 0, 1, 1,
-0.0110329, 0.028983, 0.0195216, 0, 0, 1, 1,
-0.0089694, 0.0293864, 0.00611747, 0, 0, 1, 1,
-0.0100156, 0.0275008, 0.0147042, 0, 0, 1, 1,
-0.0118111, 0.0313438, 0.020286, 0, 0, 1, 1,
-0.0135282, 0.0285555, 0.0139991, 0, 0, 1, 1,
-0.0118573, 0.028059, 0.017623, 0, 0, 1, 1,
-0.011434, 0.0298841, 0.017289, 0, 0, 1, 1,
-0.0137068, 0.0262813, 0.00895045, 0, 0, 1, 1,
-0.011303, 0.0240466, 0.0185177, 0, 0, 1, 1,
-0.0128576, 0.0289939, 0.00276648, 0, 0, 1, 1,
-0.0120312, 0.029179, 0.017439, 0, 0, 1, 1,
-0.0106222, 0.0256284, 0.00570797, 0, 0, 1, 1,
-0.00995275, 0.0273092, -0.0024934, 0, 0, 1, 1,
-0.00959611, 0.0261537, 0.00959381, 0, 0, 1, 1,
-0.0114889, 0.023797, 0.0134738, 0, 0, 1, 1,
-0.0107667, 0.0284537, 0.0112355, 0, 0, 1, 1,
-0.0116865, 0.0287125, 0.018817, 0, 0, 1, 1,
-0.010768, 0.0257793, 0.0180663, 0, 0, 1, 1,
-0.0103461, 0.0279454, 0.0188626, 0, 0, 1, 1,
-0.0125309, 0.0251358, 0.0186523, 0, 0, 1, 1,
-0.00736122, 0.025217, 0.0152209, 0, 0, 1, 1,
-0.00878201, 0.0274251, 0.0160884, 0, 0, 1, 1,
-0.0127847, 0.0254325, 0.0197265, 0, 0, 1, 1,
-0.0110028, 0.0257856, 0.00341325, 0, 0, 1, 1,
-0.0119122, 0.0261599, 0.0103964, 0, 0, 1, 1,
-0.0104002, 0.0291234, 0.0195688, 0, 0, 1, 1,
-0.0100776, 0.0254294, 0.00434181, 0, 0, 1, 1,
-0.012127, 0.0268114, -0.00219624, 0, 0, 1, 1,
-0.0105922, 0.0258903, 0.0197543, 0, 0, 1, 1,
-0.0107162, 0.0258229, 0.0131112, 0, 0, 1, 1,
-0.00995127, 0.0282215, 0.0126675, 0, 0, 1, 1,
-0.0126403, 0.0263284, 0.00452265, 0, 0, 1, 1,
-0.0109886, 0.0260791, 0.0218565, 0, 0, 1, 1,
-0.0119297, 0.0250496, 0.00935235, 0, 0, 1, 1,
-0.00946548, 0.0277378, 0.0152095, 0, 0, 1, 1,
-0.0111957, 0.0268611, 0.0264809, 0, 0, 1, 1,
-0.0105658, 0.029585, 0.0012607, 0, 0, 1, 1,
-0.0117585, 0.0254491, 0.00702256, 0, 0, 1, 1,
-0.0089961, 0.0267625, 0.00355462, 0, 0, 1, 1,
-0.00996585, 0.0254337, 0.0193859, 0, 0, 1, 1,
-0.0131239, 0.0295077, 0.0157527, 0, 0, 1, 1,
-0.0103642, 0.0253289, 0.00931815, 0, 0, 1, 1,
-0.0113159, 0.0276354, 0.00661754, 0, 0, 1, 1,
-0.0106622, 0.0283885, 0.012353, 0, 0, 1, 1,
-0.0147154, 0.0278962, 0.0199703, 0, 0, 1, 1,
-0.0102746, 0.0278862, 0.00661131, 0, 0, 1, 1,
-0.0107519, 0.0281143, 0.0112299, 0, 0, 1, 1,
-0.0127744, 0.0276239, 0.00241913, 0, 0, 1, 1,
-0.0125225, 0.0281514, 0.00985255, 0, 0, 1, 1,
-0.0110078, 0.0284701, 0.0135415, 0, 0, 1, 1,
-0.00879338, 0.0305275, 0.0143521, 0, 0, 1, 1,
-0.00835299, 0.024473, 0.0172941, 0, 0, 1, 1,
-0.0139541, 0.028084, 0.00431583, 0, 0, 1, 1,
-0.0120311, 0.0295408, 0.0138181, 0, 0, 1, 1,
-0.00768885, 0.0287506, 0.00919534, 0, 0, 1, 1,
-0.0109983, 0.0273885, 0.00652561, 0, 0, 1, 1,
-0.0116594, 0.0304115, 0.00767287, 0, 0, 1, 1,
-0.011247, 0.0255661, 0.00731042, 0, 0, 1, 1,
-0.0119091, 0.0267098, 0.00624145, 0, 0, 1, 1,
-0.0116038, 0.0242178, 0.0027479, 0, 0, 1, 1,
-0.00966045, 0.0230601, 0.00905667, 0, 0, 1, 1,
-0.0134263, 0.0256661, 0.0123583, 0, 0, 1, 1,
0.0599053, -0.0106832, 0.00225125, 0, 0, 0, 1,
0.0625425, -0.0125851, -0.00769452, 0, 0, 0, 1,
0.0598986, -0.00919164, 0.00589153, 0, 0, 0, 1,
0.0628394, -0.0075895, 0.00159738, 0, 0, 0, 1,
0.0616466, -0.00896019, 0.00134041, 0, 0, 0, 1,
0.06047, -0.0121012, 0.00901182, 0, 0, 0, 1,
0.0609213, -0.00911238, 0.00021598, 0, 0, 0, 1,
0.0571285, -0.0100801, -0.00623096, 0, 0, 0, 1,
0.0614432, -0.0116696, 0.000846609, 0, 0, 0, 1,
0.0603913, -0.0120439, 0.00348993, 0, 0, 0, 1,
0.0596827, -0.0132493, 0.00183232, 0, 0, 0, 1,
0.0591857, -0.0100486, -0.00150272, 0, 0, 0, 1,
0.0590884, -0.0110651, 0.00348026, 0, 0, 0, 1,
0.0628583, -0.0107898, 0.00566134, 0, 0, 0, 1,
0.0623594, -0.00671933, -0.000583868, 0, 0, 0, 1,
0.0614952, -0.00934114, 0.00129604, 0, 0, 0, 1,
0.0608647, -0.00710329, 0.0115746, 0, 0, 0, 1,
0.061243, -0.0104244, 0.00383985, 0, 0, 0, 1,
0.0622044, -0.00933706, 0.00605794, 0, 0, 0, 1,
-0.0202847, -0.0472571, 0.0124991, 0, 0.8039216, 0, 1,
-0.0217059, -0.0453121, 0.0102996, 0, 0.8039216, 0, 1,
-0.0203415, -0.0436946, 0.0205952, 0, 0.8039216, 0, 1,
-0.0207163, -0.0461337, 0.0046741, 0, 0.8039216, 0, 1,
-0.0212221, -0.0463474, 0.0133314, 0, 0.8039216, 0, 1,
-0.025239, -0.044723, 0.0124012, 0, 0.8039216, 0, 1,
-0.022871, -0.0436453, 0.0152662, 0, 0.8039216, 0, 1,
-0.0230623, -0.0447306, 0.0137183, 0, 0.8039216, 0, 1,
-0.023999, -0.0449555, 0.0140296, 0, 0.8039216, 0, 1,
-0.0214967, -0.0450679, 0.00732026, 0, 0.8039216, 0, 1,
-0.0218387, -0.0418631, 0.000625819, 0, 0.8039216, 0, 1,
-0.0213634, -0.0468005, 0.0122522, 0, 0.8039216, 0, 1,
-0.0205644, -0.0422387, 0.0117481, 0, 0.8039216, 0, 1,
-0.0206326, -0.0429101, 0.00311156, 0, 0.8039216, 0, 1,
-0.0204946, -0.0465157, 0.0146937, 0, 0.8039216, 0, 1,
-0.0192618, -0.0445747, 0.0180433, 0, 0.8039216, 0, 1,
-0.022117, -0.0443442, 0.0161906, 0, 0.8039216, 0, 1,
-0.0210934, -0.044948, 0.00458447, 0, 0.8039216, 0, 1,
-0.0204477, -0.0443576, 0.00181938, 0, 0.8039216, 0, 1,
-0.0212926, -0.0478972, 0.0170404, 0, 0.8039216, 0, 1,
-0.0213428, -0.0476166, 0.01323, 0, 0.8039216, 0, 1,
-0.019989, -0.0410041, 0.0114696, 0, 0.8039216, 0, 1,
-0.0214115, -0.0452313, 0.00666999, 0, 0.8039216, 0, 1,
-0.0212739, -0.0461813, -0.00493415, 0, 0.8039216, 0, 1,
-0.0208739, -0.044915, 0.0134519, 0, 0.8039216, 0, 1,
-0.023728, -0.0471651, 0.00993075, 0, 0.8039216, 0, 1,
-0.0227516, -0.0432316, 0.0031539, 0, 0.8039216, 0, 1,
-0.0213723, -0.0442536, 0.0154185, 0, 0.8039216, 0, 1,
-0.0196231, -0.0486462, 0.0167633, 0, 0.8039216, 0, 1,
-0.0226534, -0.0491136, 0.00367624, 0, 0.8039216, 0, 1,
-0.0209949, -0.0453896, 0.0152904, 0, 0.8039216, 0, 1,
-0.0202784, -0.0411598, 0.0130338, 0, 0.8039216, 0, 1,
-0.0239925, -0.0475526, 0.0188462, 0, 0.8039216, 0, 1,
-0.0198928, -0.0436333, 0.0209358, 0, 0.8039216, 0, 1,
-0.0211894, -0.0437393, 0.0142502, 0, 0.8039216, 0, 1,
-0.0207237, -0.0429967, 0.0120953, 0, 0.8039216, 0, 1,
-0.0211558, -0.046894, 0.0163715, 0, 0.8039216, 0, 1,
-0.0202537, -0.0458687, 0.00323657, 0, 0.8039216, 0, 1,
-0.0219376, -0.0460094, 0.0145599, 0, 0.8039216, 0, 1,
-0.0193695, -0.04565, 0.00710881, 0, 0.8039216, 0, 1,
-0.0220525, -0.0485406, 0.0209799, 0, 0.8039216, 0, 1,
-0.0218802, -0.0456642, 0.00983799, 0, 0.8039216, 0, 1,
-0.0220655, -0.0448156, 0.0175193, 0, 0.8039216, 0, 1,
-0.0226893, -0.0447403, 0.0158938, 0, 0.8039216, 0, 1,
-0.0245681, -0.0434349, 0.0154002, 0, 0.8039216, 0, 1,
-0.020963, -0.0468725, 0.0229494, 0, 0.8039216, 0, 1,
-0.0211417, -0.0461028, 0.0123547, 0, 0.8039216, 0, 1,
-0.0231312, -0.0470203, 0.0238995, 0, 0.8039216, 0, 1,
-0.0222229, -0.0500041, 0.00712199, 0, 0.8039216, 0, 1,
-0.0220871, -0.0427152, 0.0222066, 0, 0.8039216, 0, 1,
-0.0203151, -0.0436287, 0.00409452, 0, 0.8039216, 0, 1,
-0.0239992, -0.0426511, 0.0178353, 0, 0.8039216, 0, 1,
-0.0242331, -0.0464782, 0.0180175, 0, 0.8039216, 0, 1,
-0.0199454, -0.0459855, 0.0203439, 0, 0.8039216, 0, 1,
-0.0186327, -0.0460935, 0.0123736, 0, 0.8039216, 0, 1,
-0.0202823, -0.0494332, 0.0186634, 0, 0.8039216, 0, 1,
-0.0223193, -0.0427555, 0.00297549, 0, 0.8039216, 0, 1,
-0.0231156, -0.0406007, 0.0208259, 0, 0.8039216, 0, 1,
-0.0234198, -0.0425343, 0.0153943, 0, 0.8039216, 0, 1,
-0.019426, -0.0456293, 0.00844618, 0, 0.8039216, 0, 1,
-0.0204777, -0.045206, 0.00819859, 0, 0.8039216, 0, 1,
-0.0238881, -0.0472845, 0.00546661, 0, 0.8039216, 0, 1,
-0.0228489, -0.0475837, 0.0147575, 0, 0.8039216, 0, 1,
-0.0184592, -0.0438219, 0.0119672, 0, 0.8039216, 0, 1,
-0.0217402, -0.0453621, 0.0207005, 0, 0.8039216, 0, 1,
-0.0192859, -0.0410028, -0.00192185, 0, 0.8039216, 0, 1,
-0.0225755, -0.0429269, 0.00205903, 0, 0.8039216, 0, 1,
-0.0188304, -0.0457156, 0.00120985, 0, 0.8039216, 0, 1,
-0.0221429, -0.0446384, 0.0181926, 0, 0.8039216, 0, 1,
-0.0225637, -0.0470069, 0.00691998, 0, 0.8039216, 0, 1,
-0.0200337, -0.0416431, 0.00100243, 0, 0.8039216, 0, 1,
-0.025137, -0.0449311, 0.0160667, 0, 0.8039216, 0, 1,
-0.019851, -0.0449529, 0.00803793, 0, 0.8039216, 0, 1,
-0.0196354, -0.0468169, 0.0138081, 0, 0.8039216, 0, 1,
-0.0229864, -0.0474914, 0.0136062, 0, 0.8039216, 0, 1,
-0.0231573, -0.0437509, 0.0115025, 0, 0.8039216, 0, 1,
-0.0229461, -0.0482457, 0.016377, 0, 0.8039216, 0, 1,
-0.0211542, -0.0432692, 0.0137985, 0, 0.8039216, 0, 1,
-0.0218076, -0.0467616, 0.0134255, 0, 0.8039216, 0, 1,
-0.0212997, -0.0473553, 0.0152453, 0, 0.8039216, 0, 1,
-0.0200946, -0.0461073, 0.0198206, 0, 0.8039216, 0, 1,
-0.0184893, -0.044982, 0.0227849, 0, 0.8039216, 0, 1,
-0.0214583, -0.0413946, 0.00778561, 0, 0.8039216, 0, 1,
-0.0216616, -0.0445722, 0.00403748, 0, 0.8039216, 0, 1,
-0.0220772, -0.0455923, 0.00509658, 0, 0.8039216, 0, 1,
-0.0238939, -0.0431876, 0.00987559, 0, 0.8039216, 0, 1,
-0.0241296, -0.0436681, 0.0142829, 0, 0.8039216, 0, 1,
-0.0209841, -0.0441647, 0.0137156, 0, 0.8039216, 0, 1,
-0.0209837, -0.0476995, 0.0153286, 0, 0.8039216, 0, 1,
-0.0217043, -0.045766, 0.0179015, 0, 0.8039216, 0, 1,
-0.0257287, -0.0452895, 0.00703663, 0, 0.8039216, 0, 1,
-0.0216118, -0.0463817, 0.0127601, 0, 0.8039216, 0, 1,
-0.0245254, -0.0463528, 0.0124892, 0, 0.8039216, 0, 1,
-0.0210046, -0.0449981, 0.0109864, 0, 0.8039216, 0, 1,
-0.0186297, -0.0455902, 0.014409, 0, 0.8039216, 0, 1,
-0.0226069, -0.0454607, 0.0103677, 0, 0.8039216, 0, 1,
-0.0237898, -0.0479941, 0.00475517, 0, 0.8039216, 0, 1,
0.0615651, -0.0114194, 0.00483789, 0, 0, 0, 1,
0.0605019, -0.00824608, 0.0106619, 0, 0, 0, 1,
0.0623924, -0.00963285, 0.00352807, 0, 0, 0, 1,
0.059006, -0.00940619, 0.000529788, 0, 0, 0, 1,
0.0597301, -0.00898795, -0.0025674, 0, 0, 0, 1,
0.0638109, -0.0090004, -0.00415325, 0, 0, 0, 1,
0.0620229, -0.0124383, -0.00251443, 0, 0, 0, 1,
0.0607175, -0.0109613, 0.00375691, 0, 0, 0, 1,
0.0605571, -0.0100278, -0.00757802, 0, 0, 0, 1,
0.0610262, -0.00786094, 0.00148893, 0, 0, 0, 1,
0.0609589, -0.00900374, 0.00165908, 0, 0, 0, 1,
0.0601022, -0.0081006, -0.0026045, 0, 0, 0, 1,
0.0578977, -0.0111126, 0.00437552, 0, 0, 0, 1,
0.0611611, -0.010686, -0.00672412, 0, 0, 0, 1,
0.058406, -0.012519, 0.00219169, 0, 0, 0, 1,
0.0591024, -0.00936807, -0.00225285, 0, 0, 0, 1,
0.0607447, -0.0119905, -0.00192169, 0, 0, 0, 1,
0.0634181, -0.0105947, -0.00565163, 0, 0, 0, 1,
0.0615561, -0.011278, 0.00254935, 0, 0, 0, 1,
0.0599859, -0.0116589, 0.00205188, 0, 0, 0, 1,
0.0585396, -0.00853178, -0.00356921, 0, 0, 0, 1,
-0.0222415, -0.0448273, 0.00781225, 0, 0.8039216, 0, 1,
-0.0218567, -0.0467811, 0.00421652, 0, 0.8039216, 0, 1,
-0.0223995, -0.0444564, 0.0102462, 0, 0.8039216, 0, 1,
-0.0207254, -0.0453332, 0.0180986, 0, 0.8039216, 0, 1,
-0.0209323, -0.0465877, 0.00323769, 0, 0.8039216, 0, 1,
-0.022822, -0.0434782, 0.0126367, 0, 0.8039216, 0, 1,
-0.0206775, -0.0469926, 0.00808987, 0, 0.8039216, 0, 1,
-0.0214357, -0.0459128, 0.014337, 0, 0.8039216, 0, 1,
-0.0232706, -0.0451583, 0.00908002, 0, 0.8039216, 0, 1,
-0.0213593, -0.0422036, 0.0103028, 0, 0.8039216, 0, 1,
-0.0204227, -0.0454872, 0.00803411, 0, 0.8039216, 0, 1,
-0.0230036, -0.0468201, 0.0200449, 0, 0.8039216, 0, 1,
-0.0231405, -0.0450521, 0.0139009, 0, 0.8039216, 0, 1,
-0.0237862, -0.0475959, 0.00989577, 0, 0.8039216, 0, 1,
-0.0255804, -0.0477347, 0.0133026, 0, 0.8039216, 0, 1,
-0.0256381, -0.0426319, 0.00995458, 0, 0.8039216, 0, 1,
-0.0208277, -0.0439628, 0.013262, 0, 0.8039216, 0, 1,
-0.0215948, -0.0436067, 0.0162881, 0, 0.8039216, 0, 1,
-0.0208174, -0.0448256, 0.0107842, 0, 0.8039216, 0, 1,
-0.022658, -0.0438518, 0.0114866, 0, 0.8039216, 0, 1,
-0.0216852, -0.0472854, 0.00314969, 0, 0.8039216, 0, 1,
-0.0216565, -0.0443403, 0.00456551, 0, 0.8039216, 0, 1,
-0.0232742, -0.0438123, 0.0150447, 0, 0.8039216, 0, 1,
-0.0209092, -0.0458118, 0.0171308, 0, 0.8039216, 0, 1,
-0.0198614, -0.044429, 0.000958952, 0, 0.8039216, 0, 1,
-0.0214263, -0.0464487, 0.0163167, 0, 0.8039216, 0, 1,
-0.0218862, -0.0478768, 0.0128977, 0, 0.8039216, 0, 1,
-0.0216276, -0.0481253, 0.00600978, 0, 0.8039216, 0, 1,
-0.0240364, -0.0436308, 0.0151474, 0, 0.8039216, 0, 1,
-0.0223776, -0.0455, 0.0111137, 0, 0.8039216, 0, 1,
-0.0206891, -0.0459077, 0.0106659, 0, 0.8039216, 0, 1,
-0.0220357, -0.0486933, 0.00611285, 0, 0.8039216, 0, 1,
-0.0215109, -0.0434798, -0.00234964, 0, 0.8039216, 0, 1,
-0.0206824, -0.0419092, 0.00532416, 0, 0.8039216, 0, 1,
-0.0211499, -0.0440318, 0.00924968, 0, 0.8039216, 0, 1,
-0.0224705, -0.0437375, 0.00100655, 0, 0.8039216, 0, 1,
-0.0214306, -0.0444432, 0.0112215, 0, 0.8039216, 0, 1,
-0.0220157, -0.0433856, 0.0067475, 0, 0.8039216, 0, 1,
-0.0188126, -0.0453071, 0.00705247, 0, 0.8039216, 0, 1,
-0.0213792, -0.0452876, -0.000661209, 0, 0.8039216, 0, 1,
-0.0199325, -0.0450106, 0.00366478, 0, 0.8039216, 0, 1,
-0.0239292, -0.04319, 0.00890843, 0, 0.8039216, 0, 1,
-0.0235879, -0.0445285, 0.0119572, 0, 0.8039216, 0, 1,
-0.0275231, -0.0444496, 0.00230318, 0, 0.8039216, 0, 1,
-0.0182854, -0.0443563, 0.00676521, 0, 0.8039216, 0, 1,
-0.0207996, -0.0433684, 0.00590429, 0, 0.8039216, 0, 1,
-0.0232913, -0.045986, 0.0160425, 0, 0.8039216, 0, 1,
-0.0223044, -0.0450054, 0.02191, 0, 0.8039216, 0, 1,
-0.0194477, -0.0450752, 0.010458, 0, 0.8039216, 0, 1,
-0.0206243, -0.0419919, 0.00367034, 0, 0.8039216, 0, 1,
-0.0224244, -0.0483051, 0.0154809, 0, 0.8039216, 0, 1,
-0.0221261, -0.0435714, 0.0180401, 0, 0.8039216, 0, 1,
-0.0232637, -0.043971, 0.00966666, 0, 0.8039216, 0, 1,
-0.022883, -0.0463717, 0.0132086, 0, 0.8039216, 0, 1,
-0.0208739, -0.0439865, 0.0108011, 0, 0.8039216, 0, 1,
-0.0203368, -0.0454695, 0.00317318, 0, 0.8039216, 0, 1,
-0.021286, -0.0412478, 0.0119208, 0, 0.8039216, 0, 1,
-0.0231444, -0.0455249, 0.00459838, 0, 0.8039216, 0, 1,
-0.0215679, -0.0485457, 0.00697714, 0, 0.8039216, 0, 1,
0.061905, -0.00939373, 0.0123001, 0, 0, 0, 1,
0.0603647, -0.0112247, 0.0137288, 0, 0, 0, 1,
0.0574431, -0.0102242, 0.00573549, 0, 0, 0, 1,
0.0597009, -0.00971945, 0.00606591, 0, 0, 0, 1,
0.0568234, -0.00889099, 0.00893737, 0, 0, 0, 1,
0.0574072, -0.00844344, -0.000241673, 0, 0, 0, 1,
0.0596764, -0.00647742, -0.00166426, 0, 0, 0, 1,
0.0554901, -0.0075588, 0.00954455, 0, 0, 0, 1,
-0.020884, -0.0448253, 0.00557152, 0, 0.8039216, 0, 1,
-0.0211976, -0.0444588, 0.00571278, 0, 0.8039216, 0, 1,
-0.0228109, -0.0446718, -0.00162447, 0, 0.8039216, 0, 1,
-0.0212249, -0.04488, -0.00222036, 0, 0.8039216, 0, 1,
-0.0220836, -0.0453684, 0.0172785, 0, 0.8039216, 0, 1,
-0.0216518, -0.0418001, 0.00570977, 0, 0.8039216, 0, 1,
-0.0223224, -0.0449175, -0.00892706, 0, 0.8039216, 0, 1,
-0.023088, -0.0452832, 0.00980459, 0, 0.8039216, 0, 1,
-0.0210824, -0.0462172, 0.00214997, 0, 0.8039216, 0, 1,
-0.0201731, -0.043871, 0.0119034, 0, 0.8039216, 0, 1,
-0.0221149, -0.0431302, 0.0118773, 0, 0.8039216, 0, 1,
-0.0206758, -0.044564, -3.6632e-05, 0, 0.8039216, 0, 1,
-0.0234681, -0.0444978, 0.00957916, 0, 0.8039216, 0, 1,
-0.0251138, -0.0441199, 0.0131405, 0, 0.8039216, 0, 1,
-0.0212299, -0.043301, 0.0142874, 0, 0.8039216, 0, 1,
-0.022277, -0.0458224, -0.00106244, 0, 0.8039216, 0, 1,
-0.0217341, -0.0444599, 0.00515358, 0, 0.8039216, 0, 1,
-0.020666, -0.0444397, 0.000305985, 0, 0.8039216, 0, 1,
-0.0238042, -0.0464071, 0.0130549, 0, 0.8039216, 0, 1,
-0.022052, -0.0443309, 0.0155095, 0, 0.8039216, 0, 1,
-0.0206035, -0.0447965, 0.00815241, 0, 0.8039216, 0, 1,
-0.0198885, -0.0467051, 0.0126122, 0, 0.8039216, 0, 1,
-0.0197163, -0.0449936, 0.0060495, 0, 0.8039216, 0, 1,
-0.0209153, -0.0447079, 0.0023911, 0, 0.8039216, 0, 1,
-0.0207705, -0.0450861, 0.00344245, 0, 0.8039216, 0, 1,
-0.0221288, -0.0442687, 0.0108887, 0, 0.8039216, 0, 1,
-0.021735, -0.0475449, 0.00705834, 0, 0.8039216, 0, 1,
-0.0213647, -0.0438344, -0.00190997, 0, 0.8039216, 0, 1,
-0.022639, -0.0485181, 0.0157895, 0, 0.8039216, 0, 1,
-0.0223642, -0.0461822, 0.0100415, 0, 0.8039216, 0, 1,
0.0594787, -0.00824071, 0.0112765, 0, 0, 0, 1,
0.0619834, -0.0111216, -0.000270808, 0, 0, 0, 1,
0.0604641, -0.0111558, 0.00802687, 0, 0, 0, 1,
0.0601607, -0.00838109, -0.00536228, 0, 0, 0, 1,
0.0588683, -0.0105472, -0.00378106, 0, 0, 0, 1,
0.0608298, -0.007366, -0.00253736, 0, 0, 0, 1,
0.0605146, -0.0123193, 0.0114287, 0, 0, 0, 1,
0.0624146, -0.0112753, -0.000589016, 0, 0, 0, 1,
0.062382, -0.010613, 0.00628954, 0, 0, 0, 1,
0.0616891, -0.00954339, 0.00501299, 0, 0, 0, 1,
0.0613014, -0.0104518, 0.00345334, 0, 0, 0, 1,
0.0646988, -0.010254, 0.00349914, 0, 0, 0, 1,
0.0604107, -0.0115198, 0.000603219, 0, 0, 0, 1,
0.060158, -0.00927101, 0.00324295, 0, 0, 0, 1,
0.0601197, -0.0129354, 0.00128504, 0, 0, 0, 1,
0.0595516, -0.0102383, 4.81212e-05, 0, 0, 0, 1,
0.0593776, -0.0110439, 0.0013789, 0, 0, 0, 1,
0.0631986, -0.00990726, 0.00484874, 0, 0, 0, 1,
0.0600028, -0.0115261, 0.0014218, 0, 0, 0, 1,
0.0639068, -0.00954018, -0.00792333, 0, 0, 0, 1,
0.0618789, -0.0127468, 0.00713411, 0, 0, 0, 1,
0.0587245, -0.012889, 0.00177505, 0, 0, 0, 1,
0.0626287, -0.0113716, -0.00385835, 0, 0, 0, 1,
0.0588086, -0.0091567, -0.00219718, 0, 0, 0, 1,
0.0643593, -0.0125547, 0.0103515, 0, 0, 0, 1,
0.0609276, -0.00894115, 0.00179318, 0, 0, 0, 1,
0.0606349, -0.00890573, -0.00292431, 0, 0, 0, 1,
0.0620316, -0.0130424, 0.00806114, 0, 0, 0, 1,
0.060866, -0.0112082, 0.00899847, 0, 0, 0, 1,
0.0606319, -0.0103437, -0.00978346, 0, 0, 0, 1,
0.060977, -0.0104323, 0.000565915, 0, 0, 0, 1,
0.0614203, -0.0108144, 0.000386718, 0, 0, 0, 1,
0.0607256, -0.00980182, -0.00255826, 0, 0, 0, 1,
0.0604799, -0.00821551, 0.00442095, 0, 0, 0, 1,
0.0622716, -0.0117834, 0.00495539, 0, 0, 0, 1,
0.0613229, -0.0109662, -0.00220046, 0, 0, 0, 1,
0.0599528, -0.0133113, 0.000805838, 0, 0, 0, 1,
0.0605994, -0.0109337, 0.00370303, 0, 0, 0, 1,
0.0615868, -0.0112796, -0.000516271, 0, 0, 0, 1,
0.0595308, -0.0116468, 0.00106975, 0, 0, 0, 1,
0.0628333, -0.012437, 0.00883964, 0, 0, 0, 1,
0.0605057, -0.0114621, 0.00427488, 0, 0, 0, 1,
0.0609972, -0.00961557, 8.5199e-06, 0, 0, 0, 1,
0.0600092, -0.00913549, 0.00248726, 0, 0, 0, 1,
0.0603395, -0.00912871, 0.00338918, 0, 0, 0, 1,
0.0605854, -0.0106462, -0.00811418, 0, 0, 0, 1,
0.0594613, -0.00970633, 0.000228873, 0, 0, 0, 1,
0.0621357, -0.0100984, 0.00030153, 0, 0, 0, 1,
0.0594178, -0.0136237, 0.00396862, 0, 0, 0, 1,
0.0573748, -0.0099129, -0.00111851, 0, 0, 0, 1,
0.0571635, -0.0109801, -0.000394048, 0, 0, 0, 1,
0.0577753, -0.00932771, 0.0020172, 0, 0, 0, 1,
0.0585304, -0.00836989, -0.00069162, 0, 0, 0, 1,
0.0599197, -0.0120429, -0.00323276, 0, 0, 0, 1,
0.0570943, -0.0093666, 0.0011739, 0, 0, 0, 1,
0.0589788, -0.00805518, 0.00531933, 0, 0, 0, 1,
0.0561006, -0.00837478, 0.00440256, 0, 0, 0, 1,
0.0588358, -0.0121684, 0.0120367, 0, 0, 0, 1,
0.0585837, -0.0115023, 0.00258106, 0, 0, 0, 1,
0.057098, -0.00897674, 0.00817579, 0, 0, 0, 1,
0.0615177, -0.011127, 0.00508992, 0, 0, 0, 1,
0.0580025, -0.00858571, 0.0022176, 0, 0, 0, 1,
0.0521923, -0.00660692, 0.0128008, 0, 0, 0, 1,
0.0576378, -0.00879586, 0.00706887, 0, 0, 0, 1,
0.0570047, -0.00861263, -0.0013744, 0, 0, 0, 1,
0.0595704, -0.011024, 0.00168796, 0, 0, 0, 1,
0.0566791, -0.00847844, 0.00601824, 0, 0, 0, 1,
0.0560687, -0.00972541, 0.00599363, 0, 0, 0, 1,
0.0604336, -0.00980268, 0.00294601, 0, 0, 0, 1,
0.0564513, -0.00811645, 0.0047352, 0, 0, 0, 1,
0.058474, -0.00742528, 0.00330829, 0, 0, 0, 1,
0.0564331, -0.00909753, 0.00678921, 0, 0, 0, 1,
0.0597079, -0.00838009, 0.000955232, 0, 0, 0, 1,
0.0596186, -0.00937561, 0.0106501, 0, 0, 0, 1,
0.0560424, -0.0106017, -0.00322694, 0, 0, 0, 1,
0.0560322, -0.00746366, 0.00816929, 0, 0, 0, 1,
0.0559746, -0.0099311, -0.00287921, 0, 0, 0, 1,
0.0584866, -0.00776131, 0.00330332, 0, 0, 0, 1,
0.0576523, -0.00906006, 0.00470715, 0, 0, 0, 1,
0.0581678, -0.00956958, 0.00499682, 0, 0, 0, 1,
0.0572958, -0.00832232, 0.00167477, 0, 0, 0, 1,
0.058372, -0.0118224, 0.00156091, 0, 0, 0, 1,
0.060346, -0.00849174, 0.0108969, 0, 0, 0, 1,
0.0567653, -0.00608642, 0.00741082, 0, 0, 0, 1,
0.0583105, -0.01024, 0.00583418, 0, 0, 0, 1,
0.0579681, -0.00785526, 0.00434701, 0, 0, 0, 1,
0.0557756, -0.00894472, 0.00566352, 0, 0, 0, 1,
0.0586295, -0.00623367, 0.0053967, 0, 0, 0, 1,
0.0549749, -0.00742422, -0.000608967, 0, 0, 0, 1,
0.0585207, -0.0119364, 0.0141013, 0, 0, 0, 1,
0.0577714, -0.0118998, 0.00895478, 0, 0, 0, 1,
0.0609774, -0.0109087, 0.0154679, 0, 0, 0, 1,
0.0583365, -0.00814638, 0.0113259, 0, 0, 0, 1,
0.0557653, -0.0077785, 0.00492371, 0, 0, 0, 1,
0.0595086, -0.0107166, 0.00291277, 0, 0, 0, 1,
0.0580576, -0.0113606, 0.00943292, 0, 0, 0, 1,
0.0585356, -0.012382, 0.0126893, 0, 0, 0, 1,
0.0591328, -0.0102972, -0.00414354, 0, 0, 0, 1,
0.058046, -0.00861641, 0.0114105, 0, 0, 0, 1,
0.0548737, -0.0101817, 0.012738, 0, 0, 0, 1,
0.0588405, -0.00979834, 0.00868034, 0, 0, 0, 1,
0.0545247, -0.0106133, -0.00329577, 0, 0, 0, 1,
0.0596652, -0.0108993, -7.90873e-05, 0, 0, 0, 1,
0.0530249, -0.00655292, 0.00790205, 0, 0, 0, 1,
0.0574171, -0.0117794, 0.00367339, 0, 0, 0, 1,
0.057074, -0.00686488, 0.012714, 0, 0, 0, 1,
0.0582537, -0.0093267, 0.00572569, 0, 0, 0, 1,
0.0576155, -0.00884401, 0.00329802, 0, 0, 0, 1,
0.0618011, -0.00770923, 0.00178878, 0, 0, 0, 1,
0.0538085, -0.0103938, 0.00369883, 0, 0, 0, 1,
0.0590279, -0.0113242, 0.00368835, 0, 0, 0, 1,
0.0579662, -0.0120256, 0.00707634, 0, 0, 0, 1,
0.0589637, -0.0113875, 0.00465658, 0, 0, 0, 1,
0.0587157, -0.00971578, 0.00365459, 0, 0, 0, 1,
0.0605958, -0.0105004, 0.00674488, 0, 0, 0, 1,
0.0578624, -0.0126045, 0.000229537, 0, 0, 0, 1,
0.0617577, -0.00785544, 0.00141288, 0, 0, 0, 1,
0.0588341, -0.00625281, 0.00207669, 0, 0, 0, 1,
0.0561407, -0.0099397, 0.00553477, 0, 0, 0, 1,
0.0569665, -0.00861786, 0.0047911, 0, 0, 0, 1,
0.0583707, -0.00879823, -0.00909986, 0, 0, 0, 1,
0.0593648, -0.0109492, 0.0073572, 0, 0, 0, 1,
0.0559387, -0.00881564, 0.00315713, 0, 0, 0, 1,
0.0585948, -0.00843517, 0.000716245, 0, 0, 0, 1,
0.0579553, -0.0102646, -0.000361783, 0, 0, 0, 1,
0.0576384, -0.00868083, 0.00626685, 0, 0, 0, 1,
0.0597131, -0.00999004, 0.00542337, 0, 0, 0, 1,
0.0598217, -0.00867368, 0.00156611, 0, 0, 0, 1,
0.0574684, -0.00871725, -0.00182041, 0, 0, 0, 1,
0.0560606, -0.00814846, 0.0113239, 0, 0, 0, 1,
0.0591128, -0.0119688, -0.00210358, 0, 0, 0, 1,
0.0599115, -0.0122722, 0.0131905, 0, 0, 0, 1,
0.0585071, -0.0115935, 0.0110221, 0, 0, 0, 1,
0.0576206, -0.0106988, 0.000860496, 0, 0, 0, 1,
0.0585664, -0.011012, 0.00355595, 0, 0, 0, 1,
0.0580541, -0.0112273, 0.00820994, 0, 0, 0, 1,
0.0590993, -0.0112264, 0.00880704, 0, 0, 0, 1,
0.0454512, -0.0123173, -0.0280378, 0, 0, 0, 1,
-0.0104089, 0.0237953, -0.00967125, 1, 0, 0, 1,
-0.00954682, 0.00541017, -0.061399, 1, 0, 0, 1,
-0.0118897, 0.00999276, -0.0499399, 1, 0, 0, 1,
-0.00882252, -0.00572622, -0.105547, 1, 0, 0, 1,
-0.00275926, 0.0060367, -0.041372, 1, 0, 0, 1,
-0.0117844, -0.00388639, -0.102729, 1, 0, 0, 1,
-0.0128323, 0.0105863, -0.0737345, 1, 0, 0, 1,
-0.0102828, -0.000489453, -0.112403, 1, 0, 0, 1,
-0.0171595, -0.010455, -0.138903, 1, 0, 0, 1,
-0.0100217, -0.00295068, -0.0960525, 1, 0, 0, 1,
-0.0117859, 0.00955618, -0.0725604, 1, 0, 0, 1,
-0.0126219, 0.0187964, -0.0115062, 1, 0, 0, 1,
-0.00445579, 0.0176589, -0.0138325, 1, 0, 0, 1,
-0.00751278, 0.0209102, -0.00522342, 1, 0, 0, 1,
-0.0105533, 0.0237951, -0.0024599, 1, 0, 0, 1,
-0.00835646, -0.00183783, -0.106053, 1, 0, 0, 1,
-0.0123101, 0.00480181, -0.0699993, 1, 0, 0, 1,
-0.0106136, 0.0150573, -0.00845724, 1, 0, 0, 1,
-0.0120638, 0.00528978, -0.0925607, 1, 0, 0, 1,
0.0357177, 0.00363127, 0.00284482, 0, 0, 0, 1,
0.0371472, 0.00322565, 0.00216279, 0, 0, 0, 1,
0.0451293, 0.00167315, 0.00358953, 0, 0, 0, 1,
0.0490713, -0.00702633, 0.0004863, 0, 0, 0, 1,
0.044655, -0.00921404, -0.0102357, 0, 0, 0, 1,
0.0547532, -0.00767211, 0.011418, 0, 0, 0, 1,
0.043949, -0.00499887, 0.00227104, 0, 0, 0, 1,
0.033189, 0.00314373, 0.0036721, 0, 0, 0, 1,
-0.0158845, -0.00986643, -0.120636, 1, 0, 0, 1,
-0.00798596, -0.00115027, -0.0930881, 1, 0, 0, 1,
-0.0137619, -0.000901226, -0.1081, 1, 0, 0, 1,
-0.0192471, -0.0167788, -0.148607, 1, 0, 0, 1,
-0.011809, 0.00469023, -0.0896798, 1, 0, 0, 1,
-0.0146056, 0.009245, -0.0475536, 1, 0, 0, 1,
-0.0150933, 0.0048536, -0.0548269, 1, 0, 0, 1,
-0.0141832, -0.00133572, -0.0918304, 1, 0, 0, 1,
-0.015504, -0.023722, -0.164337, 1, 0, 0, 1,
-0.0194533, -0.0144065, -0.148527, 1, 0, 0, 1,
-0.0209005, -0.0204198, -0.192468, 1, 0, 0, 1,
-0.0188264, -0.0202139, -0.180847, 1, 0, 0, 1,
-0.0127779, 0.00279917, -0.0786768, 1, 0, 0, 1,
-0.0199878, -0.0216666, -0.1803, 1, 0, 0, 1,
-0.0120915, 7.51682e-07, -0.0664353, 1, 0, 0, 1,
-0.010827, 0.00814577, -0.0640856, 1, 0, 0, 1,
-0.0148152, -0.0139322, -0.133467, 1, 0, 0, 1,
-0.0161467, -0.016485, -0.148493, 1, 0, 0, 1,
-0.0160511, -0.00946683, -0.116779, 1, 0, 0, 1,
-0.0161405, -0.00834842, -0.123897, 1, 0, 0, 1,
-0.0107432, 0.0112308, -0.0285943, 1, 0, 0, 1,
-0.00941368, 0.00959192, -0.0419779, 1, 0, 0, 1,
-0.016936, 0.00608945, -0.0920815, 1, 0, 0, 1,
-0.0149094, -0.00537153, -0.127044, 1, 0, 0, 1,
-0.0090598, -0.0083449, -0.125094, 1, 0, 0, 1,
-0.00833894, -0.0034321, -0.0799591, 1, 0, 0, 1,
-0.0187394, -0.0152047, -0.137744, 1, 0, 0, 1,
-0.0116535, -0.00848528, -0.117197, 1, 0, 0, 1,
-0.0112206, -0.00474222, -0.110094, 1, 0, 0, 1,
-0.00808099, -0.00341407, -0.106455, 1, 0, 0, 1,
-0.00901529, 0.00447785, -0.0641462, 1, 0, 0, 1,
-0.0100595, 0.00556175, -0.0685588, 1, 0, 0, 1,
-0.0118224, 0.00337682, -0.0732822, 1, 0, 0, 1,
-0.0133566, 0.012481, -0.0520976, 1, 0, 0, 1,
-0.00255288, 0.00775675, -0.0576322, 1, 0, 0, 1,
-0.00699785, 0.00726036, -0.0500573, 1, 0, 0, 1,
-0.0081272, 0.00208711, -0.0857592, 1, 0, 0, 1,
-0.00914123, 0.014069, -0.0337228, 1, 0, 0, 1,
-0.010141, 0.0102889, -0.0610606, 1, 0, 0, 1,
-0.0116518, 0.00701751, -0.0678241, 1, 0, 0, 1,
-0.0154235, 0.000518288, -0.0898073, 1, 0, 0, 1,
-0.0127951, -0.0127493, -0.131116, 1, 0, 0, 1,
-0.0110912, -0.00540126, -0.102269, 1, 0, 0, 1,
-0.0157372, -0.00522885, -0.0964882, 1, 0, 0, 1,
-0.0110352, 0.0103645, -0.065742, 1, 0, 0, 1,
-0.0131545, 0.00904819, -0.0592014, 1, 0, 0, 1,
-0.0119828, 0.00335741, -0.0933575, 1, 0, 0, 1,
0.0169717, 0.0129781, 0.0054395, 0, 0, 0, 1,
0.0291614, 0.00767358, 0.00271452, 0, 0, 0, 1,
0.0424101, -0.00287575, 0.00339621, 0, 0, 0, 1,
0.0460594, -0.000131702, 0.00776344, 0, 0, 0, 1,
0.0500399, -0.00516417, -0.00404414, 0, 0, 0, 1,
0.054148, -0.00896673, 0.00408928, 0, 0, 0, 1,
0.0557877, -0.0101744, -0.010551, 0, 0, 0, 1,
0.0566975, -0.0106055, 0.00791452, 0, 0, 0, 1,
0.0481185, -0.00245042, 0.00565698, 0, 0, 0, 1,
0.0335189, 0.00102821, 0.0199998, 0, 0, 0, 1,
0.0507252, -0.00587411, -0.00300148, 0, 0, 0, 1,
0.0550302, -0.00766317, 0.0106118, 0, 0, 0, 1,
0.0474204, -0.00175925, 0.00367148, 0, 0, 0, 1,
0.0302282, 0.00220633, -0.00394852, 0, 0, 0, 1,
0.0407151, -0.000235234, -0.00134203, 0, 0, 0, 1,
0.0294141, 0.00370818, -0.00516306, 0, 0, 0, 1,
0.04947, -0.00489582, -0.00183878, 0, 0, 0, 1,
0.0387895, 0.00319641, -0.00762304, 0, 0, 0, 1,
0.0504626, -0.00974138, 0.00154856, 0, 0, 0, 1,
0.0305081, 0.00408691, 0.00494746, 0, 0, 0, 1,
0.0474299, -0.00191162, 0.00293413, 0, 0, 0, 1,
0.0356042, 0.00272444, 0.0156965, 0, 0, 0, 1,
0.0217446, 0.00782978, -0.00366482, 0, 0, 0, 1,
0.0558056, -0.00661438, 0.00640769, 0, 0, 0, 1,
0.0317567, 0.00635479, 0.00310502, 0, 0, 0, 1,
0.0529789, -0.00923252, -0.00239121, 0, 0, 0, 1,
0.037446, 0.000458223, -0.00171451, 0, 0, 0, 1,
0.0581908, -0.0106526, -0.00393471, 0, 0, 0, 1,
0.0605993, -0.0114288, -0.000287795, 0, 0, 0, 1,
0.0513532, -0.00332404, -0.00123897, 0, 0, 0, 1,
0.0543328, -0.00667842, -0.00276732, 0, 0, 0, 1,
0.0183807, -0.00805563, -0.0562366, 0, 0, 0, 1,
-0.0186661, -0.0111683, -0.117656, 0, 0, 0, 1,
0.0414489, 0.00100455, 0.0151506, 0, 0, 0, 1,
0.049831, -0.00312961, -0.00434046, 0, 0, 0, 1,
0.0548418, -0.00424023, 0.000248617, 0, 0, 0, 1,
0.0232621, 0.010571, 0.00319005, 0, 0, 0, 1,
0.0396667, 0.0033939, -0.00254618, 0, 0, 0, 1,
0.060624, -0.0112842, 0.00133835, 0, 0, 0, 1,
0.0535137, -0.00281288, -0.000145218, 0, 0, 0, 1,
0.044104, -0.00311658, 0.00165518, 0, 0, 0, 1,
0.0248292, 0.00537637, 0.00674953, 0, 0, 0, 1,
0.0414083, -0.000455653, 0.00505968, 0, 0, 0, 1,
0.0568232, -0.00722061, -0.00176511, 0, 0, 0, 1,
0.0543498, -0.00454622, -0.00193067, 0, 0, 0, 1,
0.0359021, 0.00521797, 0.0122278, 0, 0, 0, 1,
0.0499256, -0.00888146, -0.00565542, 0, 0, 0, 1,
0.0512119, -0.00455375, 0.00548056, 0, 0, 0, 1,
0.0412672, -0.00106388, 0.00424907, 0, 0, 0, 1,
0.0350701, 0.0048813, -0.000759242, 0, 0, 0, 1,
0.0449414, -0.000929474, -0.00377543, 0, 0, 0, 1,
0.0113374, -0.0119405, -0.0670087, 0, 0, 0, 1,
-0.0102696, 0.0282878, 0.0209961, 0, 0, 1, 1,
-0.0137318, 0.0264393, 0.00980357, 0, 0, 1, 1,
-0.0100819, 0.0271898, 0.0174362, 0, 0, 1, 1,
-0.00848981, 0.0293538, 0.0168312, 0, 0, 1, 1,
-0.0100527, 0.0243865, 0.0163955, 0, 0, 1, 1,
-0.0101109, 0.0287325, 0.0162384, 0, 0, 1, 1,
-0.00679631, 0.0271408, 0.0133718, 0, 0, 1, 1,
-0.00983778, 0.0230228, 0.0136499, 0, 0, 1, 1,
-0.0100053, 0.0243386, 0.0167752, 0, 0, 1, 1,
-0.0114464, 0.0275468, 0.00962702, 0, 0, 1, 1,
-0.0079621, 0.0261701, 0.0120553, 0, 0, 1, 1,
-0.00894135, 0.0278949, 0.0129402, 0, 0, 1, 1,
-0.011235, 0.0263966, 0.0133823, 0, 0, 1, 1,
-0.00975067, 0.0271189, 0.00946479, 0, 0, 1, 1,
-0.0131884, 0.0250117, 0.0189004, 0, 0, 1, 1,
-0.00915161, 0.0277849, 0.0146565, 0, 0, 1, 1,
-0.00682502, 0.026755, 0.0119884, 0, 0, 1, 1,
-0.00606389, 0.0272248, 0.0189761, 0, 0, 1, 1,
-0.0112538, 0.0273165, 0.00914202, 0, 0, 1, 1,
-0.00762168, 0.0303376, 0.0138994, 0, 0, 1, 1,
-0.0109021, 0.0288172, 0.0111349, 0, 0, 1, 1,
-0.00706274, 0.0282865, 0.0156126, 0, 0, 1, 1,
-0.00919575, 0.023982, 0.00936446, 0, 0, 1, 1,
-0.00913969, 0.0283912, 0.0154593, 0, 0, 1, 1,
-0.00954215, 0.024589, 0.0214024, 0, 0, 1, 1,
-0.00756885, 0.0284213, 0.0174655, 0, 0, 1, 1,
-0.00665317, 0.024219, 0.015278, 0, 0, 1, 1,
-0.0110634, 0.0239957, 0.018463, 0, 0, 1, 1,
-0.00661914, 0.025588, 0.00558132, 0, 0, 1, 1,
-0.00892307, 0.0306318, 0.0140666, 0, 0, 1, 1,
-0.00933177, 0.0264503, 0.0163681, 0, 0, 1, 1,
-0.00697938, 0.0223958, 0.0164659, 0, 0, 1, 1,
-0.0109777, 0.0254437, 0.0187151, 0, 0, 1, 1,
-0.0120141, 0.0269899, 0.0118639, 0, 0, 1, 1,
-0.00871812, 0.0276269, 0.00653824, 0, 0, 1, 1,
-0.0115548, 0.0267786, 0.00812987, 0, 0, 1, 1,
-0.0121489, 0.0245186, 0.00603117, 0, 0, 1, 1,
-0.0119324, 0.0290431, 0.0101157, 0, 0, 1, 1,
-0.0118678, 0.0264786, 0.00746853, 0, 0, 1, 1,
-0.00871356, 0.0237823, 0.0175548, 0, 0, 1, 1,
-0.0105039, 0.0292328, 0.0118308, 0, 0, 1, 1,
-0.0091493, 0.026237, 0.00909589, 0, 0, 1, 1,
-0.0115165, 0.0248263, 0.0112216, 0, 0, 1, 1,
-0.00992583, 0.0238752, 0.0218562, 0, 0, 1, 1,
-0.00993673, 0.0275121, 0.00800056, 0, 0, 1, 1,
-0.00906338, 0.0310028, 0.00426915, 0, 0, 1, 1,
-0.0118239, 0.024042, 0.0149493, 0, 0, 1, 1,
-0.0111421, 0.0289015, 0.00559211, 0, 0, 1, 1,
-0.0113797, 0.0277816, 0.0222316, 0, 0, 1, 1,
-0.00986206, 0.0264902, 0.00474868, 0, 0, 1, 1,
-0.00573201, 0.0289302, 0.0189155, 0, 0, 1, 1,
-0.00832712, 0.0304806, 0.000307511, 0, 0, 1, 1,
-0.00679564, 0.0262042, 0.015485, 0, 0, 1, 1,
-0.0130541, 0.0263821, 0.00799086, 0, 0, 1, 1,
-0.0107218, 0.0241173, 0.00885294, 0, 0, 1, 1,
-0.0102764, 0.0273905, 0.00945649, 0, 0, 1, 1,
-0.010388, 0.0251407, 0.0231797, 0, 0, 1, 1,
-0.00653349, 0.0266279, 0.012035, 0, 0, 1, 1,
-0.00723016, 0.0308112, 0.0119328, 0, 0, 1, 1,
-0.0137295, 0.0284478, 0.000448284, 0, 0, 1, 1,
-0.00642578, 0.021937, 0.0202086, 0, 0, 1, 1,
-0.00842373, 0.0261524, 0.0177347, 0, 0, 1, 1,
-0.00818549, 0.0217926, 0.0203974, 0, 0, 1, 1,
-0.00771042, 0.0271938, 0.00900855, 0, 0, 1, 1,
-0.01113, 0.0263657, 0.0119497, 0, 0, 1, 1,
-0.0117861, 0.0271739, 0.0117943, 0, 0, 1, 1,
-0.00769249, 0.02631, 0.00923256, 0, 0, 1, 1,
-0.0125462, 0.0271379, 0.0165152, 0, 0, 1, 1,
-0.0081182, 0.0267064, 0.00975211, 0, 0, 1, 1,
-0.00715706, 0.0233023, 0.0109862, 0, 0, 1, 1,
-0.00951019, 0.0256183, 0.00972567, 0, 0, 1, 1,
-0.0129219, 0.028582, 0.0198644, 0, 0, 1, 1,
-0.00939765, 0.0248106, 0.0215154, 0, 0, 1, 1,
-0.0106514, 0.0262053, 0.000950693, 0, 0, 1, 1,
-0.00953833, 0.0275344, 0.00566691, 0, 0, 1, 1,
-0.00752898, 0.0277853, 0.0141119, 0, 0, 1, 1,
-0.0100811, 0.0276051, 0.0102856, 0, 0, 1, 1,
-0.00944503, 0.0292187, 0.00678969, 0, 0, 1, 1,
-0.0094808, 0.0304793, 0.00506879, 0, 0, 1, 1,
-0.00550303, 0.0280735, 0.0215714, 0, 0, 1, 1,
-0.0067349, 0.0278645, 0.00997695, 0, 0, 1, 1,
-0.00827914, 0.0262112, 0.00257818, 0, 0, 1, 1,
-0.00903212, 0.0273792, 0.00438174, 0, 0, 1, 1,
-0.00881656, 0.0284194, 0.0167786, 0, 0, 1, 1,
-0.0125575, 0.0218558, 0.0278779, 0, 0, 1, 1,
-0.00815451, 0.0285895, 0.00951594, 0, 0, 1, 1,
-0.0101773, 0.0264846, 0.0289299, 0, 0, 1, 1,
-0.0066145, 0.0285738, 0.00980551, 0, 0, 1, 1,
-0.00975177, 0.0297376, 0.00594824, 0, 0, 1, 1,
-0.00786561, 0.0260781, 0.00437162, 0, 0, 1, 1,
-0.0111383, 0.0276527, 0.00350812, 0, 0, 1, 1,
-0.0125779, 0.0244579, 0.0182879, 0, 0, 1, 1,
-0.00622485, 0.0273065, 0.0149143, 0, 0, 1, 1,
-0.00848216, 0.0249242, 0.00150063, 0, 0, 1, 1,
-0.0105461, 0.0242417, 0.00873604, 0, 0, 1, 1,
-0.0093052, 0.0252476, 0.00824535, 0, 0, 1, 1,
-0.0083247, 0.0249034, 0.0117392, 0, 0, 1, 1,
-0.00966163, 0.0272379, 0.0201071, 0, 0, 1, 1
]);
this.values[91] = v;
this.buf[91] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[91]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[91], gl.STATIC_DRAW);
this.mvMatLoc[91] = gl.getUniformLocation(this.prog[91],"mvMatrix");
this.prMatLoc[91] = gl.getUniformLocation(this.prog[91],"prMatrix");
// ****** text object 93 ******
this.flags[93] = 40;
this.prog[93]  = gl.createProgram();
gl.attachShader(this.prog[93], this.getShader( gl, "plot_3d4vshader93" ));
gl.attachShader(this.prog[93], this.getShader( gl, "plot_3d4fshader93" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[93], 0, "aPos");
gl.bindAttribLocation(this.prog[93], 1, "aCol");
gl.linkProgram(this.prog[93]);
var texts = [
"p1"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[93] = gl.getAttribLocation(this.prog[93], "aOfs");
this.texture[93] = gl.createTexture();
this.texLoc[93] = gl.getAttribLocation(this.prog[93], "aTexcoord");
this.sampler[93] = gl.getUniformLocation(this.prog[93],"uSampler");
handleLoadedTexture(this.texture[93], document.getElementById("plot_3d4textureCanvas"));
this.offsets[93]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
0.01858785, -0.06426319, -0.229995, 0, -0.5, 0.5, 0.5,
0.01858785, -0.06426319, -0.229995, 1, -0.5, 0.5, 0.5,
0.01858785, -0.06426319, -0.229995, 1, 1.5, 0.5, 0.5,
0.01858785, -0.06426319, -0.229995, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<1; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[93]["stride"]*(4*i + j) + this.offsets[93]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[93] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3
]);
this.buf[93] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[93]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[93], gl.STATIC_DRAW);
this.ibuf[93] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[93]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[93] = gl.getUniformLocation(this.prog[93],"mvMatrix");
this.prMatLoc[93] = gl.getUniformLocation(this.prog[93],"prMatrix");
this.textScaleLoc[93] = gl.getUniformLocation(this.prog[93],"textScale");
// ****** text object 94 ******
this.flags[94] = 40;
this.prog[94]  = gl.createProgram();
gl.attachShader(this.prog[94], this.getShader( gl, "plot_3d4vshader94" ));
gl.attachShader(this.prog[94], this.getShader( gl, "plot_3d4fshader94" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[94], 0, "aPos");
gl.bindAttribLocation(this.prog[94], 1, "aCol");
gl.linkProgram(this.prog[94]);
var texts = [
"p2"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[94] = gl.getAttribLocation(this.prog[94], "aOfs");
this.texture[94] = gl.createTexture();
this.texLoc[94] = gl.getAttribLocation(this.prog[94], "aTexcoord");
this.sampler[94] = gl.getUniformLocation(this.prog[94],"uSampler");
handleLoadedTexture(this.texture[94], document.getElementById("plot_3d4textureCanvas"));
this.offsets[94]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
-0.04315471, -0.008945951, -0.229995, 0, -0.5, 0.5, 0.5,
-0.04315471, -0.008945951, -0.229995, 1, -0.5, 0.5, 0.5,
-0.04315471, -0.008945951, -0.229995, 1, 1.5, 0.5, 0.5,
-0.04315471, -0.008945951, -0.229995, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<1; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[94]["stride"]*(4*i + j) + this.offsets[94]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[94] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3
]);
this.buf[94] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[94]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[94], gl.STATIC_DRAW);
this.ibuf[94] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[94]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[94] = gl.getUniformLocation(this.prog[94],"mvMatrix");
this.prMatLoc[94] = gl.getUniformLocation(this.prog[94],"prMatrix");
this.textScaleLoc[94] = gl.getUniformLocation(this.prog[94],"textScale");
// ****** text object 95 ******
this.flags[95] = 40;
this.prog[95]  = gl.createProgram();
gl.attachShader(this.prog[95], this.getShader( gl, "plot_3d4vshader95" ));
gl.attachShader(this.prog[95], this.getShader( gl, "plot_3d4fshader95" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[95], 0, "aPos");
gl.bindAttribLocation(this.prog[95], 1, "aCol");
gl.linkProgram(this.prog[95]);
var texts = [
"p3"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[95] = gl.getAttribLocation(this.prog[95], "aOfs");
this.texture[95] = gl.createTexture();
this.texLoc[95] = gl.getAttribLocation(this.prog[95], "aTexcoord");
this.sampler[95] = gl.getUniformLocation(this.prog[95],"uSampler");
handleLoadedTexture(this.texture[95], document.getElementById("plot_3d4textureCanvas"));
this.offsets[95]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
-0.04315471, -0.06426319, -0.08176905, 0, -0.5, 0.5, 0.5,
-0.04315471, -0.06426319, -0.08176905, 1, -0.5, 0.5, 0.5,
-0.04315471, -0.06426319, -0.08176905, 1, 1.5, 0.5, 0.5,
-0.04315471, -0.06426319, -0.08176905, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<1; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[95]["stride"]*(4*i + j) + this.offsets[95]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[95] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3
]);
this.buf[95] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[95]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[95], gl.STATIC_DRAW);
this.ibuf[95] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[95]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[95] = gl.getUniformLocation(this.prog[95],"mvMatrix");
this.prMatLoc[95] = gl.getUniformLocation(this.prog[95],"prMatrix");
this.textScaleLoc[95] = gl.getUniformLocation(this.prog[95],"textScale");
// ****** lines object 98 ******
this.flags[98] = 128;
this.prog[98]  = gl.createProgram();
gl.attachShader(this.prog[98], this.getShader( gl, "plot_3d4vshader98" ));
gl.attachShader(this.prog[98], this.getShader( gl, "plot_3d4fshader98" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[98], 0, "aPos");
gl.bindAttribLocation(this.prog[98], 1, "aCol");
gl.linkProgram(this.prog[98]);
this.offsets[98]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02890643, -0.04, -0.195789,
-0.02890643, -0.04, 0.03225087,
-0.02890643, -0.02, -0.195789,
-0.02890643, -0.02, 0.03225087,
-0.02890643, 0, -0.195789,
-0.02890643, 0, 0.03225087,
-0.02890643, 0.02, -0.195789,
-0.02890643, 0.02, 0.03225087
]);
this.values[98] = v;
this.buf[98] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[98]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[98], gl.STATIC_DRAW);
this.mvMatLoc[98] = gl.getUniformLocation(this.prog[98],"mvMatrix");
this.prMatLoc[98] = gl.getUniformLocation(this.prog[98],"prMatrix");
// ****** lines object 99 ******
this.flags[99] = 128;
this.prog[99]  = gl.createProgram();
gl.attachShader(this.prog[99], this.getShader( gl, "plot_3d4vshader99" ));
gl.attachShader(this.prog[99], this.getShader( gl, "plot_3d4fshader99" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[99], 0, "aPos");
gl.bindAttribLocation(this.prog[99], 1, "aCol");
gl.linkProgram(this.prog[99]);
this.offsets[99]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02890643, -0.05149767, -0.15,
-0.02890643, 0.03360577, -0.15,
-0.02890643, -0.05149767, -0.1,
-0.02890643, 0.03360577, -0.1,
-0.02890643, -0.05149767, -0.05,
-0.02890643, 0.03360577, -0.05,
-0.02890643, -0.05149767, 0,
-0.02890643, 0.03360577, 0
]);
this.values[99] = v;
this.buf[99] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[99]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[99], gl.STATIC_DRAW);
this.mvMatLoc[99] = gl.getUniformLocation(this.prog[99],"mvMatrix");
this.prMatLoc[99] = gl.getUniformLocation(this.prog[99],"prMatrix");
// ****** lines object 100 ******
this.flags[100] = 128;
this.prog[100]  = gl.createProgram();
gl.attachShader(this.prog[100], this.getShader( gl, "plot_3d4vshader100" ));
gl.attachShader(this.prog[100], this.getShader( gl, "plot_3d4fshader100" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[100], 0, "aPos");
gl.bindAttribLocation(this.prog[100], 1, "aCol");
gl.linkProgram(this.prog[100]);
this.offsets[100]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02, -0.05149767, -0.195789,
-0.02, -0.05149767, 0.03225087,
0, -0.05149767, -0.195789,
0, -0.05149767, 0.03225087,
0.02, -0.05149767, -0.195789,
0.02, -0.05149767, 0.03225087,
0.04, -0.05149767, -0.195789,
0.04, -0.05149767, 0.03225087,
0.06, -0.05149767, -0.195789,
0.06, -0.05149767, 0.03225087
]);
this.values[100] = v;
this.buf[100] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[100]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[100], gl.STATIC_DRAW);
this.mvMatLoc[100] = gl.getUniformLocation(this.prog[100],"mvMatrix");
this.prMatLoc[100] = gl.getUniformLocation(this.prog[100],"prMatrix");
// ****** lines object 101 ******
this.flags[101] = 128;
this.prog[101]  = gl.createProgram();
gl.attachShader(this.prog[101], this.getShader( gl, "plot_3d4vshader101" ));
gl.attachShader(this.prog[101], this.getShader( gl, "plot_3d4fshader101" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[101], 0, "aPos");
gl.bindAttribLocation(this.prog[101], 1, "aCol");
gl.linkProgram(this.prog[101]);
this.offsets[101]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02890643, -0.05149767, -0.15,
0.06608213, -0.05149767, -0.15,
-0.02890643, -0.05149767, -0.1,
0.06608213, -0.05149767, -0.1,
-0.02890643, -0.05149767, -0.05,
0.06608213, -0.05149767, -0.05,
-0.02890643, -0.05149767, 0,
0.06608213, -0.05149767, 0
]);
this.values[101] = v;
this.buf[101] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[101]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[101], gl.STATIC_DRAW);
this.mvMatLoc[101] = gl.getUniformLocation(this.prog[101],"mvMatrix");
this.prMatLoc[101] = gl.getUniformLocation(this.prog[101],"prMatrix");
// ****** lines object 102 ******
this.flags[102] = 128;
this.prog[102]  = gl.createProgram();
gl.attachShader(this.prog[102], this.getShader( gl, "plot_3d4vshader102" ));
gl.attachShader(this.prog[102], this.getShader( gl, "plot_3d4fshader102" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[102], 0, "aPos");
gl.bindAttribLocation(this.prog[102], 1, "aCol");
gl.linkProgram(this.prog[102]);
this.offsets[102]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02, -0.05149767, -0.195789,
-0.02, 0.03360577, -0.195789,
0, -0.05149767, -0.195789,
0, 0.03360577, -0.195789,
0.02, -0.05149767, -0.195789,
0.02, 0.03360577, -0.195789,
0.04, -0.05149767, -0.195789,
0.04, 0.03360577, -0.195789,
0.06, -0.05149767, -0.195789,
0.06, 0.03360577, -0.195789
]);
this.values[102] = v;
this.buf[102] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[102]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[102], gl.STATIC_DRAW);
this.mvMatLoc[102] = gl.getUniformLocation(this.prog[102],"mvMatrix");
this.prMatLoc[102] = gl.getUniformLocation(this.prog[102],"prMatrix");
// ****** lines object 103 ******
this.flags[103] = 128;
this.prog[103]  = gl.createProgram();
gl.attachShader(this.prog[103], this.getShader( gl, "plot_3d4vshader103" ));
gl.attachShader(this.prog[103], this.getShader( gl, "plot_3d4fshader103" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[103], 0, "aPos");
gl.bindAttribLocation(this.prog[103], 1, "aCol");
gl.linkProgram(this.prog[103]);
this.offsets[103]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.02890643, -0.04, -0.195789,
0.06608213, -0.04, -0.195789,
-0.02890643, -0.02, -0.195789,
0.06608213, -0.02, -0.195789,
-0.02890643, 0, -0.195789,
0.06608213, 0, -0.195789,
-0.02890643, 0.02, -0.195789,
0.06608213, 0.02, -0.195789
]);
this.values[103] = v;
this.buf[103] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[103]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[103], gl.STATIC_DRAW);
this.mvMatLoc[103] = gl.getUniformLocation(this.prog[103],"mvMatrix");
this.prMatLoc[103] = gl.getUniformLocation(this.prog[103],"prMatrix");
// ****** spheres object 104 ******
this.flags[104] = 91;
this.prog[104]  = gl.createProgram();
gl.attachShader(this.prog[104], this.getShader( gl, "plot_3d4vshader104" ));
gl.attachShader(this.prog[104], this.getShader( gl, "plot_3d4fshader104" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[104], 0, "aPos");
gl.bindAttribLocation(this.prog[104], 1, "aCol");
gl.linkProgram(this.prog[104]);
this.offsets[104]={vofs:0, cofs:-1, nofs:-1, radofs:3, oofs:-1, tofs:-1, stride:4};
var v=new Float32Array([
-0.01130136, 0.02599243, 0.01158796, 0.03519014
]);
this.values[104] = v;
this.normLoc[104] = gl.getAttribLocation(this.prog[104], "aNorm");
this.centers[104] = new Float32Array([
-0.01130136, 0.02599243, 0.01158796
]);
this.f[104]=new Uint16Array([
0
]);
this.mvMatLoc[104] = gl.getUniformLocation(this.prog[104],"mvMatrix");
this.prMatLoc[104] = gl.getUniformLocation(this.prog[104],"prMatrix");
this.normMatLoc[104] = gl.getUniformLocation(this.prog[104],"normMatrix");
// ****** lines object 105 ******
this.flags[105] = 128;
this.prog[105]  = gl.createProgram();
gl.attachShader(this.prog[105], this.getShader( gl, "plot_3d4vshader105" ));
gl.attachShader(this.prog[105], this.getShader( gl, "plot_3d4fshader105" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[105], 0, "aPos");
gl.bindAttribLocation(this.prog[105], 1, "aCol");
gl.linkProgram(this.prog[105]);
this.offsets[105]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.00886681, 0.0238644, 0.0217746,
-0.0121496, 0.02617985, 0.01134996,
-0.0124726, 0.0247746, 0.0254585,
-0.0121496, 0.02617985, 0.01134996,
-0.0147315, 0.0281533, 0.0238545,
-0.0121496, 0.02617985, 0.01134996,
-0.0140497, 0.0274399, 0.00957505,
-0.0121496, 0.02617985, 0.01134996,
-0.0116447, 0.0287953, 0.01982,
-0.0121496, 0.02617985, 0.01134996,
-0.0135256, 0.0311266, 0.0226846,
-0.0121496, 0.02617985, 0.01134996,
-0.0146697, 0.0281732, 0.00270888,
-0.0121496, 0.02617985, 0.01134996,
-0.0122709, 0.0273632, 0.00629289,
-0.0121496, 0.02617985, 0.01134996,
-0.013305, 0.0293633, 0.00633912,
-0.0121496, 0.02617985, 0.01134996,
-0.0122756, 0.0262672, 0.00976935,
-0.0121496, 0.02617985, 0.01134996,
-0.011765, 0.0251295, 0.0118895,
-0.0121496, 0.02617985, 0.01134996,
-0.0128186, 0.028081, 0.00958605,
-0.0121496, 0.02617985, 0.01134996,
-0.0116086, 0.0294887, 0.00805614,
-0.0121496, 0.02617985, 0.01134996,
-0.0113447, 0.0307663, 0.00405527,
-0.0121496, 0.02617985, 0.01134996,
-0.0148581, 0.0237257, 0.0160082,
-0.0121496, 0.02617985, 0.01134996,
-0.010788, 0.0238892, 0.0226584,
-0.0121496, 0.02617985, 0.01134996,
-0.0148937, 0.0232955, 0.0101953,
-0.0121496, 0.02617985, 0.01134996,
-0.00875168, 0.0261604, 0.0121802,
-0.0121496, 0.02617985, 0.01134996,
-0.008739, 0.0261481, 0.0122728,
-0.0121496, 0.02617985, 0.01134996,
-0.0108659, 0.0259289, 0.00106272,
-0.0121496, 0.02617985, 0.01134996,
-0.0130502, 0.0270812, 0.0183305,
-0.0121496, 0.02617985, 0.01134996,
-0.0134347, 0.0270132, 0.0229292,
-0.0121496, 0.02617985, 0.01134996,
-0.0118617, 0.0220373, 0.0105775,
-0.0121496, 0.02617985, 0.01134996,
-0.0130059, 0.0245835, 0.0192892,
-0.0121496, 0.02617985, 0.01134996,
-0.0102875, 0.0258827, 0.0208538,
-0.0121496, 0.02617985, 0.01134996,
-0.00910839, 0.0257005, 0.00618984,
-0.0121496, 0.02617985, 0.01134996,
-0.0128356, 0.0225055, 0.00960733,
-0.0121496, 0.02617985, 0.01134996,
-0.0112344, 0.0276306, 0.0114346,
-0.0121496, 0.02617985, 0.01134996,
-0.0106106, 0.0278096, 0.00194201,
-0.0121496, 0.02617985, 0.01134996,
-0.0115198, 0.0292207, 0.00294633,
-0.0121496, 0.02617985, 0.01134996,
-0.0133883, 0.028673, 0.0164389,
-0.0121496, 0.02617985, 0.01134996,
-0.0109423, 0.0290064, 0.0218431,
-0.0121496, 0.02617985, 0.01134996,
-0.0148488, 0.0259077, 0.0115755,
-0.0121496, 0.02617985, 0.01134996,
-0.0107891, 0.0257524, 0.00616149,
-0.0121496, 0.02617985, 0.01134996,
-0.0106291, 0.0269203, 0.0228778,
-0.0121496, 0.02617985, 0.01134996,
-0.0161089, 0.0275971, 0.0192198,
-0.0121496, 0.02617985, 0.01134996,
-0.0132678, 0.0258366, 0.0163521,
-0.0121496, 0.02617985, 0.01134996,
-0.0149124, 0.0251342, 0.00388131,
-0.0121496, 0.02617985, 0.01134996,
-0.0114892, 0.0274352, 0.00899298,
-0.0121496, 0.02617985, 0.01134996,
-0.0117562, 0.0245922, 0.0136363,
-0.0121496, 0.02617985, 0.01134996,
-0.0122278, 0.0271677, 0.0112234,
-0.0121496, 0.02617985, 0.01134996,
-0.01029, 0.0277564, 0.0160115,
-0.0121496, 0.02617985, 0.01134996,
-0.0121964, 0.0309241, 0.0139494,
-0.0121496, 0.02617985, 0.01134996,
-0.0129751, 0.0271331, 0.0260444,
-0.0121496, 0.02617985, 0.01134996,
-0.0125756, 0.0265999, 0.0224468,
-0.0121496, 0.02617985, 0.01134996,
-0.0127859, 0.027101, 0.0191604,
-0.0121496, 0.02617985, 0.01134996,
-0.00998233, 0.0253795, 0.00685042,
-0.0121496, 0.02617985, 0.01134996,
-0.0133536, 0.028689, 0.0051763,
-0.0121496, 0.02617985, 0.01134996,
-0.0117333, 0.0277402, 0.00381405,
-0.0121496, 0.02617985, 0.01134996,
-0.0147853, 0.0295933, 0.00968847,
-0.0121496, 0.02617985, 0.01134996,
-0.0109685, 0.0223538, 0.0143111,
-0.0121496, 0.02617985, 0.01134996,
-0.0096918, 0.0249463, 0.00704751,
-0.0121496, 0.02617985, 0.01134996,
-0.0155493, 0.0266224, 0.00516269,
-0.0121496, 0.02617985, 0.01134996,
-0.014836, 0.0276024, 0.0116228,
-0.0121496, 0.02617985, 0.01134996,
-0.00828352, 0.0252156, 0.0187242,
-0.0121496, 0.02617985, 0.01134996,
-0.0110414, 0.0293172, 0.00362714,
-0.0121496, 0.02617985, 0.01134996,
-0.0102891, 0.0257019, 0.00540398,
-0.0121496, 0.02617985, 0.01134996,
-0.0104394, 0.0259701, 0.00329733,
-0.0121496, 0.02617985, 0.01134996,
-0.00930721, 0.0261215, 0.00409051,
-0.0121496, 0.02617985, 0.01134996,
-0.0124193, 0.0257317, 0.0162523,
-0.0121496, 0.02617985, 0.01134996,
-0.0114044, 0.025375, 0.00361722,
-0.0121496, 0.02617985, 0.01134996,
-0.0112687, 0.0271153, 0.00987548,
-0.0121496, 0.02617985, 0.01134996,
-0.0135369, 0.0198464, 0.0192111,
-0.0121496, 0.02617985, 0.01134996,
-0.0134307, 0.0240167, 0.00338929,
-0.0121496, 0.02617985, 0.01134996,
-0.00581692, -0.000934194, -0.00182728,
-0.0121496, 0.02617985, 0.01134996,
-0.00992799, 0.0281201, 0.00421423,
-0.0121496, 0.02617985, 0.01134996,
-0.0163484, 0.0253598, 0.00679276,
-0.0121496, 0.02617985, 0.01134996,
-0.0153143, 0.0239155, 0.00922948,
-0.0121496, 0.02617985, 0.01134996,
-0.0130066, 0.0264895, 0.0219972,
-0.0121496, 0.02617985, 0.01134996,
-0.0123188, 0.0270323, 0.0130162,
-0.0121496, 0.02617985, 0.01134996,
-0.0149538, 0.0261319, 0.0246082,
-0.0121496, 0.02617985, 0.01134996,
-0.00848068, 0.0244795, 0.0126147,
-0.0121496, 0.02617985, 0.01134996,
-0.009655, 0.026754, 0.0151766,
-0.0121496, 0.02617985, 0.01134996,
-0.0110317, 0.0247415, 0.0169718,
-0.0121496, 0.02617985, 0.01134996,
-0.0105467, 0.0216758, 0.0273625,
-0.0121496, 0.02617985, 0.01134996,
-0.0111351, 0.0298442, 0.0137315,
-0.0121496, 0.02617985, 0.01134996,
-0.0148939, 0.0282641, 0.0180507,
-0.0121496, 0.02617985, 0.01134996,
-0.0133113, 0.0255374, 0.0156552,
-0.0121496, 0.02617985, 0.01134996,
-0.0152238, 0.0253733, 0.0118128,
-0.0121496, 0.02617985, 0.01134996,
-0.0165117, 0.0254165, 0.0210366,
-0.0121496, 0.02617985, 0.01134996,
-0.0172562, 0.026341, 0.0224113,
-0.0121496, 0.02617985, 0.01134996,
-0.0138025, 0.0277873, 0.00395365,
-0.0121496, 0.02617985, 0.01134996,
-0.0135819, 0.0270152, 0.00695362,
-0.0121496, 0.02617985, 0.01134996,
-0.0116353, 0.0256155, 0.000289371,
-0.0121496, 0.02617985, 0.01134996,
-0.0149184, 0.0238256, -0.00270158,
-0.0121496, 0.02617985, 0.01134996,
-0.0114351, 0.0271658, 0.0125575,
-0.0121496, 0.02617985, 0.01134996,
-0.01436, 0.0264762, 0.0173609,
-0.0121496, 0.02617985, 0.01134996,
-0.0128438, 0.0268224, 0.00444834,
-0.0121496, 0.02617985, 0.01134996,
-0.0120046, 0.0230234, 0.00796341,
-0.0121496, 0.02617985, 0.01134996,
-0.0126985, 0.0258126, 0.00514686,
-0.0121496, 0.02617985, 0.01134996,
-0.0135831, 0.0249755, 0.0107284,
-0.0121496, 0.02617985, 0.01134996,
-0.0121259, 0.0280823, 0.020544,
-0.0121496, 0.02617985, 0.01134996,
-0.0141439, 0.0265254, 0.0258433,
-0.0121496, 0.02617985, 0.01134996,
-0.0138132, 0.0284247, 0.0101188,
-0.0121496, 0.02617985, 0.01134996,
-0.013572, 0.0269507, 0.00688972,
-0.0121496, 0.02617985, 0.01134996,
-0.0113011, 0.0268327, 0.0184482,
-0.0121496, 0.02617985, 0.01134996,
-0.0100601, 0.0264789, 0.0212786,
-0.0121496, 0.02617985, 0.01134996,
-0.0113299, 0.0282418, 0.00866489,
-0.0121496, 0.02617985, 0.01134996,
-0.0114925, 0.0272719, 0.0170049,
-0.0121496, 0.02617985, 0.01134996,
-0.0104039, 0.0283855, 0.0100799,
-0.0121496, 0.02617985, 0.01134996,
-0.00956386, 0.0268284, 0.0101297,
-0.0121496, 0.02617985, 0.01134996,
-0.0121363, 0.0224437, 0.00471969,
-0.0121496, 0.02617985, 0.01134996,
-0.0129748, 0.0260496, 0.0176977,
-0.0121496, 0.02617985, 0.01134996,
-0.0128936, 0.0280627, 0.00938281,
-0.0121496, 0.02617985, 0.01134996,
-0.0114891, 0.0247891, 0.0130035,
-0.0121496, 0.02617985, 0.01134996,
-0.00577137, 0.0112307, -0.0490284,
-0.0121496, 0.02617985, 0.01134996,
-0.0102643, 0.0267855, 0.0104728,
-0.0121496, 0.02617985, 0.01134996,
-0.0123468, 0.0265473, 0.016931,
-0.0121496, 0.02617985, 0.01134996,
-0.0097784, 0.0252052, 0.00928465,
-0.0121496, 0.02617985, 0.01134996,
-0.0117949, 0.0233834, 0.0122081,
-0.0121496, 0.02617985, 0.01134996,
-0.0128608, 0.0249954, 0.0176076,
-0.0121496, 0.02617985, 0.01134996,
-0.0129981, 0.0257737, 0.0155265,
-0.0121496, 0.02617985, 0.01134996,
-0.0134316, 0.02653, 0.00353212,
-0.0121496, 0.02617985, 0.01134996,
-0.00935833, 0.0318374, 0.0100076,
-0.0121496, 0.02617985, 0.01134996,
-0.0113107, 0.0303198, 0.0116077,
-0.0121496, 0.02617985, 0.01134996,
-0.0131245, 0.0298223, 0.00180678,
-0.0121496, 0.02617985, 0.01134996,
-0.0133191, 0.0293408, 0.00662741,
-0.0121496, 0.02617985, 0.01134996,
-0.0138591, 0.0261048, 0.000836834,
-0.0121496, 0.02617985, 0.01134996,
-0.0150174, 0.0231497, -0.00112857,
-0.0121496, 0.02617985, 0.01134996,
-0.0110389, 0.0248572, 0.00176283,
-0.0121496, 0.02617985, 0.01134996,
-0.0118715, 0.0275812, 0.0178639,
-0.0121496, 0.02617985, 0.01134996,
-0.0129834, 0.0259341, 0.0186928,
-0.0121496, 0.02617985, 0.01134996,
-0.010557, 0.0273327, 0.00990001,
-0.0121496, 0.02617985, 0.01134996,
-0.0111681, 0.0273472, 0.00617783,
-0.0121496, 0.02617985, 0.01134996,
-0.0101689, 0.0280639, 0.00864267,
-0.0121496, 0.02617985, 0.01134996,
-0.00927365, 0.0255201, 0.0130722,
-0.0121496, 0.02617985, 0.01134996,
-0.010756, 0.0260178, 0.0154469,
-0.0121496, 0.02617985, 0.01134996,
-0.0122762, 0.0266211, 0.00832697,
-0.0121496, 0.02617985, 0.01134996,
-0.0132575, 0.0299597, 0.014467,
-0.0121496, 0.02617985, 0.01134996,
-0.0114548, 0.0255468, 0.0189329,
-0.0121496, 0.02617985, 0.01134996,
-0.00934806, 0.0252484, 0.00733987,
-0.0121496, 0.02617985, 0.01134996,
-0.0142405, 0.0279119, 0.0149429,
-0.0121496, 0.02617985, 0.01134996,
-0.0133535, 0.0262824, 0.00311826,
-0.0121496, 0.02617985, 0.01134996,
-0.0135127, 0.0255778, -0.0113687,
-0.0121496, 0.02617985, 0.01134996,
-0.0121261, 0.0260542, 0.0169802,
-0.0121496, 0.02617985, 0.01134996,
-0.0133854, 0.0276628, 0.00624653,
-0.0121496, 0.02617985, 0.01134996,
-0.0129197, 0.0294731, 0.0139965,
-0.0121496, 0.02617985, 0.01134996,
-0.010358, 0.0239915, 0.0158709,
-0.0121496, 0.02617985, 0.01134996,
-0.0116095, 0.0243185, 0.0147471,
-0.0121496, 0.02617985, 0.01134996,
-0.0114546, 0.0261468, 0.0128631,
-0.0121496, 0.02617985, 0.01134996
]);
this.values[105] = v;
this.buf[105] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[105]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[105], gl.STATIC_DRAW);
this.mvMatLoc[105] = gl.getUniformLocation(this.prog[105],"mvMatrix");
this.prMatLoc[105] = gl.getUniformLocation(this.prog[105],"prMatrix");
// ****** lines object 106 ******
this.flags[106] = 128;
this.prog[106]  = gl.createProgram();
gl.attachShader(this.prog[106], this.getShader( gl, "plot_3d4vshader106" ));
gl.attachShader(this.prog[106], this.getShader( gl, "plot_3d4fshader106" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[106], 0, "aPos");
gl.bindAttribLocation(this.prog[106], 1, "aCol");
gl.linkProgram(this.prog[106]);
this.offsets[106]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.04, -0.05192991, -0.1960567,
0.06, -0.05192991, -0.1960567,
-0.04, -0.05192991, -0.1960567,
-0.04, -0.05479952, -0.2022173,
-0.02, -0.05192991, -0.1960567,
-0.02, -0.05479952, -0.2022173,
0, -0.05192991, -0.1960567,
0, -0.05479952, -0.2022173,
0.02, -0.05192991, -0.1960567,
0.02, -0.05479952, -0.2022173,
0.04, -0.05192991, -0.1960567,
0.04, -0.05479952, -0.2022173,
0.06, -0.05192991, -0.1960567,
0.06, -0.05479952, -0.2022173
]);
this.values[106] = v;
this.buf[106] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[106]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[106], gl.STATIC_DRAW);
this.mvMatLoc[106] = gl.getUniformLocation(this.prog[106],"mvMatrix");
this.prMatLoc[106] = gl.getUniformLocation(this.prog[106],"prMatrix");
// ****** text object 107 ******
this.flags[107] = 40;
this.prog[107]  = gl.createProgram();
gl.attachShader(this.prog[107], this.getShader( gl, "plot_3d4vshader107" ));
gl.attachShader(this.prog[107], this.getShader( gl, "plot_3d4fshader107" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[107], 0, "aPos");
gl.bindAttribLocation(this.prog[107], 1, "aCol");
gl.linkProgram(this.prog[107]);
var texts = [
"-0.04",
"-0.02",
"0",
"0.02",
"0.04",
"0.06"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[107] = gl.getAttribLocation(this.prog[107], "aOfs");
this.texture[107] = gl.createTexture();
this.texLoc[107] = gl.getAttribLocation(this.prog[107], "aTexcoord");
this.sampler[107] = gl.getUniformLocation(this.prog[107],"uSampler");
handleLoadedTexture(this.texture[107], document.getElementById("plot_3d4textureCanvas"));
this.offsets[107]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
-0.04, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.04, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.04, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.04, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.02, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.02, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.02, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.02, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5,
0, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
0, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
0, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
0, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5,
0.02, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
0.02, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
0.02, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
0.02, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5,
0.04, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
0.04, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
0.04, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
0.04, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5,
0.06, -0.06053872, -0.2145385, 0, -0.5, 0.5, 0.5,
0.06, -0.06053872, -0.2145385, 1, -0.5, 0.5, 0.5,
0.06, -0.06053872, -0.2145385, 1, 1.5, 0.5, 0.5,
0.06, -0.06053872, -0.2145385, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<6; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[107]["stride"]*(4*i + j) + this.offsets[107]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[107] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23
]);
this.buf[107] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[107]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[107], gl.STATIC_DRAW);
this.ibuf[107] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[107]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[107] = gl.getUniformLocation(this.prog[107],"mvMatrix");
this.prMatLoc[107] = gl.getUniformLocation(this.prog[107],"prMatrix");
this.textScaleLoc[107] = gl.getUniformLocation(this.prog[107],"textScale");
// ****** lines object 108 ******
this.flags[108] = 128;
this.prog[108]  = gl.createProgram();
gl.attachShader(this.prog[108], this.getShader( gl, "plot_3d4vshader108" ));
gl.attachShader(this.prog[108], this.getShader( gl, "plot_3d4fshader108" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[108], 0, "aPos");
gl.bindAttribLocation(this.prog[108], 1, "aCol");
gl.linkProgram(this.prog[108]);
this.offsets[108]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.04815935, -0.04, -0.1960567,
-0.04815935, 0.06, -0.1960567,
-0.04815935, -0.04, -0.1960567,
-0.0510225, -0.04, -0.2022173,
-0.04815935, -0.02, -0.1960567,
-0.0510225, -0.02, -0.2022173,
-0.04815935, 0, -0.1960567,
-0.0510225, 0, -0.2022173,
-0.04815935, 0.02, -0.1960567,
-0.0510225, 0.02, -0.2022173,
-0.04815935, 0.04, -0.1960567,
-0.0510225, 0.04, -0.2022173,
-0.04815935, 0.06, -0.1960567,
-0.0510225, 0.06, -0.2022173
]);
this.values[108] = v;
this.buf[108] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[108]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[108], gl.STATIC_DRAW);
this.mvMatLoc[108] = gl.getUniformLocation(this.prog[108],"mvMatrix");
this.prMatLoc[108] = gl.getUniformLocation(this.prog[108],"prMatrix");
// ****** text object 109 ******
this.flags[109] = 40;
this.prog[109]  = gl.createProgram();
gl.attachShader(this.prog[109], this.getShader( gl, "plot_3d4vshader109" ));
gl.attachShader(this.prog[109], this.getShader( gl, "plot_3d4fshader109" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[109], 0, "aPos");
gl.bindAttribLocation(this.prog[109], 1, "aCol");
gl.linkProgram(this.prog[109]);
var texts = [
"-0.04",
"-0.02",
"0",
"0.02",
"0.04",
"0.06"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[109] = gl.getAttribLocation(this.prog[109], "aOfs");
this.texture[109] = gl.createTexture();
this.texLoc[109] = gl.getAttribLocation(this.prog[109], "aTexcoord");
this.sampler[109] = gl.getUniformLocation(this.prog[109],"uSampler");
handleLoadedTexture(this.texture[109], document.getElementById("plot_3d4textureCanvas"));
this.offsets[109]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
-0.0567488, -0.04, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.04, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.04, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.04, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.0567488, -0.02, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.02, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.02, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.02, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.0567488, 0, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, 0, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, 0, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, 0, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.0567488, 0.02, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, 0.02, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, 0.02, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, 0.02, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.0567488, 0.04, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, 0.04, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, 0.04, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, 0.04, -0.2145385, 0, 1.5, 0.5, 0.5,
-0.0567488, 0.06, -0.2145385, 0, -0.5, 0.5, 0.5,
-0.0567488, 0.06, -0.2145385, 1, -0.5, 0.5, 0.5,
-0.0567488, 0.06, -0.2145385, 1, 1.5, 0.5, 0.5,
-0.0567488, 0.06, -0.2145385, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<6; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[109]["stride"]*(4*i + j) + this.offsets[109]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[109] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23
]);
this.buf[109] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[109]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[109], gl.STATIC_DRAW);
this.ibuf[109] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[109]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[109] = gl.getUniformLocation(this.prog[109],"mvMatrix");
this.prMatLoc[109] = gl.getUniformLocation(this.prog[109],"prMatrix");
this.textScaleLoc[109] = gl.getUniformLocation(this.prog[109],"textScale");
// ****** lines object 110 ******
this.flags[110] = 128;
this.prog[110]  = gl.createProgram();
gl.attachShader(this.prog[110], this.getShader( gl, "plot_3d4vshader110" ));
gl.attachShader(this.prog[110], this.getShader( gl, "plot_3d4fshader110" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[110], 0, "aPos");
gl.bindAttribLocation(this.prog[110], 1, "aCol");
gl.linkProgram(this.prog[110]);
this.offsets[110]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.04815935, -0.05192991, -0.15,
-0.04815935, -0.05192991, 0,
-0.04815935, -0.05192991, -0.15,
-0.0510225, -0.05479952, -0.15,
-0.04815935, -0.05192991, -0.1,
-0.0510225, -0.05479952, -0.1,
-0.04815935, -0.05192991, -0.05,
-0.0510225, -0.05479952, -0.05,
-0.04815935, -0.05192991, 0,
-0.0510225, -0.05479952, 0
]);
this.values[110] = v;
this.buf[110] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[110]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[110], gl.STATIC_DRAW);
this.mvMatLoc[110] = gl.getUniformLocation(this.prog[110],"mvMatrix");
this.prMatLoc[110] = gl.getUniformLocation(this.prog[110],"prMatrix");
// ****** text object 111 ******
this.flags[111] = 40;
this.prog[111]  = gl.createProgram();
gl.attachShader(this.prog[111], this.getShader( gl, "plot_3d4vshader111" ));
gl.attachShader(this.prog[111], this.getShader( gl, "plot_3d4fshader111" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[111], 0, "aPos");
gl.bindAttribLocation(this.prog[111], 1, "aCol");
gl.linkProgram(this.prog[111]);
var texts = [
"-0.15",
"-0.1",
"-0.05",
"0"
];
var texinfo = drawTextToCanvas(texts, 1);
this.ofsLoc[111] = gl.getAttribLocation(this.prog[111], "aOfs");
this.texture[111] = gl.createTexture();
this.texLoc[111] = gl.getAttribLocation(this.prog[111], "aTexcoord");
this.sampler[111] = gl.getUniformLocation(this.prog[111],"uSampler");
handleLoadedTexture(this.texture[111], document.getElementById("plot_3d4textureCanvas"));
this.offsets[111]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:5, tofs:3, stride:7};
var v=new Float32Array([
-0.0567488, -0.06053872, -0.15, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.15, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.15, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.15, 0, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.1, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.1, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.1, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.1, 0, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.05, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.05, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.05, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, -0.05, 0, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, 0, 0, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, 0, 1, -0.5, 0.5, 0.5,
-0.0567488, -0.06053872, 0, 1, 1.5, 0.5, 0.5,
-0.0567488, -0.06053872, 0, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<4; i++) 
for (var j=0; j<4; j++) {
var ind = this.offsets[111]["stride"]*(4*i + j) + this.offsets[111]["tofs"];
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
this.values[111] = v;
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15
]);
this.buf[111] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[111]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[111], gl.STATIC_DRAW);
this.ibuf[111] = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[111]);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
this.mvMatLoc[111] = gl.getUniformLocation(this.prog[111],"mvMatrix");
this.prMatLoc[111] = gl.getUniformLocation(this.prog[111],"prMatrix");
this.textScaleLoc[111] = gl.getUniformLocation(this.prog[111],"textScale");
// ****** lines object 112 ******
this.flags[112] = 128;
this.prog[112]  = gl.createProgram();
gl.attachShader(this.prog[112], this.getShader( gl, "plot_3d4vshader112" ));
gl.attachShader(this.prog[112], this.getShader( gl, "plot_3d4fshader112" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(this.prog[112], 0, "aPos");
gl.bindAttribLocation(this.prog[112], 1, "aCol");
gl.linkProgram(this.prog[112]);
this.offsets[112]={vofs:0, cofs:-1, nofs:-1, radofs:-1, oofs:-1, tofs:-1, stride:3};
var v=new Float32Array([
-0.04815935, -0.05192991, -0.1960567,
-0.04815935, 0.06285418, -0.1960567,
-0.04815935, -0.05192991, 0.05036679,
-0.04815935, 0.06285418, 0.05036679,
-0.04815935, -0.05192991, -0.1960567,
-0.04815935, -0.05192991, 0.05036679,
-0.04815935, 0.06285418, -0.1960567,
-0.04815935, 0.06285418, 0.05036679,
-0.04815935, -0.05192991, -0.1960567,
0.06636666, -0.05192991, -0.1960567,
-0.04815935, -0.05192991, 0.05036679,
0.06636666, -0.05192991, 0.05036679,
-0.04815935, 0.06285418, -0.1960567,
0.06636666, 0.06285418, -0.1960567,
-0.04815935, 0.06285418, 0.05036679,
0.06636666, 0.06285418, 0.05036679,
0.06636666, -0.05192991, -0.1960567,
0.06636666, 0.06285418, -0.1960567,
0.06636666, -0.05192991, 0.05036679,
0.06636666, 0.06285418, 0.05036679,
0.06636666, -0.05192991, -0.1960567,
0.06636666, -0.05192991, 0.05036679,
0.06636666, 0.06285418, -0.1960567,
0.06636666, 0.06285418, 0.05036679
]);
this.values[112] = v;
this.buf[112] = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[112]);
gl.bufferData(gl.ARRAY_BUFFER, this.values[112], gl.STATIC_DRAW);
this.mvMatLoc[112] = gl.getUniformLocation(this.prog[112],"mvMatrix");
this.prMatLoc[112] = gl.getUniformLocation(this.prog[112],"prMatrix");
gl.enable(gl.DEPTH_TEST);
gl.depthFunc(gl.LEQUAL);
gl.clearDepth(1.0);
gl.clearColor(1,1,1,1);
var drag  = 0;
this.drawScene = function() {
gl.depthMask(true);
gl.disable(gl.BLEND);
gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);
this.drawFns[85].call(this, 85)
gl.flush ();
}
// ****** points object 91 *******
this.drawFns[91] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.enableVertexAttribArray( colLoc );
gl.vertexAttribPointer(colLoc, 4, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["cofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.POINTS, 0, 1232);
}
// ****** text object 93 *******
this.drawFns[93] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 6, gl.UNSIGNED_SHORT, 0);
}
// ****** text object 94 *******
this.drawFns[94] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 6, gl.UNSIGNED_SHORT, 0);
}
// ****** text object 95 *******
this.drawFns[95] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 6, gl.UNSIGNED_SHORT, 0);
}
// ****** lines object 98 *******
this.drawFns[98] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 8);
}
// ****** lines object 99 *******
this.drawFns[99] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 8);
}
// ****** lines object 100 *******
this.drawFns[100] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 10);
}
// ****** lines object 101 *******
this.drawFns[101] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 8);
}
// ****** lines object 102 *******
this.drawFns[102] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 10);
}
// ****** lines object 103 *******
this.drawFns[103] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.7450981, 0.7450981, 0.7450981, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 8);
}
// ****** spheres object 104 *******
this.drawFns[104] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, sphereBuf);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, sphereIbuf);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniformMatrix4fv( this.normMatLoc[id], false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
var depths = new Float32Array(1);
var faces = new Array(1);
for(var i=0; i<1; i++) {
var z = this.prmvMatrix.m13*this.centers[id][3*i] 
+ this.prmvMatrix.m23*this.centers[id][3*i+1]
+ this.prmvMatrix.m33*this.centers[id][3*i+2]
+ this.prmvMatrix.m43;
var w = this.prmvMatrix.m14*this.centers[id][3*i] 
+ this.prmvMatrix.m24*this.centers[id][3*i+1]
+ this.prmvMatrix.m34*this.centers[id][3*i+2]
+ this.prmvMatrix.m44;
depths[i] = z/w;
faces[i] = i;
}
var depthsort = function(i,j) { return depths[j] - depths[i] }
faces.sort(depthsort);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 12,  0);
gl.enableVertexAttribArray(this.normLoc[id] );
gl.vertexAttribPointer(this.normLoc[id],  3, gl.FLOAT, false, 12,  0);
gl.disableVertexAttribArray( colLoc );
var sphereNorm = new CanvasMatrix4();
sphereNorm.scale(1, 1, 1);
sphereNorm.multRight(normMatrix);
gl.uniformMatrix4fv( this.normMatLoc[id], false, new Float32Array(sphereNorm.getAsArray()) );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 0.4980392);
for (var i = 0; i < 1; i++) {
var sphereMV = new CanvasMatrix4();
var baseofs = faces[i]*plot_3d4rgl.offsets[id]["stride"];
var ofs = baseofs + this.offsets[id]["radofs"];	       
var scale = this.values[id][ofs];
sphereMV.scale(1*scale, 1*scale, 1*scale);
sphereMV.translate(this.values[id][baseofs], 
this.values[id][baseofs+1], 
this.values[id][baseofs+2]);
sphereMV.multRight(this.mvMatrix);
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(sphereMV.getAsArray()) );
gl.drawElements(gl.TRIANGLES, 384, gl.UNSIGNED_SHORT, 0);
}
}
// ****** lines object 105 *******
this.drawFns[105] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 280);
}
// ****** lines object 106 *******
this.drawFns[106] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 14);
}
// ****** text object 107 *******
this.drawFns[107] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 36, gl.UNSIGNED_SHORT, 0);
}
// ****** lines object 108 *******
this.drawFns[108] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 14);
}
// ****** text object 109 *******
this.drawFns[109] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 36, gl.UNSIGNED_SHORT, 0);
}
// ****** lines object 110 *******
this.drawFns[110] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 10);
}
// ****** text object 111 *******
this.drawFns[111] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, this.ibuf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.uniform2f( this.textScaleLoc[id], 0.75/this.vp[2], 0.75/this.vp[3]);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.enableVertexAttribArray( this.texLoc[id] );
gl.vertexAttribPointer(this.texLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["tofs"]);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, this.texture[id]);
gl.uniform1i( this.sampler[id], 0);
gl.enableVertexAttribArray( this.ofsLoc[id] );
gl.vertexAttribPointer(this.ofsLoc[id], 2, gl.FLOAT, false, 4*this.offsets[id]["stride"], 4*this.offsets[id]["oofs"]);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawElements(gl.TRIANGLES, 24, gl.UNSIGNED_SHORT, 0);
}
// ****** lines object 112 *******
this.drawFns[112] = function(id, clipplanes) {
gl.useProgram(this.prog[id]);
gl.bindBuffer(gl.ARRAY_BUFFER, this.buf[id]);
gl.uniformMatrix4fv( this.prMatLoc[id], false, new Float32Array(this.prMatrix.getAsArray()) );
gl.uniformMatrix4fv( this.mvMatLoc[id], false, new Float32Array(this.mvMatrix.getAsArray()) );
var clipcheck = 0;
for (var i=0; i < clipplanes.length; i++)
clipcheck = this.clipFns[clipplanes[i]].call(this, clipplanes[i], id, clipcheck);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0, 1 );
gl.lineWidth( 1 );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 4*this.offsets[id]["stride"],  4*this.offsets[id]["vofs"]);
gl.drawArrays(gl.LINES, 0, 24);
}
// ***** subscene 85 ****
this.drawFns[85] = function(id) {
this.vp = this.viewport[id];
gl.viewport(this.vp[0], this.vp[1], this.vp[2], this.vp[3]);
gl.scissor(this.vp[0], this.vp[1], this.vp[2], this.vp[3]);
gl.clearColor(1, 1, 1, 1);
gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);
this.prMatrix.makeIdentity();
var radius = 0.1575162;
var distance = 0.3627647;
var t = tan(this.FOV[85]*PI/360);
var near = distance - radius;
var far = distance + radius;
var hlen = t*near;
var aspect = this.vp[2]/this.vp[3];
var z = this.zoom[85];
if (aspect > 1) 
this.prMatrix.frustum(-hlen*aspect*z, hlen*aspect*z, 
-hlen*z, hlen*z, near, far);
else  
this.prMatrix.frustum(-hlen*z, hlen*z, 
-hlen*z/aspect, hlen*z/aspect, 
near, far);
this.mvMatrix.makeIdentity();
this.mvMatrix.translate( -0.009103652, -0.005462132, 0.07284495 );
this.mvMatrix.scale( 1, 1, 1 );   
this.mvMatrix.multRight( plot_3d4rgl.userMatrix[85] );
this.mvMatrix.translate(-0, -0, -0.3627647);
normMatrix.makeIdentity();
normMatrix.scale( 1, 1, 1 );   
normMatrix.multRight( plot_3d4rgl.userMatrix[85] );
this.prmvMatrix = new CanvasMatrix4( this.mvMatrix );
this.prmvMatrix.multRight( this.prMatrix );
var clipids = this.clipplanes[id];
if (clipids.length > 0) {
this.invMatrix = new CanvasMatrix4(this.mvMatrix);
this.invMatrix.invert();
for (var i = 0; i < this.clipplanes[id].length; i++) 
this.drawFns[clipids[i]].call(this, clipids[i]);
}
var subids = this.opaque[id];
for (var i = 0; i < subids.length; i++) 
this.drawFns[subids[i]].call(this, subids[i], clipids);
subids = this.transparent[id];
if (subids.length > 0) {
gl.depthMask(false);
gl.blendFuncSeparate(gl.SRC_ALPHA, gl.ONE_MINUS_SRC_ALPHA,
gl.ONE, gl.ONE);
gl.enable(gl.BLEND);
for (var i = 0; i < subids.length; i++) 
this.drawFns[subids[i]].call(this, subids[i], clipids);
}
subids = this.subscenes[id];
for (var i = 0; i < subids.length; i++)
this.drawFns[subids[i]].call(this, subids[i]);
}
this.drawScene();
var vpx0 = {
85: 0
};
var vpy0 = {
85: 0
};
var vpWidths = {
85: 504
};
var vpHeights = {
85: 504
};
var activeModel = {
85: 85
};
var activeProjection = {
85: 85
};
plot_3d4rgl.listeners = {
85: [ 85 ]
};
var whichSubscene = function(coords){
if (0 <= coords.x && coords.x <= 504 && 0 <= coords.y && coords.y <= 504) return(85);
return(85);
}
var translateCoords = function(subsceneid, coords){
return {x:coords.x - vpx0[subsceneid], y:coords.y - vpy0[subsceneid]};
}
var vlen = function(v) {
return sqrt(v[0]*v[0] + v[1]*v[1] + v[2]*v[2])
}
var xprod = function(a, b) {
return [a[1]*b[2] - a[2]*b[1],
a[2]*b[0] - a[0]*b[2],
a[0]*b[1] - a[1]*b[0]];
}
var screenToVector = function(x, y) {
var width = vpWidths[activeSubscene];
var height = vpHeights[activeSubscene];
var radius = max(width, height)/2.0;
var cx = width/2.0;
var cy = height/2.0;
var px = (x-cx)/radius;
var py = (y-cy)/radius;
var plen = sqrt(px*px+py*py);
if (plen > 1.e-6) { 
px = px/plen;
py = py/plen;
}
var angle = (SQRT2 - plen)/SQRT2*PI/2;
var z = sin(angle);
var zlen = sqrt(1.0 - z*z);
px = px * zlen;
py = py * zlen;
return [px, py, z];
}
var rotBase;
var trackballdown = function(x,y) {
rotBase = screenToVector(x, y);
var l = plot_3d4rgl.listeners[activeModel[activeSubscene]];
saveMat = new Object();
for (var i = 0; i < l.length; i++) 
saveMat[l[i]] = new CanvasMatrix4(plot_3d4rgl.userMatrix[l[i]]);
}
var trackballmove = function(x,y) {
var rotCurrent = screenToVector(x,y);
var dot = rotBase[0]*rotCurrent[0] + 
rotBase[1]*rotCurrent[1] + 
rotBase[2]*rotCurrent[2];
var angle = acos( dot/vlen(rotBase)/vlen(rotCurrent) )*180./PI;
var axis = xprod(rotBase, rotCurrent);
var l = plot_3d4rgl.listeners[activeModel[activeSubscene]];
for (i = 0; i < l.length; i++) {
plot_3d4rgl.userMatrix[l[i]].load(saveMat[l[i]]);
plot_3d4rgl.userMatrix[l[i]].rotate(angle, axis[0], axis[1], axis[2]);
}
plot_3d4rgl.drawScene();
}
var trackballend = 0;
var y0zoom = 0;
var zoom0 = 0;
var zoomdown = function(x, y) {
y0zoom = y;
zoom0 = new Object();
l = plot_3d4rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
zoom0[l[i]] = log(plot_3d4rgl.zoom[l[i]]);
}
var zoommove = function(x, y) {
l = plot_3d4rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
plot_3d4rgl.zoom[l[i]] = exp(zoom0[l[i]] + (y-y0zoom)/height);
plot_3d4rgl.drawScene();
}
var zoomend = 0;
var y0fov = 0;
var fov0 = 0;
var fovdown = function(x, y) {
y0fov = y;
fov0 = new Object();
l = plot_3d4rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
fov0[l[i]] = plot_3d4rgl.FOV[l[i]];
}
var fovmove = function(x, y) {
l = plot_3d4rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
plot_3d4rgl.FOV[l[i]] = max(1, min(179, fov0[l[i]] + 180*(y-y0fov)/height));
plot_3d4rgl.drawScene();
}
var fovend = 0;
var mousedown = [trackballdown, zoomdown, fovdown];
var mousemove = [trackballmove, zoommove, fovmove];
var mouseend = [trackballend, zoomend, fovend];
function relMouseCoords(event){
var totalOffsetX = 0;
var totalOffsetY = 0;
var currentElement = canvas;
do{
totalOffsetX += currentElement.offsetLeft;
totalOffsetY += currentElement.offsetTop;
currentElement = currentElement.offsetParent;
}
while(currentElement)
var canvasX = event.pageX - totalOffsetX;
var canvasY = event.pageY - totalOffsetY;
return {x:canvasX, y:canvasY}
}
canvas.onmousedown = function ( ev ){
if (!ev.which) // Use w3c defns in preference to MS
switch (ev.button) {
case 0: ev.which = 1; break;
case 1: 
case 4: ev.which = 2; break;
case 2: ev.which = 3;
}
drag = ev.which;
var f = mousedown[drag-1];
if (f) {
var coords = relMouseCoords(ev);
coords.y = height-coords.y;
activeSubscene = whichSubscene(coords);
coords = translateCoords(activeSubscene, coords);
f(coords.x, coords.y); 
ev.preventDefault();
}
}    
canvas.onmouseup = function ( ev ){	
if ( drag == 0 ) return;
var f = mouseend[drag-1];
if (f) 
f();
drag = 0;
}
canvas.onmouseout = canvas.onmouseup;
canvas.onmousemove = function ( ev ){
if ( drag == 0 ) return;
var f = mousemove[drag-1];
if (f) {
var coords = relMouseCoords(ev);
coords.y = height - coords.y;
coords = translateCoords(activeSubscene, coords);
f(coords.x, coords.y);
}
}
var wheelHandler = function(ev) {
var del = 1.1;
if (ev.shiftKey) del = 1.01;
var ds = ((ev.detail || ev.wheelDelta) > 0) ? del : (1 / del);
l = plot_3d4rgl.listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
plot_3d4rgl.zoom[l[i]] *= ds;
plot_3d4rgl.drawScene();
ev.preventDefault();
};
canvas.addEventListener("DOMMouseScroll", wheelHandler, false);
canvas.addEventListener("mousewheel", wheelHandler, false);
}
</script>
<canvas id="plot_3d4canvas" class="rglWebGL" width="1" height="1"></canvas> 
<p id="plot_3d4debug">
<img src="plot_3d4snapshot.png" alt="plot_3d4snapshot" width=505/><br>
You must enable Javascript to view this page properly.</p>
<script>plot_3d4rgl.start();</script>


