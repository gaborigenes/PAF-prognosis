��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.15.02v2.15.0-0-g6887368d6d48��
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
�
Adam/v/salida/biasVarHandleOp*
_output_shapes
: *#

debug_nameAdam/v/salida/bias/*
dtype0*
shape:*#
shared_nameAdam/v/salida/bias
u
&Adam/v/salida/bias/Read/ReadVariableOpReadVariableOpAdam/v/salida/bias*
_output_shapes
:*
dtype0
�
Adam/m/salida/biasVarHandleOp*
_output_shapes
: *#

debug_nameAdam/m/salida/bias/*
dtype0*
shape:*#
shared_nameAdam/m/salida/bias
u
&Adam/m/salida/bias/Read/ReadVariableOpReadVariableOpAdam/m/salida/bias*
_output_shapes
:*
dtype0
�
Adam/v/salida/kernelVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/salida/kernel/*
dtype0*
shape
:
*%
shared_nameAdam/v/salida/kernel
}
(Adam/v/salida/kernel/Read/ReadVariableOpReadVariableOpAdam/v/salida/kernel*
_output_shapes

:
*
dtype0
�
Adam/m/salida/kernelVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/salida/kernel/*
dtype0*
shape
:
*%
shared_nameAdam/m/salida/kernel
}
(Adam/m/salida/kernel/Read/ReadVariableOpReadVariableOpAdam/m/salida/kernel*
_output_shapes

:
*
dtype0
�
Adam/v/oculta_1/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/oculta_1/bias/*
dtype0*
shape:
*%
shared_nameAdam/v/oculta_1/bias
y
(Adam/v/oculta_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/oculta_1/bias*
_output_shapes
:
*
dtype0
�
Adam/m/oculta_1/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/oculta_1/bias/*
dtype0*
shape:
*%
shared_nameAdam/m/oculta_1/bias
y
(Adam/m/oculta_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/oculta_1/bias*
_output_shapes
:
*
dtype0
�
Adam/v/oculta_1/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/oculta_1/kernel/*
dtype0*
shape
:
*'
shared_nameAdam/v/oculta_1/kernel
�
*Adam/v/oculta_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/oculta_1/kernel*
_output_shapes

:
*
dtype0
�
Adam/m/oculta_1/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/oculta_1/kernel/*
dtype0*
shape
:
*'
shared_nameAdam/m/oculta_1/kernel
�
*Adam/m/oculta_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/oculta_1/kernel*
_output_shapes

:
*
dtype0
�
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
�
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
�
salida/biasVarHandleOp*
_output_shapes
: *

debug_namesalida/bias/*
dtype0*
shape:*
shared_namesalida/bias
g
salida/bias/Read/ReadVariableOpReadVariableOpsalida/bias*
_output_shapes
:*
dtype0
�
salida/kernelVarHandleOp*
_output_shapes
: *

debug_namesalida/kernel/*
dtype0*
shape
:
*
shared_namesalida/kernel
o
!salida/kernel/Read/ReadVariableOpReadVariableOpsalida/kernel*
_output_shapes

:
*
dtype0
�
oculta_1/biasVarHandleOp*
_output_shapes
: *

debug_nameoculta_1/bias/*
dtype0*
shape:
*
shared_nameoculta_1/bias
k
!oculta_1/bias/Read/ReadVariableOpReadVariableOpoculta_1/bias*
_output_shapes
:
*
dtype0
�
oculta_1/kernelVarHandleOp*
_output_shapes
: * 

debug_nameoculta_1/kernel/*
dtype0*
shape
:
* 
shared_nameoculta_1/kernel
s
#oculta_1/kernel/Read/ReadVariableOpReadVariableOpoculta_1/kernel*
_output_shapes

:
*
dtype0
�
serving_default_oculta_1_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_oculta_1_inputoculta_1/kerneloculta_1/biassalida/kernelsalida/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_68172

NoOpNoOp
� 
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*� 
value� B�  B� 
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
 
0
1
2
3*
 
0
1
2
3*
* 
�
non_trainable_variables

layers
metrics
layer_regularization_losses
 layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

!trace_0
"trace_1* 

#trace_0
$trace_1* 
* 
�
%
_variables
&_iterations
'_learning_rate
(_index_dict
)
_momentums
*_velocities
+_update_step_xla*

,serving_default* 

0
1*

0
1*
* 
�
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

2trace_0* 

3trace_0* 
_Y
VARIABLE_VALUEoculta_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEoculta_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

9trace_0* 

:trace_0* 
]W
VARIABLE_VALUEsalida/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEsalida/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

;0
<1*
* 
* 
* 
* 
* 
* 
C
&0
=1
>2
?3
@4
A5
B6
C7
D8*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
=0
?1
A2
C3*
 
>0
@1
B2
D3*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
E	variables
F	keras_api
	Gtotal
	Hcount*
H
I	variables
J	keras_api
	Ktotal
	Lcount
M
_fn_kwargs*
a[
VARIABLE_VALUEAdam/m/oculta_1/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/oculta_1/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/oculta_1/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/oculta_1/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/salida/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/salida/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/salida/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/salida/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*

G0
H1*

E	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

K0
L1*

I	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameoculta_1/kerneloculta_1/biassalida/kernelsalida/bias	iterationlearning_rateAdam/m/oculta_1/kernelAdam/v/oculta_1/kernelAdam/m/oculta_1/biasAdam/v/oculta_1/biasAdam/m/salida/kernelAdam/v/salida/kernelAdam/m/salida/biasAdam/v/salida/biastotal_1count_1totalcountConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_68342
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameoculta_1/kerneloculta_1/biassalida/kernelsalida/bias	iterationlearning_rateAdam/m/oculta_1/kernelAdam/v/oculta_1/kernelAdam/m/oculta_1/biasAdam/v/oculta_1/biasAdam/m/salida/kernelAdam/v/salida/kernelAdam/m/salida/biasAdam/v/salida/biastotal_1count_1totalcount*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_68405��
�
�
 __inference__wrapped_model_68062
oculta_1_inputG
5sequential_11_oculta_1_matmul_readvariableop_resource:
D
6sequential_11_oculta_1_biasadd_readvariableop_resource:
E
3sequential_11_salida_matmul_readvariableop_resource:
B
4sequential_11_salida_biasadd_readvariableop_resource:
identity��-sequential_11/oculta_1/BiasAdd/ReadVariableOp�,sequential_11/oculta_1/MatMul/ReadVariableOp�+sequential_11/salida/BiasAdd/ReadVariableOp�*sequential_11/salida/MatMul/ReadVariableOp�
,sequential_11/oculta_1/MatMul/ReadVariableOpReadVariableOp5sequential_11_oculta_1_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
sequential_11/oculta_1/MatMulMatMuloculta_1_input4sequential_11/oculta_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
-sequential_11/oculta_1/BiasAdd/ReadVariableOpReadVariableOp6sequential_11_oculta_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential_11/oculta_1/BiasAddBiasAdd'sequential_11/oculta_1/MatMul:product:05sequential_11/oculta_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
~
sequential_11/oculta_1/ReluRelu'sequential_11/oculta_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
*sequential_11/salida/MatMul/ReadVariableOpReadVariableOp3sequential_11_salida_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
sequential_11/salida/MatMulMatMul)sequential_11/oculta_1/Relu:activations:02sequential_11/salida/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_11/salida/BiasAdd/ReadVariableOpReadVariableOp4sequential_11_salida_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_11/salida/BiasAddBiasAdd%sequential_11/salida/MatMul:product:03sequential_11/salida/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential_11/salida/SoftmaxSoftmax%sequential_11/salida/BiasAdd:output:0*
T0*'
_output_shapes
:���������u
IdentityIdentity&sequential_11/salida/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^sequential_11/oculta_1/BiasAdd/ReadVariableOp-^sequential_11/oculta_1/MatMul/ReadVariableOp,^sequential_11/salida/BiasAdd/ReadVariableOp+^sequential_11/salida/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2^
-sequential_11/oculta_1/BiasAdd/ReadVariableOp-sequential_11/oculta_1/BiasAdd/ReadVariableOp2\
,sequential_11/oculta_1/MatMul/ReadVariableOp,sequential_11/oculta_1/MatMul/ReadVariableOp2Z
+sequential_11/salida/BiasAdd/ReadVariableOp+sequential_11/salida/BiasAdd/ReadVariableOp2X
*sequential_11/salida/MatMul/ReadVariableOp*sequential_11/salida/MatMul/ReadVariableOp:W S
'
_output_shapes
:���������
(
_user_specified_nameoculta_1_input:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
-__inference_sequential_11_layer_call_fn_68125
oculta_1_input
unknown:

	unknown_0:

	unknown_1:

	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalloculta_1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_68098o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:���������
(
_user_specified_nameoculta_1_input:%!

_user_specified_name68115:%!

_user_specified_name68117:%!

_user_specified_name68119:%!

_user_specified_name68121
�
�
H__inference_sequential_11_layer_call_and_return_conditional_losses_68098
oculta_1_input 
oculta_1_68076:

oculta_1_68078:

salida_68092:

salida_68094:
identity�� oculta_1/StatefulPartitionedCall�salida/StatefulPartitionedCall�
 oculta_1/StatefulPartitionedCallStatefulPartitionedCalloculta_1_inputoculta_1_68076oculta_1_68078*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_oculta_1_layer_call_and_return_conditional_losses_68075�
salida/StatefulPartitionedCallStatefulPartitionedCall)oculta_1/StatefulPartitionedCall:output:0salida_68092salida_68094*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_salida_layer_call_and_return_conditional_losses_68091v
IdentityIdentity'salida/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������f
NoOpNoOp!^oculta_1/StatefulPartitionedCall^salida/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2D
 oculta_1/StatefulPartitionedCall oculta_1/StatefulPartitionedCall2@
salida/StatefulPartitionedCallsalida/StatefulPartitionedCall:W S
'
_output_shapes
:���������
(
_user_specified_nameoculta_1_input:%!

_user_specified_name68076:%!

_user_specified_name68078:%!

_user_specified_name68092:%!

_user_specified_name68094
�
�
(__inference_oculta_1_layer_call_fn_68181

inputs
unknown:

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_oculta_1_layer_call_and_return_conditional_losses_68075o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:%!

_user_specified_name68175:%!

_user_specified_name68177
��
�
__inference__traced_save_68342
file_prefix8
&read_disablecopyonread_oculta_1_kernel:
4
&read_1_disablecopyonread_oculta_1_bias:
8
&read_2_disablecopyonread_salida_kernel:
2
$read_3_disablecopyonread_salida_bias:,
"read_4_disablecopyonread_iteration:	 0
&read_5_disablecopyonread_learning_rate: A
/read_6_disablecopyonread_adam_m_oculta_1_kernel:
A
/read_7_disablecopyonread_adam_v_oculta_1_kernel:
;
-read_8_disablecopyonread_adam_m_oculta_1_bias:
;
-read_9_disablecopyonread_adam_v_oculta_1_bias:
@
.read_10_disablecopyonread_adam_m_salida_kernel:
@
.read_11_disablecopyonread_adam_v_salida_kernel:
:
,read_12_disablecopyonread_adam_m_salida_bias::
,read_13_disablecopyonread_adam_v_salida_bias:+
!read_14_disablecopyonread_total_1: +
!read_15_disablecopyonread_count_1: )
read_16_disablecopyonread_total: )
read_17_disablecopyonread_count: 
savev2_const
identity_37��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_oculta_1_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_oculta_1_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:
z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_oculta_1_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_oculta_1_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:
z
Read_2/DisableCopyOnReadDisableCopyOnRead&read_2_disablecopyonread_salida_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp&read_2_disablecopyonread_salida_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:
x
Read_3/DisableCopyOnReadDisableCopyOnRead$read_3_disablecopyonread_salida_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp$read_3_disablecopyonread_salida_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_4/DisableCopyOnReadDisableCopyOnRead"read_4_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp"read_4_disablecopyonread_iteration^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	e

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: [

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_learning_rate^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_6/DisableCopyOnReadDisableCopyOnRead/read_6_disablecopyonread_adam_m_oculta_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp/read_6_disablecopyonread_adam_m_oculta_1_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:
�
Read_7/DisableCopyOnReadDisableCopyOnRead/read_7_disablecopyonread_adam_v_oculta_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp/read_7_disablecopyonread_adam_v_oculta_1_kernel^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0n
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
e
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes

:
�
Read_8/DisableCopyOnReadDisableCopyOnRead-read_8_disablecopyonread_adam_m_oculta_1_bias"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp-read_8_disablecopyonread_adam_m_oculta_1_bias^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_9/DisableCopyOnReadDisableCopyOnRead-read_9_disablecopyonread_adam_v_oculta_1_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp-read_9_disablecopyonread_adam_v_oculta_1_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_10/DisableCopyOnReadDisableCopyOnRead.read_10_disablecopyonread_adam_m_salida_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp.read_10_disablecopyonread_adam_m_salida_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0o
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
e
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

:
�
Read_11/DisableCopyOnReadDisableCopyOnRead.read_11_disablecopyonread_adam_v_salida_kernel"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp.read_11_disablecopyonread_adam_v_salida_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0o
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
e
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes

:
�
Read_12/DisableCopyOnReadDisableCopyOnRead,read_12_disablecopyonread_adam_m_salida_bias"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp,read_12_disablecopyonread_adam_m_salida_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_13/DisableCopyOnReadDisableCopyOnRead,read_13_disablecopyonread_adam_v_salida_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp,read_13_disablecopyonread_adam_v_salida_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_14/DisableCopyOnReadDisableCopyOnRead!read_14_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp!read_14_disablecopyonread_total_1^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_15/DisableCopyOnReadDisableCopyOnRead!read_15_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp!read_15_disablecopyonread_count_1^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_16/DisableCopyOnReadDisableCopyOnReadread_16_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOpread_16_disablecopyonread_total^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_17/DisableCopyOnReadDisableCopyOnReadread_17_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOpread_17_disablecopyonread_count^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *!
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_36Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_37IdentityIdentity_36:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_37Identity_37:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:/+
)
_user_specified_nameoculta_1/kernel:-)
'
_user_specified_nameoculta_1/bias:-)
'
_user_specified_namesalida/kernel:+'
%
_user_specified_namesalida/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:62
0
_user_specified_nameAdam/m/oculta_1/kernel:62
0
_user_specified_nameAdam/v/oculta_1/kernel:4	0
.
_user_specified_nameAdam/m/oculta_1/bias:4
0
.
_user_specified_nameAdam/v/oculta_1/bias:40
.
_user_specified_nameAdam/m/salida/kernel:40
.
_user_specified_nameAdam/v/salida/kernel:2.
,
_user_specified_nameAdam/m/salida/bias:2.
,
_user_specified_nameAdam/v/salida/bias:'#
!
_user_specified_name	total_1:'#
!
_user_specified_name	count_1:%!

_user_specified_nametotal:%!

_user_specified_namecount:=9

_output_shapes
: 

_user_specified_nameConst
�

�
A__inference_salida_layer_call_and_return_conditional_losses_68212

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
&__inference_salida_layer_call_fn_68201

inputs
unknown:

	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_salida_layer_call_and_return_conditional_losses_68091o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs:%!

_user_specified_name68195:%!

_user_specified_name68197
�	
�
-__inference_sequential_11_layer_call_fn_68138
oculta_1_input
unknown:

	unknown_0:

	unknown_1:

	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalloculta_1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_68112o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:���������
(
_user_specified_nameoculta_1_input:%!

_user_specified_name68128:%!

_user_specified_name68130:%!

_user_specified_name68132:%!

_user_specified_name68134
�

�
A__inference_salida_layer_call_and_return_conditional_losses_68091

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
C__inference_oculta_1_layer_call_and_return_conditional_losses_68192

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������
S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
H__inference_sequential_11_layer_call_and_return_conditional_losses_68112
oculta_1_input 
oculta_1_68101:

oculta_1_68103:

salida_68106:

salida_68108:
identity�� oculta_1/StatefulPartitionedCall�salida/StatefulPartitionedCall�
 oculta_1/StatefulPartitionedCallStatefulPartitionedCalloculta_1_inputoculta_1_68101oculta_1_68103*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_oculta_1_layer_call_and_return_conditional_losses_68075�
salida/StatefulPartitionedCallStatefulPartitionedCall)oculta_1/StatefulPartitionedCall:output:0salida_68106salida_68108*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_salida_layer_call_and_return_conditional_losses_68091v
IdentityIdentity'salida/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������f
NoOpNoOp!^oculta_1/StatefulPartitionedCall^salida/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2D
 oculta_1/StatefulPartitionedCall oculta_1/StatefulPartitionedCall2@
salida/StatefulPartitionedCallsalida/StatefulPartitionedCall:W S
'
_output_shapes
:���������
(
_user_specified_nameoculta_1_input:%!

_user_specified_name68101:%!

_user_specified_name68103:%!

_user_specified_name68106:%!

_user_specified_name68108
�

�
C__inference_oculta_1_layer_call_and_return_conditional_losses_68075

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������
S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�U
�

!__inference__traced_restore_68405
file_prefix2
 assignvariableop_oculta_1_kernel:
.
 assignvariableop_1_oculta_1_bias:
2
 assignvariableop_2_salida_kernel:
,
assignvariableop_3_salida_bias:&
assignvariableop_4_iteration:	 *
 assignvariableop_5_learning_rate: ;
)assignvariableop_6_adam_m_oculta_1_kernel:
;
)assignvariableop_7_adam_v_oculta_1_kernel:
5
'assignvariableop_8_adam_m_oculta_1_bias:
5
'assignvariableop_9_adam_v_oculta_1_bias:
:
(assignvariableop_10_adam_m_salida_kernel:
:
(assignvariableop_11_adam_v_salida_kernel:
4
&assignvariableop_12_adam_m_salida_bias:4
&assignvariableop_13_adam_v_salida_bias:%
assignvariableop_14_total_1: %
assignvariableop_15_count_1: #
assignvariableop_16_total: #
assignvariableop_17_count: 
identity_19��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*`
_output_shapesN
L:::::::::::::::::::*!
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp assignvariableop_oculta_1_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_oculta_1_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp assignvariableop_2_salida_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_salida_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_iterationIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_learning_rateIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp)assignvariableop_6_adam_m_oculta_1_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp)assignvariableop_7_adam_v_oculta_1_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp'assignvariableop_8_adam_m_oculta_1_biasIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp'assignvariableop_9_adam_v_oculta_1_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp(assignvariableop_10_adam_m_salida_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp(assignvariableop_11_adam_v_salida_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_m_salida_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp&assignvariableop_13_adam_v_salida_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_18Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_19IdentityIdentity_18:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_19Identity_19:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:/+
)
_user_specified_nameoculta_1/kernel:-)
'
_user_specified_nameoculta_1/bias:-)
'
_user_specified_namesalida/kernel:+'
%
_user_specified_namesalida/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:62
0
_user_specified_nameAdam/m/oculta_1/kernel:62
0
_user_specified_nameAdam/v/oculta_1/kernel:4	0
.
_user_specified_nameAdam/m/oculta_1/bias:4
0
.
_user_specified_nameAdam/v/oculta_1/bias:40
.
_user_specified_nameAdam/m/salida/kernel:40
.
_user_specified_nameAdam/v/salida/kernel:2.
,
_user_specified_nameAdam/m/salida/bias:2.
,
_user_specified_nameAdam/v/salida/bias:'#
!
_user_specified_name	total_1:'#
!
_user_specified_name	count_1:%!

_user_specified_nametotal:%!

_user_specified_namecount
�
�
#__inference_signature_wrapper_68172
oculta_1_input
unknown:

	unknown_0:

	unknown_1:

	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalloculta_1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_68062o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:���������
(
_user_specified_nameoculta_1_input:%!

_user_specified_name68162:%!

_user_specified_name68164:%!

_user_specified_name68166:%!

_user_specified_name68168"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
I
oculta_1_input7
 serving_default_oculta_1_input:0���������:
salida0
StatefulPartitionedCall:0���������tensorflow/serving/predict:�M
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables

layers
metrics
layer_regularization_losses
 layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
!trace_0
"trace_12�
-__inference_sequential_11_layer_call_fn_68125
-__inference_sequential_11_layer_call_fn_68138�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z!trace_0z"trace_1
�
#trace_0
$trace_12�
H__inference_sequential_11_layer_call_and_return_conditional_losses_68098
H__inference_sequential_11_layer_call_and_return_conditional_losses_68112�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z#trace_0z$trace_1
�B�
 __inference__wrapped_model_68062oculta_1_input"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
%
_variables
&_iterations
'_learning_rate
(_index_dict
)
_momentums
*_velocities
+_update_step_xla"
experimentalOptimizer
,
,serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
2trace_02�
(__inference_oculta_1_layer_call_fn_68181�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z2trace_0
�
3trace_02�
C__inference_oculta_1_layer_call_and_return_conditional_losses_68192�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z3trace_0
!:
2oculta_1/kernel
:
2oculta_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
9trace_02�
&__inference_salida_layer_call_fn_68201�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z9trace_0
�
:trace_02�
A__inference_salida_layer_call_and_return_conditional_losses_68212�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z:trace_0
:
2salida/kernel
:2salida/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_sequential_11_layer_call_fn_68125oculta_1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
-__inference_sequential_11_layer_call_fn_68138oculta_1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_sequential_11_layer_call_and_return_conditional_losses_68098oculta_1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_sequential_11_layer_call_and_return_conditional_losses_68112oculta_1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
_
&0
=1
>2
?3
@4
A5
B6
C7
D8"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
<
=0
?1
A2
C3"
trackable_list_wrapper
<
>0
@1
B2
D3"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
#__inference_signature_wrapper_68172oculta_1_input"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 #

kwonlyargs�
joculta_1_input
kwonlydefaults
 
annotations� *
 
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
�B�
(__inference_oculta_1_layer_call_fn_68181inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_oculta_1_layer_call_and_return_conditional_losses_68192inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
&__inference_salida_layer_call_fn_68201inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_salida_layer_call_and_return_conditional_losses_68212inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
N
E	variables
F	keras_api
	Gtotal
	Hcount"
_tf_keras_metric
^
I	variables
J	keras_api
	Ktotal
	Lcount
M
_fn_kwargs"
_tf_keras_metric
&:$
2Adam/m/oculta_1/kernel
&:$
2Adam/v/oculta_1/kernel
 :
2Adam/m/oculta_1/bias
 :
2Adam/v/oculta_1/bias
$:"
2Adam/m/salida/kernel
$:"
2Adam/v/salida/kernel
:2Adam/m/salida/bias
:2Adam/v/salida/bias
.
G0
H1"
trackable_list_wrapper
-
E	variables"
_generic_user_object
:  (2total
:  (2count
.
K0
L1"
trackable_list_wrapper
-
I	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
 __inference__wrapped_model_68062p7�4
-�*
(�%
oculta_1_input���������
� "/�,
*
salida �
salida����������
C__inference_oculta_1_layer_call_and_return_conditional_losses_68192c/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������

� �
(__inference_oculta_1_layer_call_fn_68181X/�,
%�"
 �
inputs���������
� "!�
unknown���������
�
A__inference_salida_layer_call_and_return_conditional_losses_68212c/�,
%�"
 �
inputs���������

� ",�)
"�
tensor_0���������
� �
&__inference_salida_layer_call_fn_68201X/�,
%�"
 �
inputs���������

� "!�
unknown����������
H__inference_sequential_11_layer_call_and_return_conditional_losses_68098u?�<
5�2
(�%
oculta_1_input���������
p

 
� ",�)
"�
tensor_0���������
� �
H__inference_sequential_11_layer_call_and_return_conditional_losses_68112u?�<
5�2
(�%
oculta_1_input���������
p 

 
� ",�)
"�
tensor_0���������
� �
-__inference_sequential_11_layer_call_fn_68125j?�<
5�2
(�%
oculta_1_input���������
p

 
� "!�
unknown����������
-__inference_sequential_11_layer_call_fn_68138j?�<
5�2
(�%
oculta_1_input���������
p 

 
� "!�
unknown����������
#__inference_signature_wrapper_68172�I�F
� 
?�<
:
oculta_1_input(�%
oculta_1_input���������"/�,
*
salida �
salida���������