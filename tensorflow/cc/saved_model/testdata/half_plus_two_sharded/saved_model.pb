?9
??
9
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
b
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
<
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
H
ShardedFilename
basename	
shard

num_shards
filename
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
q
Variable
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?"serve?)
T
a/initial_valueConst*
_output_shapes
: *
valueB
 *   ?*
dtype0
c
aVariable*
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0
?
a/AssignAssignaa/initial_value*
_output_shapes
: *
validate_shape(*
use_locking(*
T0*
_class

loc:@a
L
a/readIdentitya*
_output_shapes
: *
T0*
_class

loc:@a
T
b/initial_valueConst*
_output_shapes
: *
valueB
 *   @*
dtype0
c
bVariable*
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0
?
b/AssignAssignbb/initial_value*
_output_shapes
: *
validate_shape(*
use_locking(*
T0*
_class

loc:@b
L
b/readIdentityb*
_output_shapes
: *
T0*
_class

loc:@b
M

tf_examplePlaceholder*
_output_shapes
:*
shape: *
dtype0
U
ParseExample/ConstConst*
_output_shapes
: *
valueB *
dtype0
b
ParseExample/ParseExample/namesConst*
_output_shapes
: *
valueB *
dtype0
h
&ParseExample/ParseExample/dense_keys_0Const*
_output_shapes
: *
value	B Bx*
dtype0
?
ParseExample/ParseExampleParseExample
tf_exampleParseExample/ParseExample/names&ParseExample/ParseExample/dense_keys_0ParseExample/Const*
Nsparse *
Tdense
2*'
_output_shapes
:?????????*
Ndense*
sparse_types
 *
dense_shapes
:
Z
xIdentityParseExample/ParseExample*'
_output_shapes
:?????????*
T0
G
MulMula/readx*'
_output_shapes
:?????????*
T0
G
yAddMulb/read*'
_output_shapes
:?????????*
T0
i
ConstConst*
_output_shapes
: *4
value+B) B#/tmp/original/export/assets/foo.txt*
dtype0
e
filename_tensor/initial_valueConst*
_output_shapes
: *
valueB Bfoo.txt*
dtype0
q
filename_tensorVariable*
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0
?
filename_tensor/AssignAssignfilename_tensorfilename_tensor/initial_value*
_output_shapes
: *
validate_shape(*
use_locking(*
T0*"
_class
loc:@filename_tensor
v
filename_tensor/readIdentityfilename_tensor*
_output_shapes
: *
T0*"
_class
loc:@filename_tensor
T
Assign/valueConst*
_output_shapes
: *
valueB Bfoo.txt*
dtype0
?
AssignAssignfilename_tensorAssign/value*
_output_shapes
: *
validate_shape(*
use_locking( *
T0*"
_class
loc:@filename_tensor
I
IdentityIdentityy*'
_output_shapes
:?????????*
T0
"
initNoOp	^a/Assign	^b/Assign


group_depsNoOp^Assign
P

save/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0
?
save/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_4a08dcc6e01f44ad917b11ef11c90c0a/part*
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
Q
save/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
\
save/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
e
save/SaveV2/tensor_namesConst*
_output_shapes
:*
valueBBaBb*
dtype0
g
save/SaveV2/shape_and_slicesConst*
_output_shapes
:*
valueBB B *
dtype0
{
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesab*
dtypes
2
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
_output_shapes
:*

axis *
T0*
N
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
_output_shapes
: *
T0
e
save/RestoreV2/tensor_namesConst*
_output_shapes
:*
valueBBa*
dtype0
h
save/RestoreV2/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2
?
save/AssignAssignasave/RestoreV2*
_output_shapes
: *
validate_shape(*
use_locking(*
T0*
_class

loc:@a
g
save/RestoreV2_1/tensor_namesConst*
_output_shapes
:*
valueBBb*
dtype0
j
!save/RestoreV2_1/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
?
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
?
save/Assign_1Assignbsave/RestoreV2_1*
_output_shapes
: *
validate_shape(*
use_locking(*
T0*
_class

loc:@b
8
save/restore_shardNoOp^save/Assign^save/Assign_1
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8" 
legacy_init_op


group_deps"O
trainable_variables86

a:0a/Assigna/read:0

b:0b/Assignb/read:0"E
	variables86

a:0a/Assigna/read:0

b:0b/Assignb/read:0"]
saved_model_assetsG*E
C
+type.googleapis.com/tensorflow.AssetFileDef
	
Const:0foo.txt"
asset_filepaths
	
Const:0*m
tensorflow/serving/regressO

inputs
tf_example:0
outputs

Identity:0tensorflow/serving/regress