.class public Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;
.super Ljava/lang/Object;
.source "DependencyInjectionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    }
.end annotation


# static fields
.field static synthetic class$com$thoughtworks$xstream$core$util$TypedNull:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 93
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public static newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "type"    # Ljava/lang/Class;
    .param p1, "dependencies"    # [Ljava/lang/Object;

    .line 47
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;
    .locals 27
    .param p0, "type"    # Ljava/lang/Class;
    .param p1, "dependencies"    # [Ljava/lang/Object;
    .param p2, "usedDependencies"    # Ljava/util/BitSet;

    .line 66
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_1

    array-length v0, v1

    const/16 v3, 0x3f

    if-gt v0, v3, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "More than 63 arguments are not supported"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 70
    .local v0, "bestMatchingCtor":Ljava/lang/reflect/Constructor;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v3, "matchingDependencies":Ljava/util/ArrayList;
    const/4 v4, 0x0

    .line 72
    .local v4, "possibleMatchingDependencies":Ljava/util/List;
    const-wide/16 v5, 0x0

    .line 73
    .local v5, "usedDeps":J
    const-wide/16 v7, 0x0

    .line 75
    .local v7, "possibleUsedDeps":J
    const-string v9, "construction-type"

    const/4 v10, 0x1

    if-eqz v1, :cond_1e

    array-length v11, v1

    if-lez v11, :cond_1e

    .line 77
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v11

    .line 78
    .local v11, "ctors":[Ljava/lang/reflect/Constructor;
    array-length v12, v11

    if-le v12, v10, :cond_2

    .line 79
    new-instance v12, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$1;

    invoke-direct {v12}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$1;-><init>()V

    invoke-static {v11, v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 87
    :cond_2
    array-length v12, v1

    new-array v12, v12, [Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;

    .line 88
    .local v12, "typedDependencies":[Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    array-length v14, v1

    if-ge v13, v14, :cond_6

    .line 89
    aget-object v14, v1, v13

    .line 90
    .local v14, "dependency":Ljava/lang/Object;
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    .line 91
    .local v15, "depType":Ljava/lang/Class;
    invoke-virtual {v15}, Ljava/lang/Class;->isPrimitive()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 92
    invoke-static {v15}, Lcom/thoughtworks/xstream/core/util/Primitives;->box(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v15

    goto :goto_2

    .line 93
    :cond_3
    sget-object v16, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;->class$com$thoughtworks$xstream$core$util$TypedNull:Ljava/lang/Class;

    if-nez v16, :cond_4

    const-string v16, "com.thoughtworks.xstream.core.util.TypedNull"

    invoke-static/range {v16 .. v16}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    sput-object v16, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;->class$com$thoughtworks$xstream$core$util$TypedNull:Ljava/lang/Class;

    :cond_4
    move-object/from16 v10, v16

    if-ne v15, v10, :cond_5

    .line 94
    move-object v10, v14

    check-cast v10, Lcom/thoughtworks/xstream/core/util/TypedNull;

    invoke-virtual {v10}, Lcom/thoughtworks/xstream/core/util/TypedNull;->getType()Ljava/lang/Class;

    move-result-object v15

    .line 95
    const/4 v14, 0x0

    .line 98
    :cond_5
    :goto_2
    new-instance v10, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;

    invoke-direct {v10, v15, v14}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    aput-object v10, v12, v13

    .line 88
    .end local v14    # "dependency":Ljava/lang/Object;
    .end local v15    # "depType":Ljava/lang/Class;
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x1

    goto :goto_1

    .line 101
    .end local v13    # "i":I
    :cond_6
    const/4 v10, 0x0

    .line 102
    .local v10, "possibleCtor":Ljava/lang/reflect/Constructor;
    const v13, 0x7fffffff

    .line 103
    .local v13, "arity":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    if-nez v0, :cond_1b

    array-length v15, v11

    if-ge v14, v15, :cond_1b

    .line 104
    aget-object v15, v11, v14

    .line 105
    .local v15, "constructor":Ljava/lang/reflect/Constructor;
    move-object/from16 v16, v0

    .end local v0    # "bestMatchingCtor":Ljava/lang/reflect/Constructor;
    .local v16, "bestMatchingCtor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 106
    .local v0, "parameterTypes":[Ljava/lang/Class;
    move-wide/from16 v17, v5

    .end local v5    # "usedDeps":J
    .local v17, "usedDeps":J
    array-length v5, v0

    array-length v6, v1

    if-le v5, v6, :cond_7

    .line 107
    goto :goto_4

    .line 108
    :cond_7
    array-length v5, v0

    if-nez v5, :cond_9

    .line 109
    if-nez v10, :cond_8

    .line 110
    move-object v5, v15

    move-object v0, v5

    move-object/from16 v24, v9

    move-object/from16 v19, v11

    move-object/from16 v23, v12

    .end local v16    # "bestMatchingCtor":Ljava/lang/reflect/Constructor;
    .local v5, "bestMatchingCtor":Ljava/lang/reflect/Constructor;
    goto/16 :goto_10

    .line 109
    .end local v5    # "bestMatchingCtor":Ljava/lang/reflect/Constructor;
    .restart local v16    # "bestMatchingCtor":Ljava/lang/reflect/Constructor;
    :cond_8
    move-object/from16 v24, v9

    move-object/from16 v19, v11

    move-object/from16 v23, v12

    goto/16 :goto_f

    .line 114
    :cond_9
    array-length v5, v0

    if-le v13, v5, :cond_b

    .line 115
    if-eqz v10, :cond_a

    .line 116
    nop

    .line 103
    .end local v0    # "parameterTypes":[Ljava/lang/Class;
    .end local v15    # "constructor":Ljava/lang/reflect/Constructor;
    :goto_4
    move-object/from16 v24, v9

    move-object/from16 v19, v11

    move-object/from16 v23, v12

    move-object/from16 v0, v16

    move-wide/from16 v5, v17

    goto/16 :goto_e

    .line 118
    .restart local v0    # "parameterTypes":[Ljava/lang/Class;
    .restart local v15    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_a
    array-length v13, v0

    .line 121
    :cond_b
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_5
    array-length v6, v0

    if-ge v5, v6, :cond_d

    .line 122
    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 123
    aget-object v6, v0, v5

    invoke-static {v6}, Lcom/thoughtworks/xstream/core/util/Primitives;->box(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v0, v5

    .line 121
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 129
    .end local v5    # "j":I
    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 130
    const-wide/16 v5, 0x0

    .line 131
    .end local v17    # "usedDeps":J
    .local v5, "usedDeps":J
    const/16 v17, 0x0

    .local v17, "j":I
    const/16 v18, 0x0

    move/from16 v1, v17

    .line 132
    .end local v17    # "j":I
    .local v1, "j":I
    .local v18, "k":I
    :goto_6
    move-object/from16 v19, v11

    .end local v11    # "ctors":[Ljava/lang/reflect/Constructor;
    .local v19, "ctors":[Ljava/lang/reflect/Constructor;
    array-length v11, v0

    const-wide/16 v20, 0x1

    if-ge v1, v11, :cond_f

    array-length v11, v0

    add-int v11, v11, v18

    sub-int/2addr v11, v1

    move/from16 v22, v13

    .end local v13    # "arity":I
    .local v22, "arity":I
    array-length v13, v12

    if-gt v11, v13, :cond_10

    .line 133
    aget-object v11, v0, v1

    aget-object v13, v12, v18

    iget-object v13, v13, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    invoke-virtual {v11, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 134
    aget-object v11, v12, v18

    iget-object v11, v11, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->value:Ljava/lang/Object;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    shl-long v23, v20, v18

    or-long v5, v5, v23

    .line 136
    add-int/lit8 v1, v1, 0x1

    array-length v11, v0

    if-ne v1, v11, :cond_e

    .line 137
    move-object v11, v15

    .line 138
    .end local v16    # "bestMatchingCtor":Ljava/lang/reflect/Constructor;
    .local v11, "bestMatchingCtor":Ljava/lang/reflect/Constructor;
    move-object/from16 v16, v11

    goto :goto_7

    .line 132
    .end local v11    # "bestMatchingCtor":Ljava/lang/reflect/Constructor;
    .restart local v16    # "bestMatchingCtor":Ljava/lang/reflect/Constructor;
    :cond_e
    add-int/lit8 v18, v18, 0x1

    move-object/from16 v11, v19

    move/from16 v13, v22

    goto :goto_6

    .end local v22    # "arity":I
    .restart local v13    # "arity":I
    :cond_f
    move/from16 v22, v13

    .line 143
    .end local v1    # "j":I
    .end local v13    # "arity":I
    .end local v18    # "k":I
    .restart local v22    # "arity":I
    :cond_10
    :goto_7
    if-nez v16, :cond_1a

    .line 144
    const/4 v1, 0x1

    .line 148
    .local v1, "possible":Z
    array-length v11, v12

    new-array v11, v11, [Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;

    .line 149
    .local v11, "deps":[Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    array-length v13, v11

    move/from16 v17, v1

    .end local v1    # "possible":Z
    .local v17, "possible":Z
    const/4 v1, 0x0

    invoke-static {v12, v1, v11, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 151
    const-wide/16 v5, 0x0

    .line 152
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_8
    array-length v13, v0

    if-ge v1, v13, :cond_17

    .line 153
    const/4 v13, -0x1

    .line 154
    .local v13, "assignable":I
    const/16 v18, 0x0

    move-object/from16 v23, v12

    move/from16 v12, v18

    .local v12, "k":I
    .local v23, "typedDependencies":[Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    :goto_9
    array-length v2, v11

    if-ge v12, v2, :cond_15

    .line 155
    aget-object v2, v11, v12

    if-nez v2, :cond_11

    .line 156
    move-object/from16 v24, v9

    goto :goto_a

    .line 158
    :cond_11
    aget-object v2, v11, v12

    iget-object v2, v2, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    move-object/from16 v24, v9

    aget-object v9, v0, v1

    if-ne v2, v9, :cond_12

    .line 159
    move v13, v12

    .line 161
    goto :goto_b

    .line 162
    :cond_12
    aget-object v2, v0, v1

    aget-object v9, v11, v12

    iget-object v9, v9, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    invoke-virtual {v2, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 164
    if-ltz v13, :cond_13

    aget-object v2, v11, v13

    iget-object v2, v2, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    aget-object v9, v11, v12

    iget-object v9, v9, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    if-eq v2, v9, :cond_14

    aget-object v2, v11, v13

    iget-object v2, v2, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    aget-object v9, v11, v12

    iget-object v9, v9, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    .line 166
    invoke-virtual {v2, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 167
    :cond_13
    move v2, v12

    move v13, v2

    .line 154
    :cond_14
    :goto_a
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p2

    move-object/from16 v9, v24

    goto :goto_9

    :cond_15
    move-object/from16 v24, v9

    .line 172
    .end local v12    # "k":I
    :goto_b
    if-ltz v13, :cond_16

    .line 173
    aget-object v2, v11, v13

    iget-object v2, v2, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->value:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    shl-long v25, v20, v13

    or-long v5, v5, v25

    .line 175
    const/4 v2, 0x0

    aput-object v2, v11, v13

    .line 152
    .end local v13    # "assignable":I
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, p2

    move-object/from16 v12, v23

    move-object/from16 v9, v24

    goto :goto_8

    .line 177
    .restart local v13    # "assignable":I
    :cond_16
    const/4 v2, 0x0

    .line 178
    .end local v17    # "possible":Z
    .local v2, "possible":Z
    move v1, v2

    goto :goto_c

    .line 152
    .end local v2    # "possible":Z
    .end local v13    # "assignable":I
    .end local v23    # "typedDependencies":[Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    .local v12, "typedDependencies":[Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    .restart local v17    # "possible":Z
    :cond_17
    move-object/from16 v24, v9

    move-object/from16 v23, v12

    .end local v12    # "typedDependencies":[Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    .restart local v23    # "typedDependencies":[Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    move/from16 v1, v17

    .line 182
    .end local v17    # "possible":Z
    .local v1, "possible":Z
    :goto_c
    if-eqz v1, :cond_19

    .line 184
    if-eqz v10, :cond_18

    cmp-long v2, v5, v7

    if-ltz v2, :cond_18

    .line 185
    goto :goto_d

    .line 187
    :cond_18
    move-object v2, v15

    .line 188
    .end local v10    # "possibleCtor":Ljava/lang/reflect/Constructor;
    .local v2, "possibleCtor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v9

    move-object v4, v9

    check-cast v4, Ljava/util/List;

    .line 189
    move-wide v7, v5

    move-object v10, v2

    move-object/from16 v0, v16

    move/from16 v13, v22

    goto :goto_e

    .line 103
    .end local v0    # "parameterTypes":[Ljava/lang/Class;
    .end local v1    # "possible":Z
    .end local v2    # "possibleCtor":Ljava/lang/reflect/Constructor;
    .end local v11    # "deps":[Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    .end local v15    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v10    # "possibleCtor":Ljava/lang/reflect/Constructor;
    :cond_19
    :goto_d
    move-object/from16 v0, v16

    move/from16 v13, v22

    goto :goto_e

    .line 143
    .end local v23    # "typedDependencies":[Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    .restart local v0    # "parameterTypes":[Ljava/lang/Class;
    .restart local v12    # "typedDependencies":[Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    .restart local v15    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_1a
    move-object/from16 v24, v9

    move-object/from16 v23, v12

    .end local v12    # "typedDependencies":[Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    .restart local v23    # "typedDependencies":[Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    move-object/from16 v0, v16

    move/from16 v13, v22

    .line 103
    .end local v15    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v16    # "bestMatchingCtor":Ljava/lang/reflect/Constructor;
    .end local v22    # "arity":I
    .local v0, "bestMatchingCtor":Ljava/lang/reflect/Constructor;
    .local v13, "arity":I
    :goto_e
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v11, v19

    move-object/from16 v12, v23

    move-object/from16 v9, v24

    goto/16 :goto_3

    .end local v19    # "ctors":[Ljava/lang/reflect/Constructor;
    .end local v23    # "typedDependencies":[Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    .local v11, "ctors":[Ljava/lang/reflect/Constructor;
    .restart local v12    # "typedDependencies":[Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    :cond_1b
    move-object/from16 v16, v0

    move-wide/from16 v17, v5

    move-object/from16 v24, v9

    move-object/from16 v19, v11

    move-object/from16 v23, v12

    .line 194
    .end local v0    # "bestMatchingCtor":Ljava/lang/reflect/Constructor;
    .end local v5    # "usedDeps":J
    .end local v11    # "ctors":[Ljava/lang/reflect/Constructor;
    .end local v12    # "typedDependencies":[Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    .end local v14    # "i":I
    .restart local v16    # "bestMatchingCtor":Ljava/lang/reflect/Constructor;
    .local v17, "usedDeps":J
    .restart local v19    # "ctors":[Ljava/lang/reflect/Constructor;
    .restart local v23    # "typedDependencies":[Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    :goto_f
    move-object/from16 v0, v16

    .end local v16    # "bestMatchingCtor":Ljava/lang/reflect/Constructor;
    .restart local v0    # "bestMatchingCtor":Ljava/lang/reflect/Constructor;
    :goto_10
    if-nez v0, :cond_1d

    .line 195
    if-eqz v10, :cond_1c

    .line 202
    move-object v0, v10

    .line 203
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 204
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 205
    move-wide v5, v7

    move-object v1, v0

    move-object/from16 v9, v24

    .end local v17    # "usedDeps":J
    .restart local v5    # "usedDeps":J
    goto :goto_11

    .line 196
    .end local v5    # "usedDeps":J
    .restart local v17    # "usedDeps":J
    :cond_1c
    const-wide/16 v1, 0x0

    .line 197
    .end local v17    # "usedDeps":J
    .local v1, "usedDeps":J
    new-instance v5, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v6, "Cannot construct type, none of the arguments match any constructor\'s parameters"

    invoke-direct {v5, v6}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;)V

    .line 199
    .local v5, "ex":Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v9, v24

    invoke-virtual {v5, v9, v6}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    throw v5

    .line 194
    .end local v1    # "usedDeps":J
    .end local v5    # "ex":Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;
    .restart local v17    # "usedDeps":J
    :cond_1d
    move-object/from16 v9, v24

    move-object v1, v0

    move-wide/from16 v5, v17

    goto :goto_11

    .line 210
    .end local v10    # "possibleCtor":Ljava/lang/reflect/Constructor;
    .end local v13    # "arity":I
    .end local v17    # "usedDeps":J
    .end local v19    # "ctors":[Ljava/lang/reflect/Constructor;
    .end local v23    # "typedDependencies":[Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    .local v5, "usedDeps":J
    :cond_1e
    move-object v1, v0

    .end local v0    # "bestMatchingCtor":Ljava/lang/reflect/Constructor;
    .local v1, "bestMatchingCtor":Ljava/lang/reflect/Constructor;
    :goto_11
    const/4 v2, 0x0

    .line 213
    .local v2, "th":Ljava/lang/Throwable;
    if-nez v1, :cond_1f

    .line 214
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .local v0, "instance":Ljava/lang/Object;
    goto :goto_12

    .line 216
    .end local v0    # "instance":Ljava/lang/Object;
    :cond_1f
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_5

    .line 218
    .restart local v0    # "instance":Ljava/lang/Object;
    :goto_12
    move-object/from16 v10, p2

    if-eqz v10, :cond_21

    .line 219
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/BitSet;->clear()V

    .line 220
    const/4 v11, 0x0

    .line 221
    .local v11, "i":I
    const-wide/16 v12, 0x1

    .local v12, "l":J
    :goto_13
    cmp-long v14, v12, v5

    if-gez v14, :cond_21

    .line 222
    and-long v14, v5, v12

    const-wide/16 v17, 0x0

    cmp-long v14, v14, v17

    if-lez v14, :cond_20

    .line 223
    invoke-virtual {v10, v11}, Ljava/util/BitSet;->set(I)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_0

    .line 221
    :cond_20
    const/4 v14, 0x1

    shl-long/2addr v12, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    .line 236
    .end local v0    # "instance":Ljava/lang/Object;
    .end local v11    # "i":I
    .end local v12    # "l":J
    :catch_0
    move-exception v0

    goto :goto_14

    .line 234
    :catch_1
    move-exception v0

    goto :goto_15

    .line 232
    :catch_2
    move-exception v0

    goto :goto_16

    .line 230
    :catch_3
    move-exception v0

    goto :goto_17

    .line 228
    :catch_4
    move-exception v0

    goto :goto_18

    .line 227
    .restart local v0    # "instance":Ljava/lang/Object;
    :cond_21
    return-object v0

    .line 236
    .end local v0    # "instance":Ljava/lang/Object;
    :catch_5
    move-exception v0

    move-object/from16 v10, p2

    .line 237
    .local v0, "e":Ljava/lang/ExceptionInInitializerError;
    :goto_14
    move-object v2, v0

    goto :goto_1a

    .line 234
    .end local v0    # "e":Ljava/lang/ExceptionInInitializerError;
    :catch_6
    move-exception v0

    move-object/from16 v10, p2

    .line 235
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_15
    move-object v2, v0

    .end local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_19

    .line 232
    :catch_7
    move-exception v0

    move-object/from16 v10, p2

    .line 233
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_16
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_19

    .line 230
    :catch_8
    move-exception v0

    move-object/from16 v10, p2

    .line 231
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :goto_17
    move-object v2, v0

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_19

    .line 228
    :catch_9
    move-exception v0

    move-object/from16 v10, p2

    .line 229
    .local v0, "e":Ljava/lang/InstantiationException;
    :goto_18
    move-object v2, v0

    .line 238
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :goto_19
    nop

    .line 239
    :goto_1a
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v11, "Cannot construct type"

    invoke-direct {v0, v11, v2}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    .local v0, "ex":Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    throw v0
.end method
