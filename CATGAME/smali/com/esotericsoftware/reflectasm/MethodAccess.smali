.class public abstract Lcom/esotericsoftware/reflectasm/MethodAccess;
.super Ljava/lang/Object;
.source "MethodAccess.java"


# instance fields
.field private methodNames:[Ljava/lang/String;

.field private parameterTypes:[[Ljava/lang/Class;

.field private returnTypes:[Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDeclaredMethodsToList(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .line 291
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    .line 292
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 293
    aget-object v2, p0, v1

    .line 294
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 296
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 297
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/MethodAccess;
    .locals 33

    move-object/from16 v0, p0

    .line 84
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_1

    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type must not be an interface, a primitive type, or void."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_2

    move-object v3, v0

    .line 91
    :goto_1
    const-class v4, Ljava/lang/Object;

    if-eq v3, v4, :cond_3

    .line 92
    invoke-static {v3, v2}, Lcom/esotericsoftware/reflectasm/MethodAccess;->addDeclaredMethodsToList(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 93
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    .line 96
    :cond_2
    invoke-static {v0, v2}, Lcom/esotericsoftware/reflectasm/MethodAccess;->recursiveAddInterfaceMethodsToList(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 98
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 99
    new-array v4, v3, [Ljava/lang/String;

    .line 100
    new-array v5, v3, [[Ljava/lang/Class;

    .line 101
    new-array v6, v3, [Ljava/lang/Class;

    const/4 v7, 0x0

    move v8, v7

    :goto_2
    if-ge v8, v3, :cond_4

    .line 103
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Method;

    .line 104
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v8

    .line 105
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v5, v8

    .line 106
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 109
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 110
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "MethodAccess"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "java."

    .line 111
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "reflectasm."

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 114
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    move-result-object v10

    .line 115
    monitor-enter v10

    .line 116
    :try_start_0
    invoke-virtual {v10, v9}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->loadAccessClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_d

    const/16 v0, 0x2f

    const/16 v11, 0x2e

    .line 118
    invoke-virtual {v9, v11, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v15

    .line 119
    invoke-virtual {v8, v11, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v8, Lcom/esotericsoftware/asm/ClassWriter;

    const/4 v11, 0x1

    invoke-direct {v8, v11}, Lcom/esotericsoftware/asm/ClassWriter;-><init>(I)V

    const v13, 0x3002d

    const/16 v14, 0x21

    const/16 v16, 0x0

    const-string v17, "com/esotericsoftware/reflectasm/MethodAccess"

    const/16 v18, 0x0

    move-object v12, v8

    .line 123
    invoke-virtual/range {v12 .. v18}, Lcom/esotericsoftware/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v17, 0x1

    const-string v18, "<init>"

    const-string v19, "()V"

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v8

    .line 126
    invoke-virtual/range {v16 .. v21}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v12

    .line 127
    invoke-virtual {v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    const/16 v13, 0x19

    .line 128
    invoke-virtual {v12, v13, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v14, "com/esotericsoftware/reflectasm/MethodAccess"

    const-string v15, "<init>"

    const-string v11, "()V"

    const/16 v13, 0xb7

    .line 129
    invoke-virtual {v12, v13, v14, v15, v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0xb1

    .line 130
    invoke-virtual {v12, v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 131
    invoke-virtual {v12, v7, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    .line 132
    invoke-virtual {v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    const/16 v17, 0x81

    const-string v18, "invoke"

    const-string v19, "(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;"

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v8

    .line 135
    invoke-virtual/range {v16 .. v21}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v11

    .line 137
    invoke-virtual {v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    .line 139
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    const/4 v14, 0x2

    const/16 v15, 0x15

    if-nez v12, :cond_c

    const/16 v12, 0x19

    const/4 v13, 0x1

    .line 140
    invoke-virtual {v11, v12, v13}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v12, 0xc0

    .line 141
    invoke-virtual {v11, v12, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v13, 0x3a

    const/4 v12, 0x4

    .line 142
    invoke-virtual {v11, v13, v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 144
    invoke-virtual {v11, v15, v14}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 145
    new-array v13, v3, [Lcom/esotericsoftware/asm/Label;

    move v14, v7

    :goto_3
    if-ge v14, v3, :cond_6

    .line 147
    new-instance v20, Lcom/esotericsoftware/asm/Label;

    invoke-direct/range {v20 .. v20}, Lcom/esotericsoftware/asm/Label;-><init>()V

    aput-object v20, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 148
    :cond_6
    new-instance v14, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v14}, Lcom/esotericsoftware/asm/Label;-><init>()V

    add-int/lit8 v15, v3, -0x1

    .line 149
    invoke-virtual {v11, v7, v15, v14, v13}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V

    .line 151
    new-instance v15, Ljava/lang/StringBuilder;

    const/16 v12, 0x80

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    move v12, v7

    :goto_4
    if-ge v12, v3, :cond_b

    .line 153
    aget-object v7, v13, v12

    invoke-virtual {v11, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    if-nez v12, :cond_7

    const/16 v24, 0x1

    const/16 v25, 0x1

    move/from16 v29, v3

    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v23, v11

    move-object/from16 v26, v3

    .line 155
    invoke-virtual/range {v23 .. v28}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    move/from16 v29, v3

    const/16 v24, 0x3

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v23, v11

    .line 157
    invoke-virtual/range {v23 .. v28}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :goto_5
    const/4 v3, 0x4

    const/16 v7, 0x19

    .line 158
    invoke-virtual {v11, v7, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v7, 0x0

    .line 160
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v7, 0x28

    .line 161
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    aget-object v7, v5, v12

    .line 164
    aget-object v21, v6, v12

    move-object/from16 v24, v13

    const/4 v3, 0x0

    .line 165
    :goto_6
    array-length v13, v7

    if-ge v3, v13, :cond_8

    const/4 v13, 0x3

    move-object/from16 v30, v6

    const/16 v6, 0x19

    .line 166
    invoke-virtual {v11, v6, v13}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0x10

    .line 167
    invoke-virtual {v11, v13, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitIntInsn(II)V

    const/16 v13, 0x32

    .line 168
    invoke-virtual {v11, v13}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 169
    aget-object v13, v7, v3

    invoke-static {v13}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/asm/Type;

    move-result-object v13

    .line 170
    invoke-virtual {v13}, Lcom/esotericsoftware/asm/Type;->getSort()I

    move-result v22

    packed-switch v22, :pswitch_data_0

    move-object/from16 v31, v5

    move-object/from16 v25, v7

    :goto_7
    move-object/from16 v32, v9

    goto/16 :goto_9

    .line 207
    :pswitch_0
    invoke-virtual {v13}, Lcom/esotericsoftware/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v25, v7

    const/16 v7, 0xc0

    invoke-virtual {v11, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    :goto_8
    move-object/from16 v31, v5

    goto :goto_7

    :pswitch_1
    move-object/from16 v25, v7

    const/16 v7, 0xc0

    .line 204
    invoke-virtual {v13}, Lcom/esotericsoftware/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto :goto_8

    :pswitch_2
    move-object/from16 v25, v7

    const/16 v7, 0xc0

    const-string v6, "java/lang/Double"

    .line 200
    invoke-virtual {v11, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v6, "java/lang/Double"

    const-string v7, "doubleValue"

    move-object/from16 v31, v5

    const-string v5, "()D"

    move-object/from16 v32, v9

    const/16 v9, 0xb6

    .line 201
    invoke-virtual {v11, v9, v6, v7, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_3
    move-object/from16 v31, v5

    move-object/from16 v25, v7

    move-object/from16 v32, v9

    const-string v5, "java/lang/Long"

    const/16 v6, 0xc0

    .line 196
    invoke-virtual {v11, v6, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v5, "java/lang/Long"

    const-string v6, "longValue"

    const-string v7, "()J"

    const/16 v9, 0xb6

    .line 197
    invoke-virtual {v11, v9, v5, v6, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_4
    move-object/from16 v31, v5

    move-object/from16 v25, v7

    move-object/from16 v32, v9

    const-string v5, "java/lang/Float"

    const/16 v6, 0xc0

    .line 192
    invoke-virtual {v11, v6, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v5, "java/lang/Float"

    const-string v6, "floatValue"

    const-string v7, "()F"

    const/16 v9, 0xb6

    .line 193
    invoke-virtual {v11, v9, v5, v6, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_5
    move-object/from16 v31, v5

    move-object/from16 v25, v7

    move-object/from16 v32, v9

    const-string v5, "java/lang/Integer"

    const/16 v6, 0xc0

    .line 188
    invoke-virtual {v11, v6, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v5, "java/lang/Integer"

    const-string v6, "intValue"

    const-string v7, "()I"

    const/16 v9, 0xb6

    .line 189
    invoke-virtual {v11, v9, v5, v6, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :pswitch_6
    move-object/from16 v31, v5

    move-object/from16 v25, v7

    move-object/from16 v32, v9

    const-string v5, "java/lang/Short"

    const/16 v6, 0xc0

    .line 184
    invoke-virtual {v11, v6, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v5, "java/lang/Short"

    const-string v6, "shortValue"

    const-string v7, "()S"

    const/16 v9, 0xb6

    .line 185
    invoke-virtual {v11, v9, v5, v6, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :pswitch_7
    move-object/from16 v31, v5

    move-object/from16 v25, v7

    move-object/from16 v32, v9

    const-string v5, "java/lang/Byte"

    const/16 v6, 0xc0

    .line 176
    invoke-virtual {v11, v6, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v5, "java/lang/Byte"

    const-string v6, "byteValue"

    const-string v7, "()B"

    const/16 v9, 0xb6

    .line 177
    invoke-virtual {v11, v9, v5, v6, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :pswitch_8
    move-object/from16 v31, v5

    move-object/from16 v25, v7

    move-object/from16 v32, v9

    const-string v5, "java/lang/Character"

    const/16 v6, 0xc0

    .line 180
    invoke-virtual {v11, v6, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v5, "java/lang/Character"

    const-string v6, "charValue"

    const-string v7, "()C"

    const/16 v9, 0xb6

    .line 181
    invoke-virtual {v11, v9, v5, v6, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :pswitch_9
    move-object/from16 v31, v5

    move-object/from16 v25, v7

    move-object/from16 v32, v9

    const-string v5, "java/lang/Boolean"

    const/16 v6, 0xc0

    .line 172
    invoke-virtual {v11, v6, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v5, "java/lang/Boolean"

    const-string v7, "booleanValue"

    const-string v9, "()Z"

    const/16 v6, 0xb6

    .line 173
    invoke-virtual {v11, v6, v5, v7, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_9
    invoke-virtual {v13}, Lcom/esotericsoftware/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, v25

    move-object/from16 v6, v30

    move-object/from16 v5, v31

    move-object/from16 v9, v32

    goto/16 :goto_6

    :cond_8
    move-object/from16 v31, v5

    move-object/from16 v30, v6

    move-object/from16 v32, v9

    const/16 v3, 0x29

    .line 213
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    invoke-static/range {v21 .. v21}, Lcom/esotericsoftware/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0xb8

    if-eqz v1, :cond_9

    const/16 v3, 0xb9

    goto :goto_a

    .line 218
    :cond_9
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v9

    goto :goto_a

    :cond_a
    const/16 v3, 0xb6

    .line 222
    :goto_a
    aget-object v5, v4, v12

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v3, v0, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static/range {v21 .. v21}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/asm/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/esotericsoftware/asm/Type;->getSort()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :goto_b
    const/4 v3, 0x1

    goto :goto_c

    :pswitch_a
    const-string v3, "java/lang/Double"

    const-string v5, "valueOf"

    const-string v6, "(D)Ljava/lang/Double;"

    .line 250
    invoke-virtual {v11, v9, v3, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_b
    const-string v3, "java/lang/Long"

    const-string v5, "valueOf"

    const-string v6, "(J)Ljava/lang/Long;"

    .line 247
    invoke-virtual {v11, v9, v3, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_c
    const-string v3, "java/lang/Float"

    const-string v5, "valueOf"

    const-string v6, "(F)Ljava/lang/Float;"

    .line 244
    invoke-virtual {v11, v9, v3, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_d
    const-string v3, "java/lang/Integer"

    const-string v5, "valueOf"

    const-string v6, "(I)Ljava/lang/Integer;"

    .line 241
    invoke-virtual {v11, v9, v3, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_e
    const-string v3, "java/lang/Short"

    const-string v5, "valueOf"

    const-string v6, "(S)Ljava/lang/Short;"

    .line 238
    invoke-virtual {v11, v9, v3, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_f
    const-string v3, "java/lang/Byte"

    const-string v5, "valueOf"

    const-string v6, "(B)Ljava/lang/Byte;"

    .line 232
    invoke-virtual {v11, v9, v3, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_10
    const-string v3, "java/lang/Character"

    const-string v5, "valueOf"

    const-string v6, "(C)Ljava/lang/Character;"

    .line 235
    invoke-virtual {v11, v9, v3, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_11
    const-string v3, "java/lang/Boolean"

    const-string v5, "valueOf"

    const-string v6, "(Z)Ljava/lang/Boolean;"

    .line 229
    invoke-virtual {v11, v9, v3, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_12
    const/4 v3, 0x1

    .line 226
    invoke-virtual {v11, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    :goto_c
    const/16 v5, 0xb0

    .line 254
    invoke-virtual {v11, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v13, v24

    move/from16 v3, v29

    move-object/from16 v6, v30

    move-object/from16 v5, v31

    move-object/from16 v9, v32

    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_b
    move-object/from16 v31, v5

    move-object/from16 v30, v6

    move-object/from16 v32, v9

    .line 257
    invoke-virtual {v11, v14}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/16 v24, 0x3

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v23, v11

    .line 258
    invoke-virtual/range {v23 .. v28}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_d

    :cond_c
    move-object/from16 v31, v5

    move-object/from16 v30, v6

    move-object/from16 v32, v9

    :goto_d
    const-string v0, "java/lang/IllegalArgumentException"

    const/16 v1, 0xbb

    .line 260
    invoke-virtual {v11, v1, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v0, 0x59

    .line 261
    invoke-virtual {v11, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const-string v2, "java/lang/StringBuilder"

    .line 262
    invoke-virtual {v11, v1, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 263
    invoke-virtual {v11, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const-string v0, "Method not found: "

    .line 264
    invoke-virtual {v11, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const-string v0, "java/lang/StringBuilder"

    const-string v1, "<init>"

    const-string v2, "(Ljava/lang/String;)V"

    const/16 v3, 0xb7

    .line 265
    invoke-virtual {v11, v3, v0, v1, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/16 v1, 0x15

    .line 266
    invoke-virtual {v11, v1, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v0, "java/lang/StringBuilder"

    const-string v1, "append"

    const-string v2, "(I)Ljava/lang/StringBuilder;"

    const/16 v3, 0xb6

    .line 267
    invoke-virtual {v11, v3, v0, v1, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/StringBuilder"

    const-string v1, "toString"

    const-string v2, "()Ljava/lang/String;"

    .line 268
    invoke-virtual {v11, v3, v0, v1, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/IllegalArgumentException"

    const-string v1, "<init>"

    const-string v2, "(Ljava/lang/String;)V"

    const/16 v3, 0xb7

    .line 269
    invoke-virtual {v11, v3, v0, v1, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xbf

    .line 270
    invoke-virtual {v11, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const/4 v0, 0x0

    .line 271
    invoke-virtual {v11, v0, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    .line 272
    invoke-virtual {v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    .line 274
    invoke-virtual {v8}, Lcom/esotericsoftware/asm/ClassWriter;->visitEnd()V

    .line 275
    invoke-virtual {v8}, Lcom/esotericsoftware/asm/ClassWriter;->toByteArray()[B

    move-result-object v0

    move-object/from16 v9, v32

    .line 276
    invoke-virtual {v10, v9, v0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->defineAccessClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v0

    goto :goto_e

    :cond_d
    move-object/from16 v31, v5

    move-object/from16 v30, v6

    .line 278
    :goto_e
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 280
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/reflectasm/MethodAccess;

    .line 281
    iput-object v4, v0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    move-object/from16 v1, v31

    .line 282
    iput-object v1, v0, Lcom/esotericsoftware/reflectasm/MethodAccess;->parameterTypes:[[Ljava/lang/Class;

    move-object/from16 v1, v30

    .line 283
    iput-object v1, v0, Lcom/esotericsoftware/reflectasm/MethodAccess;->returnTypes:[Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 286
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error constructing method access class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_1
    move-exception v0

    .line 278
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method private static recursiveAddInterfaceMethodsToList(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .line 302
    invoke-static {p0, p1}, Lcom/esotericsoftware/reflectasm/MethodAccess;->addDeclaredMethodsToList(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 303
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 304
    invoke-static {v2, p1}, Lcom/esotericsoftware/reflectasm/MethodAccess;->recursiveAddInterfaceMethodsToList(Ljava/lang/Class;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 50
    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find non-private method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIndex(Ljava/lang/String;I)I
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 64
    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->parameterTypes:[[Ljava/lang/Class;

    aget-object v2, v2, v1

    array-length v2, v2

    if-ne v2, p2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find non-private method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " with "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " params."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs getIndex(Ljava/lang/String;[Ljava/lang/Class;)I
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 57
    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->parameterTypes:[[Ljava/lang/Class;

    aget-object v2, v2, v1

    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find non-private method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMethodNames()[Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->methodNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()[[Ljava/lang/Class;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->parameterTypes:[[Ljava/lang/Class;

    return-object v0
.end method

.method public getReturnTypes()[Ljava/lang/Class;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/MethodAccess;->returnTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public varargs abstract invoke(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public varargs invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p2, p3}, Lcom/esotericsoftware/reflectasm/MethodAccess;->getIndex(Ljava/lang/String;[Ljava/lang/Class;)I

    move-result p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/esotericsoftware/reflectasm/MethodAccess;->invoke(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :cond_0
    array-length v0, p3

    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/esotericsoftware/reflectasm/MethodAccess;->getIndex(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/reflectasm/MethodAccess;->invoke(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
