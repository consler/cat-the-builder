.class public Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;
.super Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;
.source "SunUnsafeReflectionProvider.java"


# instance fields
.field private transient fieldOffsetCache:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;)V
    .locals 0
    .param p1, "dic"    # Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;

    .line 52
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;-><init>(Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;)V

    .line 53
    return-void
.end method

.method private declared-synchronized getFieldOffset(Ljava/lang/reflect/Field;)J
    .locals 4
    .param p1, "f"    # Ljava/lang/reflect/Field;

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->fieldOffsetCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 104
    .local v0, "l":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 105
    new-instance v1, Ljava/lang/Long;

    sget-object v2, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object v0, v1

    .line 106
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->fieldOffsetCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .end local p0    # "this":Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v1

    .line 102
    .end local v0    # "l":Ljava/lang/Long;
    .end local p1    # "f":Ljava/lang/reflect/Field;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->init()V

    .line 114
    return-object p0
.end method

.method private write(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->exception:Ljava/lang/Exception;

    const-string v1, "Cannot set field"

    const-string v2, "."

    const-string v3, "field"

    if-nez v0, :cond_9

    .line 66
    :try_start_0
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->getFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    .line 67
    .local v4, "offset":J
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 68
    .local v0, "type":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 69
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 70
    sget-object v6, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    move-object v7, p3

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, p2, v4, v5, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    .line 71
    :cond_0
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 72
    sget-object v6, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    move-object v7, p3

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object v7, p2

    move-wide v8, v4

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_0

    .line 73
    :cond_1
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 74
    sget-object v6, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    move-object v7, p3

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    invoke-virtual {v6, p2, v4, v5, v7}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    goto/16 :goto_0

    .line 75
    :cond_2
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 76
    sget-object v6, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    move-object v7, p3

    check-cast v7, Ljava/lang/Character;

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v7

    invoke-virtual {v6, p2, v4, v5, v7}, Lsun/misc/Unsafe;->putChar(Ljava/lang/Object;JC)V

    goto/16 :goto_0

    .line 77
    :cond_3
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 78
    sget-object v6, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    move-object v7, p3

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    invoke-virtual {v6, p2, v4, v5, v7}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    goto/16 :goto_0

    .line 79
    :cond_4
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 80
    sget-object v6, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    move-object v7, p3

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v6, p2, v4, v5, v7}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    goto :goto_0

    .line 81
    :cond_5
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 82
    sget-object v6, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    move-object v7, p3

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    move-object v7, p2

    move-wide v8, v4

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    goto :goto_0

    .line 83
    :cond_6
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 84
    sget-object v6, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    move-object v7, p3

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, p2, v4, v5, v7}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    goto :goto_0

    .line 86
    :cond_7
    new-instance v6, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v7, "Cannot set field of unknown type"

    sget-object v8, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->exception:Ljava/lang/Exception;

    invoke-direct {v6, v7, v8}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .local v6, "ex":Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v7, "unknown-type"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    nop

    .end local p1    # "field":Ljava/lang/reflect/Field;
    .end local p2    # "object":Ljava/lang/Object;
    .end local p3    # "value":Ljava/lang/Object;
    throw v6

    .line 92
    .end local v6    # "ex":Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;
    .restart local p1    # "field":Ljava/lang/reflect/Field;
    .restart local p2    # "object":Ljava/lang/Object;
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_8
    sget-object v6, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v6, p2, v4, v5, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0    # "type":Ljava/lang/Class;
    .end local v4    # "offset":J
    :goto_0
    nop

    .line 100
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    invoke-direct {v4, v1, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v4

    .line 97
    .local v1, "ex":Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    throw v1

    .line 61
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "ex":Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;
    :cond_9
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    sget-object v4, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->exception:Ljava/lang/Exception;

    invoke-direct {v0, v1, v4}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .local v0, "ex":Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    throw v0
.end method


# virtual methods
.method protected init()V
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->init()V

    .line 119
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->fieldOffsetCache:Ljava/util/Map;

    .line 120
    return-void
.end method

.method public writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "definedIn"    # Ljava/lang/Class;

    .line 56
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->fieldDictionary:Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p4}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-direct {p0, v0, p1, p3}, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->write(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    return-void
.end method
