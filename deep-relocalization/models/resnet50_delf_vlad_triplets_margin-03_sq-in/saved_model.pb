űÓ:
÷
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
ë
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	

FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%ˇŃ8"
data_formatstringNHWC"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
2
L2Loss
t"T
output"T"
Ttype:
2
Ô
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
;
Maximum
x"T
y"T
z"T"
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
1
Square
x"T
y"T"
Ttype:

2	
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.6.02v1.6.0-0-gd2e24b6039ýî1

imagePlaceholder*
dtype0*6
shape-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
O

pred/Sub/yConst*
valueB
 *   C*
dtype0*
_output_shapes
: 
n
pred/SubSubimage
pred/Sub/y*
T0*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
O

pred/div/yConst*
valueB
 *   C*
dtype0*
_output_shapes
: 
u
pred/divRealDivpred/Sub
pred/div/y*
T0*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
l
pred/Tile/multiplesConst*%
valueB"            *
dtype0*
_output_shapes
:

	pred/TileTilepred/divpred/Tile/multiples*
T0*

Tmultiples0*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

pred/resnet_v1_50/Pad/paddingsConst*9
value0B."                             *
dtype0*
_output_shapes

:
¤
pred/resnet_v1_50/PadPad	pred/Tilepred/resnet_v1_50/Pad/paddings*
T0*
	Tpaddings0*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ĺ
=resnet_v1_50/conv1/weights/Initializer/truncated_normal/shapeConst*%
valueB"         @   *
dtype0*-
_class#
!loc:@resnet_v1_50/conv1/weights*
_output_shapes
:
°
<resnet_v1_50/conv1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*-
_class#
!loc:@resnet_v1_50/conv1/weights*
_output_shapes
: 
˛
>resnet_v1_50/conv1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *A/>*
dtype0*-
_class#
!loc:@resnet_v1_50/conv1/weights*
_output_shapes
: 

Gresnet_v1_50/conv1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal=resnet_v1_50/conv1/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*-
_class#
!loc:@resnet_v1_50/conv1/weights*&
_output_shapes
:@
Ť
;resnet_v1_50/conv1/weights/Initializer/truncated_normal/mulMulGresnet_v1_50/conv1/weights/Initializer/truncated_normal/TruncatedNormal>resnet_v1_50/conv1/weights/Initializer/truncated_normal/stddev*
T0*-
_class#
!loc:@resnet_v1_50/conv1/weights*&
_output_shapes
:@

7resnet_v1_50/conv1/weights/Initializer/truncated_normalAdd;resnet_v1_50/conv1/weights/Initializer/truncated_normal/mul<resnet_v1_50/conv1/weights/Initializer/truncated_normal/mean*
T0*-
_class#
!loc:@resnet_v1_50/conv1/weights*&
_output_shapes
:@
Í
resnet_v1_50/conv1/weights
VariableV2*
shape:@*
dtype0*
	container *
shared_name *-
_class#
!loc:@resnet_v1_50/conv1/weights*&
_output_shapes
:@

!resnet_v1_50/conv1/weights/AssignAssignresnet_v1_50/conv1/weights7resnet_v1_50/conv1/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*-
_class#
!loc:@resnet_v1_50/conv1/weights*&
_output_shapes
:@
§
resnet_v1_50/conv1/weights/readIdentityresnet_v1_50/conv1/weights*
T0*-
_class#
!loc:@resnet_v1_50/conv1/weights*&
_output_shapes
:@
ł
?pred/resnet_v1_50/conv1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*-
_class#
!loc:@resnet_v1_50/conv1/weights*
_output_shapes
: 
ť
@pred/resnet_v1_50/conv1/kernel/Regularizer/l2_regularizer/L2LossL2Lossresnet_v1_50/conv1/weights/read*
T0*-
_class#
!loc:@resnet_v1_50/conv1/weights*
_output_shapes
: 

9pred/resnet_v1_50/conv1/kernel/Regularizer/l2_regularizerMul?pred/resnet_v1_50/conv1/kernel/Regularizer/l2_regularizer/scale@pred/resnet_v1_50/conv1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*-
_class#
!loc:@resnet_v1_50/conv1/weights*
_output_shapes
: 
v
%pred/resnet_v1_50/conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

pred/resnet_v1_50/conv1/Conv2DConv2Dpred/resnet_v1_50/Padresnet_v1_50/conv1/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingVALID*
data_formatNHWC*
	dilations
*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@
Ä
Cresnet_v1_50/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:@*
dtype0*5
_class+
)'loc:@resnet_v1_50/conv1/BatchNorm/gamma*
_output_shapes
:
ľ
9resnet_v1_50/conv1/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*5
_class+
)'loc:@resnet_v1_50/conv1/BatchNorm/gamma*
_output_shapes
: 
Š
3resnet_v1_50/conv1/BatchNorm/gamma/Initializer/onesFillCresnet_v1_50/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensor9resnet_v1_50/conv1/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*5
_class+
)'loc:@resnet_v1_50/conv1/BatchNorm/gamma*
_output_shapes
:@
Ĺ
"resnet_v1_50/conv1/BatchNorm/gamma
VariableV2*
shape:@*
dtype0*
	container *
shared_name *5
_class+
)'loc:@resnet_v1_50/conv1/BatchNorm/gamma*
_output_shapes
:@

)resnet_v1_50/conv1/BatchNorm/gamma/AssignAssign"resnet_v1_50/conv1/BatchNorm/gamma3resnet_v1_50/conv1/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*5
_class+
)'loc:@resnet_v1_50/conv1/BatchNorm/gamma*
_output_shapes
:@
ł
'resnet_v1_50/conv1/BatchNorm/gamma/readIdentity"resnet_v1_50/conv1/BatchNorm/gamma*
T0*5
_class+
)'loc:@resnet_v1_50/conv1/BatchNorm/gamma*
_output_shapes
:@
Ă
Cresnet_v1_50/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:@*
dtype0*4
_class*
(&loc:@resnet_v1_50/conv1/BatchNorm/beta*
_output_shapes
:
´
9resnet_v1_50/conv1/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*4
_class*
(&loc:@resnet_v1_50/conv1/BatchNorm/beta*
_output_shapes
: 
¨
3resnet_v1_50/conv1/BatchNorm/beta/Initializer/zerosFillCresnet_v1_50/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensor9resnet_v1_50/conv1/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*4
_class*
(&loc:@resnet_v1_50/conv1/BatchNorm/beta*
_output_shapes
:@
Ă
!resnet_v1_50/conv1/BatchNorm/beta
VariableV2*
shape:@*
dtype0*
	container *
shared_name *4
_class*
(&loc:@resnet_v1_50/conv1/BatchNorm/beta*
_output_shapes
:@

(resnet_v1_50/conv1/BatchNorm/beta/AssignAssign!resnet_v1_50/conv1/BatchNorm/beta3resnet_v1_50/conv1/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*4
_class*
(&loc:@resnet_v1_50/conv1/BatchNorm/beta*
_output_shapes
:@
°
&resnet_v1_50/conv1/BatchNorm/beta/readIdentity!resnet_v1_50/conv1/BatchNorm/beta*
T0*4
_class*
(&loc:@resnet_v1_50/conv1/BatchNorm/beta*
_output_shapes
:@
Ń
Jresnet_v1_50/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:@*
dtype0*;
_class1
/-loc:@resnet_v1_50/conv1/BatchNorm/moving_mean*
_output_shapes
:
Â
@resnet_v1_50/conv1/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*;
_class1
/-loc:@resnet_v1_50/conv1/BatchNorm/moving_mean*
_output_shapes
: 
Ä
:resnet_v1_50/conv1/BatchNorm/moving_mean/Initializer/zerosFillJresnet_v1_50/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor@resnet_v1_50/conv1/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*;
_class1
/-loc:@resnet_v1_50/conv1/BatchNorm/moving_mean*
_output_shapes
:@
Ń
(resnet_v1_50/conv1/BatchNorm/moving_mean
VariableV2*
shape:@*
dtype0*
	container *
shared_name *;
_class1
/-loc:@resnet_v1_50/conv1/BatchNorm/moving_mean*
_output_shapes
:@
Ş
/resnet_v1_50/conv1/BatchNorm/moving_mean/AssignAssign(resnet_v1_50/conv1/BatchNorm/moving_mean:resnet_v1_50/conv1/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*;
_class1
/-loc:@resnet_v1_50/conv1/BatchNorm/moving_mean*
_output_shapes
:@
Ĺ
-resnet_v1_50/conv1/BatchNorm/moving_mean/readIdentity(resnet_v1_50/conv1/BatchNorm/moving_mean*
T0*;
_class1
/-loc:@resnet_v1_50/conv1/BatchNorm/moving_mean*
_output_shapes
:@
Ř
Mresnet_v1_50/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:@*
dtype0*?
_class5
31loc:@resnet_v1_50/conv1/BatchNorm/moving_variance*
_output_shapes
:
É
Cresnet_v1_50/conv1/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*?
_class5
31loc:@resnet_v1_50/conv1/BatchNorm/moving_variance*
_output_shapes
: 
Ń
=resnet_v1_50/conv1/BatchNorm/moving_variance/Initializer/onesFillMresnet_v1_50/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorCresnet_v1_50/conv1/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*?
_class5
31loc:@resnet_v1_50/conv1/BatchNorm/moving_variance*
_output_shapes
:@
Ů
,resnet_v1_50/conv1/BatchNorm/moving_variance
VariableV2*
shape:@*
dtype0*
	container *
shared_name *?
_class5
31loc:@resnet_v1_50/conv1/BatchNorm/moving_variance*
_output_shapes
:@
š
3resnet_v1_50/conv1/BatchNorm/moving_variance/AssignAssign,resnet_v1_50/conv1/BatchNorm/moving_variance=resnet_v1_50/conv1/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*?
_class5
31loc:@resnet_v1_50/conv1/BatchNorm/moving_variance*
_output_shapes
:@
Ń
1resnet_v1_50/conv1/BatchNorm/moving_variance/readIdentity,resnet_v1_50/conv1/BatchNorm/moving_variance*
T0*?
_class5
31loc:@resnet_v1_50/conv1/BatchNorm/moving_variance*
_output_shapes
:@
ľ
0pred/resnet_v1_50/conv1/BatchNorm/FusedBatchNormFusedBatchNormpred/resnet_v1_50/conv1/Conv2D'resnet_v1_50/conv1/BatchNorm/gamma/read&resnet_v1_50/conv1/BatchNorm/beta/read-resnet_v1_50/conv1/BatchNorm/moving_mean/read1resnet_v1_50/conv1/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@:@:@:@:@
l
'pred/resnet_v1_50/conv1/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
˘
pred/resnet_v1_50/conv1/ReluRelu0pred/resnet_v1_50/conv1/BatchNorm/FusedBatchNorm*
T0*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@
ć
pred/resnet_v1_50/pool1/MaxPoolMaxPoolpred/resnet_v1_50/conv1/Relu*
T0*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@

\resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/shapeConst*%
valueB"      @      *
dtype0*L
_classB
@>loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights*
_output_shapes
:
î
[resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*L
_classB
@>loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights*
_output_shapes
: 
đ
]resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdN>*
dtype0*L
_classB
@>loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights*
_output_shapes
: 
ý
fresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal\resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*L
_classB
@>loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights*'
_output_shapes
:@
¨
Zresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/mulMulfresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/TruncatedNormal]resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/stddev*
T0*L
_classB
@>loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights*'
_output_shapes
:@

Vresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normalAddZresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/mul[resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/mean*
T0*L
_classB
@>loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights*'
_output_shapes
:@

9resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights
VariableV2*
shape:@*
dtype0*
	container *
shared_name *L
_classB
@>loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights*'
_output_shapes
:@

@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights/AssignAssign9resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weightsVresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*L
_classB
@>loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights*'
_output_shapes
:@

>resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights/readIdentity9resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights*
T0*L
_classB
@>loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights*'
_output_shapes
:@
ń
^pred/resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*L
_classB
@>loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights*
_output_shapes
: 

_pred/resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/kernel/Regularizer/l2_regularizer/L2LossL2Loss>resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights/read*
T0*L
_classB
@>loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights*
_output_shapes
: 

Xpred/resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/kernel/Regularizer/l2_regularizerMul^pred/resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/kernel/Regularizer/l2_regularizer/scale_pred/resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/kernel/Regularizer/l2_regularizer/L2Loss*
T0*L
_classB
@>loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights*
_output_shapes
: 

Dpred/resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ă
=pred/resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/Conv2DConv2Dpred/resnet_v1_50/pool1/MaxPool>resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

bresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*T
_classJ
HFloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes
:
ó
Xresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*T
_classJ
HFloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes
: 
Ś
Rresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/onesFillbresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/ones/shape_as_tensorXresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*T
_classJ
HFloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes	
:

Aresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *T
_classJ
HFloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes	
:

Hresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/AssignAssignAresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gammaRresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*T
_classJ
HFloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes	
:

Fresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/readIdentityAresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
T0*T
_classJ
HFloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes	
:

bresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*S
_classI
GEloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes
:
ň
Xresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*S
_classI
GEloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes
: 
Ľ
Rresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zerosFillbresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zeros/shape_as_tensorXresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*S
_classI
GEloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes	
:

@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *S
_classI
GEloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes	
:

Gresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/AssignAssign@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/betaRresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*S
_classI
GEloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes	
:

Eresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/readIdentity@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
T0*S
_classI
GEloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes	
:

iresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*Z
_classP
NLloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes
:

_resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*Z
_classP
NLloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes
: 
Á
Yresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zerosFilliresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor_resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*Z
_classP
NLloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes	
:

Gresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *Z
_classP
NLloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes	
:
§
Nresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/AssignAssignGresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meanYresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*Z
_classP
NLloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes	
:
Ł
Lresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/readIdentityGresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
T0*Z
_classP
NLloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes	
:

lresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*^
_classT
RPloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes
:

bresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*^
_classT
RPloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes
: 
Î
\resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/onesFilllresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorbresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*^
_classT
RPloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes	
:

Kresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *^
_classT
RPloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes	
:
ś
Rresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/AssignAssignKresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance\resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*^
_classT
RPloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes	
:
Ż
Presnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/readIdentityKresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
T0*^
_classT
RPloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes	
:
ô
Opred/resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/FusedBatchNormFusedBatchNorm=pred/resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/Conv2DFresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/readEresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/readLresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/readPresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Fpred/resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
ý
Yresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shapeConst*%
valueB"      @   @   *
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights*
_output_shapes
:
č
Xresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdN>*
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights*
_output_shapes
: 
ó
cresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights*&
_output_shapes
:@@

Wresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights*&
_output_shapes
:@@

Sresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normalAddWresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulXresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights*&
_output_shapes
:@@

6resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights
VariableV2*
shape:@@*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights*&
_output_shapes
:@@
ů
=resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights/AssignAssign6resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weightsSresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights*&
_output_shapes
:@@
ű
;resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights/readIdentity6resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights*&
_output_shapes
:@@
ë
[pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights*
_output_shapes
: 

\pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights*
_output_shapes
: 

Upred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights*
_output_shapes
: 

Apred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Ü
:pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/Conv2DConv2Dpred/resnet_v1_50/pool1/MaxPool;resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@
ü
_resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:@*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:@
ý
>resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma
VariableV2*
shape:@*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:@

Eresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/AssignAssign>resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gammaOresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:@

Cresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/readIdentity>resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:@
ű
_resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:@*
dtype0*P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:@
ű
=resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta
VariableV2*
shape:@*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:@
ţ
Dresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta/AssignAssign=resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/betaOresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:@

Bresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta/readIdentity=resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:@

fresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:@*
dtype0*W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
: 
´
Vresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:@

Dresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean
VariableV2*
shape:@*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:@

Kresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meanVresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:@

Iresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:@

iresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:@*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
: 
Á
Yresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:@

Hresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance
VariableV2*
shape:@*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:@
Š
Oresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_varianceYresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:@
Ľ
Mresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:@
Ý
Lpred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/Conv2DCresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/readBresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta/readIresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/readMresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@:@:@:@:@

Cpred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ú
8pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/ReluReluLpred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/FusedBatchNorm*
T0*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@
ý
Yresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shapeConst*%
valueB"      @   @   *
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights*
_output_shapes
:
č
Xresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddevConst*
valueB
 *=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights*
_output_shapes
: 
ó
cresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights*&
_output_shapes
:@@

Wresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights*&
_output_shapes
:@@

Sresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normalAddWresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulXresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights*&
_output_shapes
:@@

6resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights
VariableV2*
shape:@@*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights*&
_output_shapes
:@@
ů
=resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights/AssignAssign6resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weightsSresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights*&
_output_shapes
:@@
ű
;resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights/readIdentity6resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights*&
_output_shapes
:@@
ë
[pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights*
_output_shapes
: 

\pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights*
_output_shapes
: 

Upred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights*
_output_shapes
: 

Apred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ő
:pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/Conv2DConv2D8pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/Relu;resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@
ü
_resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:@*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:@
ý
>resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma
VariableV2*
shape:@*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:@

Eresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/AssignAssign>resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gammaOresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:@

Cresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/readIdentity>resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:@
ű
_resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:@*
dtype0*P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:@
ű
=resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta
VariableV2*
shape:@*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:@
ţ
Dresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta/AssignAssign=resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/betaOresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:@

Bresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta/readIdentity=resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:@

fresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:@*
dtype0*W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
: 
´
Vresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:@

Dresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean
VariableV2*
shape:@*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:@

Kresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meanVresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:@

Iresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:@

iresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:@*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
: 
Á
Yresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:@

Hresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance
VariableV2*
shape:@*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:@
Š
Oresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_varianceYresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:@
Ľ
Mresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:@
Ý
Lpred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/Conv2DCresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/readBresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta/readIresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/readMresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@:@:@:@:@

Cpred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ú
8pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/ReluReluLpred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/FusedBatchNorm*
T0*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@
ý
Yresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shapeConst*%
valueB"      @      *
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights*
_output_shapes
:
č
Xresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdN>*
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights*
_output_shapes
: 
ô
cresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights*'
_output_shapes
:@

Wresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights*'
_output_shapes
:@

Sresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normalAddWresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulXresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights*'
_output_shapes
:@

6resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights
VariableV2*
shape:@*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights*'
_output_shapes
:@
ú
=resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights/AssignAssign6resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weightsSresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights*'
_output_shapes
:@
ü
;resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights/readIdentity6resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights*'
_output_shapes
:@
ë
[pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights*
_output_shapes
: 

\pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights*
_output_shapes
: 

Upred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights*
_output_shapes
: 

Apred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ö
:pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/Conv2DConv2D8pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/Relu;resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/AssignAssign>resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gammaOresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/readIdentity>resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta/AssignAssign=resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/betaOresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta/readIdentity=resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meanVresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_varianceYresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/Conv2DCresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/readBresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta/readIresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/readMresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
¤
1pred/resnet_v1_50/block1/unit_1/bottleneck_v1/addAddOpred/resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/FusedBatchNormLpred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ş
2pred/resnet_v1_50/block1/unit_1/bottleneck_v1/ReluRelu1pred/resnet_v1_50/block1/unit_1/bottleneck_v1/add*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shapeConst*%
valueB"         @   *
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights*
_output_shapes
:
č
Xresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdÎ=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights*
_output_shapes
: 
ô
cresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights*'
_output_shapes
:@

Wresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights*'
_output_shapes
:@

Sresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normalAddWresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulXresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights*'
_output_shapes
:@

6resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights
VariableV2*
shape:@*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights*'
_output_shapes
:@
ú
=resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights/AssignAssign6resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weightsSresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights*'
_output_shapes
:@
ü
;resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights/readIdentity6resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights*'
_output_shapes
:@
ë
[pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights*
_output_shapes
: 

\pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights*
_output_shapes
: 

Upred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights*
_output_shapes
: 

Apred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ď
:pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/Conv2DConv2D2pred/resnet_v1_50/block1/unit_1/bottleneck_v1/Relu;resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@
ü
_resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:@*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:@
ý
>resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma
VariableV2*
shape:@*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:@

Eresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/AssignAssign>resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gammaOresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:@

Cresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/readIdentity>resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:@
ű
_resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:@*
dtype0*P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:@
ű
=resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta
VariableV2*
shape:@*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:@
ţ
Dresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta/AssignAssign=resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/betaOresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:@

Bresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta/readIdentity=resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:@

fresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:@*
dtype0*W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
: 
´
Vresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:@

Dresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean
VariableV2*
shape:@*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:@

Kresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meanVresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:@

Iresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:@

iresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:@*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
: 
Á
Yresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:@

Hresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance
VariableV2*
shape:@*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:@
Š
Oresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_varianceYresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:@
Ľ
Mresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:@
Ý
Lpred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/Conv2DCresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/readBresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta/readIresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/readMresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@:@:@:@:@

Cpred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ú
8pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/ReluReluLpred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/FusedBatchNorm*
T0*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@
ý
Yresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shapeConst*%
valueB"      @   @   *
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights*
_output_shapes
:
č
Xresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddevConst*
valueB
 *=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights*
_output_shapes
: 
ó
cresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights*&
_output_shapes
:@@

Wresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights*&
_output_shapes
:@@

Sresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normalAddWresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulXresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights*&
_output_shapes
:@@

6resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights
VariableV2*
shape:@@*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights*&
_output_shapes
:@@
ů
=resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights/AssignAssign6resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weightsSresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights*&
_output_shapes
:@@
ű
;resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights/readIdentity6resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights*&
_output_shapes
:@@
ë
[pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights*
_output_shapes
: 

\pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights*
_output_shapes
: 

Upred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights*
_output_shapes
: 

Apred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ő
:pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/Conv2DConv2D8pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/Relu;resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@
ü
_resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:@*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:@
ý
>resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma
VariableV2*
shape:@*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:@

Eresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/AssignAssign>resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gammaOresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:@

Cresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/readIdentity>resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:@
ű
_resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:@*
dtype0*P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:@
ű
=resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta
VariableV2*
shape:@*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:@
ţ
Dresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta/AssignAssign=resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/betaOresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:@

Bresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta/readIdentity=resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:@

fresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:@*
dtype0*W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
: 
´
Vresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:@

Dresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean
VariableV2*
shape:@*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:@

Kresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meanVresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:@

Iresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:@

iresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:@*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
: 
Á
Yresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:@

Hresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance
VariableV2*
shape:@*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:@
Š
Oresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_varianceYresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:@
Ľ
Mresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:@
Ý
Lpred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/Conv2DCresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/readBresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta/readIresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/readMresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@:@:@:@:@

Cpred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ú
8pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/ReluReluLpred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/FusedBatchNorm*
T0*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@
ý
Yresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shapeConst*%
valueB"      @      *
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights*
_output_shapes
:
č
Xresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdN>*
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights*
_output_shapes
: 
ô
cresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights*'
_output_shapes
:@

Wresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights*'
_output_shapes
:@

Sresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normalAddWresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulXresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights*'
_output_shapes
:@

6resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights
VariableV2*
shape:@*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights*'
_output_shapes
:@
ú
=resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights/AssignAssign6resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weightsSresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights*'
_output_shapes
:@
ü
;resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights/readIdentity6resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights*'
_output_shapes
:@
ë
[pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights*
_output_shapes
: 

\pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights*
_output_shapes
: 

Upred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights*
_output_shapes
: 

Apred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ö
:pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/Conv2DConv2D8pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/Relu;resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/AssignAssign>resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gammaOresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/readIdentity>resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta/AssignAssign=resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/betaOresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta/readIdentity=resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meanVresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_varianceYresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/Conv2DCresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/readBresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta/readIresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/readMresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 

1pred/resnet_v1_50/block1/unit_2/bottleneck_v1/addAdd2pred/resnet_v1_50/block1/unit_1/bottleneck_v1/ReluLpred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ş
2pred/resnet_v1_50/block1/unit_2/bottleneck_v1/ReluRelu1pred/resnet_v1_50/block1/unit_2/bottleneck_v1/add*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

>pred/resnet_v1_50/block1/unit_3/bottleneck_v1/shortcut/MaxPoolMaxPool2pred/resnet_v1_50/block1/unit_2/bottleneck_v1/Relu*
T0*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shapeConst*%
valueB"         @   *
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights*
_output_shapes
:
č
Xresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdÎ=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights*
_output_shapes
: 
ô
cresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights*'
_output_shapes
:@

Wresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights*'
_output_shapes
:@

Sresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normalAddWresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulXresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights*'
_output_shapes
:@

6resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights
VariableV2*
shape:@*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights*'
_output_shapes
:@
ú
=resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights/AssignAssign6resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weightsSresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights*'
_output_shapes
:@
ü
;resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights/readIdentity6resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights*'
_output_shapes
:@
ë
[pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights*
_output_shapes
: 

\pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights*
_output_shapes
: 

Upred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights*
_output_shapes
: 

Apred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ď
:pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/Conv2DConv2D2pred/resnet_v1_50/block1/unit_2/bottleneck_v1/Relu;resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@
ü
_resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:@*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:@
ý
>resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma
VariableV2*
shape:@*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:@

Eresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/AssignAssign>resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gammaOresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:@

Cresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/readIdentity>resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:@
ű
_resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:@*
dtype0*P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:@
ű
=resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta
VariableV2*
shape:@*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:@
ţ
Dresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta/AssignAssign=resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/betaOresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:@

Bresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta/readIdentity=resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:@

fresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:@*
dtype0*W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
: 
´
Vresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:@

Dresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean
VariableV2*
shape:@*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:@

Kresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meanVresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:@

Iresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:@

iresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:@*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
: 
Á
Yresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:@

Hresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance
VariableV2*
shape:@*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:@
Š
Oresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_varianceYresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:@
Ľ
Mresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:@
Ý
Lpred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/Conv2DCresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/readBresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta/readIresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/readMresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@:@:@:@:@

Cpred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ú
8pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/ReluReluLpred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/FusedBatchNorm*
T0*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@
Ť
:pred/resnet_v1_50/block1/unit_3/bottleneck_v1/Pad/paddingsConst*9
value0B."                             *
dtype0*
_output_shapes

:

1pred/resnet_v1_50/block1/unit_3/bottleneck_v1/PadPad8pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/Relu:pred/resnet_v1_50/block1/unit_3/bottleneck_v1/Pad/paddings*
T0*
	Tpaddings0*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@
ý
Yresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shapeConst*%
valueB"      @   @   *
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights*
_output_shapes
:
č
Xresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddevConst*
valueB
 *=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights*
_output_shapes
: 
ó
cresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights*&
_output_shapes
:@@

Wresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights*&
_output_shapes
:@@

Sresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normalAddWresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulXresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights*&
_output_shapes
:@@

6resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights
VariableV2*
shape:@@*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights*&
_output_shapes
:@@
ů
=resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights/AssignAssign6resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weightsSresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights*&
_output_shapes
:@@
ű
;resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights/readIdentity6resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights*&
_output_shapes
:@@
ë
[pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights*
_output_shapes
: 

\pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights*
_output_shapes
: 

Upred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights*
_output_shapes
: 

Apred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ď
:pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/Conv2DConv2D1pred/resnet_v1_50/block1/unit_3/bottleneck_v1/Pad;resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingVALID*
data_formatNHWC*
	dilations
*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@
ü
_resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:@*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:@
ý
>resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma
VariableV2*
shape:@*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:@

Eresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/AssignAssign>resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gammaOresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:@

Cresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/readIdentity>resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:@
ű
_resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:@*
dtype0*P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:@
ű
=resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta
VariableV2*
shape:@*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:@
ţ
Dresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta/AssignAssign=resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/betaOresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:@

Bresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta/readIdentity=resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:@

fresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:@*
dtype0*W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
: 
´
Vresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:@

Dresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean
VariableV2*
shape:@*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:@

Kresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meanVresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:@

Iresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:@

iresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:@*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
: 
Á
Yresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:@

Hresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance
VariableV2*
shape:@*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:@
Š
Oresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_varianceYresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:@
Ľ
Mresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:@
Ý
Lpred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/Conv2DCresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/readBresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta/readIresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/readMresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@:@:@:@:@

Cpred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ú
8pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/ReluReluLpred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/FusedBatchNorm*
T0*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@
ý
Yresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shapeConst*%
valueB"      @      *
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights*
_output_shapes
:
č
Xresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdN>*
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights*
_output_shapes
: 
ô
cresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights*'
_output_shapes
:@

Wresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights*'
_output_shapes
:@

Sresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normalAddWresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulXresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights*'
_output_shapes
:@

6resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights
VariableV2*
shape:@*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights*'
_output_shapes
:@
ú
=resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights/AssignAssign6resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weightsSresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights*'
_output_shapes
:@
ü
;resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights/readIdentity6resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights*'
_output_shapes
:@
ë
[pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights*
_output_shapes
: 

\pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights*
_output_shapes
: 

Upred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights*
_output_shapes
: 

Apred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ö
:pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/Conv2DConv2D8pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/Relu;resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/AssignAssign>resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gammaOresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/readIdentity>resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta/AssignAssign=resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/betaOresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta/readIdentity=resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meanVresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_varianceYresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/Conv2DCresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/readBresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta/readIresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/readMresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 

1pred/resnet_v1_50/block1/unit_3/bottleneck_v1/addAdd>pred/resnet_v1_50/block1/unit_3/bottleneck_v1/shortcut/MaxPoolLpred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ş
2pred/resnet_v1_50/block1/unit_3/bottleneck_v1/ReluRelu1pred/resnet_v1_50/block1/unit_3/bottleneck_v1/add*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

\resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*L
_classB
@>loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights*
_output_shapes
:
î
[resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*L
_classB
@>loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights*
_output_shapes
: 
đ
]resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdÎ=*
dtype0*L
_classB
@>loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights*
_output_shapes
: 
ţ
fresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal\resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*L
_classB
@>loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights*(
_output_shapes
:
Š
Zresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/mulMulfresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/TruncatedNormal]resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/stddev*
T0*L
_classB
@>loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights*(
_output_shapes
:

Vresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normalAddZresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/mul[resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/mean*
T0*L
_classB
@>loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights*(
_output_shapes
:

9resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *L
_classB
@>loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights*(
_output_shapes
:

@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights/AssignAssign9resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weightsVresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*L
_classB
@>loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights*(
_output_shapes
:

>resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights/readIdentity9resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights*
T0*L
_classB
@>loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights*(
_output_shapes
:
ń
^pred/resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*L
_classB
@>loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights*
_output_shapes
: 

_pred/resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/kernel/Regularizer/l2_regularizer/L2LossL2Loss>resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights/read*
T0*L
_classB
@>loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights*
_output_shapes
: 

Xpred/resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/kernel/Regularizer/l2_regularizerMul^pred/resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/kernel/Regularizer/l2_regularizer/scale_pred/resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/kernel/Regularizer/l2_regularizer/L2Loss*
T0*L
_classB
@>loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights*
_output_shapes
: 

Dpred/resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ö
=pred/resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/Conv2DConv2D2pred/resnet_v1_50/block1/unit_3/bottleneck_v1/Relu>resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

bresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*T
_classJ
HFloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes
:
ó
Xresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*T
_classJ
HFloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes
: 
Ś
Rresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/onesFillbresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/ones/shape_as_tensorXresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*T
_classJ
HFloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes	
:

Aresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *T
_classJ
HFloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes	
:

Hresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/AssignAssignAresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gammaRresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*T
_classJ
HFloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes	
:

Fresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/readIdentityAresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
T0*T
_classJ
HFloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes	
:

bresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*S
_classI
GEloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes
:
ň
Xresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*S
_classI
GEloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes
: 
Ľ
Rresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zerosFillbresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zeros/shape_as_tensorXresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*S
_classI
GEloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes	
:

@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *S
_classI
GEloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes	
:

Gresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/AssignAssign@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/betaRresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*S
_classI
GEloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes	
:

Eresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/readIdentity@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
T0*S
_classI
GEloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes	
:

iresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*Z
_classP
NLloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes
:

_resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*Z
_classP
NLloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes
: 
Á
Yresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zerosFilliresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor_resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*Z
_classP
NLloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes	
:

Gresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *Z
_classP
NLloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes	
:
§
Nresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/AssignAssignGresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meanYresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*Z
_classP
NLloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes	
:
Ł
Lresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/readIdentityGresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
T0*Z
_classP
NLloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes	
:

lresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*^
_classT
RPloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes
:

bresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*^
_classT
RPloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes
: 
Î
\resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/onesFilllresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorbresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*^
_classT
RPloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes	
:

Kresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *^
_classT
RPloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes	
:
ś
Rresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/AssignAssignKresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance\resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*^
_classT
RPloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes	
:
Ż
Presnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/readIdentityKresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
T0*^
_classT
RPloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes	
:
ô
Opred/resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/FusedBatchNormFusedBatchNorm=pred/resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/Conv2DFresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/readEresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/readLresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/readPresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Fpred/resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
ý
Yresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights*
_output_shapes
:
č
Xresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdÎ=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights*
_output_shapes
: 
ő
cresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights*(
_output_shapes
:

Wresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights*(
_output_shapes
:

Sresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normalAddWresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulXresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights*(
_output_shapes
:

6resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights*(
_output_shapes
:
ű
=resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights/AssignAssign6resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weightsSresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights*(
_output_shapes
:
ý
;resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights/readIdentity6resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights*
_output_shapes
: 

\pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights*
_output_shapes
: 

Upred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights*
_output_shapes
: 

Apred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
đ
:pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/Conv2DConv2D2pred/resnet_v1_50/block1/unit_3/bottleneck_v1/Relu;resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/AssignAssign>resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gammaOresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/readIdentity>resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta/AssignAssign=resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/betaOresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta/readIdentity=resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meanVresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_varianceYresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/Conv2DCresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/readBresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta/readIresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/readMresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ű
8pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/ReluReluLpred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights*
_output_shapes
:
č
Xresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddevConst*
valueB
 *B=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights*
_output_shapes
: 
ő
cresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights*(
_output_shapes
:

Wresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights*(
_output_shapes
:

Sresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normalAddWresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulXresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights*(
_output_shapes
:

6resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights*(
_output_shapes
:
ű
=resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights/AssignAssign6resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weightsSresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights*(
_output_shapes
:
ý
;resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights/readIdentity6resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights*
_output_shapes
: 

\pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights*
_output_shapes
: 

Upred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights*
_output_shapes
: 

Apred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ö
:pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/Conv2DConv2D8pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/Relu;resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/AssignAssign>resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gammaOresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/readIdentity>resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta/AssignAssign=resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/betaOresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta/readIdentity=resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meanVresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_varianceYresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/Conv2DCresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/readBresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta/readIresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/readMresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ű
8pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/ReluReluLpred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights*
_output_shapes
:
č
Xresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights*
_output_shapes
: 
ő
cresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights*(
_output_shapes
:

Wresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights*(
_output_shapes
:

Sresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normalAddWresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulXresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights*(
_output_shapes
:

6resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights*(
_output_shapes
:
ű
=resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights/AssignAssign6resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weightsSresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights*(
_output_shapes
:
ý
;resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights/readIdentity6resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights*
_output_shapes
: 

\pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights*
_output_shapes
: 

Upred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights*
_output_shapes
: 

Apred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ö
:pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/Conv2DConv2D8pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/Relu;resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/AssignAssign>resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gammaOresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/readIdentity>resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta/AssignAssign=resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/betaOresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta/readIdentity=resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meanVresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_varianceYresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/Conv2DCresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/readBresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta/readIresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/readMresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
¤
1pred/resnet_v1_50/block2/unit_1/bottleneck_v1/addAddOpred/resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/FusedBatchNormLpred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ş
2pred/resnet_v1_50/block2/unit_1/bottleneck_v1/ReluRelu1pred/resnet_v1_50/block2/unit_1/bottleneck_v1/add*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights*
_output_shapes
:
č
Xresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *Eń=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights*
_output_shapes
: 
ő
cresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights*(
_output_shapes
:

Wresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights*(
_output_shapes
:

Sresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normalAddWresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulXresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights*(
_output_shapes
:

6resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights*(
_output_shapes
:
ű
=resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights/AssignAssign6resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weightsSresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights*(
_output_shapes
:
ý
;resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights/readIdentity6resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights*
_output_shapes
: 

\pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights*
_output_shapes
: 

Upred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights*
_output_shapes
: 

Apred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
đ
:pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/Conv2DConv2D2pred/resnet_v1_50/block2/unit_1/bottleneck_v1/Relu;resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/AssignAssign>resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gammaOresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/readIdentity>resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta/AssignAssign=resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/betaOresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta/readIdentity=resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meanVresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_varianceYresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/Conv2DCresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/readBresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta/readIresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/readMresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ű
8pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/ReluReluLpred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights*
_output_shapes
:
č
Xresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddevConst*
valueB
 *B=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights*
_output_shapes
: 
ő
cresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights*(
_output_shapes
:

Wresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights*(
_output_shapes
:

Sresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normalAddWresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulXresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights*(
_output_shapes
:

6resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights*(
_output_shapes
:
ű
=resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights/AssignAssign6resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weightsSresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights*(
_output_shapes
:
ý
;resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights/readIdentity6resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights*
_output_shapes
: 

\pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights*
_output_shapes
: 

Upred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights*
_output_shapes
: 

Apred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ö
:pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/Conv2DConv2D8pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/Relu;resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/AssignAssign>resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gammaOresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/readIdentity>resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta/AssignAssign=resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/betaOresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta/readIdentity=resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meanVresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_varianceYresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/Conv2DCresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/readBresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta/readIresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/readMresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ű
8pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/ReluReluLpred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights*
_output_shapes
:
č
Xresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights*
_output_shapes
: 
ő
cresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights*(
_output_shapes
:

Wresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights*(
_output_shapes
:

Sresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normalAddWresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulXresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights*(
_output_shapes
:

6resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights*(
_output_shapes
:
ű
=resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights/AssignAssign6resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weightsSresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights*(
_output_shapes
:
ý
;resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights/readIdentity6resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights*
_output_shapes
: 

\pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights*
_output_shapes
: 

Upred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights*
_output_shapes
: 

Apred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ö
:pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/Conv2DConv2D8pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/Relu;resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/AssignAssign>resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gammaOresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/readIdentity>resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta/AssignAssign=resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/betaOresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta/readIdentity=resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meanVresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_varianceYresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/Conv2DCresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/readBresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta/readIresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/readMresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 

1pred/resnet_v1_50/block2/unit_2/bottleneck_v1/addAdd2pred/resnet_v1_50/block2/unit_1/bottleneck_v1/ReluLpred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ş
2pred/resnet_v1_50/block2/unit_2/bottleneck_v1/ReluRelu1pred/resnet_v1_50/block2/unit_2/bottleneck_v1/add*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights*
_output_shapes
:
č
Xresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *Eń=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights*
_output_shapes
: 
ő
cresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights*(
_output_shapes
:

Wresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights*(
_output_shapes
:

Sresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normalAddWresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulXresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights*(
_output_shapes
:

6resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights*(
_output_shapes
:
ű
=resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights/AssignAssign6resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weightsSresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights*(
_output_shapes
:
ý
;resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights/readIdentity6resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights*
_output_shapes
: 

\pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights*
_output_shapes
: 

Upred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights*
_output_shapes
: 

Apred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
đ
:pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/Conv2DConv2D2pred/resnet_v1_50/block2/unit_2/bottleneck_v1/Relu;resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/AssignAssign>resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gammaOresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/readIdentity>resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta/AssignAssign=resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/betaOresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta/readIdentity=resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meanVresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_varianceYresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/Conv2DCresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/readBresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta/readIresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/readMresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ű
8pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/ReluReluLpred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights*
_output_shapes
:
č
Xresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddevConst*
valueB
 *B=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights*
_output_shapes
: 
ő
cresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights*(
_output_shapes
:

Wresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights*(
_output_shapes
:

Sresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normalAddWresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulXresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights*(
_output_shapes
:

6resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights*(
_output_shapes
:
ű
=resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights/AssignAssign6resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weightsSresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights*(
_output_shapes
:
ý
;resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights/readIdentity6resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights*
_output_shapes
: 

\pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights*
_output_shapes
: 

Upred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights*
_output_shapes
: 

Apred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ö
:pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/Conv2DConv2D8pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/Relu;resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/AssignAssign>resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gammaOresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/readIdentity>resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta/AssignAssign=resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/betaOresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta/readIdentity=resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meanVresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_varianceYresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/Conv2DCresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/readBresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta/readIresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/readMresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ű
8pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/ReluReluLpred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights*
_output_shapes
:
č
Xresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights*
_output_shapes
: 
ő
cresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights*(
_output_shapes
:

Wresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights*(
_output_shapes
:

Sresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normalAddWresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulXresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights*(
_output_shapes
:

6resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights*(
_output_shapes
:
ű
=resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights/AssignAssign6resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weightsSresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights*(
_output_shapes
:
ý
;resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights/readIdentity6resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights*
_output_shapes
: 

\pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights*
_output_shapes
: 

Upred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights*
_output_shapes
: 

Apred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ö
:pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/Conv2DConv2D8pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/Relu;resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/AssignAssign>resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gammaOresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/readIdentity>resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta/AssignAssign=resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/betaOresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta/readIdentity=resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meanVresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_varianceYresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/Conv2DCresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/readBresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta/readIresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/readMresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 

1pred/resnet_v1_50/block2/unit_3/bottleneck_v1/addAdd2pred/resnet_v1_50/block2/unit_2/bottleneck_v1/ReluLpred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ş
2pred/resnet_v1_50/block2/unit_3/bottleneck_v1/ReluRelu1pred/resnet_v1_50/block2/unit_3/bottleneck_v1/add*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

>pred/resnet_v1_50/block2/unit_4/bottleneck_v1/shortcut/MaxPoolMaxPool2pred/resnet_v1_50/block2/unit_3/bottleneck_v1/Relu*
T0*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights*
_output_shapes
:
č
Xresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *Eń=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights*
_output_shapes
: 
ő
cresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights*(
_output_shapes
:

Wresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights*(
_output_shapes
:

Sresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normalAddWresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulXresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights*(
_output_shapes
:

6resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights*(
_output_shapes
:
ű
=resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights/AssignAssign6resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weightsSresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights*(
_output_shapes
:
ý
;resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights/readIdentity6resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights*
_output_shapes
: 

\pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights*
_output_shapes
: 

Upred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights*
_output_shapes
: 

Apred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
đ
:pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/Conv2DConv2D2pred/resnet_v1_50/block2/unit_3/bottleneck_v1/Relu;resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/AssignAssign>resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gammaOresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/readIdentity>resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta/AssignAssign=resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/betaOresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta/readIdentity=resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_meanVresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_varianceYresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/Conv2DCresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/readBresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta/readIresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/readMresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ű
8pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/ReluReluLpred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ť
:pred/resnet_v1_50/block2/unit_4/bottleneck_v1/Pad/paddingsConst*9
value0B."                             *
dtype0*
_output_shapes

:

1pred/resnet_v1_50/block2/unit_4/bottleneck_v1/PadPad8pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/Relu:pred/resnet_v1_50/block2/unit_4/bottleneck_v1/Pad/paddings*
T0*
	Tpaddings0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights*
_output_shapes
:
č
Xresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddevConst*
valueB
 *B=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights*
_output_shapes
: 
ő
cresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights*(
_output_shapes
:

Wresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights*(
_output_shapes
:

Sresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normalAddWresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulXresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights*(
_output_shapes
:

6resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights*(
_output_shapes
:
ű
=resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights/AssignAssign6resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weightsSresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights*(
_output_shapes
:
ý
;resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights/readIdentity6resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights*
_output_shapes
: 

\pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights*
_output_shapes
: 

Upred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights*
_output_shapes
: 

Apred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
đ
:pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/Conv2DConv2D1pred/resnet_v1_50/block2/unit_4/bottleneck_v1/Pad;resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingVALID*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/AssignAssign>resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gammaOresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/readIdentity>resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta/AssignAssign=resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/betaOresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta/readIdentity=resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_meanVresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_varianceYresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/Conv2DCresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/readBresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta/readIresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/readMresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ű
8pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/ReluReluLpred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights*
_output_shapes
:
č
Xresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights*
_output_shapes
: 
ő
cresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights*(
_output_shapes
:

Wresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights*(
_output_shapes
:

Sresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normalAddWresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulXresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights*(
_output_shapes
:

6resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights*(
_output_shapes
:
ű
=resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights/AssignAssign6resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weightsSresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights*(
_output_shapes
:
ý
;resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights/readIdentity6resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights*
_output_shapes
: 

\pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights*
_output_shapes
: 

Upred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights*
_output_shapes
: 

Apred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ö
:pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/Conv2DConv2D8pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/Relu;resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/AssignAssign>resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gammaOresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/readIdentity>resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta/AssignAssign=resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/betaOresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta/readIdentity=resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_meanVresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_varianceYresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/Conv2DCresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/readBresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta/readIresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/readMresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 

1pred/resnet_v1_50/block2/unit_4/bottleneck_v1/addAdd>pred/resnet_v1_50/block2/unit_4/bottleneck_v1/shortcut/MaxPoolLpred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ş
2pred/resnet_v1_50/block2/unit_4/bottleneck_v1/ReluRelu1pred/resnet_v1_50/block2/unit_4/bottleneck_v1/add*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

\resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*L
_classB
@>loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights*
_output_shapes
:
î
[resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*L
_classB
@>loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights*
_output_shapes
: 
đ
]resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/stddevConst*
valueB
 *Eń=*
dtype0*L
_classB
@>loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights*
_output_shapes
: 
ţ
fresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal\resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*L
_classB
@>loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights*(
_output_shapes
:
Š
Zresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/mulMulfresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/TruncatedNormal]resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/stddev*
T0*L
_classB
@>loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights*(
_output_shapes
:

Vresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normalAddZresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/mul[resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal/mean*
T0*L
_classB
@>loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights*(
_output_shapes
:

9resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *L
_classB
@>loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights*(
_output_shapes
:

@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights/AssignAssign9resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weightsVresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*L
_classB
@>loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights*(
_output_shapes
:

>resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights/readIdentity9resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights*
T0*L
_classB
@>loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights*(
_output_shapes
:
ń
^pred/resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*L
_classB
@>loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights*
_output_shapes
: 

_pred/resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/kernel/Regularizer/l2_regularizer/L2LossL2Loss>resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights/read*
T0*L
_classB
@>loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights*
_output_shapes
: 

Xpred/resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/kernel/Regularizer/l2_regularizerMul^pred/resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/kernel/Regularizer/l2_regularizer/scale_pred/resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/kernel/Regularizer/l2_regularizer/L2Loss*
T0*L
_classB
@>loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights*
_output_shapes
: 

Dpred/resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ö
=pred/resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/Conv2DConv2D2pred/resnet_v1_50/block2/unit_4/bottleneck_v1/Relu>resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

bresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*T
_classJ
HFloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes
:
ó
Xresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*T
_classJ
HFloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes
: 
Ś
Rresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/onesFillbresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/ones/shape_as_tensorXresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*T
_classJ
HFloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes	
:

Aresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *T
_classJ
HFloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes	
:

Hresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/AssignAssignAresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gammaRresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*T
_classJ
HFloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes	
:

Fresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/readIdentityAresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
T0*T
_classJ
HFloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes	
:

bresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*S
_classI
GEloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes
:
ň
Xresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*S
_classI
GEloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes
: 
Ľ
Rresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zerosFillbresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zeros/shape_as_tensorXresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*S
_classI
GEloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes	
:

@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *S
_classI
GEloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes	
:

Gresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/AssignAssign@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/betaRresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*S
_classI
GEloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes	
:

Eresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/readIdentity@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
T0*S
_classI
GEloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes	
:

iresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*Z
_classP
NLloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes
:

_resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*Z
_classP
NLloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes
: 
Á
Yresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zerosFilliresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor_resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*Z
_classP
NLloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes	
:

Gresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *Z
_classP
NLloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes	
:
§
Nresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/AssignAssignGresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meanYresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*Z
_classP
NLloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes	
:
Ł
Lresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/readIdentityGresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
T0*Z
_classP
NLloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes	
:

lresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*^
_classT
RPloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes
:

bresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*^
_classT
RPloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes
: 
Î
\resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/onesFilllresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorbresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*^
_classT
RPloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes	
:

Kresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *^
_classT
RPloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes	
:
ś
Rresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/AssignAssignKresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance\resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*^
_classT
RPloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes	
:
Ż
Presnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/readIdentityKresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
T0*^
_classT
RPloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes	
:
ô
Opred/resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/FusedBatchNormFusedBatchNorm=pred/resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/Conv2DFresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/readEresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/readLresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/readPresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Fpred/resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
ý
Yresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights*
_output_shapes
:
č
Xresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *Eń=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights*
_output_shapes
: 
ő
cresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights*(
_output_shapes
:

Wresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights*(
_output_shapes
:

Sresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normalAddWresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulXresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights*(
_output_shapes
:

6resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights*(
_output_shapes
:
ű
=resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights/AssignAssign6resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weightsSresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights*(
_output_shapes
:
ý
;resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights/readIdentity6resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights*
_output_shapes
: 

\pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights*
_output_shapes
: 

Upred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights*
_output_shapes
: 

Apred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
đ
:pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/Conv2DConv2D2pred/resnet_v1_50/block2/unit_4/bottleneck_v1/Relu;resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/AssignAssign>resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gammaOresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/readIdentity>resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta/AssignAssign=resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/betaOresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta/readIdentity=resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meanVresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_varianceYresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/Conv2DCresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/readBresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta/readIresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/readMresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ű
8pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/ReluReluLpred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights*
_output_shapes
:
č
Xresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddevConst*
valueB
 *	=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights*
_output_shapes
: 
ő
cresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights*(
_output_shapes
:

Wresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights*(
_output_shapes
:

Sresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normalAddWresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulXresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights*(
_output_shapes
:

6resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights*(
_output_shapes
:
ű
=resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights/AssignAssign6resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weightsSresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights*(
_output_shapes
:
ý
;resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights/readIdentity6resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights*
_output_shapes
: 

\pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights*
_output_shapes
: 

Upred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights*
_output_shapes
: 

Apred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ö
:pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/Conv2DConv2D8pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/Relu;resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/AssignAssign>resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gammaOresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/readIdentity>resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta/AssignAssign=resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/betaOresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta/readIdentity=resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meanVresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_varianceYresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/Conv2DCresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/readBresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta/readIresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/readMresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ű
8pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/ReluReluLpred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights*
_output_shapes
:
č
Xresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdÎ=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights*
_output_shapes
: 
ő
cresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights*(
_output_shapes
:

Wresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights*(
_output_shapes
:

Sresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normalAddWresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulXresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights*(
_output_shapes
:

6resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights*(
_output_shapes
:
ű
=resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights/AssignAssign6resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weightsSresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights*(
_output_shapes
:
ý
;resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights/readIdentity6resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights*
_output_shapes
: 

\pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights*
_output_shapes
: 

Upred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights*
_output_shapes
: 

Apred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ö
:pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/Conv2DConv2D8pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/Relu;resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/AssignAssign>resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gammaOresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/readIdentity>resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta/AssignAssign=resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/betaOresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta/readIdentity=resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meanVresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_varianceYresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/Conv2DCresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/readBresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta/readIresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/readMresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
¤
1pred/resnet_v1_50/block3/unit_1/bottleneck_v1/addAddOpred/resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/FusedBatchNormLpred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ş
2pred/resnet_v1_50/block3/unit_1/bottleneck_v1/ReluRelu1pred/resnet_v1_50/block3/unit_1/bottleneck_v1/add*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights*
_output_shapes
:
č
Xresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdN=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights*
_output_shapes
: 
ő
cresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights*(
_output_shapes
:

Wresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights*(
_output_shapes
:

Sresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normalAddWresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulXresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights*(
_output_shapes
:

6resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights*(
_output_shapes
:
ű
=resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights/AssignAssign6resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weightsSresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights*(
_output_shapes
:
ý
;resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights/readIdentity6resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights*
_output_shapes
: 

\pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights*
_output_shapes
: 

Upred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights*
_output_shapes
: 

Apred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
đ
:pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/Conv2DConv2D2pred/resnet_v1_50/block3/unit_1/bottleneck_v1/Relu;resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/AssignAssign>resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gammaOresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/readIdentity>resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta/AssignAssign=resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/betaOresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta/readIdentity=resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meanVresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_varianceYresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/Conv2DCresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/readBresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta/readIresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/readMresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ű
8pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/ReluReluLpred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights*
_output_shapes
:
č
Xresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddevConst*
valueB
 *	=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights*
_output_shapes
: 
ő
cresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights*(
_output_shapes
:

Wresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights*(
_output_shapes
:

Sresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normalAddWresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulXresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights*(
_output_shapes
:

6resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights*(
_output_shapes
:
ű
=resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights/AssignAssign6resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weightsSresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights*(
_output_shapes
:
ý
;resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights/readIdentity6resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights*
_output_shapes
: 

\pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights*
_output_shapes
: 

Upred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights*
_output_shapes
: 

Apred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ö
:pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/Conv2DConv2D8pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/Relu;resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/AssignAssign>resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gammaOresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/readIdentity>resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta/AssignAssign=resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/betaOresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta/readIdentity=resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meanVresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_varianceYresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/Conv2DCresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/readBresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta/readIresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/readMresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ű
8pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/ReluReluLpred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights*
_output_shapes
:
č
Xresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdÎ=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights*
_output_shapes
: 
ő
cresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights*(
_output_shapes
:

Wresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights*(
_output_shapes
:

Sresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normalAddWresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulXresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights*(
_output_shapes
:

6resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights*(
_output_shapes
:
ű
=resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights/AssignAssign6resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weightsSresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights*(
_output_shapes
:
ý
;resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights/readIdentity6resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights*
_output_shapes
: 

\pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights*
_output_shapes
: 

Upred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights*
_output_shapes
: 

Apred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ö
:pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/Conv2DConv2D8pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/Relu;resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/AssignAssign>resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gammaOresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/readIdentity>resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta/AssignAssign=resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/betaOresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta/readIdentity=resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meanVresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_varianceYresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/Conv2DCresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/readBresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta/readIresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/readMresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 

1pred/resnet_v1_50/block3/unit_2/bottleneck_v1/addAdd2pred/resnet_v1_50/block3/unit_1/bottleneck_v1/ReluLpred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ş
2pred/resnet_v1_50/block3/unit_2/bottleneck_v1/ReluRelu1pred/resnet_v1_50/block3/unit_2/bottleneck_v1/add*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights*
_output_shapes
:
č
Xresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdN=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights*
_output_shapes
: 
ő
cresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights*(
_output_shapes
:

Wresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights*(
_output_shapes
:

Sresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normalAddWresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulXresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights*(
_output_shapes
:

6resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights*(
_output_shapes
:
ű
=resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights/AssignAssign6resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weightsSresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights*(
_output_shapes
:
ý
;resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights/readIdentity6resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights*
_output_shapes
: 

\pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights*
_output_shapes
: 

Upred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights*
_output_shapes
: 

Apred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
đ
:pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/Conv2DConv2D2pred/resnet_v1_50/block3/unit_2/bottleneck_v1/Relu;resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/AssignAssign>resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gammaOresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/readIdentity>resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta/AssignAssign=resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/betaOresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta/readIdentity=resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meanVresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_varianceYresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/Conv2DCresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/readBresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta/readIresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/readMresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ű
8pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/ReluReluLpred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights*
_output_shapes
:
č
Xresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddevConst*
valueB
 *	=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights*
_output_shapes
: 
ő
cresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights*(
_output_shapes
:

Wresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights*(
_output_shapes
:

Sresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normalAddWresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulXresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights*(
_output_shapes
:

6resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights*(
_output_shapes
:
ű
=resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights/AssignAssign6resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weightsSresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights*(
_output_shapes
:
ý
;resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights/readIdentity6resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights*
_output_shapes
: 

\pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights*
_output_shapes
: 

Upred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights*
_output_shapes
: 

Apred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ö
:pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/Conv2DConv2D8pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/Relu;resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/AssignAssign>resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gammaOresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/readIdentity>resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta/AssignAssign=resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/betaOresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta/readIdentity=resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meanVresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_varianceYresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/Conv2DCresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/readBresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta/readIresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/readMresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ű
8pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/ReluReluLpred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights*
_output_shapes
:
č
Xresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdÎ=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights*
_output_shapes
: 
ő
cresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights*(
_output_shapes
:

Wresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights*(
_output_shapes
:

Sresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normalAddWresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulXresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights*(
_output_shapes
:

6resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights*(
_output_shapes
:
ű
=resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights/AssignAssign6resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weightsSresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights*(
_output_shapes
:
ý
;resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights/readIdentity6resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights*
_output_shapes
: 

\pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights*
_output_shapes
: 

Upred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights*
_output_shapes
: 

Apred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ö
:pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/Conv2DConv2D8pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/Relu;resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/AssignAssign>resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gammaOresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/readIdentity>resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta/AssignAssign=resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/betaOresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta/readIdentity=resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meanVresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_varianceYresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/Conv2DCresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/readBresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta/readIresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/readMresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 

1pred/resnet_v1_50/block3/unit_3/bottleneck_v1/addAdd2pred/resnet_v1_50/block3/unit_2/bottleneck_v1/ReluLpred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ş
2pred/resnet_v1_50/block3/unit_3/bottleneck_v1/ReluRelu1pred/resnet_v1_50/block3/unit_3/bottleneck_v1/add*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights*
_output_shapes
:
č
Xresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdN=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights*
_output_shapes
: 
ő
cresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights*(
_output_shapes
:

Wresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights*(
_output_shapes
:

Sresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normalAddWresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulXresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights*(
_output_shapes
:

6resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights*(
_output_shapes
:
ű
=resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights/AssignAssign6resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weightsSresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights*(
_output_shapes
:
ý
;resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights/readIdentity6resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights*
_output_shapes
: 

\pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights*
_output_shapes
: 

Upred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights*
_output_shapes
: 

Apred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
đ
:pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/Conv2DConv2D2pred/resnet_v1_50/block3/unit_3/bottleneck_v1/Relu;resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/AssignAssign>resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gammaOresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/readIdentity>resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta/AssignAssign=resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/betaOresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta/readIdentity=resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_meanVresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_varianceYresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/Conv2DCresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/readBresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta/readIresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/readMresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ű
8pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/ReluReluLpred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights*
_output_shapes
:
č
Xresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddevConst*
valueB
 *	=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights*
_output_shapes
: 
ő
cresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights*(
_output_shapes
:

Wresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights*(
_output_shapes
:

Sresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normalAddWresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulXresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights*(
_output_shapes
:

6resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights*(
_output_shapes
:
ű
=resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights/AssignAssign6resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weightsSresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights*(
_output_shapes
:
ý
;resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights/readIdentity6resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights*
_output_shapes
: 

\pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights*
_output_shapes
: 

Upred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights*
_output_shapes
: 

Apred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ö
:pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/Conv2DConv2D8pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/Relu;resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/AssignAssign>resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gammaOresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/readIdentity>resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta/AssignAssign=resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/betaOresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta/readIdentity=resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_meanVresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_varianceYresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/Conv2DCresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/readBresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta/readIresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/readMresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ű
8pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/ReluReluLpred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights*
_output_shapes
:
č
Xresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdÎ=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights*
_output_shapes
: 
ő
cresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights*(
_output_shapes
:

Wresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights*(
_output_shapes
:

Sresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normalAddWresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulXresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights*(
_output_shapes
:

6resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights*(
_output_shapes
:
ű
=resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights/AssignAssign6resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weightsSresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights*(
_output_shapes
:
ý
;resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights/readIdentity6resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights*
_output_shapes
: 

\pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights*
_output_shapes
: 

Upred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights*
_output_shapes
: 

Apred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ö
:pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/Conv2DConv2D8pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/Relu;resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/AssignAssign>resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gammaOresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/readIdentity>resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta/AssignAssign=resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/betaOresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta/readIdentity=resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_meanVresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_varianceYresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/Conv2DCresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/readBresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta/readIresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/readMresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 

1pred/resnet_v1_50/block3/unit_4/bottleneck_v1/addAdd2pred/resnet_v1_50/block3/unit_3/bottleneck_v1/ReluLpred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ş
2pred/resnet_v1_50/block3/unit_4/bottleneck_v1/ReluRelu1pred/resnet_v1_50/block3/unit_4/bottleneck_v1/add*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights*
_output_shapes
:
č
Xresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdN=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights*
_output_shapes
: 
ő
cresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights*(
_output_shapes
:

Wresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights*(
_output_shapes
:

Sresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights/Initializer/truncated_normalAddWresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulXresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights*(
_output_shapes
:

6resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights*(
_output_shapes
:
ű
=resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights/AssignAssign6resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weightsSresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights*(
_output_shapes
:
ý
;resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights/readIdentity6resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights*
_output_shapes
: 

\pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights*
_output_shapes
: 

Upred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights*
_output_shapes
: 

Apred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
đ
:pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/Conv2DConv2D2pred/resnet_v1_50/block3/unit_4/bottleneck_v1/Relu;resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma/AssignAssign>resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gammaOresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma/readIdentity>resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta/AssignAssign=resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/betaOresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta/readIdentity=resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_meanVresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_varianceYresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/Conv2DCresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma/readBresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta/readIresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean/readMresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ű
8pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/ReluReluLpred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights*
_output_shapes
:
č
Xresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddevConst*
valueB
 *	=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights*
_output_shapes
: 
ő
cresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights*(
_output_shapes
:

Wresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights*(
_output_shapes
:

Sresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights/Initializer/truncated_normalAddWresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulXresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights*(
_output_shapes
:

6resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights*(
_output_shapes
:
ű
=resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights/AssignAssign6resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weightsSresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights*(
_output_shapes
:
ý
;resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights/readIdentity6resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights*
_output_shapes
: 

\pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights*
_output_shapes
: 

Upred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights*
_output_shapes
: 

Apred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ö
:pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/Conv2DConv2D8pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/Relu;resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma/AssignAssign>resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gammaOresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma/readIdentity>resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta/AssignAssign=resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/betaOresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta/readIdentity=resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_meanVresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_varianceYresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/Conv2DCresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma/readBresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta/readIresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean/readMresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ű
8pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/ReluReluLpred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights*
_output_shapes
:
č
Xresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdÎ=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights*
_output_shapes
: 
ő
cresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights*(
_output_shapes
:

Wresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights*(
_output_shapes
:

Sresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights/Initializer/truncated_normalAddWresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulXresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights*(
_output_shapes
:

6resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights*(
_output_shapes
:
ű
=resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights/AssignAssign6resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weightsSresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights*(
_output_shapes
:
ý
;resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights/readIdentity6resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights*
_output_shapes
: 

\pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights*
_output_shapes
: 

Upred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights*
_output_shapes
: 

Apred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ö
:pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/Conv2DConv2D8pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/Relu;resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma/AssignAssign>resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gammaOresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma/readIdentity>resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta/AssignAssign=resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/betaOresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta/readIdentity=resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_meanVresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_varianceYresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/Conv2DCresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma/readBresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta/readIresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean/readMresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 

1pred/resnet_v1_50/block3/unit_5/bottleneck_v1/addAdd2pred/resnet_v1_50/block3/unit_4/bottleneck_v1/ReluLpred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ş
2pred/resnet_v1_50/block3/unit_5/bottleneck_v1/ReluRelu1pred/resnet_v1_50/block3/unit_5/bottleneck_v1/add*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

>pred/resnet_v1_50/block3/unit_6/bottleneck_v1/shortcut/MaxPoolMaxPool2pred/resnet_v1_50/block3/unit_5/bottleneck_v1/Relu*
T0*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights*
_output_shapes
:
č
Xresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdN=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights*
_output_shapes
: 
ő
cresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights*(
_output_shapes
:

Wresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights*(
_output_shapes
:

Sresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights/Initializer/truncated_normalAddWresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mulXresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights*(
_output_shapes
:

6resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights*(
_output_shapes
:
ű
=resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights/AssignAssign6resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weightsSresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights*(
_output_shapes
:
ý
;resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights/readIdentity6resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights*
_output_shapes
: 

\pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights*
_output_shapes
: 

Upred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights*
_output_shapes
: 

Apred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
đ
:pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/Conv2DConv2D2pred/resnet_v1_50/block3/unit_5/bottleneck_v1/Relu;resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma/AssignAssign>resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gammaOresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma/readIdentity>resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta/AssignAssign=resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/betaOresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta/readIdentity=resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_meanVresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_varianceYresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/Conv2DCresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma/readBresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta/readIresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean/readMresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ű
8pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/ReluReluLpred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ť
:pred/resnet_v1_50/block3/unit_6/bottleneck_v1/Pad/paddingsConst*9
value0B."                             *
dtype0*
_output_shapes

:

1pred/resnet_v1_50/block3/unit_6/bottleneck_v1/PadPad8pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/Relu:pred/resnet_v1_50/block3/unit_6/bottleneck_v1/Pad/paddings*
T0*
	Tpaddings0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights*
_output_shapes
:
č
Xresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddevConst*
valueB
 *	=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights*
_output_shapes
: 
ő
cresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights*(
_output_shapes
:

Wresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights*(
_output_shapes
:

Sresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights/Initializer/truncated_normalAddWresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mulXresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights*(
_output_shapes
:

6resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights*(
_output_shapes
:
ű
=resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights/AssignAssign6resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weightsSresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights*(
_output_shapes
:
ý
;resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights/readIdentity6resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights*
_output_shapes
: 

\pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights*
_output_shapes
: 

Upred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights*
_output_shapes
: 

Apred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
đ
:pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/Conv2DConv2D1pred/resnet_v1_50/block3/unit_6/bottleneck_v1/Pad;resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingVALID*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma/AssignAssign>resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gammaOresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma/readIdentity>resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta/AssignAssign=resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/betaOresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta/readIdentity=resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_meanVresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_varianceYresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/Conv2DCresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma/readBresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta/readIresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean/readMresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 
Ű
8pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/ReluReluLpred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
Yresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights*
_output_shapes
:
č
Xresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights*
_output_shapes
: 
ę
Zresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdÎ=*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights*
_output_shapes
: 
ő
cresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalYresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights*(
_output_shapes
:

Wresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulMulcresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights/Initializer/truncated_normal/TruncatedNormalZresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights/Initializer/truncated_normal/stddev*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights*(
_output_shapes
:

Sresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights/Initializer/truncated_normalAddWresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mulXresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights/Initializer/truncated_normal/mean*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights*(
_output_shapes
:

6resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights*(
_output_shapes
:
ű
=resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights/AssignAssign6resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weightsSresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights*(
_output_shapes
:
ý
;resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights/readIdentity6resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights*(
_output_shapes
:
ë
[pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ˇŃ8*
dtype0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights*
_output_shapes
: 

\pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2LossL2Loss;resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights/read*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights*
_output_shapes
: 

Upred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizerMul[pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/scale\pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer/L2Loss*
T0*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights*
_output_shapes
: 

Apred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ö
:pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/Conv2DConv2D8pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/Relu;resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ý
_resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
:
í
Uresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes
: 

Oresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/onesFill_resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/shape_as_tensorUresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones/Const*
T0*

index_type0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
˙
>resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma
VariableV2*
shape:*
dtype0*
	container *
shared_name *Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Eresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma/AssignAssign>resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gammaOresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

Cresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma/readIdentity>resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma*
T0*Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:
ü
_resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
:
ě
Uresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes
: 

Oresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zerosFill_resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/shape_as_tensorUresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
ý
=resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:
˙
Dresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta/AssignAssign=resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/betaOresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

Bresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta/readIdentity=resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta*
T0*P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

fresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
:
ú
\resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes
: 
ľ
Vresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zerosFillfresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor\resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Dresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Kresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignAssignDresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_meanVresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

Iresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean/readIdentityDresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean*
T0*W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:

iresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
:

_resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes
: 
Â
Yresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/onesFilliresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor_resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

Hresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ş
Oresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignAssignHresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_varianceYresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
Ś
Mresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance/readIdentityHresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance*
T0*[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:
â
Lpred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/FusedBatchNormFusedBatchNorm:pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/Conv2DCresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma/readBresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta/readIresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean/readMresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance/read*
T0*
epsilon%đ'7*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::

Cpred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/ConstConst*
valueB
 *ŚD;*
dtype0*
_output_shapes
: 

1pred/resnet_v1_50/block3/unit_6/bottleneck_v1/addAdd>pred/resnet_v1_50/block3/unit_6/bottleneck_v1/shortcut/MaxPoolLpred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ş
2pred/resnet_v1_50/block3/unit_6/bottleneck_v1/ReluRelu1pred/resnet_v1_50/block3/unit_6/bottleneck_v1/add*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
š
6vlad/pre_proj/weights/Initializer/random_uniform/shapeConst*%
valueB"         d   *
dtype0*(
_class
loc:@vlad/pre_proj/weights*
_output_shapes
:
Ł
4vlad/pre_proj/weights/Initializer/random_uniform/minConst*
valueB
 *Ą˝*
dtype0*(
_class
loc:@vlad/pre_proj/weights*
_output_shapes
: 
Ł
4vlad/pre_proj/weights/Initializer/random_uniform/maxConst*
valueB
 *Ą=*
dtype0*(
_class
loc:@vlad/pre_proj/weights*
_output_shapes
: 

>vlad/pre_proj/weights/Initializer/random_uniform/RandomUniformRandomUniform6vlad/pre_proj/weights/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*(
_class
loc:@vlad/pre_proj/weights*'
_output_shapes
:d
ň
4vlad/pre_proj/weights/Initializer/random_uniform/subSub4vlad/pre_proj/weights/Initializer/random_uniform/max4vlad/pre_proj/weights/Initializer/random_uniform/min*
T0*(
_class
loc:@vlad/pre_proj/weights*
_output_shapes
: 

4vlad/pre_proj/weights/Initializer/random_uniform/mulMul>vlad/pre_proj/weights/Initializer/random_uniform/RandomUniform4vlad/pre_proj/weights/Initializer/random_uniform/sub*
T0*(
_class
loc:@vlad/pre_proj/weights*'
_output_shapes
:d
˙
0vlad/pre_proj/weights/Initializer/random_uniformAdd4vlad/pre_proj/weights/Initializer/random_uniform/mul4vlad/pre_proj/weights/Initializer/random_uniform/min*
T0*(
_class
loc:@vlad/pre_proj/weights*'
_output_shapes
:d
Ĺ
vlad/pre_proj/weights
VariableV2*
shape:d*
dtype0*
	container *
shared_name *(
_class
loc:@vlad/pre_proj/weights*'
_output_shapes
:d
ô
vlad/pre_proj/weights/AssignAssignvlad/pre_proj/weights0vlad/pre_proj/weights/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*(
_class
loc:@vlad/pre_proj/weights*'
_output_shapes
:d

vlad/pre_proj/weights/readIdentityvlad/pre_proj/weights*
T0*(
_class
loc:@vlad/pre_proj/weights*'
_output_shapes
:d
q
 pred/vlad/pre_proj/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
­
pred/vlad/pre_proj/Conv2DConv2D2pred/resnet_v1_50/block3/unit_6/bottleneck_v1/Reluvlad/pre_proj/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d
o
"pred/vlad/pre_proj/BatchNorm/ConstConst*
valueBd*  ?*
dtype0*
_output_shapes
:d
š
>vlad/pre_proj/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:d*
dtype0*/
_class%
#!loc:@vlad/pre_proj/BatchNorm/beta*
_output_shapes
:
Ş
4vlad/pre_proj/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*/
_class%
#!loc:@vlad/pre_proj/BatchNorm/beta*
_output_shapes
: 

.vlad/pre_proj/BatchNorm/beta/Initializer/zerosFill>vlad/pre_proj/BatchNorm/beta/Initializer/zeros/shape_as_tensor4vlad/pre_proj/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@vlad/pre_proj/BatchNorm/beta*
_output_shapes
:d
š
vlad/pre_proj/BatchNorm/beta
VariableV2*
shape:d*
dtype0*
	container *
shared_name */
_class%
#!loc:@vlad/pre_proj/BatchNorm/beta*
_output_shapes
:d
ú
#vlad/pre_proj/BatchNorm/beta/AssignAssignvlad/pre_proj/BatchNorm/beta.vlad/pre_proj/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@vlad/pre_proj/BatchNorm/beta*
_output_shapes
:d
Ą
!vlad/pre_proj/BatchNorm/beta/readIdentityvlad/pre_proj/BatchNorm/beta*
T0*/
_class%
#!loc:@vlad/pre_proj/BatchNorm/beta*
_output_shapes
:d
Ç
Evlad/pre_proj/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:d*
dtype0*6
_class,
*(loc:@vlad/pre_proj/BatchNorm/moving_mean*
_output_shapes
:
¸
;vlad/pre_proj/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*6
_class,
*(loc:@vlad/pre_proj/BatchNorm/moving_mean*
_output_shapes
: 
°
5vlad/pre_proj/BatchNorm/moving_mean/Initializer/zerosFillEvlad/pre_proj/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor;vlad/pre_proj/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*6
_class,
*(loc:@vlad/pre_proj/BatchNorm/moving_mean*
_output_shapes
:d
Ç
#vlad/pre_proj/BatchNorm/moving_mean
VariableV2*
shape:d*
dtype0*
	container *
shared_name *6
_class,
*(loc:@vlad/pre_proj/BatchNorm/moving_mean*
_output_shapes
:d

*vlad/pre_proj/BatchNorm/moving_mean/AssignAssign#vlad/pre_proj/BatchNorm/moving_mean5vlad/pre_proj/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*6
_class,
*(loc:@vlad/pre_proj/BatchNorm/moving_mean*
_output_shapes
:d
ś
(vlad/pre_proj/BatchNorm/moving_mean/readIdentity#vlad/pre_proj/BatchNorm/moving_mean*
T0*6
_class,
*(loc:@vlad/pre_proj/BatchNorm/moving_mean*
_output_shapes
:d
Î
Hvlad/pre_proj/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:d*
dtype0*:
_class0
.,loc:@vlad/pre_proj/BatchNorm/moving_variance*
_output_shapes
:
ż
>vlad/pre_proj/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*:
_class0
.,loc:@vlad/pre_proj/BatchNorm/moving_variance*
_output_shapes
: 
˝
8vlad/pre_proj/BatchNorm/moving_variance/Initializer/onesFillHvlad/pre_proj/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor>vlad/pre_proj/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*:
_class0
.,loc:@vlad/pre_proj/BatchNorm/moving_variance*
_output_shapes
:d
Ď
'vlad/pre_proj/BatchNorm/moving_variance
VariableV2*
shape:d*
dtype0*
	container *
shared_name *:
_class0
.,loc:@vlad/pre_proj/BatchNorm/moving_variance*
_output_shapes
:d
Ľ
.vlad/pre_proj/BatchNorm/moving_variance/AssignAssign'vlad/pre_proj/BatchNorm/moving_variance8vlad/pre_proj/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*:
_class0
.,loc:@vlad/pre_proj/BatchNorm/moving_variance*
_output_shapes
:d
Â
,vlad/pre_proj/BatchNorm/moving_variance/readIdentity'vlad/pre_proj/BatchNorm/moving_variance*
T0*:
_class0
.,loc:@vlad/pre_proj/BatchNorm/moving_variance*
_output_shapes
:d

+pred/vlad/pre_proj/BatchNorm/FusedBatchNormFusedBatchNormpred/vlad/pre_proj/Conv2D"pred/vlad/pre_proj/BatchNorm/Const!vlad/pre_proj/BatchNorm/beta/read(vlad/pre_proj/BatchNorm/moving_mean/read,vlad/pre_proj/BatchNorm/moving_variance/read*
T0*
epsilon%o:*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d:d:d:d:d
i
$pred/vlad/pre_proj/BatchNorm/Const_1Const*
valueB
 *o:*
dtype0*
_output_shapes
: 
z
pred/vlad/ShapeShape+pred/vlad/pre_proj/BatchNorm/FusedBatchNorm*
T0*
out_type0*
_output_shapes
:
g
pred/vlad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
i
pred/vlad/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
i
pred/vlad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ť
pred/vlad/strided_sliceStridedSlicepred/vlad/Shapepred/vlad/strided_slice/stackpred/vlad/strided_slice/stack_1pred/vlad/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 
ż
9vlad/memberships/weights/Initializer/random_uniform/shapeConst*%
valueB"      d       *
dtype0*+
_class!
loc:@vlad/memberships/weights*
_output_shapes
:
Š
7vlad/memberships/weights/Initializer/random_uniform/minConst*
valueB
 *JQZž*
dtype0*+
_class!
loc:@vlad/memberships/weights*
_output_shapes
: 
Š
7vlad/memberships/weights/Initializer/random_uniform/maxConst*
valueB
 *JQZ>*
dtype0*+
_class!
loc:@vlad/memberships/weights*
_output_shapes
: 

Avlad/memberships/weights/Initializer/random_uniform/RandomUniformRandomUniform9vlad/memberships/weights/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*+
_class!
loc:@vlad/memberships/weights*&
_output_shapes
:d 
ţ
7vlad/memberships/weights/Initializer/random_uniform/subSub7vlad/memberships/weights/Initializer/random_uniform/max7vlad/memberships/weights/Initializer/random_uniform/min*
T0*+
_class!
loc:@vlad/memberships/weights*
_output_shapes
: 

7vlad/memberships/weights/Initializer/random_uniform/mulMulAvlad/memberships/weights/Initializer/random_uniform/RandomUniform7vlad/memberships/weights/Initializer/random_uniform/sub*
T0*+
_class!
loc:@vlad/memberships/weights*&
_output_shapes
:d 

3vlad/memberships/weights/Initializer/random_uniformAdd7vlad/memberships/weights/Initializer/random_uniform/mul7vlad/memberships/weights/Initializer/random_uniform/min*
T0*+
_class!
loc:@vlad/memberships/weights*&
_output_shapes
:d 
É
vlad/memberships/weights
VariableV2*
shape:d *
dtype0*
	container *
shared_name *+
_class!
loc:@vlad/memberships/weights*&
_output_shapes
:d 
˙
vlad/memberships/weights/AssignAssignvlad/memberships/weights3vlad/memberships/weights/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@vlad/memberships/weights*&
_output_shapes
:d 
Ą
vlad/memberships/weights/readIdentityvlad/memberships/weights*
T0*+
_class!
loc:@vlad/memberships/weights*&
_output_shapes
:d 
t
#pred/vlad/memberships/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Ź
pred/vlad/memberships/Conv2DConv2D+pred/vlad/pre_proj/BatchNorm/FusedBatchNormvlad/memberships/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ 
r
%pred/vlad/memberships/BatchNorm/ConstConst*
valueB *  ?*
dtype0*
_output_shapes
: 
ż
Avlad/memberships/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB: *
dtype0*2
_class(
&$loc:@vlad/memberships/BatchNorm/beta*
_output_shapes
:
°
7vlad/memberships/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*2
_class(
&$loc:@vlad/memberships/BatchNorm/beta*
_output_shapes
: 
 
1vlad/memberships/BatchNorm/beta/Initializer/zerosFillAvlad/memberships/BatchNorm/beta/Initializer/zeros/shape_as_tensor7vlad/memberships/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*2
_class(
&$loc:@vlad/memberships/BatchNorm/beta*
_output_shapes
: 
ż
vlad/memberships/BatchNorm/beta
VariableV2*
shape: *
dtype0*
	container *
shared_name *2
_class(
&$loc:@vlad/memberships/BatchNorm/beta*
_output_shapes
: 

&vlad/memberships/BatchNorm/beta/AssignAssignvlad/memberships/BatchNorm/beta1vlad/memberships/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@vlad/memberships/BatchNorm/beta*
_output_shapes
: 
Ş
$vlad/memberships/BatchNorm/beta/readIdentityvlad/memberships/BatchNorm/beta*
T0*2
_class(
&$loc:@vlad/memberships/BatchNorm/beta*
_output_shapes
: 
Í
Hvlad/memberships/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB: *
dtype0*9
_class/
-+loc:@vlad/memberships/BatchNorm/moving_mean*
_output_shapes
:
ž
>vlad/memberships/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*9
_class/
-+loc:@vlad/memberships/BatchNorm/moving_mean*
_output_shapes
: 
ź
8vlad/memberships/BatchNorm/moving_mean/Initializer/zerosFillHvlad/memberships/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor>vlad/memberships/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*9
_class/
-+loc:@vlad/memberships/BatchNorm/moving_mean*
_output_shapes
: 
Í
&vlad/memberships/BatchNorm/moving_mean
VariableV2*
shape: *
dtype0*
	container *
shared_name *9
_class/
-+loc:@vlad/memberships/BatchNorm/moving_mean*
_output_shapes
: 
˘
-vlad/memberships/BatchNorm/moving_mean/AssignAssign&vlad/memberships/BatchNorm/moving_mean8vlad/memberships/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*9
_class/
-+loc:@vlad/memberships/BatchNorm/moving_mean*
_output_shapes
: 
ż
+vlad/memberships/BatchNorm/moving_mean/readIdentity&vlad/memberships/BatchNorm/moving_mean*
T0*9
_class/
-+loc:@vlad/memberships/BatchNorm/moving_mean*
_output_shapes
: 
Ô
Kvlad/memberships/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB: *
dtype0*=
_class3
1/loc:@vlad/memberships/BatchNorm/moving_variance*
_output_shapes
:
Ĺ
Avlad/memberships/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*=
_class3
1/loc:@vlad/memberships/BatchNorm/moving_variance*
_output_shapes
: 
É
;vlad/memberships/BatchNorm/moving_variance/Initializer/onesFillKvlad/memberships/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorAvlad/memberships/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*=
_class3
1/loc:@vlad/memberships/BatchNorm/moving_variance*
_output_shapes
: 
Ő
*vlad/memberships/BatchNorm/moving_variance
VariableV2*
shape: *
dtype0*
	container *
shared_name *=
_class3
1/loc:@vlad/memberships/BatchNorm/moving_variance*
_output_shapes
: 
ą
1vlad/memberships/BatchNorm/moving_variance/AssignAssign*vlad/memberships/BatchNorm/moving_variance;vlad/memberships/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*=
_class3
1/loc:@vlad/memberships/BatchNorm/moving_variance*
_output_shapes
: 
Ë
/vlad/memberships/BatchNorm/moving_variance/readIdentity*vlad/memberships/BatchNorm/moving_variance*
T0*=
_class3
1/loc:@vlad/memberships/BatchNorm/moving_variance*
_output_shapes
: 
Š
.pred/vlad/memberships/BatchNorm/FusedBatchNormFusedBatchNormpred/vlad/memberships/Conv2D%pred/vlad/memberships/BatchNorm/Const$vlad/memberships/BatchNorm/beta/read+vlad/memberships/BatchNorm/moving_mean/read/vlad/memberships/BatchNorm/moving_variance/read*
T0*
epsilon%o:*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ : : : : 
l
'pred/vlad/memberships/BatchNorm/Const_1Const*
valueB
 *o:*
dtype0*
_output_shapes
: 

pred/vlad/Shape_1Shape.pred/vlad/memberships/BatchNorm/FusedBatchNorm*
T0*
out_type0*
_output_shapes
:
P
pred/vlad/RankConst*
value	B :*
dtype0*
_output_shapes
: 

pred/vlad/Shape_2Shape.pred/vlad/memberships/BatchNorm/FusedBatchNorm*
T0*
out_type0*
_output_shapes
:
Q
pred/vlad/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
V
pred/vlad/SubSubpred/vlad/Rankpred/vlad/Sub/y*
T0*
_output_shapes
: 
f
pred/vlad/Slice/beginPackpred/vlad/Sub*
N*
T0*

axis *
_output_shapes
:
^
pred/vlad/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:

pred/vlad/SliceSlicepred/vlad/Shape_2pred/vlad/Slice/beginpred/vlad/Slice/size*
T0*
Index0*
_output_shapes
:
l
pred/vlad/concat/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
W
pred/vlad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

pred/vlad/concatConcatV2pred/vlad/concat/values_0pred/vlad/Slicepred/vlad/concat/axis*
N*
T0*

Tidx0*
_output_shapes
:
§
pred/vlad/ReshapeReshape.pred/vlad/memberships/BatchNorm/FusedBatchNormpred/vlad/concat*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
j
pred/vlad/SoftmaxSoftmaxpred/vlad/Reshape*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

pred/vlad/Reshape_1Reshapepred/vlad/Softmaxpred/vlad/Shape_1*
T0*
Tshape0*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ 
­
.vlad/clusters/Initializer/random_uniform/shapeConst*)
value B"             d   *
dtype0* 
_class
loc:@vlad/clusters*
_output_shapes
:

,vlad/clusters/Initializer/random_uniform/minConst*
valueB
 *JQZž*
dtype0* 
_class
loc:@vlad/clusters*
_output_shapes
: 

,vlad/clusters/Initializer/random_uniform/maxConst*
valueB
 *JQZ>*
dtype0* 
_class
loc:@vlad/clusters*
_output_shapes
: 
ô
6vlad/clusters/Initializer/random_uniform/RandomUniformRandomUniform.vlad/clusters/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0* 
_class
loc:@vlad/clusters**
_output_shapes
: d
Ň
,vlad/clusters/Initializer/random_uniform/subSub,vlad/clusters/Initializer/random_uniform/max,vlad/clusters/Initializer/random_uniform/min*
T0* 
_class
loc:@vlad/clusters*
_output_shapes
: 
đ
,vlad/clusters/Initializer/random_uniform/mulMul6vlad/clusters/Initializer/random_uniform/RandomUniform,vlad/clusters/Initializer/random_uniform/sub*
T0* 
_class
loc:@vlad/clusters**
_output_shapes
: d
â
(vlad/clusters/Initializer/random_uniformAdd,vlad/clusters/Initializer/random_uniform/mul,vlad/clusters/Initializer/random_uniform/min*
T0* 
_class
loc:@vlad/clusters**
_output_shapes
: d
ť
vlad/clusters
VariableV2*
shape: d*
dtype0*
	container *
shared_name * 
_class
loc:@vlad/clusters**
_output_shapes
: d
×
vlad/clusters/AssignAssignvlad/clusters(vlad/clusters/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(* 
_class
loc:@vlad/clusters**
_output_shapes
: d

vlad/clusters/readIdentityvlad/clusters*
T0* 
_class
loc:@vlad/clusters**
_output_shapes
: d
Z
pred/vlad/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
Ĺ
pred/vlad/ExpandDims
ExpandDims+pred/vlad/pre_proj/BatchNorm/FusedBatchNormpred/vlad/ExpandDims/dim*
T0*

Tdim0*E
_output_shapes3
1:/˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙d

pred/vlad/subSubvlad/clusters/readpred/vlad/ExpandDims*
T0*E
_output_shapes3
1:/˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ d
e
pred/vlad/ExpandDims_1/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ą
pred/vlad/ExpandDims_1
ExpandDimspred/vlad/Reshape_1pred/vlad/ExpandDims_1/dim*
T0*

Tdim0*E
_output_shapes3
1:/˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ 

pred/vlad/mulMulpred/vlad/subpred/vlad/ExpandDims_1*
T0*E
_output_shapes3
1:/˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ d
p
pred/vlad/Sum/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:

pred/vlad/SumSumpred/vlad/mulpred/vlad/Sum/reduction_indices*
	keep_dims( *
T0*

Tidx0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙ d
l
pred/vlad/l2_normalize/SquareSquarepred/vlad/Sum*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙ d
n
,pred/vlad/l2_normalize/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Á
pred/vlad/l2_normalize/SumSumpred/vlad/l2_normalize/Square,pred/vlad/l2_normalize/Sum/reduction_indices*
	keep_dims(*
T0*

Tidx0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
e
 pred/vlad/l2_normalize/Maximum/yConst*
valueB
 *Ěź+*
dtype0*
_output_shapes
: 

pred/vlad/l2_normalize/MaximumMaximumpred/vlad/l2_normalize/Sum pred/vlad/l2_normalize/Maximum/y*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d
{
pred/vlad/l2_normalize/RsqrtRsqrtpred/vlad/l2_normalize/Maximum*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙d

pred/vlad/l2_normalizeMulpred/vlad/Sumpred/vlad/l2_normalize/Rsqrt*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙ d
^
pred/vlad/Reshape_2/shape/1Const*
value
B :*
dtype0*
_output_shapes
: 

pred/vlad/Reshape_2/shapePackpred/vlad/strided_slicepred/vlad/Reshape_2/shape/1*
N*
T0*

axis *
_output_shapes
:

pred/vlad/Reshape_2Reshapepred/vlad/l2_normalizepred/vlad/Reshape_2/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
pred/vlad/l2_normalize_1/SquareSquarepred/vlad/Reshape_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
.pred/vlad/l2_normalize_1/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ă
pred/vlad/l2_normalize_1/SumSumpred/vlad/l2_normalize_1/Square.pred/vlad/l2_normalize_1/Sum/reduction_indices*
	keep_dims(*
T0*

Tidx0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
"pred/vlad/l2_normalize_1/Maximum/yConst*
valueB
 *Ěź+*
dtype0*
_output_shapes
: 

 pred/vlad/l2_normalize_1/MaximumMaximumpred/vlad/l2_normalize_1/Sum"pred/vlad/l2_normalize_1/Maximum/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
pred/vlad/l2_normalize_1/RsqrtRsqrt pred/vlad/l2_normalize_1/Maximum*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

pred/vlad/l2_normalize_1Mulpred/vlad/Reshape_2pred/vlad/l2_normalize_1/Rsqrt*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
c

descriptorIdentitypred/vlad/l2_normalize_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ť}
initNoOp"^resnet_v1_50/conv1/weights/Assign*^resnet_v1_50/conv1/BatchNorm/gamma/Assign)^resnet_v1_50/conv1/BatchNorm/beta/Assign0^resnet_v1_50/conv1/BatchNorm/moving_mean/Assign4^resnet_v1_50/conv1/BatchNorm/moving_variance/AssignA^resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights/AssignI^resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/AssignH^resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/AssignO^resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/AssignS^resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Assign>^resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights/AssignF^resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/AssignE^resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta/AssignL^resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignP^resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Assign>^resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights/AssignF^resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/AssignE^resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta/AssignL^resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignP^resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Assign>^resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights/AssignF^resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/AssignE^resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta/AssignL^resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignP^resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Assign>^resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights/AssignF^resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/AssignE^resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta/AssignL^resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignP^resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Assign>^resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights/AssignF^resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/AssignE^resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta/AssignL^resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignP^resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Assign>^resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights/AssignF^resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/AssignE^resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta/AssignL^resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignP^resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Assign>^resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights/AssignF^resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/AssignE^resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta/AssignL^resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignP^resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Assign>^resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights/AssignF^resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/AssignE^resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta/AssignL^resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignP^resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Assign>^resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights/AssignF^resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/AssignE^resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta/AssignL^resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignP^resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignA^resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights/AssignI^resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/AssignH^resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/AssignO^resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/AssignS^resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Assign>^resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights/AssignF^resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/AssignE^resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta/AssignL^resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignP^resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Assign>^resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights/AssignF^resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/AssignE^resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta/AssignL^resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignP^resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Assign>^resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights/AssignF^resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/AssignE^resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta/AssignL^resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignP^resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Assign>^resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights/AssignF^resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/AssignE^resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta/AssignL^resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignP^resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Assign>^resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights/AssignF^resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/AssignE^resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta/AssignL^resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignP^resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Assign>^resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights/AssignF^resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/AssignE^resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta/AssignL^resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignP^resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Assign>^resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights/AssignF^resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/AssignE^resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta/AssignL^resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignP^resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Assign>^resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights/AssignF^resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/AssignE^resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta/AssignL^resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignP^resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Assign>^resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights/AssignF^resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/AssignE^resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta/AssignL^resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignP^resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Assign>^resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights/AssignF^resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/AssignE^resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta/AssignL^resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignP^resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/Assign>^resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights/AssignF^resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/AssignE^resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta/AssignL^resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignP^resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/Assign>^resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights/AssignF^resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/AssignE^resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta/AssignL^resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignP^resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignA^resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights/AssignI^resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/AssignH^resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/AssignO^resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/AssignS^resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Assign>^resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights/AssignF^resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/AssignE^resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta/AssignL^resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignP^resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Assign>^resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights/AssignF^resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/AssignE^resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta/AssignL^resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignP^resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Assign>^resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights/AssignF^resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/AssignE^resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta/AssignL^resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignP^resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Assign>^resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights/AssignF^resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/AssignE^resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta/AssignL^resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignP^resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Assign>^resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights/AssignF^resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/AssignE^resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta/AssignL^resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignP^resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Assign>^resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights/AssignF^resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/AssignE^resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta/AssignL^resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignP^resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Assign>^resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights/AssignF^resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/AssignE^resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta/AssignL^resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignP^resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Assign>^resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights/AssignF^resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/AssignE^resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta/AssignL^resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignP^resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Assign>^resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights/AssignF^resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/AssignE^resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta/AssignL^resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignP^resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Assign>^resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights/AssignF^resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/AssignE^resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta/AssignL^resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignP^resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/Assign>^resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights/AssignF^resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/AssignE^resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta/AssignL^resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignP^resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/Assign>^resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights/AssignF^resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/AssignE^resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta/AssignL^resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignP^resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/Assign>^resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights/AssignF^resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma/AssignE^resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta/AssignL^resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignP^resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance/Assign>^resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights/AssignF^resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma/AssignE^resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta/AssignL^resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignP^resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance/Assign>^resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights/AssignF^resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma/AssignE^resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta/AssignL^resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignP^resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance/Assign>^resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights/AssignF^resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma/AssignE^resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta/AssignL^resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignP^resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance/Assign>^resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights/AssignF^resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma/AssignE^resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta/AssignL^resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignP^resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance/Assign>^resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights/AssignF^resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma/AssignE^resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta/AssignL^resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignP^resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance/Assign^vlad/pre_proj/weights/Assign$^vlad/pre_proj/BatchNorm/beta/Assign+^vlad/pre_proj/BatchNorm/moving_mean/Assign/^vlad/pre_proj/BatchNorm/moving_variance/Assign ^vlad/memberships/weights/Assign'^vlad/memberships/BatchNorm/beta/Assign.^vlad/memberships/BatchNorm/moving_mean/Assign2^vlad/memberships/BatchNorm/moving_variance/Assign^vlad/clusters/Assign

init_1NoOp
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
p
save/SaveV2/tensor_namesConst*Ĺo
valueťoB¸oŕB=resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weightsB=resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weightsB=resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weightsB@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/betaBAresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gammaBGresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meanBKresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_varianceB9resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weightsB=resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weightsB=resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weightsB=resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weightsB=resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weightsB=resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weightsB=resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weightsB=resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weightsB=resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weightsB=resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weightsB@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/betaBAresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gammaBGresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meanBKresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_varianceB9resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weightsB=resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weightsB=resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weightsB=resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weightsB=resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weightsB=resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weightsB=resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weightsB=resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weightsB=resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weightsB=resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weightsB=resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weightsB@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/betaBAresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gammaBGresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meanBKresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_varianceB9resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weightsB=resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weightsB=resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weightsB=resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weightsB=resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weightsB=resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weightsB!resnet_v1_50/conv1/BatchNorm/betaB"resnet_v1_50/conv1/BatchNorm/gammaB(resnet_v1_50/conv1/BatchNorm/moving_meanB,resnet_v1_50/conv1/BatchNorm/moving_varianceBresnet_v1_50/conv1/weightsBvlad/clustersBvlad/memberships/BatchNorm/betaB&vlad/memberships/BatchNorm/moving_meanB*vlad/memberships/BatchNorm/moving_varianceBvlad/memberships/weightsBvlad/pre_proj/BatchNorm/betaB#vlad/pre_proj/BatchNorm/moving_meanB'vlad/pre_proj/BatchNorm/moving_varianceBvlad/pre_proj/weights*
dtype0*
_output_shapes	
:ŕ
¨
save/SaveV2/shape_and_slicesConst*Ö
valueĚBÉŕB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:ŕ
üq
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices=resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights=resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights=resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/betaAresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gammaGresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meanKresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance9resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights=resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights=resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights=resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights=resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights=resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights=resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights=resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights=resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights=resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/betaAresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gammaGresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meanKresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance9resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights=resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights=resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights=resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights=resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights=resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights=resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights=resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights=resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights=resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights=resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights=resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights=resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/betaAresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gammaGresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meanKresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance9resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights=resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights=resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights=resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights=resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights=resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights=resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights=resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights=resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights=resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights=resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights=resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights=resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights=resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights=resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights=resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights!resnet_v1_50/conv1/BatchNorm/beta"resnet_v1_50/conv1/BatchNorm/gamma(resnet_v1_50/conv1/BatchNorm/moving_mean,resnet_v1_50/conv1/BatchNorm/moving_varianceresnet_v1_50/conv1/weightsvlad/clustersvlad/memberships/BatchNorm/beta&vlad/memberships/BatchNorm/moving_mean*vlad/memberships/BatchNorm/moving_variancevlad/memberships/weightsvlad/pre_proj/BatchNorm/beta#vlad/pre_proj/BatchNorm/moving_mean'vlad/pre_proj/BatchNorm/moving_variancevlad/pre_proj/weights*ń
dtypesć
ă2ŕ
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
p
save/RestoreV2/tensor_namesConst*Ĺo
valueťoB¸oŕB=resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weightsB=resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weightsB=resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weightsB@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/betaBAresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gammaBGresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meanBKresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_varianceB9resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weightsB=resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weightsB=resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weightsB=resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weightsB=resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weightsB=resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weightsB=resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weightsB=resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weightsB=resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weightsB=resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weightsB@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/betaBAresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gammaBGresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meanBKresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_varianceB9resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weightsB=resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weightsB=resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weightsB=resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weightsB=resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weightsB=resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weightsB=resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weightsB=resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weightsB=resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weightsB=resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weightsB=resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weightsB@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/betaBAresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gammaBGresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meanBKresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_varianceB9resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weightsB=resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weightsB=resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weightsB=resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weightsB=resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weightsB=resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weightsB!resnet_v1_50/conv1/BatchNorm/betaB"resnet_v1_50/conv1/BatchNorm/gammaB(resnet_v1_50/conv1/BatchNorm/moving_meanB,resnet_v1_50/conv1/BatchNorm/moving_varianceBresnet_v1_50/conv1/weightsBvlad/clustersBvlad/memberships/BatchNorm/betaB&vlad/memberships/BatchNorm/moving_meanB*vlad/memberships/BatchNorm/moving_varianceBvlad/memberships/weightsBvlad/pre_proj/BatchNorm/betaB#vlad/pre_proj/BatchNorm/moving_meanB'vlad/pre_proj/BatchNorm/moving_varianceBvlad/pre_proj/weights*
dtype0*
_output_shapes	
:ŕ
Ť
save/RestoreV2/shape_and_slicesConst*Ö
valueĚBÉŕB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:ŕ
ň	
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*ń
dtypesć
ă2ŕ*
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

save/AssignAssign=resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/betasave/RestoreV2*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:@

save/Assign_1Assign>resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gammasave/RestoreV2:1*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:@

save/Assign_2AssignDresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meansave/RestoreV2:2*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:@

save/Assign_3AssignHresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variancesave/RestoreV2:3*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:@

save/Assign_4Assign6resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weightssave/RestoreV2:4*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights*&
_output_shapes
:@@

save/Assign_5Assign=resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/betasave/RestoreV2:5*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:@

save/Assign_6Assign>resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gammasave/RestoreV2:6*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:@

save/Assign_7AssignDresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meansave/RestoreV2:7*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:@

save/Assign_8AssignHresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variancesave/RestoreV2:8*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:@

save/Assign_9Assign6resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weightssave/RestoreV2:9*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights*&
_output_shapes
:@@

save/Assign_10Assign=resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/betasave/RestoreV2:10*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save/Assign_11Assign>resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gammasave/RestoreV2:11*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save/Assign_12AssignDresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meansave/RestoreV2:12*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
Ą
save/Assign_13AssignHresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variancesave/RestoreV2:13*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_14Assign6resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weightssave/RestoreV2:14*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights*'
_output_shapes
:@

save/Assign_15Assign@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/betasave/RestoreV2:15*
T0*
validate_shape(*
use_locking(*S
_classI
GEloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes	
:

save/Assign_16AssignAresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gammasave/RestoreV2:16*
T0*
validate_shape(*
use_locking(*T
_classJ
HFloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes	
:

save/Assign_17AssignGresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meansave/RestoreV2:17*
T0*
validate_shape(*
use_locking(*Z
_classP
NLloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes	
:
§
save/Assign_18AssignKresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variancesave/RestoreV2:18*
T0*
validate_shape(*
use_locking(*^
_classT
RPloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_19Assign9resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weightssave/RestoreV2:19*
T0*
validate_shape(*
use_locking(*L
_classB
@>loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights*'
_output_shapes
:@

save/Assign_20Assign=resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/betasave/RestoreV2:20*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:@

save/Assign_21Assign>resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gammasave/RestoreV2:21*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:@

save/Assign_22AssignDresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meansave/RestoreV2:22*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:@
 
save/Assign_23AssignHresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variancesave/RestoreV2:23*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:@

save/Assign_24Assign6resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weightssave/RestoreV2:24*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights*'
_output_shapes
:@

save/Assign_25Assign=resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/betasave/RestoreV2:25*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:@

save/Assign_26Assign>resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gammasave/RestoreV2:26*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:@

save/Assign_27AssignDresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meansave/RestoreV2:27*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:@
 
save/Assign_28AssignHresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variancesave/RestoreV2:28*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:@

save/Assign_29Assign6resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weightssave/RestoreV2:29*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights*&
_output_shapes
:@@

save/Assign_30Assign=resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/betasave/RestoreV2:30*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save/Assign_31Assign>resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gammasave/RestoreV2:31*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save/Assign_32AssignDresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meansave/RestoreV2:32*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
Ą
save/Assign_33AssignHresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variancesave/RestoreV2:33*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_34Assign6resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weightssave/RestoreV2:34*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights*'
_output_shapes
:@

save/Assign_35Assign=resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/betasave/RestoreV2:35*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:@

save/Assign_36Assign>resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gammasave/RestoreV2:36*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:@

save/Assign_37AssignDresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meansave/RestoreV2:37*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:@
 
save/Assign_38AssignHresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variancesave/RestoreV2:38*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:@

save/Assign_39Assign6resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weightssave/RestoreV2:39*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights*'
_output_shapes
:@

save/Assign_40Assign=resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/betasave/RestoreV2:40*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:@

save/Assign_41Assign>resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gammasave/RestoreV2:41*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:@

save/Assign_42AssignDresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meansave/RestoreV2:42*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:@
 
save/Assign_43AssignHresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variancesave/RestoreV2:43*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:@

save/Assign_44Assign6resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weightssave/RestoreV2:44*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights*&
_output_shapes
:@@

save/Assign_45Assign=resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/betasave/RestoreV2:45*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save/Assign_46Assign>resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gammasave/RestoreV2:46*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save/Assign_47AssignDresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meansave/RestoreV2:47*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
Ą
save/Assign_48AssignHresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variancesave/RestoreV2:48*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_49Assign6resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weightssave/RestoreV2:49*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights*'
_output_shapes
:@

save/Assign_50Assign=resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/betasave/RestoreV2:50*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

save/Assign_51Assign>resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gammasave/RestoreV2:51*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

save/Assign_52AssignDresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meansave/RestoreV2:52*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:
Ą
save/Assign_53AssignHresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variancesave/RestoreV2:53*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_54Assign6resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weightssave/RestoreV2:54*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights*(
_output_shapes
:

save/Assign_55Assign=resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/betasave/RestoreV2:55*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

save/Assign_56Assign>resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gammasave/RestoreV2:56*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

save/Assign_57AssignDresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meansave/RestoreV2:57*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:
Ą
save/Assign_58AssignHresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variancesave/RestoreV2:58*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_59Assign6resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weightssave/RestoreV2:59*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights*(
_output_shapes
:

save/Assign_60Assign=resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/betasave/RestoreV2:60*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save/Assign_61Assign>resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gammasave/RestoreV2:61*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save/Assign_62AssignDresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meansave/RestoreV2:62*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
Ą
save/Assign_63AssignHresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variancesave/RestoreV2:63*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_64Assign6resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weightssave/RestoreV2:64*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights*(
_output_shapes
:

save/Assign_65Assign@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/betasave/RestoreV2:65*
T0*
validate_shape(*
use_locking(*S
_classI
GEloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes	
:

save/Assign_66AssignAresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gammasave/RestoreV2:66*
T0*
validate_shape(*
use_locking(*T
_classJ
HFloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes	
:

save/Assign_67AssignGresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meansave/RestoreV2:67*
T0*
validate_shape(*
use_locking(*Z
_classP
NLloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes	
:
§
save/Assign_68AssignKresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variancesave/RestoreV2:68*
T0*
validate_shape(*
use_locking(*^
_classT
RPloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_69Assign9resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weightssave/RestoreV2:69*
T0*
validate_shape(*
use_locking(*L
_classB
@>loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights*(
_output_shapes
:

save/Assign_70Assign=resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/betasave/RestoreV2:70*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

save/Assign_71Assign>resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gammasave/RestoreV2:71*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

save/Assign_72AssignDresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meansave/RestoreV2:72*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:
Ą
save/Assign_73AssignHresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variancesave/RestoreV2:73*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_74Assign6resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weightssave/RestoreV2:74*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights*(
_output_shapes
:

save/Assign_75Assign=resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/betasave/RestoreV2:75*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

save/Assign_76Assign>resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gammasave/RestoreV2:76*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

save/Assign_77AssignDresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meansave/RestoreV2:77*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:
Ą
save/Assign_78AssignHresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variancesave/RestoreV2:78*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_79Assign6resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weightssave/RestoreV2:79*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights*(
_output_shapes
:

save/Assign_80Assign=resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/betasave/RestoreV2:80*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save/Assign_81Assign>resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gammasave/RestoreV2:81*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save/Assign_82AssignDresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meansave/RestoreV2:82*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
Ą
save/Assign_83AssignHresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variancesave/RestoreV2:83*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_84Assign6resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weightssave/RestoreV2:84*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights*(
_output_shapes
:

save/Assign_85Assign=resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/betasave/RestoreV2:85*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

save/Assign_86Assign>resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gammasave/RestoreV2:86*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

save/Assign_87AssignDresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meansave/RestoreV2:87*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:
Ą
save/Assign_88AssignHresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variancesave/RestoreV2:88*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_89Assign6resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weightssave/RestoreV2:89*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights*(
_output_shapes
:

save/Assign_90Assign=resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/betasave/RestoreV2:90*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

save/Assign_91Assign>resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gammasave/RestoreV2:91*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

save/Assign_92AssignDresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meansave/RestoreV2:92*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:
Ą
save/Assign_93AssignHresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variancesave/RestoreV2:93*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_94Assign6resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weightssave/RestoreV2:94*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights*(
_output_shapes
:

save/Assign_95Assign=resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/betasave/RestoreV2:95*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save/Assign_96Assign>resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gammasave/RestoreV2:96*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save/Assign_97AssignDresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meansave/RestoreV2:97*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
Ą
save/Assign_98AssignHresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variancesave/RestoreV2:98*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_99Assign6resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weightssave/RestoreV2:99*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights*(
_output_shapes
:

save/Assign_100Assign=resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/betasave/RestoreV2:100*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

save/Assign_101Assign>resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gammasave/RestoreV2:101*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

save/Assign_102AssignDresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_meansave/RestoreV2:102*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:
Ł
save/Assign_103AssignHresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variancesave/RestoreV2:103*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_104Assign6resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weightssave/RestoreV2:104*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights*(
_output_shapes
:

save/Assign_105Assign=resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/betasave/RestoreV2:105*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

save/Assign_106Assign>resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gammasave/RestoreV2:106*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

save/Assign_107AssignDresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_meansave/RestoreV2:107*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:
Ł
save/Assign_108AssignHresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variancesave/RestoreV2:108*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_109Assign6resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weightssave/RestoreV2:109*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights*(
_output_shapes
:

save/Assign_110Assign=resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/betasave/RestoreV2:110*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save/Assign_111Assign>resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gammasave/RestoreV2:111*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save/Assign_112AssignDresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_meansave/RestoreV2:112*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
Ł
save/Assign_113AssignHresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variancesave/RestoreV2:113*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_114Assign6resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weightssave/RestoreV2:114*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights*(
_output_shapes
:

save/Assign_115Assign=resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/betasave/RestoreV2:115*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

save/Assign_116Assign>resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gammasave/RestoreV2:116*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

save/Assign_117AssignDresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meansave/RestoreV2:117*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:
Ł
save/Assign_118AssignHresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variancesave/RestoreV2:118*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_119Assign6resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weightssave/RestoreV2:119*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights*(
_output_shapes
:

save/Assign_120Assign=resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/betasave/RestoreV2:120*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

save/Assign_121Assign>resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gammasave/RestoreV2:121*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

save/Assign_122AssignDresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meansave/RestoreV2:122*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:
Ł
save/Assign_123AssignHresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variancesave/RestoreV2:123*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_124Assign6resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weightssave/RestoreV2:124*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights*(
_output_shapes
:

save/Assign_125Assign=resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/betasave/RestoreV2:125*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save/Assign_126Assign>resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gammasave/RestoreV2:126*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save/Assign_127AssignDresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meansave/RestoreV2:127*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
Ł
save/Assign_128AssignHresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variancesave/RestoreV2:128*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_129Assign6resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weightssave/RestoreV2:129*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights*(
_output_shapes
:

save/Assign_130Assign@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/betasave/RestoreV2:130*
T0*
validate_shape(*
use_locking(*S
_classI
GEloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes	
:

save/Assign_131AssignAresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gammasave/RestoreV2:131*
T0*
validate_shape(*
use_locking(*T
_classJ
HFloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes	
:
Ą
save/Assign_132AssignGresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meansave/RestoreV2:132*
T0*
validate_shape(*
use_locking(*Z
_classP
NLloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes	
:
Š
save/Assign_133AssignKresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variancesave/RestoreV2:133*
T0*
validate_shape(*
use_locking(*^
_classT
RPloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_134Assign9resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weightssave/RestoreV2:134*
T0*
validate_shape(*
use_locking(*L
_classB
@>loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights*(
_output_shapes
:

save/Assign_135Assign=resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/betasave/RestoreV2:135*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

save/Assign_136Assign>resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gammasave/RestoreV2:136*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

save/Assign_137AssignDresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meansave/RestoreV2:137*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:
Ł
save/Assign_138AssignHresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variancesave/RestoreV2:138*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_139Assign6resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weightssave/RestoreV2:139*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights*(
_output_shapes
:

save/Assign_140Assign=resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/betasave/RestoreV2:140*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

save/Assign_141Assign>resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gammasave/RestoreV2:141*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

save/Assign_142AssignDresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meansave/RestoreV2:142*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:
Ł
save/Assign_143AssignHresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variancesave/RestoreV2:143*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_144Assign6resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weightssave/RestoreV2:144*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights*(
_output_shapes
:

save/Assign_145Assign=resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/betasave/RestoreV2:145*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save/Assign_146Assign>resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gammasave/RestoreV2:146*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save/Assign_147AssignDresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meansave/RestoreV2:147*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
Ł
save/Assign_148AssignHresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variancesave/RestoreV2:148*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_149Assign6resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weightssave/RestoreV2:149*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights*(
_output_shapes
:

save/Assign_150Assign=resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/betasave/RestoreV2:150*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

save/Assign_151Assign>resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gammasave/RestoreV2:151*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

save/Assign_152AssignDresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meansave/RestoreV2:152*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:
Ł
save/Assign_153AssignHresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variancesave/RestoreV2:153*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_154Assign6resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weightssave/RestoreV2:154*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights*(
_output_shapes
:

save/Assign_155Assign=resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/betasave/RestoreV2:155*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

save/Assign_156Assign>resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gammasave/RestoreV2:156*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

save/Assign_157AssignDresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meansave/RestoreV2:157*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:
Ł
save/Assign_158AssignHresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variancesave/RestoreV2:158*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_159Assign6resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weightssave/RestoreV2:159*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights*(
_output_shapes
:

save/Assign_160Assign=resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/betasave/RestoreV2:160*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save/Assign_161Assign>resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gammasave/RestoreV2:161*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save/Assign_162AssignDresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meansave/RestoreV2:162*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
Ł
save/Assign_163AssignHresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variancesave/RestoreV2:163*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_164Assign6resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weightssave/RestoreV2:164*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights*(
_output_shapes
:

save/Assign_165Assign=resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/betasave/RestoreV2:165*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

save/Assign_166Assign>resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gammasave/RestoreV2:166*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

save/Assign_167AssignDresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_meansave/RestoreV2:167*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:
Ł
save/Assign_168AssignHresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variancesave/RestoreV2:168*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_169Assign6resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weightssave/RestoreV2:169*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights*(
_output_shapes
:

save/Assign_170Assign=resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/betasave/RestoreV2:170*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

save/Assign_171Assign>resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gammasave/RestoreV2:171*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

save/Assign_172AssignDresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_meansave/RestoreV2:172*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:
Ł
save/Assign_173AssignHresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variancesave/RestoreV2:173*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_174Assign6resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weightssave/RestoreV2:174*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights*(
_output_shapes
:

save/Assign_175Assign=resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/betasave/RestoreV2:175*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save/Assign_176Assign>resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gammasave/RestoreV2:176*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save/Assign_177AssignDresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_meansave/RestoreV2:177*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
Ł
save/Assign_178AssignHresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variancesave/RestoreV2:178*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_179Assign6resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weightssave/RestoreV2:179*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights*(
_output_shapes
:

save/Assign_180Assign=resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/betasave/RestoreV2:180*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

save/Assign_181Assign>resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gammasave/RestoreV2:181*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

save/Assign_182AssignDresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_meansave/RestoreV2:182*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:
Ł
save/Assign_183AssignHresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variancesave/RestoreV2:183*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_184Assign6resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weightssave/RestoreV2:184*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights*(
_output_shapes
:

save/Assign_185Assign=resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/betasave/RestoreV2:185*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

save/Assign_186Assign>resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gammasave/RestoreV2:186*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

save/Assign_187AssignDresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_meansave/RestoreV2:187*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:
Ł
save/Assign_188AssignHresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variancesave/RestoreV2:188*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_189Assign6resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weightssave/RestoreV2:189*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights*(
_output_shapes
:

save/Assign_190Assign=resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/betasave/RestoreV2:190*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save/Assign_191Assign>resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gammasave/RestoreV2:191*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save/Assign_192AssignDresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_meansave/RestoreV2:192*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
Ł
save/Assign_193AssignHresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variancesave/RestoreV2:193*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_194Assign6resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weightssave/RestoreV2:194*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights*(
_output_shapes
:

save/Assign_195Assign=resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/betasave/RestoreV2:195*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

save/Assign_196Assign>resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gammasave/RestoreV2:196*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

save/Assign_197AssignDresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_meansave/RestoreV2:197*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:
Ł
save/Assign_198AssignHresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variancesave/RestoreV2:198*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_199Assign6resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weightssave/RestoreV2:199*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights*(
_output_shapes
:

save/Assign_200Assign=resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/betasave/RestoreV2:200*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

save/Assign_201Assign>resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gammasave/RestoreV2:201*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

save/Assign_202AssignDresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_meansave/RestoreV2:202*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:
Ł
save/Assign_203AssignHresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variancesave/RestoreV2:203*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_204Assign6resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weightssave/RestoreV2:204*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights*(
_output_shapes
:

save/Assign_205Assign=resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/betasave/RestoreV2:205*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save/Assign_206Assign>resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gammasave/RestoreV2:206*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save/Assign_207AssignDresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_meansave/RestoreV2:207*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
Ł
save/Assign_208AssignHresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variancesave/RestoreV2:208*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save/Assign_209Assign6resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weightssave/RestoreV2:209*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights*(
_output_shapes
:
Ô
save/Assign_210Assign!resnet_v1_50/conv1/BatchNorm/betasave/RestoreV2:210*
T0*
validate_shape(*
use_locking(*4
_class*
(&loc:@resnet_v1_50/conv1/BatchNorm/beta*
_output_shapes
:@
Ö
save/Assign_211Assign"resnet_v1_50/conv1/BatchNorm/gammasave/RestoreV2:211*
T0*
validate_shape(*
use_locking(*5
_class+
)'loc:@resnet_v1_50/conv1/BatchNorm/gamma*
_output_shapes
:@
â
save/Assign_212Assign(resnet_v1_50/conv1/BatchNorm/moving_meansave/RestoreV2:212*
T0*
validate_shape(*
use_locking(*;
_class1
/-loc:@resnet_v1_50/conv1/BatchNorm/moving_mean*
_output_shapes
:@
ę
save/Assign_213Assign,resnet_v1_50/conv1/BatchNorm/moving_variancesave/RestoreV2:213*
T0*
validate_shape(*
use_locking(*?
_class5
31loc:@resnet_v1_50/conv1/BatchNorm/moving_variance*
_output_shapes
:@
Ň
save/Assign_214Assignresnet_v1_50/conv1/weightssave/RestoreV2:214*
T0*
validate_shape(*
use_locking(*-
_class#
!loc:@resnet_v1_50/conv1/weights*&
_output_shapes
:@
ź
save/Assign_215Assignvlad/clusterssave/RestoreV2:215*
T0*
validate_shape(*
use_locking(* 
_class
loc:@vlad/clusters**
_output_shapes
: d
Đ
save/Assign_216Assignvlad/memberships/BatchNorm/betasave/RestoreV2:216*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@vlad/memberships/BatchNorm/beta*
_output_shapes
: 
Ţ
save/Assign_217Assign&vlad/memberships/BatchNorm/moving_meansave/RestoreV2:217*
T0*
validate_shape(*
use_locking(*9
_class/
-+loc:@vlad/memberships/BatchNorm/moving_mean*
_output_shapes
: 
ć
save/Assign_218Assign*vlad/memberships/BatchNorm/moving_variancesave/RestoreV2:218*
T0*
validate_shape(*
use_locking(*=
_class3
1/loc:@vlad/memberships/BatchNorm/moving_variance*
_output_shapes
: 
Î
save/Assign_219Assignvlad/memberships/weightssave/RestoreV2:219*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@vlad/memberships/weights*&
_output_shapes
:d 
Ę
save/Assign_220Assignvlad/pre_proj/BatchNorm/betasave/RestoreV2:220*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@vlad/pre_proj/BatchNorm/beta*
_output_shapes
:d
Ř
save/Assign_221Assign#vlad/pre_proj/BatchNorm/moving_meansave/RestoreV2:221*
T0*
validate_shape(*
use_locking(*6
_class,
*(loc:@vlad/pre_proj/BatchNorm/moving_mean*
_output_shapes
:d
ŕ
save/Assign_222Assign'vlad/pre_proj/BatchNorm/moving_variancesave/RestoreV2:222*
T0*
validate_shape(*
use_locking(*:
_class0
.,loc:@vlad/pre_proj/BatchNorm/moving_variance*
_output_shapes
:d
É
save/Assign_223Assignvlad/pre_proj/weightssave/RestoreV2:223*
T0*
validate_shape(*
use_locking(*(
_class
loc:@vlad/pre_proj/weights*'
_output_shapes
:d
č
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_84^save/Assign_85^save/Assign_86^save/Assign_87^save/Assign_88^save/Assign_89^save/Assign_90^save/Assign_91^save/Assign_92^save/Assign_93^save/Assign_94^save/Assign_95^save/Assign_96^save/Assign_97^save/Assign_98^save/Assign_99^save/Assign_100^save/Assign_101^save/Assign_102^save/Assign_103^save/Assign_104^save/Assign_105^save/Assign_106^save/Assign_107^save/Assign_108^save/Assign_109^save/Assign_110^save/Assign_111^save/Assign_112^save/Assign_113^save/Assign_114^save/Assign_115^save/Assign_116^save/Assign_117^save/Assign_118^save/Assign_119^save/Assign_120^save/Assign_121^save/Assign_122^save/Assign_123^save/Assign_124^save/Assign_125^save/Assign_126^save/Assign_127^save/Assign_128^save/Assign_129^save/Assign_130^save/Assign_131^save/Assign_132^save/Assign_133^save/Assign_134^save/Assign_135^save/Assign_136^save/Assign_137^save/Assign_138^save/Assign_139^save/Assign_140^save/Assign_141^save/Assign_142^save/Assign_143^save/Assign_144^save/Assign_145^save/Assign_146^save/Assign_147^save/Assign_148^save/Assign_149^save/Assign_150^save/Assign_151^save/Assign_152^save/Assign_153^save/Assign_154^save/Assign_155^save/Assign_156^save/Assign_157^save/Assign_158^save/Assign_159^save/Assign_160^save/Assign_161^save/Assign_162^save/Assign_163^save/Assign_164^save/Assign_165^save/Assign_166^save/Assign_167^save/Assign_168^save/Assign_169^save/Assign_170^save/Assign_171^save/Assign_172^save/Assign_173^save/Assign_174^save/Assign_175^save/Assign_176^save/Assign_177^save/Assign_178^save/Assign_179^save/Assign_180^save/Assign_181^save/Assign_182^save/Assign_183^save/Assign_184^save/Assign_185^save/Assign_186^save/Assign_187^save/Assign_188^save/Assign_189^save/Assign_190^save/Assign_191^save/Assign_192^save/Assign_193^save/Assign_194^save/Assign_195^save/Assign_196^save/Assign_197^save/Assign_198^save/Assign_199^save/Assign_200^save/Assign_201^save/Assign_202^save/Assign_203^save/Assign_204^save/Assign_205^save/Assign_206^save/Assign_207^save/Assign_208^save/Assign_209^save/Assign_210^save/Assign_211^save/Assign_212^save/Assign_213^save/Assign_214^save/Assign_215^save/Assign_216^save/Assign_217^save/Assign_218^save/Assign_219^save/Assign_220^save/Assign_221^save/Assign_222^save/Assign_223
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_a879ff8f57cb40e2909b163dc380fa08/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
p
save_1/SaveV2/tensor_namesConst*Ĺo
valueťoB¸oŕB=resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weightsB=resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weightsB=resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weightsB@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/betaBAresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gammaBGresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meanBKresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_varianceB9resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weightsB=resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weightsB=resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weightsB=resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weightsB=resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weightsB=resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weightsB=resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weightsB=resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weightsB=resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weightsB=resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weightsB@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/betaBAresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gammaBGresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meanBKresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_varianceB9resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weightsB=resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weightsB=resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weightsB=resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weightsB=resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weightsB=resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weightsB=resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weightsB=resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weightsB=resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weightsB=resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weightsB=resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weightsB@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/betaBAresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gammaBGresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meanBKresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_varianceB9resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weightsB=resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weightsB=resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weightsB=resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weightsB=resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weightsB=resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weightsB!resnet_v1_50/conv1/BatchNorm/betaB"resnet_v1_50/conv1/BatchNorm/gammaB(resnet_v1_50/conv1/BatchNorm/moving_meanB,resnet_v1_50/conv1/BatchNorm/moving_varianceBresnet_v1_50/conv1/weightsBvlad/clustersBvlad/memberships/BatchNorm/betaB&vlad/memberships/BatchNorm/moving_meanB*vlad/memberships/BatchNorm/moving_varianceBvlad/memberships/weightsBvlad/pre_proj/BatchNorm/betaB#vlad/pre_proj/BatchNorm/moving_meanB'vlad/pre_proj/BatchNorm/moving_varianceBvlad/pre_proj/weights*
dtype0*
_output_shapes	
:ŕ
Ş
save_1/SaveV2/shape_and_slicesConst*Ö
valueĚBÉŕB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:ŕ
r
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices=resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights=resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights=resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/betaAresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gammaGresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meanKresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance9resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights=resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights=resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights=resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights=resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights=resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights=resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights=resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights=resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights=resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/betaAresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gammaGresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meanKresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance9resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights=resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights=resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights=resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights=resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights=resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights=resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights=resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights=resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights=resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights=resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights=resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights=resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/betaAresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gammaGresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meanKresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance9resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights=resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights=resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights=resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights=resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights=resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights=resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights=resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights=resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights=resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights=resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights=resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights=resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights=resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta>resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gammaDresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_meanHresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance6resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights=resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta>resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gammaDresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_meanHresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance6resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights=resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta>resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gammaDresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_meanHresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance6resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights!resnet_v1_50/conv1/BatchNorm/beta"resnet_v1_50/conv1/BatchNorm/gamma(resnet_v1_50/conv1/BatchNorm/moving_mean,resnet_v1_50/conv1/BatchNorm/moving_varianceresnet_v1_50/conv1/weightsvlad/clustersvlad/memberships/BatchNorm/beta&vlad/memberships/BatchNorm/moving_mean*vlad/memberships/BatchNorm/moving_variancevlad/memberships/weightsvlad/pre_proj/BatchNorm/beta#vlad/pre_proj/BatchNorm/moving_mean'vlad/pre_proj/BatchNorm/moving_variancevlad/pre_proj/weights*ń
dtypesć
ă2ŕ

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
Ł
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
N*
T0*

axis *
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
T0*
_output_shapes
: 
p
save_1/RestoreV2/tensor_namesConst*Ĺo
valueťoB¸oŕB=resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weightsB=resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weightsB=resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weightsB@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/betaBAresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gammaBGresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meanBKresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_varianceB9resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weightsB=resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weightsB=resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weightsB=resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weightsB=resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weightsB=resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weightsB=resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weightsB=resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weightsB=resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weightsB=resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weightsB@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/betaBAresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gammaBGresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meanBKresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_varianceB9resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weightsB=resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weightsB=resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weightsB=resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weightsB=resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weightsB=resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weightsB=resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weightsB=resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weightsB=resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weightsB=resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weightsB=resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weightsB@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/betaBAresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gammaBGresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meanBKresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_varianceB9resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weightsB=resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weightsB=resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weightsB=resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weightsB=resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weightsB=resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/betaB>resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gammaBDresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weightsB=resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/betaB>resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gammaBDresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weightsB=resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/betaB>resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gammaBDresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_meanBHresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_varianceB6resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weightsB!resnet_v1_50/conv1/BatchNorm/betaB"resnet_v1_50/conv1/BatchNorm/gammaB(resnet_v1_50/conv1/BatchNorm/moving_meanB,resnet_v1_50/conv1/BatchNorm/moving_varianceBresnet_v1_50/conv1/weightsBvlad/clustersBvlad/memberships/BatchNorm/betaB&vlad/memberships/BatchNorm/moving_meanB*vlad/memberships/BatchNorm/moving_varianceBvlad/memberships/weightsBvlad/pre_proj/BatchNorm/betaB#vlad/pre_proj/BatchNorm/moving_meanB'vlad/pre_proj/BatchNorm/moving_varianceBvlad/pre_proj/weights*
dtype0*
_output_shapes	
:ŕ
­
!save_1/RestoreV2/shape_and_slicesConst*Ö
valueĚBÉŕB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:ŕ
ú	
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*ń
dtypesć
ă2ŕ*
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

save_1/AssignAssign=resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/betasave_1/RestoreV2*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:@

save_1/Assign_1Assign>resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gammasave_1/RestoreV2:1*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:@

save_1/Assign_2AssignDresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meansave_1/RestoreV2:2*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:@
˘
save_1/Assign_3AssignHresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variancesave_1/RestoreV2:3*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:@

save_1/Assign_4Assign6resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weightssave_1/RestoreV2:4*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights*&
_output_shapes
:@@

save_1/Assign_5Assign=resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/betasave_1/RestoreV2:5*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:@

save_1/Assign_6Assign>resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gammasave_1/RestoreV2:6*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:@

save_1/Assign_7AssignDresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meansave_1/RestoreV2:7*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:@
˘
save_1/Assign_8AssignHresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variancesave_1/RestoreV2:8*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:@

save_1/Assign_9Assign6resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weightssave_1/RestoreV2:9*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights*&
_output_shapes
:@@

save_1/Assign_10Assign=resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/betasave_1/RestoreV2:10*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_11Assign>resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gammasave_1/RestoreV2:11*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_12AssignDresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meansave_1/RestoreV2:12*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
Ľ
save_1/Assign_13AssignHresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variancesave_1/RestoreV2:13*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_14Assign6resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weightssave_1/RestoreV2:14*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights*'
_output_shapes
:@

save_1/Assign_15Assign@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/betasave_1/RestoreV2:15*
T0*
validate_shape(*
use_locking(*S
_classI
GEloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_16AssignAresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gammasave_1/RestoreV2:16*
T0*
validate_shape(*
use_locking(*T
_classJ
HFloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes	
:
Ł
save_1/Assign_17AssignGresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meansave_1/RestoreV2:17*
T0*
validate_shape(*
use_locking(*Z
_classP
NLloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes	
:
Ť
save_1/Assign_18AssignKresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variancesave_1/RestoreV2:18*
T0*
validate_shape(*
use_locking(*^
_classT
RPloc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_19Assign9resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weightssave_1/RestoreV2:19*
T0*
validate_shape(*
use_locking(*L
_classB
@>loc:@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights*'
_output_shapes
:@

save_1/Assign_20Assign=resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/betasave_1/RestoreV2:20*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:@

save_1/Assign_21Assign>resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gammasave_1/RestoreV2:21*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:@

save_1/Assign_22AssignDresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meansave_1/RestoreV2:22*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:@
¤
save_1/Assign_23AssignHresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variancesave_1/RestoreV2:23*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:@

save_1/Assign_24Assign6resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weightssave_1/RestoreV2:24*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights*'
_output_shapes
:@

save_1/Assign_25Assign=resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/betasave_1/RestoreV2:25*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:@

save_1/Assign_26Assign>resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gammasave_1/RestoreV2:26*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:@

save_1/Assign_27AssignDresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meansave_1/RestoreV2:27*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:@
¤
save_1/Assign_28AssignHresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variancesave_1/RestoreV2:28*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:@

save_1/Assign_29Assign6resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weightssave_1/RestoreV2:29*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights*&
_output_shapes
:@@

save_1/Assign_30Assign=resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/betasave_1/RestoreV2:30*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_31Assign>resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gammasave_1/RestoreV2:31*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_32AssignDresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meansave_1/RestoreV2:32*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
Ľ
save_1/Assign_33AssignHresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variancesave_1/RestoreV2:33*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_34Assign6resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weightssave_1/RestoreV2:34*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights*'
_output_shapes
:@

save_1/Assign_35Assign=resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/betasave_1/RestoreV2:35*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes
:@

save_1/Assign_36Assign>resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gammasave_1/RestoreV2:36*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes
:@

save_1/Assign_37AssignDresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meansave_1/RestoreV2:37*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes
:@
¤
save_1/Assign_38AssignHresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variancesave_1/RestoreV2:38*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes
:@

save_1/Assign_39Assign6resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weightssave_1/RestoreV2:39*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights*'
_output_shapes
:@

save_1/Assign_40Assign=resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/betasave_1/RestoreV2:40*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes
:@

save_1/Assign_41Assign>resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gammasave_1/RestoreV2:41*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes
:@

save_1/Assign_42AssignDresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meansave_1/RestoreV2:42*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes
:@
¤
save_1/Assign_43AssignHresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variancesave_1/RestoreV2:43*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes
:@

save_1/Assign_44Assign6resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weightssave_1/RestoreV2:44*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights*&
_output_shapes
:@@

save_1/Assign_45Assign=resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/betasave_1/RestoreV2:45*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_46Assign>resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gammasave_1/RestoreV2:46*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_47AssignDresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meansave_1/RestoreV2:47*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
Ľ
save_1/Assign_48AssignHresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variancesave_1/RestoreV2:48*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_49Assign6resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weightssave_1/RestoreV2:49*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights*'
_output_shapes
:@

save_1/Assign_50Assign=resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/betasave_1/RestoreV2:50*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_51Assign>resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gammasave_1/RestoreV2:51*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_52AssignDresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meansave_1/RestoreV2:52*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:
Ľ
save_1/Assign_53AssignHresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variancesave_1/RestoreV2:53*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_54Assign6resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weightssave_1/RestoreV2:54*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights*(
_output_shapes
:

save_1/Assign_55Assign=resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/betasave_1/RestoreV2:55*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_56Assign>resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gammasave_1/RestoreV2:56*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_57AssignDresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meansave_1/RestoreV2:57*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:
Ľ
save_1/Assign_58AssignHresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variancesave_1/RestoreV2:58*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_59Assign6resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weightssave_1/RestoreV2:59*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights*(
_output_shapes
:

save_1/Assign_60Assign=resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/betasave_1/RestoreV2:60*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_61Assign>resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gammasave_1/RestoreV2:61*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_62AssignDresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meansave_1/RestoreV2:62*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
Ľ
save_1/Assign_63AssignHresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variancesave_1/RestoreV2:63*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_64Assign6resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weightssave_1/RestoreV2:64*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights*(
_output_shapes
:

save_1/Assign_65Assign@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/betasave_1/RestoreV2:65*
T0*
validate_shape(*
use_locking(*S
_classI
GEloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_66AssignAresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gammasave_1/RestoreV2:66*
T0*
validate_shape(*
use_locking(*T
_classJ
HFloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes	
:
Ł
save_1/Assign_67AssignGresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meansave_1/RestoreV2:67*
T0*
validate_shape(*
use_locking(*Z
_classP
NLloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes	
:
Ť
save_1/Assign_68AssignKresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variancesave_1/RestoreV2:68*
T0*
validate_shape(*
use_locking(*^
_classT
RPloc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_69Assign9resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weightssave_1/RestoreV2:69*
T0*
validate_shape(*
use_locking(*L
_classB
@>loc:@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights*(
_output_shapes
:

save_1/Assign_70Assign=resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/betasave_1/RestoreV2:70*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_71Assign>resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gammasave_1/RestoreV2:71*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_72AssignDresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meansave_1/RestoreV2:72*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:
Ľ
save_1/Assign_73AssignHresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variancesave_1/RestoreV2:73*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_74Assign6resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weightssave_1/RestoreV2:74*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights*(
_output_shapes
:

save_1/Assign_75Assign=resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/betasave_1/RestoreV2:75*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_76Assign>resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gammasave_1/RestoreV2:76*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_77AssignDresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meansave_1/RestoreV2:77*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:
Ľ
save_1/Assign_78AssignHresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variancesave_1/RestoreV2:78*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_79Assign6resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weightssave_1/RestoreV2:79*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights*(
_output_shapes
:

save_1/Assign_80Assign=resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/betasave_1/RestoreV2:80*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_81Assign>resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gammasave_1/RestoreV2:81*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_82AssignDresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meansave_1/RestoreV2:82*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
Ľ
save_1/Assign_83AssignHresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variancesave_1/RestoreV2:83*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_84Assign6resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weightssave_1/RestoreV2:84*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights*(
_output_shapes
:

save_1/Assign_85Assign=resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/betasave_1/RestoreV2:85*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_86Assign>resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gammasave_1/RestoreV2:86*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_87AssignDresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meansave_1/RestoreV2:87*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:
Ľ
save_1/Assign_88AssignHresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variancesave_1/RestoreV2:88*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_89Assign6resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weightssave_1/RestoreV2:89*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights*(
_output_shapes
:

save_1/Assign_90Assign=resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/betasave_1/RestoreV2:90*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_91Assign>resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gammasave_1/RestoreV2:91*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_92AssignDresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meansave_1/RestoreV2:92*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:
Ľ
save_1/Assign_93AssignHresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variancesave_1/RestoreV2:93*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_94Assign6resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weightssave_1/RestoreV2:94*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights*(
_output_shapes
:

save_1/Assign_95Assign=resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/betasave_1/RestoreV2:95*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_96Assign>resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gammasave_1/RestoreV2:96*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_97AssignDresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meansave_1/RestoreV2:97*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
Ľ
save_1/Assign_98AssignHresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variancesave_1/RestoreV2:98*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_99Assign6resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weightssave_1/RestoreV2:99*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights*(
_output_shapes
:

save_1/Assign_100Assign=resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/betasave_1/RestoreV2:100*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_101Assign>resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gammasave_1/RestoreV2:101*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_102AssignDresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_meansave_1/RestoreV2:102*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:
§
save_1/Assign_103AssignHresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variancesave_1/RestoreV2:103*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_104Assign6resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weightssave_1/RestoreV2:104*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights*(
_output_shapes
:

save_1/Assign_105Assign=resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/betasave_1/RestoreV2:105*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_106Assign>resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gammasave_1/RestoreV2:106*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_107AssignDresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_meansave_1/RestoreV2:107*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:
§
save_1/Assign_108AssignHresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variancesave_1/RestoreV2:108*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_109Assign6resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weightssave_1/RestoreV2:109*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights*(
_output_shapes
:

save_1/Assign_110Assign=resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/betasave_1/RestoreV2:110*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_111Assign>resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gammasave_1/RestoreV2:111*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_112AssignDresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_meansave_1/RestoreV2:112*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
§
save_1/Assign_113AssignHresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variancesave_1/RestoreV2:113*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_114Assign6resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weightssave_1/RestoreV2:114*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights*(
_output_shapes
:

save_1/Assign_115Assign=resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/betasave_1/RestoreV2:115*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_116Assign>resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gammasave_1/RestoreV2:116*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_117AssignDresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_meansave_1/RestoreV2:117*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:
§
save_1/Assign_118AssignHresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variancesave_1/RestoreV2:118*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_119Assign6resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weightssave_1/RestoreV2:119*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights*(
_output_shapes
:

save_1/Assign_120Assign=resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/betasave_1/RestoreV2:120*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_121Assign>resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gammasave_1/RestoreV2:121*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_122AssignDresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_meansave_1/RestoreV2:122*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:
§
save_1/Assign_123AssignHresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variancesave_1/RestoreV2:123*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_124Assign6resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weightssave_1/RestoreV2:124*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights*(
_output_shapes
:

save_1/Assign_125Assign=resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/betasave_1/RestoreV2:125*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_126Assign>resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gammasave_1/RestoreV2:126*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_127AssignDresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_meansave_1/RestoreV2:127*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
§
save_1/Assign_128AssignHresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variancesave_1/RestoreV2:128*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_129Assign6resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weightssave_1/RestoreV2:129*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights*(
_output_shapes
:

save_1/Assign_130Assign@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/betasave_1/RestoreV2:130*
T0*
validate_shape(*
use_locking(*S
_classI
GEloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_131AssignAresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gammasave_1/RestoreV2:131*
T0*
validate_shape(*
use_locking(*T
_classJ
HFloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma*
_output_shapes	
:
Ľ
save_1/Assign_132AssignGresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_meansave_1/RestoreV2:132*
T0*
validate_shape(*
use_locking(*Z
_classP
NLloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean*
_output_shapes	
:
­
save_1/Assign_133AssignKresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variancesave_1/RestoreV2:133*
T0*
validate_shape(*
use_locking(*^
_classT
RPloc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_134Assign9resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weightssave_1/RestoreV2:134*
T0*
validate_shape(*
use_locking(*L
_classB
@>loc:@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights*(
_output_shapes
:

save_1/Assign_135Assign=resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/betasave_1/RestoreV2:135*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_136Assign>resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gammasave_1/RestoreV2:136*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_137AssignDresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_meansave_1/RestoreV2:137*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:
§
save_1/Assign_138AssignHresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variancesave_1/RestoreV2:138*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_139Assign6resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weightssave_1/RestoreV2:139*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights*(
_output_shapes
:

save_1/Assign_140Assign=resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/betasave_1/RestoreV2:140*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_141Assign>resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gammasave_1/RestoreV2:141*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_142AssignDresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_meansave_1/RestoreV2:142*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:
§
save_1/Assign_143AssignHresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variancesave_1/RestoreV2:143*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_144Assign6resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weightssave_1/RestoreV2:144*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights*(
_output_shapes
:

save_1/Assign_145Assign=resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/betasave_1/RestoreV2:145*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_146Assign>resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gammasave_1/RestoreV2:146*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_147AssignDresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_meansave_1/RestoreV2:147*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
§
save_1/Assign_148AssignHresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variancesave_1/RestoreV2:148*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_149Assign6resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weightssave_1/RestoreV2:149*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights*(
_output_shapes
:

save_1/Assign_150Assign=resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/betasave_1/RestoreV2:150*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_151Assign>resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gammasave_1/RestoreV2:151*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_152AssignDresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_meansave_1/RestoreV2:152*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:
§
save_1/Assign_153AssignHresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variancesave_1/RestoreV2:153*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_154Assign6resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weightssave_1/RestoreV2:154*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights*(
_output_shapes
:

save_1/Assign_155Assign=resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/betasave_1/RestoreV2:155*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_156Assign>resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gammasave_1/RestoreV2:156*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_157AssignDresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_meansave_1/RestoreV2:157*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:
§
save_1/Assign_158AssignHresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variancesave_1/RestoreV2:158*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_159Assign6resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weightssave_1/RestoreV2:159*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights*(
_output_shapes
:

save_1/Assign_160Assign=resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/betasave_1/RestoreV2:160*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_161Assign>resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gammasave_1/RestoreV2:161*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_162AssignDresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_meansave_1/RestoreV2:162*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
§
save_1/Assign_163AssignHresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variancesave_1/RestoreV2:163*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_164Assign6resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weightssave_1/RestoreV2:164*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights*(
_output_shapes
:

save_1/Assign_165Assign=resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/betasave_1/RestoreV2:165*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_166Assign>resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gammasave_1/RestoreV2:166*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_167AssignDresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_meansave_1/RestoreV2:167*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:
§
save_1/Assign_168AssignHresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variancesave_1/RestoreV2:168*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_169Assign6resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weightssave_1/RestoreV2:169*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights*(
_output_shapes
:

save_1/Assign_170Assign=resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/betasave_1/RestoreV2:170*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_171Assign>resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gammasave_1/RestoreV2:171*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_172AssignDresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_meansave_1/RestoreV2:172*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:
§
save_1/Assign_173AssignHresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variancesave_1/RestoreV2:173*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_174Assign6resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weightssave_1/RestoreV2:174*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights*(
_output_shapes
:

save_1/Assign_175Assign=resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/betasave_1/RestoreV2:175*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_176Assign>resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gammasave_1/RestoreV2:176*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_177AssignDresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_meansave_1/RestoreV2:177*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
§
save_1/Assign_178AssignHresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variancesave_1/RestoreV2:178*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_179Assign6resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weightssave_1/RestoreV2:179*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights*(
_output_shapes
:

save_1/Assign_180Assign=resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/betasave_1/RestoreV2:180*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_181Assign>resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gammasave_1/RestoreV2:181*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_182AssignDresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_meansave_1/RestoreV2:182*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:
§
save_1/Assign_183AssignHresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variancesave_1/RestoreV2:183*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_184Assign6resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weightssave_1/RestoreV2:184*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights*(
_output_shapes
:

save_1/Assign_185Assign=resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/betasave_1/RestoreV2:185*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_186Assign>resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gammasave_1/RestoreV2:186*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_187AssignDresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_meansave_1/RestoreV2:187*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:
§
save_1/Assign_188AssignHresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variancesave_1/RestoreV2:188*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_189Assign6resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weightssave_1/RestoreV2:189*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights*(
_output_shapes
:

save_1/Assign_190Assign=resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/betasave_1/RestoreV2:190*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_191Assign>resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gammasave_1/RestoreV2:191*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_192AssignDresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_meansave_1/RestoreV2:192*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
§
save_1/Assign_193AssignHresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variancesave_1/RestoreV2:193*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_194Assign6resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weightssave_1/RestoreV2:194*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights*(
_output_shapes
:

save_1/Assign_195Assign=resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/betasave_1/RestoreV2:195*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_196Assign>resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gammasave_1/RestoreV2:196*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_197AssignDresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_meansave_1/RestoreV2:197*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean*
_output_shapes	
:
§
save_1/Assign_198AssignHresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variancesave_1/RestoreV2:198*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_199Assign6resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weightssave_1/RestoreV2:199*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights*(
_output_shapes
:

save_1/Assign_200Assign=resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/betasave_1/RestoreV2:200*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_201Assign>resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gammasave_1/RestoreV2:201*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_202AssignDresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_meansave_1/RestoreV2:202*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean*
_output_shapes	
:
§
save_1/Assign_203AssignHresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variancesave_1/RestoreV2:203*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_204Assign6resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weightssave_1/RestoreV2:204*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights*(
_output_shapes
:

save_1/Assign_205Assign=resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/betasave_1/RestoreV2:205*
T0*
validate_shape(*
use_locking(*P
_classF
DBloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta*
_output_shapes	
:

save_1/Assign_206Assign>resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gammasave_1/RestoreV2:206*
T0*
validate_shape(*
use_locking(*Q
_classG
ECloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma*
_output_shapes	
:

save_1/Assign_207AssignDresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_meansave_1/RestoreV2:207*
T0*
validate_shape(*
use_locking(*W
_classM
KIloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean*
_output_shapes	
:
§
save_1/Assign_208AssignHresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variancesave_1/RestoreV2:208*
T0*
validate_shape(*
use_locking(*[
_classQ
OMloc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance*
_output_shapes	
:

save_1/Assign_209Assign6resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weightssave_1/RestoreV2:209*
T0*
validate_shape(*
use_locking(*I
_class?
=;loc:@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights*(
_output_shapes
:
Ř
save_1/Assign_210Assign!resnet_v1_50/conv1/BatchNorm/betasave_1/RestoreV2:210*
T0*
validate_shape(*
use_locking(*4
_class*
(&loc:@resnet_v1_50/conv1/BatchNorm/beta*
_output_shapes
:@
Ú
save_1/Assign_211Assign"resnet_v1_50/conv1/BatchNorm/gammasave_1/RestoreV2:211*
T0*
validate_shape(*
use_locking(*5
_class+
)'loc:@resnet_v1_50/conv1/BatchNorm/gamma*
_output_shapes
:@
ć
save_1/Assign_212Assign(resnet_v1_50/conv1/BatchNorm/moving_meansave_1/RestoreV2:212*
T0*
validate_shape(*
use_locking(*;
_class1
/-loc:@resnet_v1_50/conv1/BatchNorm/moving_mean*
_output_shapes
:@
î
save_1/Assign_213Assign,resnet_v1_50/conv1/BatchNorm/moving_variancesave_1/RestoreV2:213*
T0*
validate_shape(*
use_locking(*?
_class5
31loc:@resnet_v1_50/conv1/BatchNorm/moving_variance*
_output_shapes
:@
Ö
save_1/Assign_214Assignresnet_v1_50/conv1/weightssave_1/RestoreV2:214*
T0*
validate_shape(*
use_locking(*-
_class#
!loc:@resnet_v1_50/conv1/weights*&
_output_shapes
:@
Ŕ
save_1/Assign_215Assignvlad/clusterssave_1/RestoreV2:215*
T0*
validate_shape(*
use_locking(* 
_class
loc:@vlad/clusters**
_output_shapes
: d
Ô
save_1/Assign_216Assignvlad/memberships/BatchNorm/betasave_1/RestoreV2:216*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@vlad/memberships/BatchNorm/beta*
_output_shapes
: 
â
save_1/Assign_217Assign&vlad/memberships/BatchNorm/moving_meansave_1/RestoreV2:217*
T0*
validate_shape(*
use_locking(*9
_class/
-+loc:@vlad/memberships/BatchNorm/moving_mean*
_output_shapes
: 
ę
save_1/Assign_218Assign*vlad/memberships/BatchNorm/moving_variancesave_1/RestoreV2:218*
T0*
validate_shape(*
use_locking(*=
_class3
1/loc:@vlad/memberships/BatchNorm/moving_variance*
_output_shapes
: 
Ň
save_1/Assign_219Assignvlad/memberships/weightssave_1/RestoreV2:219*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@vlad/memberships/weights*&
_output_shapes
:d 
Î
save_1/Assign_220Assignvlad/pre_proj/BatchNorm/betasave_1/RestoreV2:220*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@vlad/pre_proj/BatchNorm/beta*
_output_shapes
:d
Ü
save_1/Assign_221Assign#vlad/pre_proj/BatchNorm/moving_meansave_1/RestoreV2:221*
T0*
validate_shape(*
use_locking(*6
_class,
*(loc:@vlad/pre_proj/BatchNorm/moving_mean*
_output_shapes
:d
ä
save_1/Assign_222Assign'vlad/pre_proj/BatchNorm/moving_variancesave_1/RestoreV2:222*
T0*
validate_shape(*
use_locking(*:
_class0
.,loc:@vlad/pre_proj/BatchNorm/moving_variance*
_output_shapes
:d
Í
save_1/Assign_223Assignvlad/pre_proj/weightssave_1/RestoreV2:223*
T0*
validate_shape(*
use_locking(*(
_class
loc:@vlad/pre_proj/weights*'
_output_shapes
:d
Ź"
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_50^save_1/Assign_51^save_1/Assign_52^save_1/Assign_53^save_1/Assign_54^save_1/Assign_55^save_1/Assign_56^save_1/Assign_57^save_1/Assign_58^save_1/Assign_59^save_1/Assign_60^save_1/Assign_61^save_1/Assign_62^save_1/Assign_63^save_1/Assign_64^save_1/Assign_65^save_1/Assign_66^save_1/Assign_67^save_1/Assign_68^save_1/Assign_69^save_1/Assign_70^save_1/Assign_71^save_1/Assign_72^save_1/Assign_73^save_1/Assign_74^save_1/Assign_75^save_1/Assign_76^save_1/Assign_77^save_1/Assign_78^save_1/Assign_79^save_1/Assign_80^save_1/Assign_81^save_1/Assign_82^save_1/Assign_83^save_1/Assign_84^save_1/Assign_85^save_1/Assign_86^save_1/Assign_87^save_1/Assign_88^save_1/Assign_89^save_1/Assign_90^save_1/Assign_91^save_1/Assign_92^save_1/Assign_93^save_1/Assign_94^save_1/Assign_95^save_1/Assign_96^save_1/Assign_97^save_1/Assign_98^save_1/Assign_99^save_1/Assign_100^save_1/Assign_101^save_1/Assign_102^save_1/Assign_103^save_1/Assign_104^save_1/Assign_105^save_1/Assign_106^save_1/Assign_107^save_1/Assign_108^save_1/Assign_109^save_1/Assign_110^save_1/Assign_111^save_1/Assign_112^save_1/Assign_113^save_1/Assign_114^save_1/Assign_115^save_1/Assign_116^save_1/Assign_117^save_1/Assign_118^save_1/Assign_119^save_1/Assign_120^save_1/Assign_121^save_1/Assign_122^save_1/Assign_123^save_1/Assign_124^save_1/Assign_125^save_1/Assign_126^save_1/Assign_127^save_1/Assign_128^save_1/Assign_129^save_1/Assign_130^save_1/Assign_131^save_1/Assign_132^save_1/Assign_133^save_1/Assign_134^save_1/Assign_135^save_1/Assign_136^save_1/Assign_137^save_1/Assign_138^save_1/Assign_139^save_1/Assign_140^save_1/Assign_141^save_1/Assign_142^save_1/Assign_143^save_1/Assign_144^save_1/Assign_145^save_1/Assign_146^save_1/Assign_147^save_1/Assign_148^save_1/Assign_149^save_1/Assign_150^save_1/Assign_151^save_1/Assign_152^save_1/Assign_153^save_1/Assign_154^save_1/Assign_155^save_1/Assign_156^save_1/Assign_157^save_1/Assign_158^save_1/Assign_159^save_1/Assign_160^save_1/Assign_161^save_1/Assign_162^save_1/Assign_163^save_1/Assign_164^save_1/Assign_165^save_1/Assign_166^save_1/Assign_167^save_1/Assign_168^save_1/Assign_169^save_1/Assign_170^save_1/Assign_171^save_1/Assign_172^save_1/Assign_173^save_1/Assign_174^save_1/Assign_175^save_1/Assign_176^save_1/Assign_177^save_1/Assign_178^save_1/Assign_179^save_1/Assign_180^save_1/Assign_181^save_1/Assign_182^save_1/Assign_183^save_1/Assign_184^save_1/Assign_185^save_1/Assign_186^save_1/Assign_187^save_1/Assign_188^save_1/Assign_189^save_1/Assign_190^save_1/Assign_191^save_1/Assign_192^save_1/Assign_193^save_1/Assign_194^save_1/Assign_195^save_1/Assign_196^save_1/Assign_197^save_1/Assign_198^save_1/Assign_199^save_1/Assign_200^save_1/Assign_201^save_1/Assign_202^save_1/Assign_203^save_1/Assign_204^save_1/Assign_205^save_1/Assign_206^save_1/Assign_207^save_1/Assign_208^save_1/Assign_209^save_1/Assign_210^save_1/Assign_211^save_1/Assign_212^save_1/Assign_213^save_1/Assign_214^save_1/Assign_215^save_1/Assign_216^save_1/Assign_217^save_1/Assign_218^save_1/Assign_219^save_1/Assign_220^save_1/Assign_221^save_1/Assign_222^save_1/Assign_223
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"
	variablesű÷

resnet_v1_50/conv1/weights:0!resnet_v1_50/conv1/weights/Assign!resnet_v1_50/conv1/weights/read:029resnet_v1_50/conv1/weights/Initializer/truncated_normal:0
ł
$resnet_v1_50/conv1/BatchNorm/gamma:0)resnet_v1_50/conv1/BatchNorm/gamma/Assign)resnet_v1_50/conv1/BatchNorm/gamma/read:025resnet_v1_50/conv1/BatchNorm/gamma/Initializer/ones:0
°
#resnet_v1_50/conv1/BatchNorm/beta:0(resnet_v1_50/conv1/BatchNorm/beta/Assign(resnet_v1_50/conv1/BatchNorm/beta/read:025resnet_v1_50/conv1/BatchNorm/beta/Initializer/zeros:0
Ě
*resnet_v1_50/conv1/BatchNorm/moving_mean:0/resnet_v1_50/conv1/BatchNorm/moving_mean/Assign/resnet_v1_50/conv1/BatchNorm/moving_mean/read:02<resnet_v1_50/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ű
.resnet_v1_50/conv1/BatchNorm/moving_variance:03resnet_v1_50/conv1/BatchNorm/moving_variance/Assign3resnet_v1_50/conv1/BatchNorm/moving_variance/read:02?resnet_v1_50/conv1/BatchNorm/moving_variance/Initializer/ones:0

;resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights:0@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights/Assign@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights/read:02Xresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal:0
Ż
Cresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma:0Hresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/AssignHresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/read:02Tresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/ones:0
Ź
Bresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta:0Gresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/AssignGresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/read:02Tresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zeros:0
Č
Iresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean:0Nresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/AssignNresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/read:02[resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zeros:0
×
Mresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance:0Rresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/AssignRresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/read:02^resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights:0=resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights:0=resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights:0=resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights:0=resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights:0=resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights:0=resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights:0=resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights:0=resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights:0=resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

;resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights:0@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights/Assign@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights/read:02Xresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal:0
Ż
Cresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma:0Hresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/AssignHresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/read:02Tresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/ones:0
Ź
Bresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta:0Gresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/AssignGresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/read:02Tresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zeros:0
Č
Iresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean:0Nresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/AssignNresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/read:02[resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zeros:0
×
Mresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance:0Rresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/AssignRresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/read:02^resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights:0=resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights:0=resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights:0=resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights:0=resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights:0=resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights:0=resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights:0=resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights:0=resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights:0=resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights:0=resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights:0=resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights:0=resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

;resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights:0@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights/Assign@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights/read:02Xresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal:0
Ż
Cresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma:0Hresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/AssignHresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/read:02Tresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/ones:0
Ź
Bresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta:0Gresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/AssignGresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/read:02Tresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zeros:0
Č
Iresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean:0Nresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/AssignNresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/read:02[resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zeros:0
×
Mresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance:0Rresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/AssignRresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/read:02^resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights:0=resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights:0=resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights:0=resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights:0=resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights:0=resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights:0=resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights:0=resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights:0=resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights:0=resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights:0=resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights:0=resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights:0=resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights:0=resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights:0=resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights:0=resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights:0=resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights:0=resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights:0=resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

vlad/pre_proj/weights:0vlad/pre_proj/weights/Assignvlad/pre_proj/weights/read:022vlad/pre_proj/weights/Initializer/random_uniform:0

vlad/pre_proj/BatchNorm/beta:0#vlad/pre_proj/BatchNorm/beta/Assign#vlad/pre_proj/BatchNorm/beta/read:020vlad/pre_proj/BatchNorm/beta/Initializer/zeros:0
¸
%vlad/pre_proj/BatchNorm/moving_mean:0*vlad/pre_proj/BatchNorm/moving_mean/Assign*vlad/pre_proj/BatchNorm/moving_mean/read:027vlad/pre_proj/BatchNorm/moving_mean/Initializer/zeros:0
Ç
)vlad/pre_proj/BatchNorm/moving_variance:0.vlad/pre_proj/BatchNorm/moving_variance/Assign.vlad/pre_proj/BatchNorm/moving_variance/read:02:vlad/pre_proj/BatchNorm/moving_variance/Initializer/ones:0

vlad/memberships/weights:0vlad/memberships/weights/Assignvlad/memberships/weights/read:025vlad/memberships/weights/Initializer/random_uniform:0
¨
!vlad/memberships/BatchNorm/beta:0&vlad/memberships/BatchNorm/beta/Assign&vlad/memberships/BatchNorm/beta/read:023vlad/memberships/BatchNorm/beta/Initializer/zeros:0
Ä
(vlad/memberships/BatchNorm/moving_mean:0-vlad/memberships/BatchNorm/moving_mean/Assign-vlad/memberships/BatchNorm/moving_mean/read:02:vlad/memberships/BatchNorm/moving_mean/Initializer/zeros:0
Ó
,vlad/memberships/BatchNorm/moving_variance:01vlad/memberships/BatchNorm/moving_variance/Assign1vlad/memberships/BatchNorm/moving_variance/read:02=vlad/memberships/BatchNorm/moving_variance/Initializer/ones:0
i
vlad/clusters:0vlad/clusters/Assignvlad/clusters/read:02*vlad/clusters/Initializer/random_uniform:0"
model_variablesű÷

resnet_v1_50/conv1/weights:0!resnet_v1_50/conv1/weights/Assign!resnet_v1_50/conv1/weights/read:029resnet_v1_50/conv1/weights/Initializer/truncated_normal:0
ł
$resnet_v1_50/conv1/BatchNorm/gamma:0)resnet_v1_50/conv1/BatchNorm/gamma/Assign)resnet_v1_50/conv1/BatchNorm/gamma/read:025resnet_v1_50/conv1/BatchNorm/gamma/Initializer/ones:0
°
#resnet_v1_50/conv1/BatchNorm/beta:0(resnet_v1_50/conv1/BatchNorm/beta/Assign(resnet_v1_50/conv1/BatchNorm/beta/read:025resnet_v1_50/conv1/BatchNorm/beta/Initializer/zeros:0
Ě
*resnet_v1_50/conv1/BatchNorm/moving_mean:0/resnet_v1_50/conv1/BatchNorm/moving_mean/Assign/resnet_v1_50/conv1/BatchNorm/moving_mean/read:02<resnet_v1_50/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ű
.resnet_v1_50/conv1/BatchNorm/moving_variance:03resnet_v1_50/conv1/BatchNorm/moving_variance/Assign3resnet_v1_50/conv1/BatchNorm/moving_variance/read:02?resnet_v1_50/conv1/BatchNorm/moving_variance/Initializer/ones:0

;resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights:0@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights/Assign@resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights/read:02Xresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal:0
Ż
Cresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma:0Hresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/AssignHresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/read:02Tresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/ones:0
Ź
Bresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta:0Gresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/AssignGresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/read:02Tresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zeros:0
Č
Iresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean:0Nresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/AssignNresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/read:02[resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zeros:0
×
Mresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance:0Rresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/AssignRresnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/read:02^resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights:0=resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights:0=resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights:0=resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights:0=resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights:0=resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights:0=resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights:0=resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights:0=resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights:0=resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

;resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights:0@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights/Assign@resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights/read:02Xresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal:0
Ż
Cresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma:0Hresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/AssignHresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/read:02Tresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/ones:0
Ź
Bresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta:0Gresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/AssignGresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/read:02Tresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zeros:0
Č
Iresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean:0Nresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/AssignNresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/read:02[resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zeros:0
×
Mresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance:0Rresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/AssignRresnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/read:02^resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights:0=resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights:0=resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights:0=resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights:0=resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights:0=resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights:0=resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights:0=resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights:0=resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights:0=resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights:0=resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights:0=resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights:0=resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

;resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights:0@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights/Assign@resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights/read:02Xresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/weights/Initializer/truncated_normal:0
Ż
Cresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma:0Hresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/AssignHresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/read:02Tresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/gamma/Initializer/ones:0
Ź
Bresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta:0Gresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/AssignGresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/read:02Tresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/beta/Initializer/zeros:0
Č
Iresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean:0Nresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/AssignNresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/read:02[resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_mean/Initializer/zeros:0
×
Mresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance:0Rresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/AssignRresnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/read:02^resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights:0=resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights:0=resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights:0=resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights:0=resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights:0=resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights:0=resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights:0=resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights:0=resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights:0=resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights:0=resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights:0=resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights:0=resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights:0=resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights:0=resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights:0=resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights:0=resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights/Assign=resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights/read:02Uresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta:0Dresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights:0=resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights/Assign=resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights/read:02Uresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta:0Dresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/BatchNorm/moving_variance/Initializer/ones:0

8resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights:0=resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights/Assign=resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights/read:02Uresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/weights/Initializer/truncated_normal:0
Ł
@resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma:0Eresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma/AssignEresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma/read:02Qresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/gamma/Initializer/ones:0
 
?resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta:0Dresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta/AssignDresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta/read:02Qresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/beta/Initializer/zeros:0
ź
Fresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean:0Kresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean/AssignKresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean/read:02Xresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_mean/Initializer/zeros:0
Ë
Jresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance:0Oresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance/AssignOresnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance/read:02[resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/moving_variance/Initializer/ones:0

vlad/pre_proj/weights:0vlad/pre_proj/weights/Assignvlad/pre_proj/weights/read:022vlad/pre_proj/weights/Initializer/random_uniform:0

vlad/pre_proj/BatchNorm/beta:0#vlad/pre_proj/BatchNorm/beta/Assign#vlad/pre_proj/BatchNorm/beta/read:020vlad/pre_proj/BatchNorm/beta/Initializer/zeros:0
¸
%vlad/pre_proj/BatchNorm/moving_mean:0*vlad/pre_proj/BatchNorm/moving_mean/Assign*vlad/pre_proj/BatchNorm/moving_mean/read:027vlad/pre_proj/BatchNorm/moving_mean/Initializer/zeros:0
Ç
)vlad/pre_proj/BatchNorm/moving_variance:0.vlad/pre_proj/BatchNorm/moving_variance/Assign.vlad/pre_proj/BatchNorm/moving_variance/read:02:vlad/pre_proj/BatchNorm/moving_variance/Initializer/ones:0

vlad/memberships/weights:0vlad/memberships/weights/Assignvlad/memberships/weights/read:025vlad/memberships/weights/Initializer/random_uniform:0
¨
!vlad/memberships/BatchNorm/beta:0&vlad/memberships/BatchNorm/beta/Assign&vlad/memberships/BatchNorm/beta/read:023vlad/memberships/BatchNorm/beta/Initializer/zeros:0
Ä
(vlad/memberships/BatchNorm/moving_mean:0-vlad/memberships/BatchNorm/moving_mean/Assign-vlad/memberships/BatchNorm/moving_mean/read:02:vlad/memberships/BatchNorm/moving_mean/Initializer/zeros:0
Ó
,vlad/memberships/BatchNorm/moving_variance:01vlad/memberships/BatchNorm/moving_variance/Assign1vlad/memberships/BatchNorm/moving_variance/read:02=vlad/memberships/BatchNorm/moving_variance/Initializer/ones:0
i
vlad/clusters:0vlad/clusters/Assignvlad/clusters/read:02*vlad/clusters/Initializer/random_uniform:0"ý
regularization_lossesă
ŕ
;pred/resnet_v1_50/conv1/kernel/Regularizer/l2_regularizer:0
Zpred/resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer:0
Zpred/resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer:0
Zpred/resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/kernel/Regularizer/l2_regularizer:0
Wpred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/kernel/Regularizer/l2_regularizer:0"Ć
pred/resnet_v1_50/_end_points¤
Ą
pred/resnet_v1_50/conv1/Relu:0
Qpred/resnet_v1_50/block1/unit_1/bottleneck_v1/shortcut/BatchNorm/FusedBatchNorm:0
:pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv1/Relu:0
:pred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv2/Relu:0
Npred/resnet_v1_50/block1/unit_1/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm:0
4pred/resnet_v1_50/block1/unit_1/bottleneck_v1/Relu:0
:pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv1/Relu:0
:pred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv2/Relu:0
Npred/resnet_v1_50/block1/unit_2/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm:0
4pred/resnet_v1_50/block1/unit_2/bottleneck_v1/Relu:0
:pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv1/Relu:0
:pred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv2/Relu:0
Npred/resnet_v1_50/block1/unit_3/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm:0
4pred/resnet_v1_50/block1/unit_3/bottleneck_v1/Relu:0
4pred/resnet_v1_50/block1/unit_3/bottleneck_v1/Relu:0
Qpred/resnet_v1_50/block2/unit_1/bottleneck_v1/shortcut/BatchNorm/FusedBatchNorm:0
:pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv1/Relu:0
:pred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv2/Relu:0
Npred/resnet_v1_50/block2/unit_1/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm:0
4pred/resnet_v1_50/block2/unit_1/bottleneck_v1/Relu:0
:pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv1/Relu:0
:pred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv2/Relu:0
Npred/resnet_v1_50/block2/unit_2/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm:0
4pred/resnet_v1_50/block2/unit_2/bottleneck_v1/Relu:0
:pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv1/Relu:0
:pred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv2/Relu:0
Npred/resnet_v1_50/block2/unit_3/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm:0
4pred/resnet_v1_50/block2/unit_3/bottleneck_v1/Relu:0
:pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv1/Relu:0
:pred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv2/Relu:0
Npred/resnet_v1_50/block2/unit_4/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm:0
4pred/resnet_v1_50/block2/unit_4/bottleneck_v1/Relu:0
4pred/resnet_v1_50/block2/unit_4/bottleneck_v1/Relu:0
Qpred/resnet_v1_50/block3/unit_1/bottleneck_v1/shortcut/BatchNorm/FusedBatchNorm:0
:pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv1/Relu:0
:pred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv2/Relu:0
Npred/resnet_v1_50/block3/unit_1/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm:0
4pred/resnet_v1_50/block3/unit_1/bottleneck_v1/Relu:0
:pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv1/Relu:0
:pred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv2/Relu:0
Npred/resnet_v1_50/block3/unit_2/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm:0
4pred/resnet_v1_50/block3/unit_2/bottleneck_v1/Relu:0
:pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv1/Relu:0
:pred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv2/Relu:0
Npred/resnet_v1_50/block3/unit_3/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm:0
4pred/resnet_v1_50/block3/unit_3/bottleneck_v1/Relu:0
:pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv1/Relu:0
:pred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv2/Relu:0
Npred/resnet_v1_50/block3/unit_4/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm:0
4pred/resnet_v1_50/block3/unit_4/bottleneck_v1/Relu:0
:pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv1/Relu:0
:pred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv2/Relu:0
Npred/resnet_v1_50/block3/unit_5/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm:0
4pred/resnet_v1_50/block3/unit_5/bottleneck_v1/Relu:0
:pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv1/Relu:0
:pred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv2/Relu:0
Npred/resnet_v1_50/block3/unit_6/bottleneck_v1/conv3/BatchNorm/FusedBatchNorm:0
4pred/resnet_v1_50/block3/unit_6/bottleneck_v1/Relu:0
4pred/resnet_v1_50/block3/unit_6/bottleneck_v1/Relu:0*§
serving_default
A
image8
image:0+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙2

descriptor$
descriptor:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict