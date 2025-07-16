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
    .locals 1

    .line 93
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-static {p0, p1, v0}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eqz v0, :cond_1

    .line 66
    array-length v2, v0

    const/16 v3, 0x3f

    if-gt v2, v3, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "More than 63 arguments are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "construction-type"

    const/4 v10, 0x1

    if-eqz v0, :cond_1b

    .line 75
    array-length v11, v0

    if-lez v11, :cond_1b

    .line 77
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v11

    .line 78
    array-length v12, v11

    if-le v12, v10, :cond_2

    .line 79
    new-instance v12, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$1;

    invoke-direct {v12}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$1;-><init>()V

    invoke-static {v11, v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 87
    :cond_2
    array-length v12, v0

    new-array v13, v12, [Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;

    const/4 v14, 0x0

    .line 88
    :goto_1
    array-length v15, v0

    if-ge v14, v15, :cond_6

    .line 89
    aget-object v15, v0, v14

    .line 90
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 91
    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 92
    invoke-static {v10}, Lcom/thoughtworks/xstream/core/util/Primitives;->box(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v10

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
    move-object/from16 v6, v16

    if-ne v10, v6, :cond_5

    .line 94
    check-cast v15, Lcom/thoughtworks/xstream/core/util/TypedNull;

    invoke-virtual {v15}, Lcom/thoughtworks/xstream/core/util/TypedNull;->getType()Ljava/lang/Class;

    move-result-object v10

    const/4 v15, 0x0

    .line 98
    :cond_5
    :goto_2
    new-instance v6, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;

    invoke-direct {v6, v10, v15}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    aput-object v6, v13, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x1

    goto :goto_1

    :cond_6
    const v6, 0x7fffffff

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    :goto_3
    if-nez v7, :cond_19

    .line 103
    array-length v8, v11

    if-ge v10, v8, :cond_19

    .line 104
    aget-object v8, v11, v10

    .line 105
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 106
    array-length v4, v9

    array-length v5, v0

    if-le v4, v5, :cond_7

    goto :goto_4

    .line 108
    :cond_7
    array-length v4, v9

    if-nez v4, :cond_8

    if-nez v14, :cond_19

    const-wide/16 v21, 0x1

    goto/16 :goto_f

    .line 114
    :cond_8
    array-length v4, v9

    if-le v6, v4, :cond_a

    if-eqz v14, :cond_9

    :goto_4
    const/4 v4, 0x0

    const-wide/16 v21, 0x1

    goto/16 :goto_e

    .line 118
    :cond_9
    array-length v6, v9

    :cond_a
    const/4 v4, 0x0

    .line 121
    :goto_5
    array-length v5, v9

    if-ge v4, v5, :cond_c

    .line 122
    aget-object v5, v9, v4

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 123
    aget-object v5, v9, v4

    invoke-static {v5}, Lcom/thoughtworks/xstream/core/util/Primitives;->box(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v9, v4

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 129
    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v17, 0x0

    .line 132
    :goto_6
    array-length v0, v9

    if-ge v4, v0, :cond_e

    array-length v0, v9

    add-int/2addr v0, v5

    sub-int/2addr v0, v4

    if-gt v0, v12, :cond_e

    .line 133
    aget-object v0, v9, v4

    move/from16 v23, v6

    aget-object v6, v13, v5

    iget-object v6, v6, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 134
    aget-object v0, v13, v5

    iget-object v0, v0, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->value:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v21, 0x1

    shl-long v24, v21, v5

    or-long v17, v17, v24

    add-int/lit8 v4, v4, 0x1

    .line 136
    array-length v0, v9

    if-ne v4, v0, :cond_d

    move-object v7, v8

    goto :goto_7

    :cond_d
    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v23

    goto :goto_6

    :cond_e
    move/from16 v23, v6

    :goto_7
    if-nez v7, :cond_18

    .line 148
    new-array v0, v12, [Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;

    const/4 v4, 0x0

    .line 149
    invoke-static {v13, v4, v0, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move v5, v4

    const-wide/16 v17, 0x0

    .line 152
    :goto_8
    array-length v6, v9

    if-ge v5, v6, :cond_15

    const/4 v6, -0x1

    :goto_9
    move-object/from16 v24, v7

    if-ge v4, v12, :cond_13

    .line 155
    aget-object v7, v0, v4

    if-nez v7, :cond_f

    move-object/from16 v25, v8

    goto :goto_a

    .line 158
    :cond_f
    iget-object v7, v7, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    move-object/from16 v25, v8

    aget-object v8, v9, v5

    if-ne v7, v8, :cond_10

    move v6, v4

    goto :goto_b

    .line 162
    :cond_10
    aget-object v7, v0, v4

    iget-object v7, v7, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_12

    if-ltz v6, :cond_11

    .line 164
    aget-object v7, v0, v6

    iget-object v7, v7, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    aget-object v8, v0, v4

    iget-object v8, v8, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    if-eq v7, v8, :cond_12

    aget-object v7, v0, v6

    iget-object v7, v7, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    aget-object v8, v0, v4

    iget-object v8, v8, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    .line 166
    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_12

    :cond_11
    move v6, v4

    :cond_12
    :goto_a
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    goto :goto_9

    :cond_13
    move-object/from16 v25, v8

    :goto_b
    if-ltz v6, :cond_14

    .line 173
    aget-object v4, v0, v6

    iget-object v4, v4, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->value:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v21, 0x1

    shl-long v7, v21, v6

    or-long v17, v17, v7

    const/4 v4, 0x0

    .line 175
    aput-object v4, v0, v6

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    const/4 v4, 0x0

    goto :goto_8

    :cond_14
    const/4 v4, 0x0

    const-wide/16 v21, 0x1

    const/4 v0, 0x0

    goto :goto_c

    :cond_15
    move-object/from16 v24, v7

    move-object/from16 v25, v8

    const/4 v4, 0x0

    const-wide/16 v21, 0x1

    const/4 v0, 0x1

    :goto_c
    if-eqz v0, :cond_17

    if-eqz v14, :cond_16

    cmp-long v0, v17, v19

    if-ltz v0, :cond_16

    goto :goto_d

    .line 188
    :cond_16
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/util/List;

    move-wide/from16 v19, v17

    move/from16 v6, v23

    move-object/from16 v7, v24

    move-object/from16 v14, v25

    goto :goto_e

    :cond_17
    :goto_d
    move/from16 v6, v23

    move-object/from16 v7, v24

    goto :goto_e

    :cond_18
    move-object/from16 v24, v7

    const/4 v4, 0x0

    const-wide/16 v21, 0x1

    move/from16 v6, v23

    :goto_e
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_3

    :cond_19
    const-wide/16 v21, 0x1

    move-object v8, v7

    :goto_f
    if-nez v8, :cond_1c

    if-eqz v14, :cond_1a

    .line 203
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 204
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v8, v14

    move-wide/from16 v17, v19

    goto :goto_10

    .line 197
    :cond_1a
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v1, "Cannot construct type, none of the arguments match any constructor\'s parameters"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    throw v0

    :cond_1b
    const/4 v4, 0x0

    const-wide/16 v21, 0x1

    move-object v8, v4

    const-wide/16 v17, 0x0

    :cond_1c
    :goto_10
    if-nez v8, :cond_1d

    .line 214
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    goto :goto_11

    .line 216
    :cond_1d
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_11
    if-eqz v1, :cond_1f

    .line 219
    invoke-virtual/range {p2 .. p2}, Ljava/util/BitSet;->clear()V

    move-wide/from16 v4, v21

    const/4 v9, 0x0

    :goto_12
    cmp-long v2, v4, v17

    if-gez v2, :cond_1f

    and-long v6, v17, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v6, v10

    if-lez v2, :cond_1e

    .line 223
    invoke-virtual {v1, v9}, Ljava/util/BitSet;->set(I)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1e
    const/4 v2, 0x1

    shl-long/2addr v4, v2

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_1f
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_13

    :catch_1
    move-exception v0

    goto :goto_13

    :catch_2
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_13

    :catch_3
    move-exception v0

    goto :goto_13

    :catch_4
    move-exception v0

    .line 239
    :goto_13
    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v2, "Cannot construct type"

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    throw v1
.end method
