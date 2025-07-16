.class public abstract Lcom/esotericsoftware/reflectasm/ConstructorAccess;
.super Ljava/lang/Object;
.source "ConstructorAccess.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field isNonStaticMemberClass:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/ConstructorAccess;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/esotericsoftware/reflectasm/ConstructorAccess<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "Non-static member class cannot be created (the enclosing class constructor is private): "

    const-string v2, "Class cannot be created (the no-arg constructor is private): "

    const-string v3, "Non-static member class cannot be created (missing enclosing class constructor): "

    const-string v4, "Class cannot be created (missing no-arg constructor): "

    .line 45
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    .line 46
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-nez v8, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v7

    .line 48
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 49
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ConstructorAccess"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "java."

    .line 50
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "reflectasm."

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 53
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/AccessClassLoader;

    move-result-object v11

    .line 54
    monitor-enter v11

    .line 55
    :try_start_0
    invoke-virtual {v11, v10}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->loadAccessClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    if-nez v12, :cond_6

    const/16 v12, 0x2f

    const/16 v13, 0x2e

    .line 57
    invoke-virtual {v10, v13, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v17

    .line 58
    invoke-virtual {v9, v13, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v8, :cond_3

    const/4 v0, 0x0

    .line 65
    :try_start_1
    move-object v3, v0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 66
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    :try_start_2
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 71
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 68
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 74
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-array v4, v6, [Ljava/lang/Class;

    aput-object v5, v4, v7

    .line 76
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 77
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 82
    :try_start_4
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v4

    if-nez v4, :cond_5

    move-object v0, v2

    .line 87
    :goto_1
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "com/esotericsoftware/reflectasm/PublicConstructorAccess"

    goto :goto_2

    :cond_4
    const-string v2, "com/esotericsoftware/reflectasm/ConstructorAccess"

    .line 91
    :goto_2
    new-instance v3, Lcom/esotericsoftware/asm/ClassWriter;

    invoke-direct {v3, v7}, Lcom/esotericsoftware/asm/ClassWriter;-><init>(I)V

    const v15, 0x3002d

    const/16 v16, 0x21

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object v14, v3

    move-object/from16 v19, v2

    .line 92
    invoke-virtual/range {v14 .. v20}, Lcom/esotericsoftware/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 94
    invoke-static {v3, v2}, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->insertConstructor(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;)V

    .line 95
    invoke-static {v3, v9}, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->insertNewInstance(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;)V

    .line 96
    invoke-static {v3, v9, v0}, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->insertNewInstanceInner(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v3}, Lcom/esotericsoftware/asm/ClassWriter;->visitEnd()V

    .line 99
    invoke-virtual {v3}, Lcom/esotericsoftware/asm/ClassWriter;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v11, v10, v0}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->defineAccessClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v12

    goto :goto_3

    .line 83
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v0

    .line 79
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 101
    :cond_6
    :goto_3
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 104
    :try_start_5
    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/reflectasm/ConstructorAccess;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 108
    instance-of v2, v0, Lcom/esotericsoftware/reflectasm/PublicConstructorAccess;

    if-nez v2, :cond_8

    invoke-static {v1, v12}, Lcom/esotericsoftware/reflectasm/AccessClassLoader;->areInSameRuntimeClassLoader(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 111
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v8, :cond_7

    const-string v3, "Class cannot be created (the no-arg constructor is protected or package-protected, and its ConstructorAccess could not be defined in the same class loader): "

    goto :goto_4

    :cond_7
    const-string v3, "Non-static member class cannot be created (the enclosing class constructor is protected or package-protected, and its ConstructorAccess could not be defined in the same class loader): "

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 114
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_8
    iput-boolean v8, v0, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->isNonStaticMemberClass:Z

    return-object v0

    :catchall_0
    move-exception v0

    .line 106
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception constructing constructor access class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_1
    move-exception v0

    .line 101
    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method private static insertConstructor(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    const-string v2, "<init>"

    const-string v3, "()V"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 121
    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object p0

    .line 122
    invoke-virtual {p0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    const/16 v0, 0x19

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v0, "<init>"

    const-string v1, "()V"

    const/16 v2, 0xb7

    .line 124
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xb1

    .line 125
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const/4 p1, 0x1

    .line 126
    invoke-virtual {p0, p1, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    .line 127
    invoke-virtual {p0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    return-void
.end method

.method static insertNewInstance(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    const-string v2, "newInstance"

    const-string v3, "()Ljava/lang/Object;"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 131
    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object p0

    .line 132
    invoke-virtual {p0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    const/16 v0, 0xbb

    .line 133
    invoke-virtual {p0, v0, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v0, 0x59

    .line 134
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const-string v0, "<init>"

    const-string v1, "()V"

    const/16 v2, 0xb7

    .line 135
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xb0

    .line 136
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const/4 p1, 0x2

    const/4 v0, 0x1

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    .line 138
    invoke-virtual {p0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    return-void
.end method

.method static insertNewInstanceInner(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x1

    const-string v2, "newInstance"

    const-string v3, "(Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 142
    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object p0

    .line 143
    invoke-virtual {p0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    const/4 v0, 0x2

    const-string v1, "<init>"

    const/16 v2, 0xb7

    const/16 v3, 0xbb

    const/16 v4, 0x59

    if-eqz p2, :cond_0

    .line 145
    invoke-virtual {p0, v3, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 146
    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const/16 v3, 0x19

    const/4 v5, 0x1

    .line 147
    invoke-virtual {p0, v3, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xc0

    .line 148
    invoke-virtual {p0, v3, p2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 149
    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const-string v3, "getClass"

    const-string v4, "()Ljava/lang/Class;"

    const/16 v5, 0xb6

    const-string v6, "java/lang/Object"

    .line 150
    invoke-virtual {p0, v5, v6, v3, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x57

    .line 151
    invoke-virtual {p0, v3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(L"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, ";)V"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2, p1, v1, p2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xb0

    .line 153
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const/4 p1, 0x4

    .line 154
    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    goto :goto_0

    :cond_0
    const-string p1, "java/lang/UnsupportedOperationException"

    .line 156
    invoke-virtual {p0, v3, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 157
    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const-string p2, "Not an inner class."

    .line 158
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const-string p2, "(Ljava/lang/String;)V"

    .line 159
    invoke-virtual {p0, v2, p1, v1, p2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xbf

    .line 160
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    const/4 p1, 0x3

    .line 161
    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    .line 163
    :goto_0
    invoke-virtual {p0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    return-void
.end method


# virtual methods
.method public isNonStaticMemberClass()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->isNonStaticMemberClass:Z

    return v0
.end method

.method public abstract newInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method
