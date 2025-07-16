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
    .locals 10
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

    move-object v8, p0

    move-object v9, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 78
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

    const-class v5, Lcom/opencsv/bean/BeanFieldJoin;

    if-eqz v0, :cond_6

    .line 93
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-nez v6, :cond_0

    .line 95
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, v8, Lcom/opencsv/bean/BeanFieldJoin;->mapType:Ljava/lang/Class;

    move-object/from16 v6, p6

    goto :goto_1

    .line 97
    :cond_0
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-nez v6, :cond_1

    move-object/from16 v6, p6

    .line 98
    iput-object v6, v8, Lcom/opencsv/bean/BeanFieldJoin;->mapType:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    move-object/from16 v6, p6

    .line 101
    const-class v7, Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-class v7, Lorg/apache/commons/collections4/ListValuedMap;

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 104
    :cond_2
    const-class v7, Lorg/apache/commons/collections4/SetValuedMap;

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    const-class v0, Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;

    iput-object v0, v8, Lcom/opencsv/bean/BeanFieldJoin;->mapType:Ljava/lang/Class;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 108
    iput-object v0, v8, Lcom/opencsv/bean/BeanFieldJoin;->mapType:Ljava/lang/Class;

    .line 109
    new-instance v0, Lcom/opencsv/exceptions/CsvBadConverterException;

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

    invoke-direct {v0, v5, v1}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_4
    :goto_0
    const-class v0, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    iput-object v0, v8, Lcom/opencsv/bean/BeanFieldJoin;->mapType:Ljava/lang/Class;

    .line 121
    :goto_1
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, v8, Lcom/opencsv/bean/BeanFieldJoin;->mapType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 122
    :cond_5
    new-instance v0, Lcom/opencsv/exceptions/CsvBadConverterException;

    .line 125
    invoke-static {v4, p4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v4, "unassignable.multivaluedmap.type"

    .line 127
    invoke-virtual {v1, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 128
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 124
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_6
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

    invoke-direct {v0, v5, v1}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected assignValueToField(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0, p1}, Lcom/opencsv/bean/BeanFieldJoin;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/MultiValuedMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/opencsv/bean/BeanFieldJoin;->mapType:Ljava/lang/Class;

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/MultiValuedMap;

    .line 168
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

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 177
    :goto_0
    new-instance p2, Lcom/opencsv/exceptions/CsvBadConverterException;

    const-string p3, "opencsv"

    iget-object v0, p0, Lcom/opencsv/bean/BeanFieldJoin;->errorLocale:Ljava/util/Locale;

    .line 180
    invoke-static {p3, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p3

    const-string v0, "map.cannot.be.instantiated"

    .line 181
    invoke-virtual {p3, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/opencsv/bean/BeanFieldJoin;->mapType:Ljava/lang/Class;

    .line 182
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 179
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-class v0, Lcom/opencsv/bean/BeanFieldJoin;

    invoke-direct {p2, v0, p3}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2, p1}, Lcom/opencsv/exceptions/CsvBadConverterException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 184
    throw p2

    :catch_2
    move-exception p2

    goto :goto_1

    :catch_3
    move-exception p2

    goto :goto_1

    :catch_4
    move-exception p2

    .line 171
    :goto_1
    new-instance p3, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;

    iget-object v0, p0, Lcom/opencsv/bean/BeanFieldJoin;->field:Ljava/lang/reflect/Field;

    .line 173
    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, p1, v0, v1}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p3, p2}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 175
    throw p3
.end method

.method public indexAndSplitMultivaluedField(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
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
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 199
    const-class v0, Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    check-cast p1, Lorg/apache/commons/collections4/MultiValuedMap;

    .line 202
    invoke-interface {p1, p2}, Lorg/apache/commons/collections4/MultiValuedMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    .line 203
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_0
    new-instance p2, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    const-class v0, Ljava/lang/String;

    const-string v1, "opencsv"

    iget-object v2, p0, Lcom/opencsv/bean/BeanFieldJoin;->errorLocale:Ljava/util/Locale;

    .line 209
    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "field.not.multivaluedmap"

    .line 210
    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected isFieldEmptyForWrite(Ljava/lang/Object;)Z
    .locals 1

    .line 223
    invoke-super {p0, p1}, Lcom/opencsv/bean/BeanFieldSingleValue;->isFieldEmptyForWrite(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    check-cast p1, Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-interface {p1}, Lorg/apache/commons/collections4/MultiValuedMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
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
