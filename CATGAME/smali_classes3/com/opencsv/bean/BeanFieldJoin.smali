.class public abstract Lcom/opencsv/bean/BeanFieldJoin;
.super Lcom/opencsv/bean/BeanFieldSingleValue;
.source "BeanFieldJoin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/opencsv/bean/BeanFieldSingleValue<",
        "TT;TI;>;"
    }
.end annotation


# instance fields
.field private final mapType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/commons/collections4/MultiValuedMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "required"    # Z
    .param p4, "errorLocale"    # Ljava/util/Locale;
    .param p5, "converter"    # Lcom/opencsv/bean/CsvConverter;
    .param p7, "capture"    # Ljava/lang/String;
    .param p8, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "Z",
            "Ljava/util/Locale;",
            "Lcom/opencsv/bean/CsvConverter;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/commons/collections4/MultiValuedMap;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/opencsv/bean/BeanFieldJoin;, "Lcom/opencsv/bean/BeanFieldJoin<TT;TI;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p6, "mapType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/commons/collections4/MultiValuedMap;>;"
    move-object v8, p0

    move-object v9, p4

    const-class v10, Lcom/opencsv/bean/BeanFieldJoin;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/opencsv/bean/BeanFieldSingleValue;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-class v0, Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "invalid.multivaluedmap.type"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "opencsv"

    if-eqz v0, :cond_6

    .line 93
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 94
    .local v0, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_0

    .line 95
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, v8, Lcom/opencsv/bean/BeanFieldJoin;->mapType:Ljava/lang/Class;

    move-object/from16 v5, p6

    goto :goto_1

    .line 97
    :cond_0
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_1

    .line 98
    move-object/from16 v5, p6

    iput-object v5, v8, Lcom/opencsv/bean/BeanFieldJoin;->mapType:Ljava/lang/Class;

    goto :goto_1

    .line 101
    :cond_1
    move-object/from16 v5, p6

    const-class v6, Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-class v6, Lorg/apache/commons/collections4/ListValuedMap;

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 104
    :cond_2
    const-class v6, Lorg/apache/commons/collections4/SetValuedMap;

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 105
    const-class v1, Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;

    iput-object v1, v8, Lcom/opencsv/bean/BeanFieldJoin;->mapType:Ljava/lang/Class;

    goto :goto_1

    .line 108
    :cond_3
    const/4 v6, 0x0

    iput-object v6, v8, Lcom/opencsv/bean/BeanFieldJoin;->mapType:Ljava/lang/Class;

    .line 109
    new-instance v6, Lcom/opencsv/exceptions/CsvBadConverterException;

    .line 112
    invoke-static {v4, p4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    .line 114
    invoke-virtual {v4, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    .line 115
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 111
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v10, v1}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v6

    .line 102
    :cond_4
    :goto_0
    const-class v1, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    iput-object v1, v8, Lcom/opencsv/bean/BeanFieldJoin;->mapType:Ljava/lang/Class;

    .line 121
    :goto_1
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    iget-object v6, v8, Lcom/opencsv/bean/BeanFieldJoin;->mapType:Ljava/lang/Class;

    invoke-virtual {v1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 130
    return-void

    .line 122
    :cond_5
    new-instance v1, Lcom/opencsv/exceptions/CsvBadConverterException;

    .line 125
    invoke-static {v4, p4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    .line 127
    const-string v6, "unassignable.multivaluedmap.type"

    invoke-virtual {v4, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 128
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    .line 124
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v10, v2}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v1

    .line 82
    .end local v0    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    move-object/from16 v5, p6

    new-instance v0, Lcom/opencsv/exceptions/CsvBadConverterException;

    .line 85
    invoke-static {v4, p4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    .line 87
    invoke-virtual {v4, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    .line 88
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 84
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected assignValueToField(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    .line 162
    .local p0, "this":Lcom/opencsv/bean/BeanFieldJoin;, "Lcom/opencsv/bean/BeanFieldJoin<TT;TI;>;"
    invoke-virtual {p0, p1}, Lcom/opencsv/bean/BeanFieldJoin;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/MultiValuedMap;

    .line 164
    .local v0, "currentValue":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<TI;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 165
    :try_start_0
    iget-object v2, p0, Lcom/opencsv/bean/BeanFieldJoin;->mapType:Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 166
    .local v2, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/commons/collections4/MultiValuedMap;>;"
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections4/MultiValuedMap;

    move-object v0, v3

    .line 168
    .end local v2    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/commons/collections4/MultiValuedMap;>;"
    :cond_0
    invoke-virtual {p0, v0, p3, p2}, Lcom/opencsv/bean/BeanFieldJoin;->putNewValue(Lorg/apache/commons/collections4/MultiValuedMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-super {p0, p1, v0, p3}, Lcom/opencsv/bean/BeanFieldSingleValue;->assignValueToField(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    nop

    .line 186
    return-void

    .line 176
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 177
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v3, Lcom/opencsv/exceptions/CsvBadConverterException;

    const-class v4, Lcom/opencsv/bean/BeanFieldJoin;

    iget-object v5, p0, Lcom/opencsv/bean/BeanFieldJoin;->errorLocale:Ljava/util/Locale;

    .line 180
    const-string v6, "opencsv"

    invoke-static {v6, v5}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v5

    .line 181
    const-string v6, "map.cannot.be.instantiated"

    invoke-virtual {v5, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/opencsv/bean/BeanFieldJoin;->mapType:Ljava/lang/Class;

    .line 182
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 179
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v1, v3

    .line 183
    .local v1, "csve":Lcom/opencsv/exceptions/CsvBadConverterException;
    invoke-virtual {v1, v2}, Lcom/opencsv/exceptions/CsvBadConverterException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 184
    throw v1

    .line 170
    .end local v1    # "csve":Lcom/opencsv/exceptions/CsvBadConverterException;
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v2, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;

    iget-object v3, p0, Lcom/opencsv/bean/BeanFieldJoin;->field:Ljava/lang/reflect/Field;

    .line 173
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;)V

    .line 174
    .local v2, "csve":Lcom/opencsv/exceptions/CsvBeanIntrospectionException;
    invoke-virtual {v2, v1}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 175
    throw v2
.end method

.method public indexAndSplitMultivaluedField(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TI;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    .line 197
    .local p0, "this":Lcom/opencsv/bean/BeanFieldJoin;, "Lcom/opencsv/bean/BeanFieldJoin<TT;TI;>;"
    .local p2, "index":Ljava/lang/Object;, "TI;"
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 198
    .local v0, "splitObjects":[Ljava/lang/Object;
    if-eqz p1, :cond_1

    .line 199
    const-class v1, Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/collections4/MultiValuedMap;

    .line 202
    .local v1, "map":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1, p2}, Lorg/apache/commons/collections4/MultiValuedMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    .line 203
    .local v2, "splitCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 204
    .end local v1    # "map":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2    # "splitCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    goto :goto_0

    .line 208
    :cond_0
    new-instance v1, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    const-class v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/opencsv/bean/BeanFieldJoin;->errorLocale:Ljava/util/Locale;

    .line 209
    const-string v4, "opencsv"

    invoke-static {v4, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v3

    .line 210
    const-string v4, "field.not.multivaluedmap"

    invoke-virtual {v3, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_1
    :goto_0
    return-object v0
.end method

.method protected isFieldEmptyForWrite(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 223
    .local p0, "this":Lcom/opencsv/bean/BeanFieldJoin;, "Lcom/opencsv/bean/BeanFieldJoin<TT;TI;>;"
    invoke-super {p0, p1}, Lcom/opencsv/bean/BeanFieldSingleValue;->isFieldEmptyForWrite(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiValuedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected abstract putNewValue(Lorg/apache/commons/collections4/MultiValuedMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "TI;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
