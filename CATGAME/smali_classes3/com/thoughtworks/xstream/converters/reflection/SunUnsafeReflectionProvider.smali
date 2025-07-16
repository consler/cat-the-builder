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

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;-><init>(Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;)V

    return-void
.end method

.method private declared-synchronized getFieldOffset(Ljava/lang/reflect/Field;)J
    .locals 3

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->fieldOffsetCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/Long;

    sget-object v1, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v1, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 106
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->fieldOffsetCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->init()V

    return-object p0
.end method

.method private write(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .line 60
    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->exception:Ljava/lang/Exception;

    const-string v1, "Cannot set field"

    const-string v2, "."

    const-string v3, "field"

    if-nez v0, :cond_9

    .line 66
    :try_start_0
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->getFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    .line 67
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 69
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p2, v6, v7, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    .line 71
    :cond_0
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    sget-object v4, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v5, p2

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_0

    .line 73
    :cond_1
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 74
    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    check-cast p3, Ljava/lang/Short;

    invoke-virtual {p3}, Ljava/lang/Short;->shortValue()S

    move-result p3

    invoke-virtual {v0, p2, v6, v7, p3}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    goto/16 :goto_0

    .line 75
    :cond_2
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 76
    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    check-cast p3, Ljava/lang/Character;

    invoke-virtual {p3}, Ljava/lang/Character;->charValue()C

    move-result p3

    invoke-virtual {v0, p2, v6, v7, p3}, Lsun/misc/Unsafe;->putChar(Ljava/lang/Object;JC)V

    goto/16 :goto_0

    .line 77
    :cond_3
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 78
    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    check-cast p3, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    move-result p3

    invoke-virtual {v0, p2, v6, v7, p3}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    goto/16 :goto_0

    .line 79
    :cond_4
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 80
    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {v0, p2, v6, v7, p3}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    goto :goto_0

    .line 81
    :cond_5
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 82
    sget-object v4, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    move-object v5, p2

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    goto :goto_0

    .line 83
    :cond_6
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 84
    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {v0, p2, v6, v7, p3}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    goto :goto_0

    .line 86
    :cond_7
    new-instance p3, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v4, "Cannot set field of unknown type"

    sget-object v5, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->exception:Ljava/lang/Exception;

    invoke-direct {p3, v4, v5}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "unknown-type"

    .line 88
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v4, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    throw p3

    .line 92
    :cond_8
    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p2, v6, v7, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p3

    .line 96
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    invoke-direct {v0, v1, p3}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    throw v0

    .line 61
    :cond_9
    new-instance p3, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->exception:Ljava/lang/Exception;

    invoke-direct {p3, v1, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v3, p1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    throw p3
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

    return-void
.end method

.method public writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->fieldDictionary:Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p4}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-direct {p0, p2, p1, p3}, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;->write(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
