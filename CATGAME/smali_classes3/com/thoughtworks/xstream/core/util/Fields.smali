.class public Lcom/thoughtworks/xstream/core/util/Fields;
.super Ljava/lang/Object;
.source "Fields.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static find(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p0, "type"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;

    .line 52
    const-string v0, "Cannot access field"

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 53
    .local v1, "result":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    return-object v1

    .line 61
    .end local v1    # "result":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-static {v0, p0, p1, v1}, Lcom/thoughtworks/xstream/core/util/Fields;->wrap(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    move-result-object v0

    throw v0

    .line 59
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-static {v0, p0, p1, v1}, Lcom/thoughtworks/xstream/core/util/Fields;->wrap(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    move-result-object v0

    throw v0

    .line 57
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-static {v0, p0, p1, v1}, Lcom/thoughtworks/xstream/core/util/Fields;->wrap(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    move-result-object v0

    throw v0
.end method

.method public static locate(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;
    .locals 4
    .param p0, "definedIn"    # Ljava/lang/Class;
    .param p1, "fieldType"    # Ljava/lang/Class;
    .param p2, "isStatic"    # Z

    .line 29
    const/4 v0, 0x0

    .line 31
    .local v0, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 32
    .local v1, "fields":[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 33
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-ne v3, p2, :cond_0

    .line 34
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    aget-object v3, v1, v2

    move-object v0, v3

    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    .end local v2    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_2

    .line 40
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 44
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    goto :goto_2

    .line 42
    :catch_1
    move-exception v1

    .line 46
    :cond_2
    :goto_1
    nop

    .line 47
    :goto_2
    return-object v0
.end method

.method public static read(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "instance"    # Ljava/lang/Object;

    .line 82
    const-string v0, "Cannot read field"

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lcom/thoughtworks/xstream/core/util/Fields;->wrap(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    move-result-object v0

    throw v0

    .line 87
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lcom/thoughtworks/xstream/core/util/Fields;->wrap(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    move-result-object v0

    throw v0

    .line 85
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lcom/thoughtworks/xstream/core/util/Fields;->wrap(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    move-result-object v0

    throw v0

    .line 83
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lcom/thoughtworks/xstream/core/util/Fields;->wrap(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    move-result-object v0

    throw v0
.end method

.method private static wrap(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .line 96
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    invoke-direct {v0, p0, p3}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .local v0, "exception":Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "field"

    invoke-virtual {v0, v2, v1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-object v0
.end method

.method public static write(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 68
    const-string v0, "Cannot write field"

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    nop

    .line 78
    return-void

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lcom/thoughtworks/xstream/core/util/Fields;->wrap(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    move-result-object v0

    throw v0

    .line 73
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lcom/thoughtworks/xstream/core/util/Fields;->wrap(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    move-result-object v0

    throw v0

    .line 71
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lcom/thoughtworks/xstream/core/util/Fields;->wrap(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    move-result-object v0

    throw v0

    .line 69
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lcom/thoughtworks/xstream/core/util/Fields;->wrap(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    move-result-object v0

    throw v0
.end method
