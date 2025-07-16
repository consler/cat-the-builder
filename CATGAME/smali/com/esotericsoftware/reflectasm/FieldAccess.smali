.class public abstract Lcom/esotericsoftware/reflectasm/FieldAccess;
.super Ljava/lang/Object;
.source "FieldAccess.java"


# instance fields
.field private fieldNames:[Ljava/lang/String;

.field private fieldTypes:[Ljava/lang/Class;

.field private fields:[Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/FieldAccess;
    .locals 15

    .line 113
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    .line 118
    :goto_0
    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    .line 119
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 120
    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_2

    .line 121
    aget-object v5, v2, v3

    .line 122
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    .line 123
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    .line 124
    :cond_0
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 125
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Class;

    move v5, v3

    :goto_3
    if-ge v5, v1, :cond_4

    .line 133
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 134
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 137
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "FieldAccess"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "java."

    .line 139
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "reflectasm."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 142
    :cond_5
    invoke-static {p0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    move-result-object p0

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->loadAccessClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_6

    const/16 v6, 0x2f

    const/16 v7, 0x2e

    .line 146
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    .line 147
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 149
    new-instance v6, Lcom/esotericsoftware/asm/ClassWriter;

    invoke-direct {v6, v3}, Lcom/esotericsoftware/asm/ClassWriter;-><init>(I)V

    const v9, 0x3002d

    const/16 v10, 0x21

    const/4 v12, 0x0

    const-string v13, "com/esotericsoftware/reflectasm/FieldAccess"

    const/4 v14, 0x0

    move-object v8, v6

    .line 150
    invoke-virtual/range {v8 .. v14}, Lcom/esotericsoftware/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 152
    invoke-static {v6}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertConstructor(Lcom/esotericsoftware/asm/ClassWriter;)V

    .line 153
    invoke-static {v6, v1, v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetObject(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 154
    invoke-static {v6, v1, v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetObject(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 155
    sget-object v3, Lcom/esotericsoftware/asm/Type;->BOOLEAN_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 156
    sget-object v3, Lcom/esotericsoftware/asm/Type;->BOOLEAN_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 157
    sget-object v3, Lcom/esotericsoftware/asm/Type;->BYTE_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 158
    sget-object v3, Lcom/esotericsoftware/asm/Type;->BYTE_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 159
    sget-object v3, Lcom/esotericsoftware/asm/Type;->SHORT_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 160
    sget-object v3, Lcom/esotericsoftware/asm/Type;->SHORT_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 161
    sget-object v3, Lcom/esotericsoftware/asm/Type;->INT_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 162
    sget-object v3, Lcom/esotericsoftware/asm/Type;->INT_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 163
    sget-object v3, Lcom/esotericsoftware/asm/Type;->LONG_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 164
    sget-object v3, Lcom/esotericsoftware/asm/Type;->LONG_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 165
    sget-object v3, Lcom/esotericsoftware/asm/Type;->DOUBLE_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 166
    sget-object v3, Lcom/esotericsoftware/asm/Type;->DOUBLE_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 167
    sget-object v3, Lcom/esotericsoftware/asm/Type;->FLOAT_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 168
    sget-object v3, Lcom/esotericsoftware/asm/Type;->FLOAT_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 169
    sget-object v3, Lcom/esotericsoftware/asm/Type;->CHAR_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 170
    sget-object v3, Lcom/esotericsoftware/asm/Type;->CHAR_TYPE:Lcom/esotericsoftware/asm/Type;

    invoke-static {v6, v1, v0, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertSetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V

    .line 171
    invoke-static {v6, v1, v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertGetString(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 172
    invoke-virtual {v6}, Lcom/esotericsoftware/asm/ClassWriter;->visitEnd()V

    .line 173
    invoke-virtual {v6}, Lcom/esotericsoftware/asm/ClassWriter;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->defineAccessClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v6

    .line 175
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 177
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/esotericsoftware/reflectasm/FieldAccess;

    .line 178
    iput-object v2, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldNames:[Ljava/lang/String;

    .line 179
    iput-object v4, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldTypes:[Ljava/lang/Class;

    .line 180
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fields:[Ljava/lang/reflect/Field;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 183
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error constructing field access class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 175
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 114
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The type must not be the Object class, an interface, a primitive type, or void."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static insertConstructor(Lcom/esotericsoftware/asm/ClassWriter;)V
    .locals 6

    const/4 v1, 0x1

    const-string v2, "<init>"

    const-string v3, "()V"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 188
    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object p0

    .line 189
    invoke-virtual {p0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    const/16 v0, 0x19

    const/4 v1, 0x0

    .line 190
    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v0, "<init>"

    const-string v1, "()V"

    const/16 v2, 0xb7

    const-string v3, "com/esotericsoftware/reflectasm/FieldAccess"

    .line 191
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb1

    .line 192
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const/4 v0, 0x1

    .line 193
    invoke-virtual {p0, v0, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    .line 194
    invoke-virtual {p0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    return-void
.end method

.method private static insertGetObject(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/asm/ClassWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const-string v2, "get"

    const-string v3, "(Ljava/lang/Object;I)Ljava/lang/Object;"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 277
    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object p0

    .line 278
    invoke-virtual {p0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    const/16 v0, 0x15

    const/4 v1, 0x2

    .line 279
    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 281
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 283
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/esotericsoftware/asm/Label;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 285
    new-instance v4, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v4}, Lcom/esotericsoftware/asm/Label;-><init>()V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 286
    :cond_0
    new-instance v3, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v3}, Lcom/esotericsoftware/asm/Label;-><init>()V

    add-int/lit8 v4, v0, -0x1

    .line 287
    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V

    :goto_1
    if-ge v2, v0, :cond_1

    .line 290
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 292
    aget-object v5, v1, v2

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    .line 293
    invoke-virtual/range {v6 .. v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v5, 0x19

    const/4 v6, 0x1

    .line 294
    invoke-virtual {p0, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xc0

    .line 295
    invoke-virtual {p0, v5, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 296
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    const/16 v7, 0x2f

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 297
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/esotericsoftware/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xb4

    .line 296
    invoke-virtual {p0, v8, v5, v6, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/asm/Type;

    move-result-object v4

    .line 300
    invoke-virtual {v4}, Lcom/esotericsoftware/asm/Type;->getSort()I

    move-result v4

    const-string v5, "valueOf"

    const/16 v6, 0xb8

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v4, "java/lang/Double"

    const-string v7, "(D)Ljava/lang/Double;"

    .line 323
    invoke-virtual {p0, v6, v4, v5, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    const-string v4, "java/lang/Long"

    const-string v7, "(J)Ljava/lang/Long;"

    .line 320
    invoke-virtual {p0, v6, v4, v5, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    const-string v4, "java/lang/Float"

    const-string v7, "(F)Ljava/lang/Float;"

    .line 317
    invoke-virtual {p0, v6, v4, v5, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    const-string v4, "java/lang/Integer"

    const-string v7, "(I)Ljava/lang/Integer;"

    .line 314
    invoke-virtual {p0, v6, v4, v5, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    const-string v4, "java/lang/Short"

    const-string v7, "(S)Ljava/lang/Short;"

    .line 311
    invoke-virtual {p0, v6, v4, v5, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    const-string v4, "java/lang/Byte"

    const-string v7, "(B)Ljava/lang/Byte;"

    .line 305
    invoke-virtual {p0, v6, v4, v5, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_6
    const-string v4, "java/lang/Character"

    const-string v7, "(C)Ljava/lang/Character;"

    .line 308
    invoke-virtual {p0, v6, v4, v5, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_7
    const-string v4, "java/lang/Boolean"

    const-string v7, "(Z)Ljava/lang/Boolean;"

    .line 302
    invoke-virtual {p0, v6, v4, v5, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/16 v4, 0xb0

    .line 327
    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 330
    :cond_1
    invoke-virtual {p0, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    .line 331
    invoke-virtual/range {v6 .. v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/4 p1, 0x5

    goto :goto_3

    :cond_2
    const/4 p1, 0x6

    .line 333
    :goto_3
    invoke-static {p0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldNotFound(Lcom/esotericsoftware/asm/MethodVisitor;)Lcom/esotericsoftware/asm/MethodVisitor;

    const/4 p2, 0x3

    .line 334
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    .line 335
    invoke-virtual {p0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static insertGetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/asm/ClassWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Lcom/esotericsoftware/asm/Type;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 487
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/asm/Type;->getSort()I

    move-result v2

    const/16 v3, 0xac

    packed-switch v2, :pswitch_data_0

    const-string v2, "get"

    const/16 v3, 0xb0

    goto :goto_0

    :pswitch_0
    const-string v2, "getDouble"

    const/16 v3, 0xaf

    goto :goto_0

    :pswitch_1
    const-string v2, "getLong"

    const/16 v3, 0xad

    goto :goto_0

    :pswitch_2
    const-string v2, "getFloat"

    const/16 v3, 0xae

    goto :goto_0

    :pswitch_3
    const-string v2, "getInt"

    goto :goto_0

    :pswitch_4
    const-string v2, "getShort"

    goto :goto_0

    :pswitch_5
    const-string v2, "getByte"

    goto :goto_0

    :pswitch_6
    const-string v2, "getChar"

    goto :goto_0

    :pswitch_7
    const-string v2, "getBoolean"

    :goto_0
    move-object v6, v2

    const/4 v5, 0x1

    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "(Ljava/lang/Object;I)"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v2

    .line 528
    invoke-virtual {v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    const/16 v4, 0x15

    const/4 v5, 0x2

    .line 529
    invoke-virtual {v2, v4, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 531
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 533
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v5, v4, [Lcom/esotericsoftware/asm/Label;

    .line 534
    new-instance v6, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v6}, Lcom/esotericsoftware/asm/Label;-><init>()V

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_1
    const/4 v15, 0x1

    if-ge v8, v4, :cond_1

    .line 537
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Field;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/asm/Type;

    move-result-object v10

    move-object/from16 v14, p3

    invoke-virtual {v10, v14}, Lcom/esotericsoftware/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 538
    new-instance v10, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v10}, Lcom/esotericsoftware/asm/Label;-><init>()V

    aput-object v10, v5, v8

    goto :goto_2

    .line 540
    :cond_0
    aput-object v6, v5, v8

    move v9, v15

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v14, p3

    .line 544
    new-instance v8, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v8}, Lcom/esotericsoftware/asm/Label;-><init>()V

    add-int/lit8 v10, v4, -0x1

    .line 545
    invoke-virtual {v2, v7, v10, v8, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V

    :goto_3
    if-ge v7, v4, :cond_3

    .line 548
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v16, v10

    check-cast v16, Ljava/lang/reflect/Field;

    .line 549
    aget-object v10, v5, v7

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 550
    aget-object v10, v5, v7

    invoke-virtual {v2, v10}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v10, v2

    move/from16 v14, v17

    move v0, v15

    move-object/from16 v15, v18

    .line 551
    invoke-virtual/range {v10 .. v15}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v10, 0x19

    .line 552
    invoke-virtual {v2, v10, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v10, 0xc0

    move-object/from16 v11, p1

    .line 553
    invoke-virtual {v2, v10, v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 554
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0x2e

    const/16 v13, 0x2f

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xb4

    invoke-virtual {v2, v13, v10, v12, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {v2, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_4

    :cond_2
    move-object/from16 v11, p1

    move v0, v15

    :goto_4
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v14, p3

    move v15, v0

    move-object/from16 v0, p2

    goto :goto_3

    :cond_3
    if-eqz v9, :cond_4

    .line 561
    invoke-virtual {v2, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v2

    .line 562
    invoke-virtual/range {v10 .. v15}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 563
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldType(Lcom/esotericsoftware/asm/MethodVisitor;Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    .line 566
    :cond_4
    invoke-virtual {v2, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v2

    .line 567
    invoke-virtual/range {v10 .. v15}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/4 v0, 0x5

    goto :goto_5

    :cond_5
    const/4 v0, 0x6

    .line 569
    :goto_5
    invoke-static {v2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldNotFound(Lcom/esotericsoftware/asm/MethodVisitor;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v1

    const/4 v2, 0x3

    .line 570
    invoke-virtual {v1, v0, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    .line 571
    invoke-virtual {v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static insertGetString(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/asm/ClassWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    const/4 v2, 0x1

    const-string v3, "getString"

    const-string v4, "(Ljava/lang/Object;I)Ljava/lang/String;"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 340
    invoke-virtual/range {v1 .. v6}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v1

    .line 341
    invoke-virtual {v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    const/16 v2, 0x15

    const/4 v3, 0x2

    .line 342
    invoke-virtual {v1, v2, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 344
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 346
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [Lcom/esotericsoftware/asm/Label;

    .line 347
    new-instance v4, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v4}, Lcom/esotericsoftware/asm/Label;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    move v13, v6

    :goto_0
    const/4 v14, 0x1

    if-ge v6, v2, :cond_1

    .line 350
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Field;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 351
    new-instance v7, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v7}, Lcom/esotericsoftware/asm/Label;-><init>()V

    aput-object v7, v3, v6

    goto :goto_1

    .line 353
    :cond_0
    aput-object v4, v3, v6

    move v13, v14

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 357
    :cond_1
    new-instance v6, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v6}, Lcom/esotericsoftware/asm/Label;-><init>()V

    add-int/lit8 v7, v2, -0x1

    .line 358
    invoke-virtual {v1, v5, v7, v6, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V

    :goto_2
    if-ge v5, v2, :cond_3

    .line 361
    aget-object v7, v3, v5

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 362
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Ljava/lang/reflect/Field;

    .line 363
    aget-object v7, v3, v5

    invoke-virtual {v1, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v1

    .line 364
    invoke-virtual/range {v7 .. v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v7, 0x19

    .line 365
    invoke-virtual {v1, v7, v14}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v7, 0xc0

    move-object/from16 v8, p1

    .line 366
    invoke-virtual {v1, v7, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 367
    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x2e

    const/16 v10, 0x2f

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Ljava/lang/String;"

    const/16 v11, 0xb4

    invoke-virtual {v1, v11, v7, v9, v10}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xb0

    .line 369
    invoke-virtual {v1, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_3

    :cond_2
    move-object/from16 v8, p1

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    if-eqz v13, :cond_4

    .line 374
    invoke-virtual {v1, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v1

    .line 375
    invoke-virtual/range {v7 .. v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const-string v0, "String"

    .line 376
    invoke-static {v1, v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldType(Lcom/esotericsoftware/asm/MethodVisitor;Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    .line 379
    :cond_4
    invoke-virtual {v1, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v1

    .line 380
    invoke-virtual/range {v7 .. v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/4 v0, 0x5

    goto :goto_4

    :cond_5
    const/4 v0, 0x6

    .line 382
    :goto_4
    invoke-static {v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldNotFound(Lcom/esotericsoftware/asm/MethodVisitor;)Lcom/esotericsoftware/asm/MethodVisitor;

    const/4 v2, 0x3

    .line 383
    invoke-virtual {v1, v0, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    .line 384
    invoke-virtual {v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    return-void
.end method

.method private static insertSetObject(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/asm/ClassWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const-string v2, "set"

    const-string v3, "(Ljava/lang/Object;ILjava/lang/Object;)V"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 199
    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object p0

    .line 200
    invoke-virtual {p0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    const/16 v0, 0x15

    const/4 v1, 0x2

    .line 201
    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 203
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 205
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/esotericsoftware/asm/Label;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 207
    new-instance v4, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v4}, Lcom/esotericsoftware/asm/Label;-><init>()V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    :cond_0
    new-instance v3, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v3}, Lcom/esotericsoftware/asm/Label;-><init>()V

    add-int/lit8 v4, v0, -0x1

    .line 209
    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V

    :goto_1
    if-ge v2, v0, :cond_1

    .line 212
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 213
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/asm/Type;

    move-result-object v5

    .line 215
    aget-object v6, v1, v2

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    .line 216
    invoke-virtual/range {v6 .. v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v6, 0x19

    const/4 v7, 0x1

    .line 217
    invoke-virtual {p0, v6, v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v7, 0xc0

    .line 218
    invoke-virtual {p0, v7, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/4 v8, 0x3

    .line 219
    invoke-virtual {p0, v6, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 221
    invoke-virtual {v5}, Lcom/esotericsoftware/asm/Type;->getSort()I

    move-result v6

    const/16 v8, 0xb6

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_2

    .line 258
    :pswitch_0
    invoke-virtual {v5}, Lcom/esotericsoftware/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 255
    :pswitch_1
    invoke-virtual {v5}, Lcom/esotericsoftware/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto :goto_2

    :pswitch_2
    const-string v6, "java/lang/Double"

    .line 251
    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v7, "doubleValue"

    const-string v9, "()D"

    .line 252
    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    const-string v6, "java/lang/Long"

    .line 247
    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v7, "longValue"

    const-string v9, "()J"

    .line 248
    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    const-string v6, "java/lang/Float"

    .line 243
    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v7, "floatValue"

    const-string v9, "()F"

    .line 244
    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    const-string v6, "java/lang/Integer"

    .line 239
    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v7, "intValue"

    const-string v9, "()I"

    .line 240
    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_6
    const-string v6, "java/lang/Short"

    .line 235
    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v7, "shortValue"

    const-string v9, "()S"

    .line 236
    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_7
    const-string v6, "java/lang/Byte"

    .line 227
    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v7, "byteValue"

    const-string v9, "()B"

    .line 228
    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_8
    const-string v6, "java/lang/Character"

    .line 231
    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v7, "charValue"

    const-string v9, "()C"

    .line 232
    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_9
    const-string v6, "java/lang/Boolean"

    .line 223
    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const-string v7, "booleanValue"

    const-string v9, "()Z"

    .line 224
    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :goto_2
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2e

    const/16 v8, 0x2f

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 263
    invoke-virtual {v5}, Lcom/esotericsoftware/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xb5

    .line 262
    invoke-virtual {p0, v7, v6, v4, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb1

    .line 264
    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 267
    :cond_1
    invoke-virtual {p0, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    .line 268
    invoke-virtual/range {v6 .. v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/4 p1, 0x5

    goto :goto_3

    :cond_2
    const/4 p1, 0x6

    .line 270
    :goto_3
    invoke-static {p0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldNotFound(Lcom/esotericsoftware/asm/MethodVisitor;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object p0

    const/4 p2, 0x4

    .line 271
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    .line 272
    invoke-virtual {p0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    return-void

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
.end method

.method private static insertSetPrimitive(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/asm/Type;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/asm/ClassWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Lcom/esotericsoftware/asm/Type;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 392
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/asm/Type;->getSort()I

    move-result v2

    const/16 v3, 0x19

    const/16 v5, 0x15

    const/4 v6, 0x4

    packed-switch v2, :pswitch_data_0

    const-string v2, "set"

    move-object v9, v2

    move v2, v3

    goto :goto_2

    :pswitch_0
    const-string v2, "setDouble"

    const/16 v6, 0x18

    goto :goto_0

    :pswitch_1
    const-string v2, "setLong"

    const/16 v6, 0x16

    :goto_0
    move-object v9, v2

    move v2, v6

    const/4 v6, 0x5

    goto :goto_2

    :pswitch_2
    const-string v2, "setFloat"

    const/16 v7, 0x17

    move-object v9, v2

    move v2, v7

    goto :goto_2

    :pswitch_3
    const-string v2, "setInt"

    goto :goto_1

    :pswitch_4
    const-string v2, "setShort"

    goto :goto_1

    :pswitch_5
    const-string v2, "setByte"

    goto :goto_1

    :pswitch_6
    const-string v2, "setChar"

    goto :goto_1

    :pswitch_7
    const-string v2, "setBoolean"

    :goto_1
    move-object v9, v2

    move v2, v5

    :goto_2
    const/4 v8, 0x1

    .line 434
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "(Ljava/lang/Object;I"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ")V"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v7

    .line 436
    invoke-virtual {v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    const/4 v8, 0x2

    .line 437
    invoke-virtual {v7, v5, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 441
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v8, v5, [Lcom/esotericsoftware/asm/Label;

    .line 442
    new-instance v9, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v9}, Lcom/esotericsoftware/asm/Label;-><init>()V

    const/4 v10, 0x0

    move v11, v10

    move v12, v11

    :goto_3
    const/4 v15, 0x1

    if-ge v11, v5, :cond_1

    .line 445
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/Field;

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/asm/Type;

    move-result-object v13

    move-object/from16 v14, p3

    invoke-virtual {v13, v14}, Lcom/esotericsoftware/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 446
    new-instance v13, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v13}, Lcom/esotericsoftware/asm/Label;-><init>()V

    aput-object v13, v8, v11

    goto :goto_4

    .line 448
    :cond_0
    aput-object v9, v8, v11

    move v12, v15

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_1
    move-object/from16 v14, p3

    .line 452
    new-instance v11, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v11}, Lcom/esotericsoftware/asm/Label;-><init>()V

    add-int/lit8 v13, v5, -0x1

    .line 453
    invoke-virtual {v7, v10, v13, v11, v8}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V

    :goto_5
    if-ge v10, v5, :cond_3

    .line 456
    aget-object v13, v8, v10

    invoke-virtual {v13, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 457
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v19, v13

    check-cast v19, Ljava/lang/reflect/Field;

    .line 458
    aget-object v13, v8, v10

    invoke-virtual {v7, v13}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v7

    move/from16 v14, v16

    move v4, v15

    move/from16 v15, v17

    move-object/from16 v16, v18

    move/from16 v17, v20

    move-object/from16 v18, v21

    .line 459
    invoke-virtual/range {v13 .. v18}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 460
    invoke-virtual {v7, v3, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0xc0

    move-object/from16 v14, p1

    .line 461
    invoke-virtual {v7, v13, v14}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/4 v13, 0x3

    .line 462
    invoke-virtual {v7, v2, v13}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    .line 463
    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const/16 v15, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v13, v15, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    const/16 v15, 0xb5

    invoke-virtual {v7, v15, v3, v13, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xb1

    .line 465
    invoke-virtual {v7, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_6

    :cond_2
    move-object/from16 v14, p1

    move v4, v15

    :goto_6
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v14, p3

    move v15, v4

    const/16 v3, 0x19

    goto :goto_5

    :cond_3
    if-eqz v12, :cond_4

    .line 470
    invoke-virtual {v7, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v7

    .line 471
    invoke-virtual/range {v13 .. v18}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 472
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldType(Lcom/esotericsoftware/asm/MethodVisitor;Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    .line 475
    :cond_4
    invoke-virtual {v7, v11}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v7

    .line 476
    invoke-virtual/range {v13 .. v18}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/4 v4, 0x5

    goto :goto_7

    :cond_5
    const/4 v4, 0x6

    .line 478
    :goto_7
    invoke-static {v7}, Lcom/esotericsoftware/reflectasm/FieldAccess;->insertThrowExceptionForFieldNotFound(Lcom/esotericsoftware/asm/MethodVisitor;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v0

    .line 479
    invoke-virtual {v0, v4, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    .line 480
    invoke-virtual {v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static insertThrowExceptionForFieldNotFound(Lcom/esotericsoftware/asm/MethodVisitor;)Lcom/esotericsoftware/asm/MethodVisitor;
    .locals 8

    const/16 v0, 0xbb

    const-string v1, "java/lang/IllegalArgumentException"

    .line 575
    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v2, 0x59

    .line 576
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const-string v3, "java/lang/StringBuilder"

    .line 577
    invoke-virtual {p0, v0, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 578
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const-string v0, "Field not found: "

    .line 579
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xb7

    const-string v2, "<init>"

    const-string v4, "(Ljava/lang/String;)V"

    .line 580
    invoke-virtual {p0, v0, v3, v2, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x15

    const/4 v6, 0x2

    .line 581
    invoke-virtual {p0, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v5, "append"

    const-string v6, "(I)Ljava/lang/StringBuilder;"

    const/16 v7, 0xb6

    .line 582
    invoke-virtual {p0, v7, v3, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "toString"

    const-string v6, "()Ljava/lang/String;"

    .line 583
    invoke-virtual {p0, v7, v3, v5, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xbf

    .line 585
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    return-object p0
.end method

.method private static insertThrowExceptionForFieldType(Lcom/esotericsoftware/asm/MethodVisitor;Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;
    .locals 7

    const/16 v0, 0xbb

    const-string v1, "java/lang/IllegalArgumentException"

    .line 590
    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v2, 0x59

    .line 591
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const-string v3, "java/lang/StringBuilder"

    .line 592
    invoke-virtual {p0, v0, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 593
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Field not declared as "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 p1, 0xb7

    const-string v0, "<init>"

    const-string v2, "(Ljava/lang/String;)V"

    .line 595
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x15

    const/4 v5, 0x2

    .line 596
    invoke-virtual {p0, v4, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v4, "append"

    const-string v5, "(I)Ljava/lang/StringBuilder;"

    const/16 v6, 0xb6

    .line 597
    invoke-virtual {p0, v6, v3, v4, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "toString"

    const-string v5, "()Ljava/lang/String;"

    .line 598
    invoke-virtual {p0, v6, v3, v4, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xbf

    .line 600
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    return-object p0
.end method


# virtual methods
.method public abstract get(Ljava/lang/Object;I)Ljava/lang/Object;
.end method

.method public get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->getIndex(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract getBoolean(Ljava/lang/Object;I)Z
.end method

.method public abstract getByte(Ljava/lang/Object;I)B
.end method

.method public abstract getChar(Ljava/lang/Object;I)C
.end method

.method public abstract getDouble(Ljava/lang/Object;I)D
.end method

.method public getFieldCount()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldTypes:[Ljava/lang/Class;

    array-length v0, v0

    return v0
.end method

.method public getFieldNames()[Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getFieldTypes()[Ljava/lang/Class;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getFields()[Ljava/lang/reflect/Field;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fields:[Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public abstract getFloat(Ljava/lang/Object;I)F
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldNames:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 35
    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fieldNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find non-private field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIndex(Ljava/lang/reflect/Field;)I
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fields:[Ljava/lang/reflect/Field;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 41
    iget-object v2, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fields:[Ljava/lang/reflect/Field;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find non-private field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getInt(Ljava/lang/Object;I)I
.end method

.method public abstract getLong(Ljava/lang/Object;I)J
.end method

.method public abstract getShort(Ljava/lang/Object;I)S
.end method

.method public abstract getString(Ljava/lang/Object;I)Ljava/lang/String;
.end method

.method public abstract set(Ljava/lang/Object;ILjava/lang/Object;)V
.end method

.method public set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->getIndex(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public abstract setBoolean(Ljava/lang/Object;IZ)V
.end method

.method public abstract setByte(Ljava/lang/Object;IB)V
.end method

.method public abstract setChar(Ljava/lang/Object;IC)V
.end method

.method public abstract setDouble(Ljava/lang/Object;ID)V
.end method

.method public setFields([Ljava/lang/reflect/Field;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/esotericsoftware/reflectasm/FieldAccess;->fields:[Ljava/lang/reflect/Field;

    return-void
.end method

.method public abstract setFloat(Ljava/lang/Object;IF)V
.end method

.method public abstract setInt(Ljava/lang/Object;II)V
.end method

.method public abstract setLong(Ljava/lang/Object;IJ)V
.end method

.method public abstract setShort(Ljava/lang/Object;IS)V
.end method
