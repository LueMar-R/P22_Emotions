??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??
?
conv2d_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_32/kernel
}
$conv2d_32/kernel/Read/ReadVariableOpReadVariableOpconv2d_32/kernel*&
_output_shapes
:@*
dtype0
t
conv2d_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_32/bias
m
"conv2d_32/bias/Read/ReadVariableOpReadVariableOpconv2d_32/bias*
_output_shapes
:@*
dtype0
?
conv2d_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_33/kernel
}
$conv2d_33/kernel/Read/ReadVariableOpReadVariableOpconv2d_33/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_33/bias
m
"conv2d_33/bias/Read/ReadVariableOpReadVariableOpconv2d_33/bias*
_output_shapes
:@*
dtype0
?
conv2d_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*!
shared_nameconv2d_34/kernel
~
$conv2d_34/kernel/Read/ReadVariableOpReadVariableOpconv2d_34/kernel*'
_output_shapes
:@?*
dtype0
u
conv2d_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_34/bias
n
"conv2d_34/bias/Read/ReadVariableOpReadVariableOpconv2d_34/bias*
_output_shapes	
:?*
dtype0
{
dense_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?$@* 
shared_namedense_24/kernel
t
#dense_24/kernel/Read/ReadVariableOpReadVariableOpdense_24/kernel*
_output_shapes
:	?$@*
dtype0
r
dense_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_24/bias
k
!dense_24/bias/Read/ReadVariableOpReadVariableOpdense_24/bias*
_output_shapes
:@*
dtype0
z
dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ * 
shared_namedense_25/kernel
s
#dense_25/kernel/Read/ReadVariableOpReadVariableOpdense_25/kernel*
_output_shapes

:@ *
dtype0
r
dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_25/bias
k
!dense_25/bias/Read/ReadVariableOpReadVariableOpdense_25/bias*
_output_shapes
: *
dtype0
z
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_26/kernel
s
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel*
_output_shapes

: *
dtype0
r
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_26/bias
k
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
_output_shapes
:*
dtype0
j
Adamax/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameAdamax/iter
c
Adamax/iter/Read/ReadVariableOpReadVariableOpAdamax/iter*
_output_shapes
: *
dtype0	
n
Adamax/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/beta_1
g
!Adamax/beta_1/Read/ReadVariableOpReadVariableOpAdamax/beta_1*
_output_shapes
: *
dtype0
n
Adamax/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/beta_2
g
!Adamax/beta_2/Read/ReadVariableOpReadVariableOpAdamax/beta_2*
_output_shapes
: *
dtype0
l
Adamax/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/decay
e
 Adamax/decay/Read/ReadVariableOpReadVariableOpAdamax/decay*
_output_shapes
: *
dtype0
|
Adamax/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdamax/learning_rate
u
(Adamax/learning_rate/Read/ReadVariableOpReadVariableOpAdamax/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adamax/conv2d_32/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdamax/conv2d_32/kernel/m
?
-Adamax/conv2d_32/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_32/kernel/m*&
_output_shapes
:@*
dtype0
?
Adamax/conv2d_32/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdamax/conv2d_32/bias/m

+Adamax/conv2d_32/bias/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_32/bias/m*
_output_shapes
:@*
dtype0
?
Adamax/conv2d_33/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@**
shared_nameAdamax/conv2d_33/kernel/m
?
-Adamax/conv2d_33/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_33/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adamax/conv2d_33/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdamax/conv2d_33/bias/m

+Adamax/conv2d_33/bias/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_33/bias/m*
_output_shapes
:@*
dtype0
?
Adamax/conv2d_34/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?**
shared_nameAdamax/conv2d_34/kernel/m
?
-Adamax/conv2d_34/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_34/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adamax/conv2d_34/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameAdamax/conv2d_34/bias/m
?
+Adamax/conv2d_34/bias/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_34/bias/m*
_output_shapes	
:?*
dtype0
?
Adamax/dense_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?$@*)
shared_nameAdamax/dense_24/kernel/m
?
,Adamax/dense_24/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_24/kernel/m*
_output_shapes
:	?$@*
dtype0
?
Adamax/dense_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdamax/dense_24/bias/m
}
*Adamax/dense_24/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_24/bias/m*
_output_shapes
:@*
dtype0
?
Adamax/dense_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *)
shared_nameAdamax/dense_25/kernel/m
?
,Adamax/dense_25/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_25/kernel/m*
_output_shapes

:@ *
dtype0
?
Adamax/dense_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdamax/dense_25/bias/m
}
*Adamax/dense_25/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_25/bias/m*
_output_shapes
: *
dtype0
?
Adamax/dense_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *)
shared_nameAdamax/dense_26/kernel/m
?
,Adamax/dense_26/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_26/kernel/m*
_output_shapes

: *
dtype0
?
Adamax/dense_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdamax/dense_26/bias/m
}
*Adamax/dense_26/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_26/bias/m*
_output_shapes
:*
dtype0
?
Adamax/conv2d_32/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdamax/conv2d_32/kernel/v
?
-Adamax/conv2d_32/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_32/kernel/v*&
_output_shapes
:@*
dtype0
?
Adamax/conv2d_32/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdamax/conv2d_32/bias/v

+Adamax/conv2d_32/bias/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_32/bias/v*
_output_shapes
:@*
dtype0
?
Adamax/conv2d_33/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@**
shared_nameAdamax/conv2d_33/kernel/v
?
-Adamax/conv2d_33/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_33/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adamax/conv2d_33/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdamax/conv2d_33/bias/v

+Adamax/conv2d_33/bias/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_33/bias/v*
_output_shapes
:@*
dtype0
?
Adamax/conv2d_34/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?**
shared_nameAdamax/conv2d_34/kernel/v
?
-Adamax/conv2d_34/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_34/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adamax/conv2d_34/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameAdamax/conv2d_34/bias/v
?
+Adamax/conv2d_34/bias/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_34/bias/v*
_output_shapes	
:?*
dtype0
?
Adamax/dense_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?$@*)
shared_nameAdamax/dense_24/kernel/v
?
,Adamax/dense_24/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_24/kernel/v*
_output_shapes
:	?$@*
dtype0
?
Adamax/dense_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdamax/dense_24/bias/v
}
*Adamax/dense_24/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_24/bias/v*
_output_shapes
:@*
dtype0
?
Adamax/dense_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *)
shared_nameAdamax/dense_25/kernel/v
?
,Adamax/dense_25/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_25/kernel/v*
_output_shapes

:@ *
dtype0
?
Adamax/dense_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdamax/dense_25/bias/v
}
*Adamax/dense_25/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_25/bias/v*
_output_shapes
: *
dtype0
?
Adamax/dense_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *)
shared_nameAdamax/dense_26/kernel/v
?
,Adamax/dense_26/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_26/kernel/v*
_output_shapes

: *
dtype0
?
Adamax/dense_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdamax/dense_26/bias/v
}
*Adamax/dense_26/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_26/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?Z
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?Z
value?ZB?Z B?Z
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
layer_with_weights-4
layer-12
layer-13
layer_with_weights-5
layer-14
	optimizer

signatures
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
?

kernel
bias
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
w
#_self_saveable_object_factories
	variables
 regularization_losses
!trainable_variables
"	keras_api
w
##_self_saveable_object_factories
$	variables
%regularization_losses
&trainable_variables
'	keras_api
?

(kernel
)bias
#*_self_saveable_object_factories
+	variables
,regularization_losses
-trainable_variables
.	keras_api
w
#/_self_saveable_object_factories
0	variables
1regularization_losses
2trainable_variables
3	keras_api
w
#4_self_saveable_object_factories
5	variables
6regularization_losses
7trainable_variables
8	keras_api
?

9kernel
:bias
#;_self_saveable_object_factories
<	variables
=regularization_losses
>trainable_variables
?	keras_api
w
#@_self_saveable_object_factories
A	variables
Bregularization_losses
Ctrainable_variables
D	keras_api
w
#E_self_saveable_object_factories
F	variables
Gregularization_losses
Htrainable_variables
I	keras_api
w
#J_self_saveable_object_factories
K	variables
Lregularization_losses
Mtrainable_variables
N	keras_api
?

Okernel
Pbias
#Q_self_saveable_object_factories
R	variables
Sregularization_losses
Ttrainable_variables
U	keras_api
w
#V_self_saveable_object_factories
W	variables
Xregularization_losses
Ytrainable_variables
Z	keras_api
?

[kernel
\bias
#]_self_saveable_object_factories
^	variables
_regularization_losses
`trainable_variables
a	keras_api
w
#b_self_saveable_object_factories
c	variables
dregularization_losses
etrainable_variables
f	keras_api
?

gkernel
hbias
#i_self_saveable_object_factories
j	variables
kregularization_losses
ltrainable_variables
m	keras_api
?
niter

obeta_1

pbeta_2
	qdecay
rlearning_ratem?m?(m?)m?9m?:m?Om?Pm?[m?\m?gm?hm?v?v?(v?)v?9v?:v?Ov?Pv?[v?\v?gv?hv?
 
 
V
0
1
(2
)3
94
:5
O6
P7
[8
\9
g10
h11
 
V
0
1
(2
)3
94
:5
O6
P7
[8
\9
g10
h11
?
smetrics
tlayer_metrics
ulayer_regularization_losses
	variables
regularization_losses
trainable_variables

vlayers
wnon_trainable_variables
\Z
VARIABLE_VALUEconv2d_32/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_32/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
 

0
1
?
xmetrics
ylayer_metrics
zlayer_regularization_losses
	variables
regularization_losses
trainable_variables

{layers
|non_trainable_variables
 
 
 
 
?
}metrics
~layer_metrics
layer_regularization_losses
	variables
 regularization_losses
!trainable_variables
?layers
?non_trainable_variables
 
 
 
 
?
?metrics
?layer_metrics
 ?layer_regularization_losses
$	variables
%regularization_losses
&trainable_variables
?layers
?non_trainable_variables
\Z
VARIABLE_VALUEconv2d_33/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_33/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

(0
)1
 

(0
)1
?
?metrics
?layer_metrics
 ?layer_regularization_losses
+	variables
,regularization_losses
-trainable_variables
?layers
?non_trainable_variables
 
 
 
 
?
?metrics
?layer_metrics
 ?layer_regularization_losses
0	variables
1regularization_losses
2trainable_variables
?layers
?non_trainable_variables
 
 
 
 
?
?metrics
?layer_metrics
 ?layer_regularization_losses
5	variables
6regularization_losses
7trainable_variables
?layers
?non_trainable_variables
\Z
VARIABLE_VALUEconv2d_34/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_34/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

90
:1
 

90
:1
?
?metrics
?layer_metrics
 ?layer_regularization_losses
<	variables
=regularization_losses
>trainable_variables
?layers
?non_trainable_variables
 
 
 
 
?
?metrics
?layer_metrics
 ?layer_regularization_losses
A	variables
Bregularization_losses
Ctrainable_variables
?layers
?non_trainable_variables
 
 
 
 
?
?metrics
?layer_metrics
 ?layer_regularization_losses
F	variables
Gregularization_losses
Htrainable_variables
?layers
?non_trainable_variables
 
 
 
 
?
?metrics
?layer_metrics
 ?layer_regularization_losses
K	variables
Lregularization_losses
Mtrainable_variables
?layers
?non_trainable_variables
[Y
VARIABLE_VALUEdense_24/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_24/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

O0
P1
 

O0
P1
?
?metrics
?layer_metrics
 ?layer_regularization_losses
R	variables
Sregularization_losses
Ttrainable_variables
?layers
?non_trainable_variables
 
 
 
 
?
?metrics
?layer_metrics
 ?layer_regularization_losses
W	variables
Xregularization_losses
Ytrainable_variables
?layers
?non_trainable_variables
[Y
VARIABLE_VALUEdense_25/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_25/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

[0
\1
 

[0
\1
?
?metrics
?layer_metrics
 ?layer_regularization_losses
^	variables
_regularization_losses
`trainable_variables
?layers
?non_trainable_variables
 
 
 
 
?
?metrics
?layer_metrics
 ?layer_regularization_losses
c	variables
dregularization_losses
etrainable_variables
?layers
?non_trainable_variables
[Y
VARIABLE_VALUEdense_26/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_26/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

g0
h1
 

g0
h1
?
?metrics
?layer_metrics
 ?layer_regularization_losses
j	variables
kregularization_losses
ltrainable_variables
?layers
?non_trainable_variables
JH
VARIABLE_VALUEAdamax/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEAdamax/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEAdamax/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdamax/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEAdamax/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 
 
n
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
?
VARIABLE_VALUEAdamax/conv2d_32/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_32/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/conv2d_33/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_33/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/conv2d_34/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_34/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdamax/dense_24/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdamax/dense_24/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdamax/dense_25/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdamax/dense_25/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdamax/dense_26/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdamax/dense_26/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/conv2d_32/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_32/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/conv2d_33/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_33/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/conv2d_34/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_34/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdamax/dense_24/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdamax/dense_24/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdamax/dense_25/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdamax/dense_25/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdamax/dense_26/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdamax/dense_26/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv2d_32_inputPlaceholder*/
_output_shapes
:?????????00*
dtype0*$
shape:?????????00
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_32_inputconv2d_32/kernelconv2d_32/biasconv2d_33/kernelconv2d_33/biasconv2d_34/kernelconv2d_34/biasdense_24/kerneldense_24/biasdense_25/kerneldense_25/biasdense_26/kerneldense_26/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_1203136
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_32/kernel/Read/ReadVariableOp"conv2d_32/bias/Read/ReadVariableOp$conv2d_33/kernel/Read/ReadVariableOp"conv2d_33/bias/Read/ReadVariableOp$conv2d_34/kernel/Read/ReadVariableOp"conv2d_34/bias/Read/ReadVariableOp#dense_24/kernel/Read/ReadVariableOp!dense_24/bias/Read/ReadVariableOp#dense_25/kernel/Read/ReadVariableOp!dense_25/bias/Read/ReadVariableOp#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOpAdamax/iter/Read/ReadVariableOp!Adamax/beta_1/Read/ReadVariableOp!Adamax/beta_2/Read/ReadVariableOp Adamax/decay/Read/ReadVariableOp(Adamax/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp-Adamax/conv2d_32/kernel/m/Read/ReadVariableOp+Adamax/conv2d_32/bias/m/Read/ReadVariableOp-Adamax/conv2d_33/kernel/m/Read/ReadVariableOp+Adamax/conv2d_33/bias/m/Read/ReadVariableOp-Adamax/conv2d_34/kernel/m/Read/ReadVariableOp+Adamax/conv2d_34/bias/m/Read/ReadVariableOp,Adamax/dense_24/kernel/m/Read/ReadVariableOp*Adamax/dense_24/bias/m/Read/ReadVariableOp,Adamax/dense_25/kernel/m/Read/ReadVariableOp*Adamax/dense_25/bias/m/Read/ReadVariableOp,Adamax/dense_26/kernel/m/Read/ReadVariableOp*Adamax/dense_26/bias/m/Read/ReadVariableOp-Adamax/conv2d_32/kernel/v/Read/ReadVariableOp+Adamax/conv2d_32/bias/v/Read/ReadVariableOp-Adamax/conv2d_33/kernel/v/Read/ReadVariableOp+Adamax/conv2d_33/bias/v/Read/ReadVariableOp-Adamax/conv2d_34/kernel/v/Read/ReadVariableOp+Adamax/conv2d_34/bias/v/Read/ReadVariableOp,Adamax/dense_24/kernel/v/Read/ReadVariableOp*Adamax/dense_24/bias/v/Read/ReadVariableOp,Adamax/dense_25/kernel/v/Read/ReadVariableOp*Adamax/dense_25/bias/v/Read/ReadVariableOp,Adamax/dense_26/kernel/v/Read/ReadVariableOp*Adamax/dense_26/bias/v/Read/ReadVariableOpConst*:
Tin3
12/	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__traced_save_1203765
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_32/kernelconv2d_32/biasconv2d_33/kernelconv2d_33/biasconv2d_34/kernelconv2d_34/biasdense_24/kerneldense_24/biasdense_25/kerneldense_25/biasdense_26/kerneldense_26/biasAdamax/iterAdamax/beta_1Adamax/beta_2Adamax/decayAdamax/learning_ratetotalcounttotal_1count_1Adamax/conv2d_32/kernel/mAdamax/conv2d_32/bias/mAdamax/conv2d_33/kernel/mAdamax/conv2d_33/bias/mAdamax/conv2d_34/kernel/mAdamax/conv2d_34/bias/mAdamax/dense_24/kernel/mAdamax/dense_24/bias/mAdamax/dense_25/kernel/mAdamax/dense_25/bias/mAdamax/dense_26/kernel/mAdamax/dense_26/bias/mAdamax/conv2d_32/kernel/vAdamax/conv2d_32/bias/vAdamax/conv2d_33/kernel/vAdamax/conv2d_33/bias/vAdamax/conv2d_34/kernel/vAdamax/conv2d_34/bias/vAdamax/dense_24/kernel/vAdamax/dense_24/bias/vAdamax/dense_25/kernel/vAdamax/dense_25/bias/vAdamax/dense_26/kernel/vAdamax/dense_26/bias/v*9
Tin2
02.*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference__traced_restore_1203910Ɨ

?
b
F__inference_flatten_8_layer_call_and_return_conditional_losses_1202759

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????$2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????$2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
.__inference_sequential_8_layer_call_fn_1203341

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_8_layer_call_and_return_conditional_losses_12030702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????00::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?	
?
.__inference_sequential_8_layer_call_fn_1203025
conv2d_32_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_32_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_8_layer_call_and_return_conditional_losses_12029982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????00::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????00
)
_user_specified_nameconv2d_32_input
?	
?
.__inference_sequential_8_layer_call_fn_1203312

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_8_layer_call_and_return_conditional_losses_12029982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????00::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?E
?
I__inference_sequential_8_layer_call_and_return_conditional_losses_1202909
conv2d_32_input
conv2d_32_1202601
conv2d_32_1202603
conv2d_33_1202659
conv2d_33_1202661
conv2d_34_1202717
conv2d_34_1202719
dense_24_1202789
dense_24_1202791
dense_25_1202846
dense_25_1202848
dense_26_1202903
dense_26_1202905
identity??!conv2d_32/StatefulPartitionedCall?!conv2d_33/StatefulPartitionedCall?!conv2d_34/StatefulPartitionedCall? dense_24/StatefulPartitionedCall? dense_25/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?"dropout_33/StatefulPartitionedCall?"dropout_34/StatefulPartitionedCall?"dropout_35/StatefulPartitionedCall?"dropout_36/StatefulPartitionedCall?"dropout_37/StatefulPartitionedCall?
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCallconv2d_32_inputconv2d_32_1202601conv2d_32_1202603*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_32_layer_call_and_return_conditional_losses_12025902#
!conv2d_32/StatefulPartitionedCall?
 max_pooling2d_26/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_12025452"
 max_pooling2d_26/PartitionedCall?
"dropout_33/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_33_layer_call_and_return_conditional_losses_12026192$
"dropout_33/StatefulPartitionedCall?
!conv2d_33/StatefulPartitionedCallStatefulPartitionedCall+dropout_33/StatefulPartitionedCall:output:0conv2d_33_1202659conv2d_33_1202661*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_33_layer_call_and_return_conditional_losses_12026482#
!conv2d_33/StatefulPartitionedCall?
 max_pooling2d_27/PartitionedCallPartitionedCall*conv2d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_12025572"
 max_pooling2d_27/PartitionedCall?
"dropout_34/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_27/PartitionedCall:output:0#^dropout_33/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_34_layer_call_and_return_conditional_losses_12026772$
"dropout_34/StatefulPartitionedCall?
!conv2d_34/StatefulPartitionedCallStatefulPartitionedCall+dropout_34/StatefulPartitionedCall:output:0conv2d_34_1202717conv2d_34_1202719*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_34_layer_call_and_return_conditional_losses_12027062#
!conv2d_34/StatefulPartitionedCall?
 max_pooling2d_28/PartitionedCallPartitionedCall*conv2d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_12025692"
 max_pooling2d_28/PartitionedCall?
"dropout_35/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_28/PartitionedCall:output:0#^dropout_34/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_35_layer_call_and_return_conditional_losses_12027352$
"dropout_35/StatefulPartitionedCall?
flatten_8/PartitionedCallPartitionedCall+dropout_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_8_layer_call_and_return_conditional_losses_12027592
flatten_8/PartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_24_1202789dense_24_1202791*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_12027782"
 dense_24/StatefulPartitionedCall?
"dropout_36/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0#^dropout_35/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_36_layer_call_and_return_conditional_losses_12028062$
"dropout_36/StatefulPartitionedCall?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall+dropout_36/StatefulPartitionedCall:output:0dense_25_1202846dense_25_1202848*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_25_layer_call_and_return_conditional_losses_12028352"
 dense_25/StatefulPartitionedCall?
"dropout_37/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0#^dropout_36/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_37_layer_call_and_return_conditional_losses_12028632$
"dropout_37/StatefulPartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall+dropout_37/StatefulPartitionedCall:output:0dense_26_1202903dense_26_1202905*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_12028922"
 dense_26/StatefulPartitionedCall?
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0"^conv2d_32/StatefulPartitionedCall"^conv2d_33/StatefulPartitionedCall"^conv2d_34/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall#^dropout_33/StatefulPartitionedCall#^dropout_34/StatefulPartitionedCall#^dropout_35/StatefulPartitionedCall#^dropout_36/StatefulPartitionedCall#^dropout_37/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????00::::::::::::2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2F
!conv2d_33/StatefulPartitionedCall!conv2d_33/StatefulPartitionedCall2F
!conv2d_34/StatefulPartitionedCall!conv2d_34/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2H
"dropout_33/StatefulPartitionedCall"dropout_33/StatefulPartitionedCall2H
"dropout_34/StatefulPartitionedCall"dropout_34/StatefulPartitionedCall2H
"dropout_35/StatefulPartitionedCall"dropout_35/StatefulPartitionedCall2H
"dropout_36/StatefulPartitionedCall"dropout_36/StatefulPartitionedCall2H
"dropout_37/StatefulPartitionedCall"dropout_37/StatefulPartitionedCall:` \
/
_output_shapes
:?????????00
)
_user_specified_nameconv2d_32_input
?
f
G__inference_dropout_33_layer_call_and_return_conditional_losses_1203373

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
f
G__inference_dropout_34_layer_call_and_return_conditional_losses_1203420

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
E__inference_dense_26_layer_call_and_return_conditional_losses_1203598

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_28_layer_call_fn_1202575

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_12025692
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
.__inference_sequential_8_layer_call_fn_1203097
conv2d_32_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_32_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_8_layer_call_and_return_conditional_losses_12030702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????00::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????00
)
_user_specified_nameconv2d_32_input
?
e
,__inference_dropout_37_layer_call_fn_1203582

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_37_layer_call_and_return_conditional_losses_12028632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*&
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
E__inference_dense_25_layer_call_and_return_conditional_losses_1202835

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
e
G__inference_dropout_35_layer_call_and_return_conditional_losses_1203472

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
F__inference_conv2d_33_layer_call_and_return_conditional_losses_1202648

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
e
G__inference_dropout_36_layer_call_and_return_conditional_losses_1203530

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?^
?
 __inference__traced_save_1203765
file_prefix/
+savev2_conv2d_32_kernel_read_readvariableop-
)savev2_conv2d_32_bias_read_readvariableop/
+savev2_conv2d_33_kernel_read_readvariableop-
)savev2_conv2d_33_bias_read_readvariableop/
+savev2_conv2d_34_kernel_read_readvariableop-
)savev2_conv2d_34_bias_read_readvariableop.
*savev2_dense_24_kernel_read_readvariableop,
(savev2_dense_24_bias_read_readvariableop.
*savev2_dense_25_kernel_read_readvariableop,
(savev2_dense_25_bias_read_readvariableop.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop*
&savev2_adamax_iter_read_readvariableop	,
(savev2_adamax_beta_1_read_readvariableop,
(savev2_adamax_beta_2_read_readvariableop+
'savev2_adamax_decay_read_readvariableop3
/savev2_adamax_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop8
4savev2_adamax_conv2d_32_kernel_m_read_readvariableop6
2savev2_adamax_conv2d_32_bias_m_read_readvariableop8
4savev2_adamax_conv2d_33_kernel_m_read_readvariableop6
2savev2_adamax_conv2d_33_bias_m_read_readvariableop8
4savev2_adamax_conv2d_34_kernel_m_read_readvariableop6
2savev2_adamax_conv2d_34_bias_m_read_readvariableop7
3savev2_adamax_dense_24_kernel_m_read_readvariableop5
1savev2_adamax_dense_24_bias_m_read_readvariableop7
3savev2_adamax_dense_25_kernel_m_read_readvariableop5
1savev2_adamax_dense_25_bias_m_read_readvariableop7
3savev2_adamax_dense_26_kernel_m_read_readvariableop5
1savev2_adamax_dense_26_bias_m_read_readvariableop8
4savev2_adamax_conv2d_32_kernel_v_read_readvariableop6
2savev2_adamax_conv2d_32_bias_v_read_readvariableop8
4savev2_adamax_conv2d_33_kernel_v_read_readvariableop6
2savev2_adamax_conv2d_33_bias_v_read_readvariableop8
4savev2_adamax_conv2d_34_kernel_v_read_readvariableop6
2savev2_adamax_conv2d_34_bias_v_read_readvariableop7
3savev2_adamax_dense_24_kernel_v_read_readvariableop5
1savev2_adamax_dense_24_bias_v_read_readvariableop7
3savev2_adamax_dense_25_kernel_v_read_readvariableop5
1savev2_adamax_dense_25_bias_v_read_readvariableop7
3savev2_adamax_dense_26_kernel_v_read_readvariableop5
1savev2_adamax_dense_26_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*?
value?B?.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_32_kernel_read_readvariableop)savev2_conv2d_32_bias_read_readvariableop+savev2_conv2d_33_kernel_read_readvariableop)savev2_conv2d_33_bias_read_readvariableop+savev2_conv2d_34_kernel_read_readvariableop)savev2_conv2d_34_bias_read_readvariableop*savev2_dense_24_kernel_read_readvariableop(savev2_dense_24_bias_read_readvariableop*savev2_dense_25_kernel_read_readvariableop(savev2_dense_25_bias_read_readvariableop*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop&savev2_adamax_iter_read_readvariableop(savev2_adamax_beta_1_read_readvariableop(savev2_adamax_beta_2_read_readvariableop'savev2_adamax_decay_read_readvariableop/savev2_adamax_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop4savev2_adamax_conv2d_32_kernel_m_read_readvariableop2savev2_adamax_conv2d_32_bias_m_read_readvariableop4savev2_adamax_conv2d_33_kernel_m_read_readvariableop2savev2_adamax_conv2d_33_bias_m_read_readvariableop4savev2_adamax_conv2d_34_kernel_m_read_readvariableop2savev2_adamax_conv2d_34_bias_m_read_readvariableop3savev2_adamax_dense_24_kernel_m_read_readvariableop1savev2_adamax_dense_24_bias_m_read_readvariableop3savev2_adamax_dense_25_kernel_m_read_readvariableop1savev2_adamax_dense_25_bias_m_read_readvariableop3savev2_adamax_dense_26_kernel_m_read_readvariableop1savev2_adamax_dense_26_bias_m_read_readvariableop4savev2_adamax_conv2d_32_kernel_v_read_readvariableop2savev2_adamax_conv2d_32_bias_v_read_readvariableop4savev2_adamax_conv2d_33_kernel_v_read_readvariableop2savev2_adamax_conv2d_33_bias_v_read_readvariableop4savev2_adamax_conv2d_34_kernel_v_read_readvariableop2savev2_adamax_conv2d_34_bias_v_read_readvariableop3savev2_adamax_dense_24_kernel_v_read_readvariableop1savev2_adamax_dense_24_bias_v_read_readvariableop3savev2_adamax_dense_25_kernel_v_read_readvariableop1savev2_adamax_dense_25_bias_v_read_readvariableop3savev2_adamax_dense_26_kernel_v_read_readvariableop1savev2_adamax_dense_26_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *<
dtypes2
02.	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :@:@:@@:@:@?:?:	?$@:@:@ : : :: : : : : : : : : :@:@:@@:@:@?:?:	?$@:@:@ : : ::@:@:@@:@:@?:?:	?$@:@:@ : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:%!

_output_shapes
:	?$@: 

_output_shapes
:@:$	 

_output_shapes

:@ : 


_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:%!

_output_shapes
:	?$@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$  

_output_shapes

: : !

_output_shapes
::,"(
&
_output_shapes
:@: #

_output_shapes
:@:,$(
&
_output_shapes
:@@: %

_output_shapes
:@:-&)
'
_output_shapes
:@?:!'

_output_shapes	
:?:%(!

_output_shapes
:	?$@: )

_output_shapes
:@:$* 

_output_shapes

:@ : +

_output_shapes
: :$, 

_output_shapes

: : -

_output_shapes
::.

_output_shapes
: 
?
e
,__inference_dropout_35_layer_call_fn_1203477

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_35_layer_call_and_return_conditional_losses_12027352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
þ
?
#__inference__traced_restore_1203910
file_prefix%
!assignvariableop_conv2d_32_kernel%
!assignvariableop_1_conv2d_32_bias'
#assignvariableop_2_conv2d_33_kernel%
!assignvariableop_3_conv2d_33_bias'
#assignvariableop_4_conv2d_34_kernel%
!assignvariableop_5_conv2d_34_bias&
"assignvariableop_6_dense_24_kernel$
 assignvariableop_7_dense_24_bias&
"assignvariableop_8_dense_25_kernel$
 assignvariableop_9_dense_25_bias'
#assignvariableop_10_dense_26_kernel%
!assignvariableop_11_dense_26_bias#
assignvariableop_12_adamax_iter%
!assignvariableop_13_adamax_beta_1%
!assignvariableop_14_adamax_beta_2$
 assignvariableop_15_adamax_decay,
(assignvariableop_16_adamax_learning_rate
assignvariableop_17_total
assignvariableop_18_count
assignvariableop_19_total_1
assignvariableop_20_count_11
-assignvariableop_21_adamax_conv2d_32_kernel_m/
+assignvariableop_22_adamax_conv2d_32_bias_m1
-assignvariableop_23_adamax_conv2d_33_kernel_m/
+assignvariableop_24_adamax_conv2d_33_bias_m1
-assignvariableop_25_adamax_conv2d_34_kernel_m/
+assignvariableop_26_adamax_conv2d_34_bias_m0
,assignvariableop_27_adamax_dense_24_kernel_m.
*assignvariableop_28_adamax_dense_24_bias_m0
,assignvariableop_29_adamax_dense_25_kernel_m.
*assignvariableop_30_adamax_dense_25_bias_m0
,assignvariableop_31_adamax_dense_26_kernel_m.
*assignvariableop_32_adamax_dense_26_bias_m1
-assignvariableop_33_adamax_conv2d_32_kernel_v/
+assignvariableop_34_adamax_conv2d_32_bias_v1
-assignvariableop_35_adamax_conv2d_33_kernel_v/
+assignvariableop_36_adamax_conv2d_33_bias_v1
-assignvariableop_37_adamax_conv2d_34_kernel_v/
+assignvariableop_38_adamax_conv2d_34_bias_v0
,assignvariableop_39_adamax_dense_24_kernel_v.
*assignvariableop_40_adamax_dense_24_bias_v0
,assignvariableop_41_adamax_dense_25_kernel_v.
*assignvariableop_42_adamax_dense_25_bias_v0
,assignvariableop_43_adamax_dense_26_kernel_v.
*assignvariableop_44_adamax_dense_26_bias_v
identity_46??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*?
value?B?.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_32_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_32_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_33_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_33_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_34_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_34_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_24_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_24_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_25_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_25_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_26_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_26_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adamax_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp!assignvariableop_13_adamax_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp!assignvariableop_14_adamax_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp assignvariableop_15_adamax_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adamax_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp-assignvariableop_21_adamax_conv2d_32_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adamax_conv2d_32_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp-assignvariableop_23_adamax_conv2d_33_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adamax_conv2d_33_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp-assignvariableop_25_adamax_conv2d_34_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adamax_conv2d_34_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp,assignvariableop_27_adamax_dense_24_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adamax_dense_24_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adamax_dense_25_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adamax_dense_25_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp,assignvariableop_31_adamax_dense_26_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adamax_dense_26_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp-assignvariableop_33_adamax_conv2d_32_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adamax_conv2d_32_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp-assignvariableop_35_adamax_conv2d_33_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adamax_conv2d_33_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp-assignvariableop_37_adamax_conv2d_34_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adamax_conv2d_34_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp,assignvariableop_39_adamax_dense_24_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp*assignvariableop_40_adamax_dense_24_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp,assignvariableop_41_adamax_dense_25_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adamax_dense_25_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp,assignvariableop_43_adamax_dense_26_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp*assignvariableop_44_adamax_dense_26_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_449
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_45?
Identity_46IdentityIdentity_45:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_46"#
identity_46Identity_46:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
H
,__inference_dropout_33_layer_call_fn_1203388

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_33_layer_call_and_return_conditional_losses_12026242
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
e
G__inference_dropout_33_layer_call_and_return_conditional_losses_1202624

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?H
?
I__inference_sequential_8_layer_call_and_return_conditional_losses_1203283

inputs,
(conv2d_32_conv2d_readvariableop_resource-
)conv2d_32_biasadd_readvariableop_resource,
(conv2d_33_conv2d_readvariableop_resource-
)conv2d_33_biasadd_readvariableop_resource,
(conv2d_34_conv2d_readvariableop_resource-
)conv2d_34_biasadd_readvariableop_resource+
'dense_24_matmul_readvariableop_resource,
(dense_24_biasadd_readvariableop_resource+
'dense_25_matmul_readvariableop_resource,
(dense_25_biasadd_readvariableop_resource+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource
identity?? conv2d_32/BiasAdd/ReadVariableOp?conv2d_32/Conv2D/ReadVariableOp? conv2d_33/BiasAdd/ReadVariableOp?conv2d_33/Conv2D/ReadVariableOp? conv2d_34/BiasAdd/ReadVariableOp?conv2d_34/Conv2D/ReadVariableOp?dense_24/BiasAdd/ReadVariableOp?dense_24/MatMul/ReadVariableOp?dense_25/BiasAdd/ReadVariableOp?dense_25/MatMul/ReadVariableOp?dense_26/BiasAdd/ReadVariableOp?dense_26/MatMul/ReadVariableOp?
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_32/Conv2D/ReadVariableOp?
conv2d_32/Conv2DConv2Dinputs'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2
conv2d_32/Conv2D?
 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_32/BiasAdd/ReadVariableOp?
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2
conv2d_32/BiasAdd~
conv2d_32/ReluReluconv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2
conv2d_32/Relu?
max_pooling2d_26/MaxPoolMaxPoolconv2d_32/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_26/MaxPool?
dropout_33/IdentityIdentity!max_pooling2d_26/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2
dropout_33/Identity?
conv2d_33/Conv2D/ReadVariableOpReadVariableOp(conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_33/Conv2D/ReadVariableOp?
conv2d_33/Conv2DConv2Ddropout_33/Identity:output:0'conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_33/Conv2D?
 conv2d_33/BiasAdd/ReadVariableOpReadVariableOp)conv2d_33_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_33/BiasAdd/ReadVariableOp?
conv2d_33/BiasAddBiasAddconv2d_33/Conv2D:output:0(conv2d_33/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_33/BiasAdd~
conv2d_33/ReluReluconv2d_33/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_33/Relu?
max_pooling2d_27/MaxPoolMaxPoolconv2d_33/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_27/MaxPool?
dropout_34/IdentityIdentity!max_pooling2d_27/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2
dropout_34/Identity?
conv2d_34/Conv2D/ReadVariableOpReadVariableOp(conv2d_34_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_34/Conv2D/ReadVariableOp?
conv2d_34/Conv2DConv2Ddropout_34/Identity:output:0'conv2d_34/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_34/Conv2D?
 conv2d_34/BiasAdd/ReadVariableOpReadVariableOp)conv2d_34_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_34/BiasAdd/ReadVariableOp?
conv2d_34/BiasAddBiasAddconv2d_34/Conv2D:output:0(conv2d_34/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_34/BiasAdd
conv2d_34/ReluReluconv2d_34/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_34/Relu?
max_pooling2d_28/MaxPoolMaxPoolconv2d_34/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_28/MaxPool?
dropout_35/IdentityIdentity!max_pooling2d_28/MaxPool:output:0*
T0*0
_output_shapes
:??????????2
dropout_35/Identitys
flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_8/Const?
flatten_8/ReshapeReshapedropout_35/Identity:output:0flatten_8/Const:output:0*
T0*(
_output_shapes
:??????????$2
flatten_8/Reshape?
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes
:	?$@*
dtype02 
dense_24/MatMul/ReadVariableOp?
dense_24/MatMulMatMulflatten_8/Reshape:output:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_24/MatMul?
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_24/BiasAdd/ReadVariableOp?
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_24/BiasAdds
dense_24/ReluReludense_24/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_24/Relu?
dropout_36/IdentityIdentitydense_24/Relu:activations:0*
T0*'
_output_shapes
:?????????@2
dropout_36/Identity?
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02 
dense_25/MatMul/ReadVariableOp?
dense_25/MatMulMatMuldropout_36/Identity:output:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_25/MatMul?
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_25/BiasAdd/ReadVariableOp?
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_25/BiasAdds
dense_25/ReluReludense_25/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_25/Relu?
dropout_37/IdentityIdentitydense_25/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
dropout_37/Identity?
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_26/MatMul/ReadVariableOp?
dense_26/MatMulMatMuldropout_37/Identity:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_26/MatMul?
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_26/BiasAdd/ReadVariableOp?
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_26/BiasAdd|
dense_26/SoftmaxSoftmaxdense_26/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_26/Softmax?
IdentityIdentitydense_26/Softmax:softmax:0!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp!^conv2d_33/BiasAdd/ReadVariableOp ^conv2d_33/Conv2D/ReadVariableOp!^conv2d_34/BiasAdd/ReadVariableOp ^conv2d_34/Conv2D/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????00::::::::::::2D
 conv2d_32/BiasAdd/ReadVariableOp conv2d_32/BiasAdd/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp2D
 conv2d_33/BiasAdd/ReadVariableOp conv2d_33/BiasAdd/ReadVariableOp2B
conv2d_33/Conv2D/ReadVariableOpconv2d_33/Conv2D/ReadVariableOp2D
 conv2d_34/BiasAdd/ReadVariableOp conv2d_34/BiasAdd/ReadVariableOp2B
conv2d_34/Conv2D/ReadVariableOpconv2d_34/Conv2D/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
f
G__inference_dropout_34_layer_call_and_return_conditional_losses_1202677

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
f
G__inference_dropout_35_layer_call_and_return_conditional_losses_1202735

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_37_layer_call_and_return_conditional_losses_1202868

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
f
G__inference_dropout_36_layer_call_and_return_conditional_losses_1203525

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_1202557

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
%__inference_signature_wrapper_1203136
conv2d_32_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_32_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_12025392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????00::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????00
)
_user_specified_nameconv2d_32_input
?[
?

"__inference__wrapped_model_1202539
conv2d_32_input9
5sequential_8_conv2d_32_conv2d_readvariableop_resource:
6sequential_8_conv2d_32_biasadd_readvariableop_resource9
5sequential_8_conv2d_33_conv2d_readvariableop_resource:
6sequential_8_conv2d_33_biasadd_readvariableop_resource9
5sequential_8_conv2d_34_conv2d_readvariableop_resource:
6sequential_8_conv2d_34_biasadd_readvariableop_resource8
4sequential_8_dense_24_matmul_readvariableop_resource9
5sequential_8_dense_24_biasadd_readvariableop_resource8
4sequential_8_dense_25_matmul_readvariableop_resource9
5sequential_8_dense_25_biasadd_readvariableop_resource8
4sequential_8_dense_26_matmul_readvariableop_resource9
5sequential_8_dense_26_biasadd_readvariableop_resource
identity??-sequential_8/conv2d_32/BiasAdd/ReadVariableOp?,sequential_8/conv2d_32/Conv2D/ReadVariableOp?-sequential_8/conv2d_33/BiasAdd/ReadVariableOp?,sequential_8/conv2d_33/Conv2D/ReadVariableOp?-sequential_8/conv2d_34/BiasAdd/ReadVariableOp?,sequential_8/conv2d_34/Conv2D/ReadVariableOp?,sequential_8/dense_24/BiasAdd/ReadVariableOp?+sequential_8/dense_24/MatMul/ReadVariableOp?,sequential_8/dense_25/BiasAdd/ReadVariableOp?+sequential_8/dense_25/MatMul/ReadVariableOp?,sequential_8/dense_26/BiasAdd/ReadVariableOp?+sequential_8/dense_26/MatMul/ReadVariableOp?
,sequential_8/conv2d_32/Conv2D/ReadVariableOpReadVariableOp5sequential_8_conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02.
,sequential_8/conv2d_32/Conv2D/ReadVariableOp?
sequential_8/conv2d_32/Conv2DConv2Dconv2d_32_input4sequential_8/conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2
sequential_8/conv2d_32/Conv2D?
-sequential_8/conv2d_32/BiasAdd/ReadVariableOpReadVariableOp6sequential_8_conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_8/conv2d_32/BiasAdd/ReadVariableOp?
sequential_8/conv2d_32/BiasAddBiasAdd&sequential_8/conv2d_32/Conv2D:output:05sequential_8/conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2 
sequential_8/conv2d_32/BiasAdd?
sequential_8/conv2d_32/ReluRelu'sequential_8/conv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2
sequential_8/conv2d_32/Relu?
%sequential_8/max_pooling2d_26/MaxPoolMaxPool)sequential_8/conv2d_32/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2'
%sequential_8/max_pooling2d_26/MaxPool?
 sequential_8/dropout_33/IdentityIdentity.sequential_8/max_pooling2d_26/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2"
 sequential_8/dropout_33/Identity?
,sequential_8/conv2d_33/Conv2D/ReadVariableOpReadVariableOp5sequential_8_conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_8/conv2d_33/Conv2D/ReadVariableOp?
sequential_8/conv2d_33/Conv2DConv2D)sequential_8/dropout_33/Identity:output:04sequential_8/conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
sequential_8/conv2d_33/Conv2D?
-sequential_8/conv2d_33/BiasAdd/ReadVariableOpReadVariableOp6sequential_8_conv2d_33_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_8/conv2d_33/BiasAdd/ReadVariableOp?
sequential_8/conv2d_33/BiasAddBiasAdd&sequential_8/conv2d_33/Conv2D:output:05sequential_8/conv2d_33/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2 
sequential_8/conv2d_33/BiasAdd?
sequential_8/conv2d_33/ReluRelu'sequential_8/conv2d_33/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
sequential_8/conv2d_33/Relu?
%sequential_8/max_pooling2d_27/MaxPoolMaxPool)sequential_8/conv2d_33/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2'
%sequential_8/max_pooling2d_27/MaxPool?
 sequential_8/dropout_34/IdentityIdentity.sequential_8/max_pooling2d_27/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2"
 sequential_8/dropout_34/Identity?
,sequential_8/conv2d_34/Conv2D/ReadVariableOpReadVariableOp5sequential_8_conv2d_34_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02.
,sequential_8/conv2d_34/Conv2D/ReadVariableOp?
sequential_8/conv2d_34/Conv2DConv2D)sequential_8/dropout_34/Identity:output:04sequential_8/conv2d_34/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_8/conv2d_34/Conv2D?
-sequential_8/conv2d_34/BiasAdd/ReadVariableOpReadVariableOp6sequential_8_conv2d_34_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_8/conv2d_34/BiasAdd/ReadVariableOp?
sequential_8/conv2d_34/BiasAddBiasAdd&sequential_8/conv2d_34/Conv2D:output:05sequential_8/conv2d_34/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
sequential_8/conv2d_34/BiasAdd?
sequential_8/conv2d_34/ReluRelu'sequential_8/conv2d_34/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
sequential_8/conv2d_34/Relu?
%sequential_8/max_pooling2d_28/MaxPoolMaxPool)sequential_8/conv2d_34/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2'
%sequential_8/max_pooling2d_28/MaxPool?
 sequential_8/dropout_35/IdentityIdentity.sequential_8/max_pooling2d_28/MaxPool:output:0*
T0*0
_output_shapes
:??????????2"
 sequential_8/dropout_35/Identity?
sequential_8/flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
sequential_8/flatten_8/Const?
sequential_8/flatten_8/ReshapeReshape)sequential_8/dropout_35/Identity:output:0%sequential_8/flatten_8/Const:output:0*
T0*(
_output_shapes
:??????????$2 
sequential_8/flatten_8/Reshape?
+sequential_8/dense_24/MatMul/ReadVariableOpReadVariableOp4sequential_8_dense_24_matmul_readvariableop_resource*
_output_shapes
:	?$@*
dtype02-
+sequential_8/dense_24/MatMul/ReadVariableOp?
sequential_8/dense_24/MatMulMatMul'sequential_8/flatten_8/Reshape:output:03sequential_8/dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
sequential_8/dense_24/MatMul?
,sequential_8/dense_24/BiasAdd/ReadVariableOpReadVariableOp5sequential_8_dense_24_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_8/dense_24/BiasAdd/ReadVariableOp?
sequential_8/dense_24/BiasAddBiasAdd&sequential_8/dense_24/MatMul:product:04sequential_8/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
sequential_8/dense_24/BiasAdd?
sequential_8/dense_24/ReluRelu&sequential_8/dense_24/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential_8/dense_24/Relu?
 sequential_8/dropout_36/IdentityIdentity(sequential_8/dense_24/Relu:activations:0*
T0*'
_output_shapes
:?????????@2"
 sequential_8/dropout_36/Identity?
+sequential_8/dense_25/MatMul/ReadVariableOpReadVariableOp4sequential_8_dense_25_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02-
+sequential_8/dense_25/MatMul/ReadVariableOp?
sequential_8/dense_25/MatMulMatMul)sequential_8/dropout_36/Identity:output:03sequential_8/dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential_8/dense_25/MatMul?
,sequential_8/dense_25/BiasAdd/ReadVariableOpReadVariableOp5sequential_8_dense_25_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_8/dense_25/BiasAdd/ReadVariableOp?
sequential_8/dense_25/BiasAddBiasAdd&sequential_8/dense_25/MatMul:product:04sequential_8/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential_8/dense_25/BiasAdd?
sequential_8/dense_25/ReluRelu&sequential_8/dense_25/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential_8/dense_25/Relu?
 sequential_8/dropout_37/IdentityIdentity(sequential_8/dense_25/Relu:activations:0*
T0*'
_output_shapes
:????????? 2"
 sequential_8/dropout_37/Identity?
+sequential_8/dense_26/MatMul/ReadVariableOpReadVariableOp4sequential_8_dense_26_matmul_readvariableop_resource*
_output_shapes

: *
dtype02-
+sequential_8/dense_26/MatMul/ReadVariableOp?
sequential_8/dense_26/MatMulMatMul)sequential_8/dropout_37/Identity:output:03sequential_8/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_8/dense_26/MatMul?
,sequential_8/dense_26/BiasAdd/ReadVariableOpReadVariableOp5sequential_8_dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_8/dense_26/BiasAdd/ReadVariableOp?
sequential_8/dense_26/BiasAddBiasAdd&sequential_8/dense_26/MatMul:product:04sequential_8/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_8/dense_26/BiasAdd?
sequential_8/dense_26/SoftmaxSoftmax&sequential_8/dense_26/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential_8/dense_26/Softmax?
IdentityIdentity'sequential_8/dense_26/Softmax:softmax:0.^sequential_8/conv2d_32/BiasAdd/ReadVariableOp-^sequential_8/conv2d_32/Conv2D/ReadVariableOp.^sequential_8/conv2d_33/BiasAdd/ReadVariableOp-^sequential_8/conv2d_33/Conv2D/ReadVariableOp.^sequential_8/conv2d_34/BiasAdd/ReadVariableOp-^sequential_8/conv2d_34/Conv2D/ReadVariableOp-^sequential_8/dense_24/BiasAdd/ReadVariableOp,^sequential_8/dense_24/MatMul/ReadVariableOp-^sequential_8/dense_25/BiasAdd/ReadVariableOp,^sequential_8/dense_25/MatMul/ReadVariableOp-^sequential_8/dense_26/BiasAdd/ReadVariableOp,^sequential_8/dense_26/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????00::::::::::::2^
-sequential_8/conv2d_32/BiasAdd/ReadVariableOp-sequential_8/conv2d_32/BiasAdd/ReadVariableOp2\
,sequential_8/conv2d_32/Conv2D/ReadVariableOp,sequential_8/conv2d_32/Conv2D/ReadVariableOp2^
-sequential_8/conv2d_33/BiasAdd/ReadVariableOp-sequential_8/conv2d_33/BiasAdd/ReadVariableOp2\
,sequential_8/conv2d_33/Conv2D/ReadVariableOp,sequential_8/conv2d_33/Conv2D/ReadVariableOp2^
-sequential_8/conv2d_34/BiasAdd/ReadVariableOp-sequential_8/conv2d_34/BiasAdd/ReadVariableOp2\
,sequential_8/conv2d_34/Conv2D/ReadVariableOp,sequential_8/conv2d_34/Conv2D/ReadVariableOp2\
,sequential_8/dense_24/BiasAdd/ReadVariableOp,sequential_8/dense_24/BiasAdd/ReadVariableOp2Z
+sequential_8/dense_24/MatMul/ReadVariableOp+sequential_8/dense_24/MatMul/ReadVariableOp2\
,sequential_8/dense_25/BiasAdd/ReadVariableOp,sequential_8/dense_25/BiasAdd/ReadVariableOp2Z
+sequential_8/dense_25/MatMul/ReadVariableOp+sequential_8/dense_25/MatMul/ReadVariableOp2\
,sequential_8/dense_26/BiasAdd/ReadVariableOp,sequential_8/dense_26/BiasAdd/ReadVariableOp2Z
+sequential_8/dense_26/MatMul/ReadVariableOp+sequential_8/dense_26/MatMul/ReadVariableOp:` \
/
_output_shapes
:?????????00
)
_user_specified_nameconv2d_32_input
?
H
,__inference_dropout_36_layer_call_fn_1203540

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_36_layer_call_and_return_conditional_losses_12028112
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
H
,__inference_dropout_37_layer_call_fn_1203587

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_37_layer_call_and_return_conditional_losses_12028682
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
H
,__inference_dropout_35_layer_call_fn_1203482

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_35_layer_call_and_return_conditional_losses_12027402
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
F__inference_conv2d_34_layer_call_and_return_conditional_losses_1202706

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
E__inference_dense_26_layer_call_and_return_conditional_losses_1202892

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_26_layer_call_fn_1202551

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_12025452
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_34_layer_call_fn_1203435

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_34_layer_call_and_return_conditional_losses_12026822
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
F__inference_conv2d_33_layer_call_and_return_conditional_losses_1203399

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
b
F__inference_flatten_8_layer_call_and_return_conditional_losses_1203488

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????$2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????$2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_conv2d_33_layer_call_fn_1203408

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_33_layer_call_and_return_conditional_losses_12026482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
f
G__inference_dropout_36_layer_call_and_return_conditional_losses_1202806

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
E__inference_dense_25_layer_call_and_return_conditional_losses_1203551

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
e
,__inference_dropout_34_layer_call_fn_1203430

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_34_layer_call_and_return_conditional_losses_12026772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

*__inference_dense_25_layer_call_fn_1203560

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_25_layer_call_and_return_conditional_losses_12028352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
e
G__inference_dropout_37_layer_call_and_return_conditional_losses_1203577

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
F__inference_conv2d_32_layer_call_and_return_conditional_losses_1202590

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????00::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?x
?
I__inference_sequential_8_layer_call_and_return_conditional_losses_1203227

inputs,
(conv2d_32_conv2d_readvariableop_resource-
)conv2d_32_biasadd_readvariableop_resource,
(conv2d_33_conv2d_readvariableop_resource-
)conv2d_33_biasadd_readvariableop_resource,
(conv2d_34_conv2d_readvariableop_resource-
)conv2d_34_biasadd_readvariableop_resource+
'dense_24_matmul_readvariableop_resource,
(dense_24_biasadd_readvariableop_resource+
'dense_25_matmul_readvariableop_resource,
(dense_25_biasadd_readvariableop_resource+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource
identity?? conv2d_32/BiasAdd/ReadVariableOp?conv2d_32/Conv2D/ReadVariableOp? conv2d_33/BiasAdd/ReadVariableOp?conv2d_33/Conv2D/ReadVariableOp? conv2d_34/BiasAdd/ReadVariableOp?conv2d_34/Conv2D/ReadVariableOp?dense_24/BiasAdd/ReadVariableOp?dense_24/MatMul/ReadVariableOp?dense_25/BiasAdd/ReadVariableOp?dense_25/MatMul/ReadVariableOp?dense_26/BiasAdd/ReadVariableOp?dense_26/MatMul/ReadVariableOp?
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_32/Conv2D/ReadVariableOp?
conv2d_32/Conv2DConv2Dinputs'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2
conv2d_32/Conv2D?
 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_32/BiasAdd/ReadVariableOp?
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2
conv2d_32/BiasAdd~
conv2d_32/ReluReluconv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2
conv2d_32/Relu?
max_pooling2d_26/MaxPoolMaxPoolconv2d_32/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_26/MaxPooly
dropout_33/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_33/dropout/Const?
dropout_33/dropout/MulMul!max_pooling2d_26/MaxPool:output:0!dropout_33/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout_33/dropout/Mul?
dropout_33/dropout/ShapeShape!max_pooling2d_26/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_33/dropout/Shape?
/dropout_33/dropout/random_uniform/RandomUniformRandomUniform!dropout_33/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype021
/dropout_33/dropout/random_uniform/RandomUniform?
!dropout_33/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_33/dropout/GreaterEqual/y?
dropout_33/dropout/GreaterEqualGreaterEqual8dropout_33/dropout/random_uniform/RandomUniform:output:0*dropout_33/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2!
dropout_33/dropout/GreaterEqual?
dropout_33/dropout/CastCast#dropout_33/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout_33/dropout/Cast?
dropout_33/dropout/Mul_1Muldropout_33/dropout/Mul:z:0dropout_33/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout_33/dropout/Mul_1?
conv2d_33/Conv2D/ReadVariableOpReadVariableOp(conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_33/Conv2D/ReadVariableOp?
conv2d_33/Conv2DConv2Ddropout_33/dropout/Mul_1:z:0'conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_33/Conv2D?
 conv2d_33/BiasAdd/ReadVariableOpReadVariableOp)conv2d_33_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_33/BiasAdd/ReadVariableOp?
conv2d_33/BiasAddBiasAddconv2d_33/Conv2D:output:0(conv2d_33/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_33/BiasAdd~
conv2d_33/ReluReluconv2d_33/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_33/Relu?
max_pooling2d_27/MaxPoolMaxPoolconv2d_33/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_27/MaxPooly
dropout_34/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_34/dropout/Const?
dropout_34/dropout/MulMul!max_pooling2d_27/MaxPool:output:0!dropout_34/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout_34/dropout/Mul?
dropout_34/dropout/ShapeShape!max_pooling2d_27/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_34/dropout/Shape?
/dropout_34/dropout/random_uniform/RandomUniformRandomUniform!dropout_34/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype021
/dropout_34/dropout/random_uniform/RandomUniform?
!dropout_34/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_34/dropout/GreaterEqual/y?
dropout_34/dropout/GreaterEqualGreaterEqual8dropout_34/dropout/random_uniform/RandomUniform:output:0*dropout_34/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2!
dropout_34/dropout/GreaterEqual?
dropout_34/dropout/CastCast#dropout_34/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout_34/dropout/Cast?
dropout_34/dropout/Mul_1Muldropout_34/dropout/Mul:z:0dropout_34/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout_34/dropout/Mul_1?
conv2d_34/Conv2D/ReadVariableOpReadVariableOp(conv2d_34_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_34/Conv2D/ReadVariableOp?
conv2d_34/Conv2DConv2Ddropout_34/dropout/Mul_1:z:0'conv2d_34/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_34/Conv2D?
 conv2d_34/BiasAdd/ReadVariableOpReadVariableOp)conv2d_34_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_34/BiasAdd/ReadVariableOp?
conv2d_34/BiasAddBiasAddconv2d_34/Conv2D:output:0(conv2d_34/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_34/BiasAdd
conv2d_34/ReluReluconv2d_34/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_34/Relu?
max_pooling2d_28/MaxPoolMaxPoolconv2d_34/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_28/MaxPooly
dropout_35/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_35/dropout/Const?
dropout_35/dropout/MulMul!max_pooling2d_28/MaxPool:output:0!dropout_35/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_35/dropout/Mul?
dropout_35/dropout/ShapeShape!max_pooling2d_28/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_35/dropout/Shape?
/dropout_35/dropout/random_uniform/RandomUniformRandomUniform!dropout_35/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype021
/dropout_35/dropout/random_uniform/RandomUniform?
!dropout_35/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_35/dropout/GreaterEqual/y?
dropout_35/dropout/GreaterEqualGreaterEqual8dropout_35/dropout/random_uniform/RandomUniform:output:0*dropout_35/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2!
dropout_35/dropout/GreaterEqual?
dropout_35/dropout/CastCast#dropout_35/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_35/dropout/Cast?
dropout_35/dropout/Mul_1Muldropout_35/dropout/Mul:z:0dropout_35/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_35/dropout/Mul_1s
flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_8/Const?
flatten_8/ReshapeReshapedropout_35/dropout/Mul_1:z:0flatten_8/Const:output:0*
T0*(
_output_shapes
:??????????$2
flatten_8/Reshape?
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes
:	?$@*
dtype02 
dense_24/MatMul/ReadVariableOp?
dense_24/MatMulMatMulflatten_8/Reshape:output:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_24/MatMul?
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_24/BiasAdd/ReadVariableOp?
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_24/BiasAdds
dense_24/ReluReludense_24/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_24/Reluy
dropout_36/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_36/dropout/Const?
dropout_36/dropout/MulMuldense_24/Relu:activations:0!dropout_36/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_36/dropout/Mul
dropout_36/dropout/ShapeShapedense_24/Relu:activations:0*
T0*
_output_shapes
:2
dropout_36/dropout/Shape?
/dropout_36/dropout/random_uniform/RandomUniformRandomUniform!dropout_36/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype021
/dropout_36/dropout/random_uniform/RandomUniform?
!dropout_36/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_36/dropout/GreaterEqual/y?
dropout_36/dropout/GreaterEqualGreaterEqual8dropout_36/dropout/random_uniform/RandomUniform:output:0*dropout_36/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2!
dropout_36/dropout/GreaterEqual?
dropout_36/dropout/CastCast#dropout_36/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_36/dropout/Cast?
dropout_36/dropout/Mul_1Muldropout_36/dropout/Mul:z:0dropout_36/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_36/dropout/Mul_1?
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02 
dense_25/MatMul/ReadVariableOp?
dense_25/MatMulMatMuldropout_36/dropout/Mul_1:z:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_25/MatMul?
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_25/BiasAdd/ReadVariableOp?
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_25/BiasAdds
dense_25/ReluReludense_25/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_25/Reluy
dropout_37/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_37/dropout/Const?
dropout_37/dropout/MulMuldense_25/Relu:activations:0!dropout_37/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_37/dropout/Mul
dropout_37/dropout/ShapeShapedense_25/Relu:activations:0*
T0*
_output_shapes
:2
dropout_37/dropout/Shape?
/dropout_37/dropout/random_uniform/RandomUniformRandomUniform!dropout_37/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype021
/dropout_37/dropout/random_uniform/RandomUniform?
!dropout_37/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2#
!dropout_37/dropout/GreaterEqual/y?
dropout_37/dropout/GreaterEqualGreaterEqual8dropout_37/dropout/random_uniform/RandomUniform:output:0*dropout_37/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2!
dropout_37/dropout/GreaterEqual?
dropout_37/dropout/CastCast#dropout_37/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_37/dropout/Cast?
dropout_37/dropout/Mul_1Muldropout_37/dropout/Mul:z:0dropout_37/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_37/dropout/Mul_1?
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_26/MatMul/ReadVariableOp?
dense_26/MatMulMatMuldropout_37/dropout/Mul_1:z:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_26/MatMul?
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_26/BiasAdd/ReadVariableOp?
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_26/BiasAdd|
dense_26/SoftmaxSoftmaxdense_26/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_26/Softmax?
IdentityIdentitydense_26/Softmax:softmax:0!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp!^conv2d_33/BiasAdd/ReadVariableOp ^conv2d_33/Conv2D/ReadVariableOp!^conv2d_34/BiasAdd/ReadVariableOp ^conv2d_34/Conv2D/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????00::::::::::::2D
 conv2d_32/BiasAdd/ReadVariableOp conv2d_32/BiasAdd/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp2D
 conv2d_33/BiasAdd/ReadVariableOp conv2d_33/BiasAdd/ReadVariableOp2B
conv2d_33/Conv2D/ReadVariableOpconv2d_33/Conv2D/ReadVariableOp2D
 conv2d_34/BiasAdd/ReadVariableOp conv2d_34/BiasAdd/ReadVariableOp2B
conv2d_34/Conv2D/ReadVariableOpconv2d_34/Conv2D/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
f
G__inference_dropout_37_layer_call_and_return_conditional_losses_1202863

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
e
,__inference_dropout_36_layer_call_fn_1203535

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_36_layer_call_and_return_conditional_losses_12028062
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

*__inference_dense_24_layer_call_fn_1203513

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_12027782
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????$::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????$
 
_user_specified_nameinputs
?
e
G__inference_dropout_34_layer_call_and_return_conditional_losses_1202682

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
F__inference_conv2d_34_layer_call_and_return_conditional_losses_1203446

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
e
G__inference_dropout_34_layer_call_and_return_conditional_losses_1203425

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
E__inference_dense_24_layer_call_and_return_conditional_losses_1202778

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?$@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????$::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????$
 
_user_specified_nameinputs
?
G
+__inference_flatten_8_layer_call_fn_1203493

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_8_layer_call_and_return_conditional_losses_12027592
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????$2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_1202545

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_33_layer_call_and_return_conditional_losses_1203378

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
e
,__inference_dropout_33_layer_call_fn_1203383

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_33_layer_call_and_return_conditional_losses_12026192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
f
G__inference_dropout_37_layer_call_and_return_conditional_losses_1203572

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
E__inference_dense_24_layer_call_and_return_conditional_losses_1203504

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?$@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????$::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????$
 
_user_specified_nameinputs
?E
?
I__inference_sequential_8_layer_call_and_return_conditional_losses_1202998

inputs
conv2d_32_1202958
conv2d_32_1202960
conv2d_33_1202965
conv2d_33_1202967
conv2d_34_1202972
conv2d_34_1202974
dense_24_1202980
dense_24_1202982
dense_25_1202986
dense_25_1202988
dense_26_1202992
dense_26_1202994
identity??!conv2d_32/StatefulPartitionedCall?!conv2d_33/StatefulPartitionedCall?!conv2d_34/StatefulPartitionedCall? dense_24/StatefulPartitionedCall? dense_25/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?"dropout_33/StatefulPartitionedCall?"dropout_34/StatefulPartitionedCall?"dropout_35/StatefulPartitionedCall?"dropout_36/StatefulPartitionedCall?"dropout_37/StatefulPartitionedCall?
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_32_1202958conv2d_32_1202960*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_32_layer_call_and_return_conditional_losses_12025902#
!conv2d_32/StatefulPartitionedCall?
 max_pooling2d_26/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_12025452"
 max_pooling2d_26/PartitionedCall?
"dropout_33/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_33_layer_call_and_return_conditional_losses_12026192$
"dropout_33/StatefulPartitionedCall?
!conv2d_33/StatefulPartitionedCallStatefulPartitionedCall+dropout_33/StatefulPartitionedCall:output:0conv2d_33_1202965conv2d_33_1202967*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_33_layer_call_and_return_conditional_losses_12026482#
!conv2d_33/StatefulPartitionedCall?
 max_pooling2d_27/PartitionedCallPartitionedCall*conv2d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_12025572"
 max_pooling2d_27/PartitionedCall?
"dropout_34/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_27/PartitionedCall:output:0#^dropout_33/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_34_layer_call_and_return_conditional_losses_12026772$
"dropout_34/StatefulPartitionedCall?
!conv2d_34/StatefulPartitionedCallStatefulPartitionedCall+dropout_34/StatefulPartitionedCall:output:0conv2d_34_1202972conv2d_34_1202974*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_34_layer_call_and_return_conditional_losses_12027062#
!conv2d_34/StatefulPartitionedCall?
 max_pooling2d_28/PartitionedCallPartitionedCall*conv2d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_12025692"
 max_pooling2d_28/PartitionedCall?
"dropout_35/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_28/PartitionedCall:output:0#^dropout_34/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_35_layer_call_and_return_conditional_losses_12027352$
"dropout_35/StatefulPartitionedCall?
flatten_8/PartitionedCallPartitionedCall+dropout_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_8_layer_call_and_return_conditional_losses_12027592
flatten_8/PartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_24_1202980dense_24_1202982*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_12027782"
 dense_24/StatefulPartitionedCall?
"dropout_36/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0#^dropout_35/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_36_layer_call_and_return_conditional_losses_12028062$
"dropout_36/StatefulPartitionedCall?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall+dropout_36/StatefulPartitionedCall:output:0dense_25_1202986dense_25_1202988*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_25_layer_call_and_return_conditional_losses_12028352"
 dense_25/StatefulPartitionedCall?
"dropout_37/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0#^dropout_36/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_37_layer_call_and_return_conditional_losses_12028632$
"dropout_37/StatefulPartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall+dropout_37/StatefulPartitionedCall:output:0dense_26_1202992dense_26_1202994*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_12028922"
 dense_26/StatefulPartitionedCall?
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0"^conv2d_32/StatefulPartitionedCall"^conv2d_33/StatefulPartitionedCall"^conv2d_34/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall#^dropout_33/StatefulPartitionedCall#^dropout_34/StatefulPartitionedCall#^dropout_35/StatefulPartitionedCall#^dropout_36/StatefulPartitionedCall#^dropout_37/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????00::::::::::::2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2F
!conv2d_33/StatefulPartitionedCall!conv2d_33/StatefulPartitionedCall2F
!conv2d_34/StatefulPartitionedCall!conv2d_34/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2H
"dropout_33/StatefulPartitionedCall"dropout_33/StatefulPartitionedCall2H
"dropout_34/StatefulPartitionedCall"dropout_34/StatefulPartitionedCall2H
"dropout_35/StatefulPartitionedCall"dropout_35/StatefulPartitionedCall2H
"dropout_36/StatefulPartitionedCall"dropout_36/StatefulPartitionedCall2H
"dropout_37/StatefulPartitionedCall"dropout_37/StatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
e
G__inference_dropout_35_layer_call_and_return_conditional_losses_1202740

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_1202569

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?=
?
I__inference_sequential_8_layer_call_and_return_conditional_losses_1202952
conv2d_32_input
conv2d_32_1202912
conv2d_32_1202914
conv2d_33_1202919
conv2d_33_1202921
conv2d_34_1202926
conv2d_34_1202928
dense_24_1202934
dense_24_1202936
dense_25_1202940
dense_25_1202942
dense_26_1202946
dense_26_1202948
identity??!conv2d_32/StatefulPartitionedCall?!conv2d_33/StatefulPartitionedCall?!conv2d_34/StatefulPartitionedCall? dense_24/StatefulPartitionedCall? dense_25/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCallconv2d_32_inputconv2d_32_1202912conv2d_32_1202914*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_32_layer_call_and_return_conditional_losses_12025902#
!conv2d_32/StatefulPartitionedCall?
 max_pooling2d_26/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_12025452"
 max_pooling2d_26/PartitionedCall?
dropout_33/PartitionedCallPartitionedCall)max_pooling2d_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_33_layer_call_and_return_conditional_losses_12026242
dropout_33/PartitionedCall?
!conv2d_33/StatefulPartitionedCallStatefulPartitionedCall#dropout_33/PartitionedCall:output:0conv2d_33_1202919conv2d_33_1202921*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_33_layer_call_and_return_conditional_losses_12026482#
!conv2d_33/StatefulPartitionedCall?
 max_pooling2d_27/PartitionedCallPartitionedCall*conv2d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_12025572"
 max_pooling2d_27/PartitionedCall?
dropout_34/PartitionedCallPartitionedCall)max_pooling2d_27/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_34_layer_call_and_return_conditional_losses_12026822
dropout_34/PartitionedCall?
!conv2d_34/StatefulPartitionedCallStatefulPartitionedCall#dropout_34/PartitionedCall:output:0conv2d_34_1202926conv2d_34_1202928*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_34_layer_call_and_return_conditional_losses_12027062#
!conv2d_34/StatefulPartitionedCall?
 max_pooling2d_28/PartitionedCallPartitionedCall*conv2d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_12025692"
 max_pooling2d_28/PartitionedCall?
dropout_35/PartitionedCallPartitionedCall)max_pooling2d_28/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_35_layer_call_and_return_conditional_losses_12027402
dropout_35/PartitionedCall?
flatten_8/PartitionedCallPartitionedCall#dropout_35/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_8_layer_call_and_return_conditional_losses_12027592
flatten_8/PartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_24_1202934dense_24_1202936*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_12027782"
 dense_24/StatefulPartitionedCall?
dropout_36/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_36_layer_call_and_return_conditional_losses_12028112
dropout_36/PartitionedCall?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall#dropout_36/PartitionedCall:output:0dense_25_1202940dense_25_1202942*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_25_layer_call_and_return_conditional_losses_12028352"
 dense_25/StatefulPartitionedCall?
dropout_37/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_37_layer_call_and_return_conditional_losses_12028682
dropout_37/PartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#dropout_37/PartitionedCall:output:0dense_26_1202946dense_26_1202948*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_12028922"
 dense_26/StatefulPartitionedCall?
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0"^conv2d_32/StatefulPartitionedCall"^conv2d_33/StatefulPartitionedCall"^conv2d_34/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????00::::::::::::2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2F
!conv2d_33/StatefulPartitionedCall!conv2d_33/StatefulPartitionedCall2F
!conv2d_34/StatefulPartitionedCall!conv2d_34/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall:` \
/
_output_shapes
:?????????00
)
_user_specified_nameconv2d_32_input
?
f
G__inference_dropout_33_layer_call_and_return_conditional_losses_1202619

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?=
?
I__inference_sequential_8_layer_call_and_return_conditional_losses_1203070

inputs
conv2d_32_1203030
conv2d_32_1203032
conv2d_33_1203037
conv2d_33_1203039
conv2d_34_1203044
conv2d_34_1203046
dense_24_1203052
dense_24_1203054
dense_25_1203058
dense_25_1203060
dense_26_1203064
dense_26_1203066
identity??!conv2d_32/StatefulPartitionedCall?!conv2d_33/StatefulPartitionedCall?!conv2d_34/StatefulPartitionedCall? dense_24/StatefulPartitionedCall? dense_25/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_32_1203030conv2d_32_1203032*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_32_layer_call_and_return_conditional_losses_12025902#
!conv2d_32/StatefulPartitionedCall?
 max_pooling2d_26/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_12025452"
 max_pooling2d_26/PartitionedCall?
dropout_33/PartitionedCallPartitionedCall)max_pooling2d_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_33_layer_call_and_return_conditional_losses_12026242
dropout_33/PartitionedCall?
!conv2d_33/StatefulPartitionedCallStatefulPartitionedCall#dropout_33/PartitionedCall:output:0conv2d_33_1203037conv2d_33_1203039*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_33_layer_call_and_return_conditional_losses_12026482#
!conv2d_33/StatefulPartitionedCall?
 max_pooling2d_27/PartitionedCallPartitionedCall*conv2d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_12025572"
 max_pooling2d_27/PartitionedCall?
dropout_34/PartitionedCallPartitionedCall)max_pooling2d_27/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_34_layer_call_and_return_conditional_losses_12026822
dropout_34/PartitionedCall?
!conv2d_34/StatefulPartitionedCallStatefulPartitionedCall#dropout_34/PartitionedCall:output:0conv2d_34_1203044conv2d_34_1203046*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_34_layer_call_and_return_conditional_losses_12027062#
!conv2d_34/StatefulPartitionedCall?
 max_pooling2d_28/PartitionedCallPartitionedCall*conv2d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_12025692"
 max_pooling2d_28/PartitionedCall?
dropout_35/PartitionedCallPartitionedCall)max_pooling2d_28/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_35_layer_call_and_return_conditional_losses_12027402
dropout_35/PartitionedCall?
flatten_8/PartitionedCallPartitionedCall#dropout_35/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_8_layer_call_and_return_conditional_losses_12027592
flatten_8/PartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_24_1203052dense_24_1203054*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_12027782"
 dense_24/StatefulPartitionedCall?
dropout_36/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_36_layer_call_and_return_conditional_losses_12028112
dropout_36/PartitionedCall?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall#dropout_36/PartitionedCall:output:0dense_25_1203058dense_25_1203060*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_25_layer_call_and_return_conditional_losses_12028352"
 dense_25/StatefulPartitionedCall?
dropout_37/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_37_layer_call_and_return_conditional_losses_12028682
dropout_37/PartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#dropout_37/PartitionedCall:output:0dense_26_1203064dense_26_1203066*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_12028922"
 dense_26/StatefulPartitionedCall?
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0"^conv2d_32/StatefulPartitionedCall"^conv2d_33/StatefulPartitionedCall"^conv2d_34/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????00::::::::::::2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2F
!conv2d_33/StatefulPartitionedCall!conv2d_33/StatefulPartitionedCall2F
!conv2d_34/StatefulPartitionedCall!conv2d_34/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
?
+__inference_conv2d_34_layer_call_fn_1203455

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_34_layer_call_and_return_conditional_losses_12027062
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
e
G__inference_dropout_36_layer_call_and_return_conditional_losses_1202811

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
f
G__inference_dropout_35_layer_call_and_return_conditional_losses_1203467

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

*__inference_dense_26_layer_call_fn_1203607

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_12028922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
+__inference_conv2d_32_layer_call_fn_1203361

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_32_layer_call_and_return_conditional_losses_12025902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????00::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?

?
F__inference_conv2d_32_layer_call_and_return_conditional_losses_1203352

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????00::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_27_layer_call_fn_1202563

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_12025572
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
S
conv2d_32_input@
!serving_default_conv2d_32_input:0?????????00<
dense_260
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?`
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
layer_with_weights-4
layer-12
layer-13
layer_with_weights-5
layer-14
	optimizer

signatures
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"?[
_tf_keras_sequential?[{"class_name": "Sequential", "name": "sequential_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_32_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_32", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [7, 7]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_26", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_33", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_33", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_27", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_34", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_34", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_28", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_35", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_8", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_24", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_36", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_25", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_37", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 7, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_32_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_32", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [7, 7]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_26", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_33", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_33", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_27", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_34", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_34", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_28", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_35", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_8", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_24", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_36", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_25", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_37", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 7, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adamax", "config": {"name": "Adamax", "learning_rate": 9.999999747378752e-06, "decay": 0.0, "beta_1": 0.9700000286102295, "beta_2": 0.9700000286102295, "epsilon": 1e-07}}}}
?

kernel
bias
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"class_name": "Conv2D", "name": "conv2d_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_32", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [7, 7]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 1]}}
?
#_self_saveable_object_factories
	variables
 regularization_losses
!trainable_variables
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_26", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
##_self_saveable_object_factories
$	variables
%regularization_losses
&trainable_variables
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_33", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_33", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
?


(kernel
)bias
#*_self_saveable_object_factories
+	variables
,regularization_losses
-trainable_variables
.	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_33", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 24, 64]}}
?
#/_self_saveable_object_factories
0	variables
1regularization_losses
2trainable_variables
3	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_27", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
#4_self_saveable_object_factories
5	variables
6regularization_losses
7trainable_variables
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_34", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_34", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
?


9kernel
:bias
#;_self_saveable_object_factories
<	variables
=regularization_losses
>trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_34", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 12, 64]}}
?
#@_self_saveable_object_factories
A	variables
Bregularization_losses
Ctrainable_variables
D	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_28", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
#E_self_saveable_object_factories
F	variables
Gregularization_losses
Htrainable_variables
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_35", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_35", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
?
#J_self_saveable_object_factories
K	variables
Lregularization_losses
Mtrainable_variables
N	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_8", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

Okernel
Pbias
#Q_self_saveable_object_factories
R	variables
Sregularization_losses
Ttrainable_variables
U	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_24", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4608}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4608]}}
?
#V_self_saveable_object_factories
W	variables
Xregularization_losses
Ytrainable_variables
Z	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_36", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_36", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}
?

[kernel
\bias
#]_self_saveable_object_factories
^	variables
_regularization_losses
`trainable_variables
a	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_25", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?
#b_self_saveable_object_factories
c	variables
dregularization_losses
etrainable_variables
f	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_37", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_37", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}
?

gkernel
hbias
#i_self_saveable_object_factories
j	variables
kregularization_losses
ltrainable_variables
m	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 7, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?
niter

obeta_1

pbeta_2
	qdecay
rlearning_ratem?m?(m?)m?9m?:m?Om?Pm?[m?\m?gm?hm?v?v?(v?)v?9v?:v?Ov?Pv?[v?\v?gv?hv?"
	optimizer
-
?serving_default"
signature_map
 "
trackable_dict_wrapper
v
0
1
(2
)3
94
:5
O6
P7
[8
\9
g10
h11"
trackable_list_wrapper
 "
trackable_list_wrapper
v
0
1
(2
)3
94
:5
O6
P7
[8
\9
g10
h11"
trackable_list_wrapper
?
smetrics
tlayer_metrics
ulayer_regularization_losses
	variables
regularization_losses
trainable_variables

vlayers
wnon_trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(@2conv2d_32/kernel
:@2conv2d_32/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
xmetrics
ylayer_metrics
zlayer_regularization_losses
	variables
regularization_losses
trainable_variables

{layers
|non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
}metrics
~layer_metrics
layer_regularization_losses
	variables
 regularization_losses
!trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?layer_metrics
 ?layer_regularization_losses
$	variables
%regularization_losses
&trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_33/kernel
:@2conv2d_33/bias
 "
trackable_dict_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
?
?metrics
?layer_metrics
 ?layer_regularization_losses
+	variables
,regularization_losses
-trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?layer_metrics
 ?layer_regularization_losses
0	variables
1regularization_losses
2trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?layer_metrics
 ?layer_regularization_losses
5	variables
6regularization_losses
7trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)@?2conv2d_34/kernel
:?2conv2d_34/bias
 "
trackable_dict_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
?
?metrics
?layer_metrics
 ?layer_regularization_losses
<	variables
=regularization_losses
>trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?layer_metrics
 ?layer_regularization_losses
A	variables
Bregularization_losses
Ctrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?layer_metrics
 ?layer_regularization_losses
F	variables
Gregularization_losses
Htrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?layer_metrics
 ?layer_regularization_losses
K	variables
Lregularization_losses
Mtrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?$@2dense_24/kernel
:@2dense_24/bias
 "
trackable_dict_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
?
?metrics
?layer_metrics
 ?layer_regularization_losses
R	variables
Sregularization_losses
Ttrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?layer_metrics
 ?layer_regularization_losses
W	variables
Xregularization_losses
Ytrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:@ 2dense_25/kernel
: 2dense_25/bias
 "
trackable_dict_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
?
?metrics
?layer_metrics
 ?layer_regularization_losses
^	variables
_regularization_losses
`trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?layer_metrics
 ?layer_regularization_losses
c	variables
dregularization_losses
etrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!: 2dense_26/kernel
:2dense_26/bias
 "
trackable_dict_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
?
?metrics
?layer_metrics
 ?layer_regularization_losses
j	variables
kregularization_losses
ltrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2Adamax/iter
: (2Adamax/beta_1
: (2Adamax/beta_2
: (2Adamax/decay
: (2Adamax/learning_rate
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
1:/@2Adamax/conv2d_32/kernel/m
#:!@2Adamax/conv2d_32/bias/m
1:/@@2Adamax/conv2d_33/kernel/m
#:!@2Adamax/conv2d_33/bias/m
2:0@?2Adamax/conv2d_34/kernel/m
$:"?2Adamax/conv2d_34/bias/m
):'	?$@2Adamax/dense_24/kernel/m
": @2Adamax/dense_24/bias/m
(:&@ 2Adamax/dense_25/kernel/m
":  2Adamax/dense_25/bias/m
(:& 2Adamax/dense_26/kernel/m
": 2Adamax/dense_26/bias/m
1:/@2Adamax/conv2d_32/kernel/v
#:!@2Adamax/conv2d_32/bias/v
1:/@@2Adamax/conv2d_33/kernel/v
#:!@2Adamax/conv2d_33/bias/v
2:0@?2Adamax/conv2d_34/kernel/v
$:"?2Adamax/conv2d_34/bias/v
):'	?$@2Adamax/dense_24/kernel/v
": @2Adamax/dense_24/bias/v
(:&@ 2Adamax/dense_25/kernel/v
":  2Adamax/dense_25/bias/v
(:& 2Adamax/dense_26/kernel/v
": 2Adamax/dense_26/bias/v
?2?
.__inference_sequential_8_layer_call_fn_1203097
.__inference_sequential_8_layer_call_fn_1203025
.__inference_sequential_8_layer_call_fn_1203312
.__inference_sequential_8_layer_call_fn_1203341?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
"__inference__wrapped_model_1202539?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *6?3
1?.
conv2d_32_input?????????00
?2?
I__inference_sequential_8_layer_call_and_return_conditional_losses_1203227
I__inference_sequential_8_layer_call_and_return_conditional_losses_1203283
I__inference_sequential_8_layer_call_and_return_conditional_losses_1202952
I__inference_sequential_8_layer_call_and_return_conditional_losses_1202909?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_conv2d_32_layer_call_fn_1203361?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_32_layer_call_and_return_conditional_losses_1203352?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
2__inference_max_pooling2d_26_layer_call_fn_1202551?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
M__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_1202545?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
,__inference_dropout_33_layer_call_fn_1203388
,__inference_dropout_33_layer_call_fn_1203383?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_33_layer_call_and_return_conditional_losses_1203378
G__inference_dropout_33_layer_call_and_return_conditional_losses_1203373?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_conv2d_33_layer_call_fn_1203408?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_33_layer_call_and_return_conditional_losses_1203399?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
2__inference_max_pooling2d_27_layer_call_fn_1202563?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_1202557?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
,__inference_dropout_34_layer_call_fn_1203430
,__inference_dropout_34_layer_call_fn_1203435?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_34_layer_call_and_return_conditional_losses_1203425
G__inference_dropout_34_layer_call_and_return_conditional_losses_1203420?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_conv2d_34_layer_call_fn_1203455?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_34_layer_call_and_return_conditional_losses_1203446?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
2__inference_max_pooling2d_28_layer_call_fn_1202575?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
M__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_1202569?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
,__inference_dropout_35_layer_call_fn_1203482
,__inference_dropout_35_layer_call_fn_1203477?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_35_layer_call_and_return_conditional_losses_1203467
G__inference_dropout_35_layer_call_and_return_conditional_losses_1203472?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_flatten_8_layer_call_fn_1203493?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_flatten_8_layer_call_and_return_conditional_losses_1203488?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_24_layer_call_fn_1203513?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_24_layer_call_and_return_conditional_losses_1203504?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_dropout_36_layer_call_fn_1203535
,__inference_dropout_36_layer_call_fn_1203540?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_36_layer_call_and_return_conditional_losses_1203530
G__inference_dropout_36_layer_call_and_return_conditional_losses_1203525?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dense_25_layer_call_fn_1203560?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_25_layer_call_and_return_conditional_losses_1203551?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_dropout_37_layer_call_fn_1203582
,__inference_dropout_37_layer_call_fn_1203587?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_37_layer_call_and_return_conditional_losses_1203577
G__inference_dropout_37_layer_call_and_return_conditional_losses_1203572?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dense_26_layer_call_fn_1203607?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_26_layer_call_and_return_conditional_losses_1203598?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_1203136conv2d_32_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
"__inference__wrapped_model_1202539?()9:OP[\gh@?=
6?3
1?.
conv2d_32_input?????????00
? "3?0
.
dense_26"?
dense_26??????????
F__inference_conv2d_32_layer_call_and_return_conditional_losses_1203352l7?4
-?*
(?%
inputs?????????00
? "-?*
#? 
0?????????00@
? ?
+__inference_conv2d_32_layer_call_fn_1203361_7?4
-?*
(?%
inputs?????????00
? " ??????????00@?
F__inference_conv2d_33_layer_call_and_return_conditional_losses_1203399l()7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
+__inference_conv2d_33_layer_call_fn_1203408_()7?4
-?*
(?%
inputs?????????@
? " ??????????@?
F__inference_conv2d_34_layer_call_and_return_conditional_losses_1203446m9:7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
+__inference_conv2d_34_layer_call_fn_1203455`9:7?4
-?*
(?%
inputs?????????@
? "!????????????
E__inference_dense_24_layer_call_and_return_conditional_losses_1203504]OP0?-
&?#
!?
inputs??????????$
? "%?"
?
0?????????@
? ~
*__inference_dense_24_layer_call_fn_1203513POP0?-
&?#
!?
inputs??????????$
? "??????????@?
E__inference_dense_25_layer_call_and_return_conditional_losses_1203551\[\/?,
%?"
 ?
inputs?????????@
? "%?"
?
0????????? 
? }
*__inference_dense_25_layer_call_fn_1203560O[\/?,
%?"
 ?
inputs?????????@
? "?????????? ?
E__inference_dense_26_layer_call_and_return_conditional_losses_1203598\gh/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? }
*__inference_dense_26_layer_call_fn_1203607Ogh/?,
%?"
 ?
inputs????????? 
? "???????????
G__inference_dropout_33_layer_call_and_return_conditional_losses_1203373l;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
G__inference_dropout_33_layer_call_and_return_conditional_losses_1203378l;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
,__inference_dropout_33_layer_call_fn_1203383_;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
,__inference_dropout_33_layer_call_fn_1203388_;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
G__inference_dropout_34_layer_call_and_return_conditional_losses_1203420l;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
G__inference_dropout_34_layer_call_and_return_conditional_losses_1203425l;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
,__inference_dropout_34_layer_call_fn_1203430_;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
,__inference_dropout_34_layer_call_fn_1203435_;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
G__inference_dropout_35_layer_call_and_return_conditional_losses_1203467n<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
G__inference_dropout_35_layer_call_and_return_conditional_losses_1203472n<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
,__inference_dropout_35_layer_call_fn_1203477a<?9
2?/
)?&
inputs??????????
p
? "!????????????
,__inference_dropout_35_layer_call_fn_1203482a<?9
2?/
)?&
inputs??????????
p 
? "!????????????
G__inference_dropout_36_layer_call_and_return_conditional_losses_1203525\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
G__inference_dropout_36_layer_call_and_return_conditional_losses_1203530\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? 
,__inference_dropout_36_layer_call_fn_1203535O3?0
)?&
 ?
inputs?????????@
p
? "??????????@
,__inference_dropout_36_layer_call_fn_1203540O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@?
G__inference_dropout_37_layer_call_and_return_conditional_losses_1203572\3?0
)?&
 ?
inputs????????? 
p
? "%?"
?
0????????? 
? ?
G__inference_dropout_37_layer_call_and_return_conditional_losses_1203577\3?0
)?&
 ?
inputs????????? 
p 
? "%?"
?
0????????? 
? 
,__inference_dropout_37_layer_call_fn_1203582O3?0
)?&
 ?
inputs????????? 
p
? "?????????? 
,__inference_dropout_37_layer_call_fn_1203587O3?0
)?&
 ?
inputs????????? 
p 
? "?????????? ?
F__inference_flatten_8_layer_call_and_return_conditional_losses_1203488b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????$
? ?
+__inference_flatten_8_layer_call_fn_1203493U8?5
.?+
)?&
inputs??????????
? "???????????$?
M__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_1202545?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_26_layer_call_fn_1202551?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_1202557?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_27_layer_call_fn_1202563?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_1202569?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_28_layer_call_fn_1202575?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
I__inference_sequential_8_layer_call_and_return_conditional_losses_1202909()9:OP[\ghH?E
>?;
1?.
conv2d_32_input?????????00
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_8_layer_call_and_return_conditional_losses_1202952()9:OP[\ghH?E
>?;
1?.
conv2d_32_input?????????00
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_8_layer_call_and_return_conditional_losses_1203227v()9:OP[\gh??<
5?2
(?%
inputs?????????00
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_8_layer_call_and_return_conditional_losses_1203283v()9:OP[\gh??<
5?2
(?%
inputs?????????00
p 

 
? "%?"
?
0?????????
? ?
.__inference_sequential_8_layer_call_fn_1203025r()9:OP[\ghH?E
>?;
1?.
conv2d_32_input?????????00
p

 
? "???????????
.__inference_sequential_8_layer_call_fn_1203097r()9:OP[\ghH?E
>?;
1?.
conv2d_32_input?????????00
p 

 
? "???????????
.__inference_sequential_8_layer_call_fn_1203312i()9:OP[\gh??<
5?2
(?%
inputs?????????00
p

 
? "???????????
.__inference_sequential_8_layer_call_fn_1203341i()9:OP[\gh??<
5?2
(?%
inputs?????????00
p 

 
? "???????????
%__inference_signature_wrapper_1203136?()9:OP[\ghS?P
? 
I?F
D
conv2d_32_input1?.
conv2d_32_input?????????00"3?0
.
dense_26"?
dense_26?????????