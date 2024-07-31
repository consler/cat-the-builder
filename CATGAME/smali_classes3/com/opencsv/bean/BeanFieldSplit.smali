.class public Lcom/opencsv/bean/BeanFieldSplit;
.super Lcom/opencsv/bean/AbstractBeanField;
.source "BeanFieldSplit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/opencsv/bean/AbstractBeanField<",
        "TT;TI;>;"
    }
.end annotation


# instance fields
.field private final capture:Ljava/util/regex/Pattern;

.field private final collectionType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Collection;",
            ">;"
        }
    .end annotation
.end field

.field private final splitOn:Ljava/util/regex/Pattern;

.field private final writeDelimiter:Ljava/lang/String;

.field private final writeFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "required"    # Z
    .param p4, "errorLocale"    # Ljava/util/Locale;
    .param p5, "converter"    # Lcom/opencsv/bean/CsvConverter;
    .param p6, "splitOn"    # Ljava/lang/String;
    .param p7, "writeDelimiter"    # Ljava/lang/String;
    .param p9, "capture"    # Ljava/lang/String;
    .param p10, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "Z",
            "Ljava/util/Locale;",
            "Lcom/opencsv/bean/CsvConverter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Collection;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/opencsv/bean/BeanFieldSplit;, "Lcom/opencsv/bean/BeanFieldSplit<TT;TI;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p8, "collectionType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Collection;>;"
    move-object v0, p0

    const-class v1, Lcom/opencsv/bean/BeanFieldSplit;

    invoke-direct/range {p0 .. p5}, Lcom/opencsv/bean/AbstractBeanField;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;)V

    .line 75
    move-object/from16 v2, p7

    iput-object v2, v0, Lcom/opencsv/bean/BeanFieldSplit;->writeDelimiter:Ljava/lang/String;

    .line 76
    move-object/from16 v3, p10

    iput-object v3, v0, Lcom/opencsv/bean/BeanFieldSplit;->writeFormat:Ljava/lang/String;

    .line 79
    const-class v4, Ljava/util/Collection;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    const-string v5, "invalid.collection.type"

    const/4 v6, 0x1

    const-string v7, "opencsv"

    const/4 v8, 0x0

    if-eqz v4, :cond_c

    .line 90
    iget-object v4, v0, Lcom/opencsv/bean/BeanFieldSplit;->errorLocale:Ljava/util/Locale;

    move-object/from16 v9, p6

    invoke-static {v9, v8, v1, v4}, Lcom/opencsv/bean/OpencsvUtils;->compilePattern(Ljava/lang/String;ILjava/lang/Class;Ljava/util/Locale;)Ljava/util/regex/Pattern;

    move-result-object v4

    iput-object v4, v0, Lcom/opencsv/bean/BeanFieldSplit;->splitOn:Ljava/util/regex/Pattern;

    .line 92
    iget-object v4, v0, Lcom/opencsv/bean/BeanFieldSplit;->errorLocale:Ljava/util/Locale;

    move-object/from16 v10, p9

    invoke-static {v10, v8, v1, v4}, Lcom/opencsv/bean/OpencsvUtils;->compilePatternAtLeastOneGroup(Ljava/lang/String;ILjava/lang/Class;Ljava/util/Locale;)Ljava/util/regex/Pattern;

    move-result-object v4

    iput-object v4, v0, Lcom/opencsv/bean/BeanFieldSplit;->capture:Ljava/util/regex/Pattern;

    .line 96
    iget-object v4, v0, Lcom/opencsv/bean/BeanFieldSplit;->writeFormat:Ljava/lang/String;

    iget-object v11, v0, Lcom/opencsv/bean/BeanFieldSplit;->errorLocale:Ljava/util/Locale;

    invoke-static {v4, v1, v11}, Lcom/opencsv/bean/OpencsvUtils;->verifyFormatString(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 101
    .local v4, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v11

    if-nez v11, :cond_0

    .line 102
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    iput-object v5, v0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    move-object/from16 v11, p8

    goto/16 :goto_3

    .line 104
    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Class;->isInterface()Z

    move-result v11

    if-nez v11, :cond_1

    .line 105
    move-object/from16 v11, p8

    iput-object v11, v0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    goto/16 :goto_3

    .line 108
    :cond_1
    move-object/from16 v11, p8

    const-class v12, Ljava/util/Collection;

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    const-class v12, Ljava/util/List;

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto/16 :goto_2

    .line 111
    :cond_2
    const-class v12, Ljava/util/Set;

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 112
    const-class v5, Ljava/util/HashSet;

    iput-object v5, v0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    goto :goto_3

    .line 114
    :cond_3
    const-class v12, Ljava/util/SortedSet;

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    const-class v12, Ljava/util/NavigableSet;

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_1

    .line 117
    :cond_4
    const-class v12, Ljava/util/Queue;

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    const-class v12, Ljava/util/Deque;

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_0

    .line 120
    :cond_5
    const-class v12, Lorg/apache/commons/collections4/Bag;

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 121
    const-class v5, Lorg/apache/commons/collections4/bag/HashBag;

    iput-object v5, v0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    goto :goto_3

    .line 123
    :cond_6
    const-class v12, Lorg/apache/commons/collections4/SortedBag;

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 124
    const-class v5, Lorg/apache/commons/collections4/bag/TreeBag;

    iput-object v5, v0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    goto :goto_3

    .line 127
    :cond_7
    const/4 v12, 0x0

    iput-object v12, v0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    .line 128
    new-instance v12, Lcom/opencsv/exceptions/CsvBadConverterException;

    iget-object v13, v0, Lcom/opencsv/bean/BeanFieldSplit;->errorLocale:Ljava/util/Locale;

    .line 131
    invoke-static {v7, v13}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v7

    .line 133
    invoke-virtual {v7, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    .line 134
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 130
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v1, v5}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v12

    .line 118
    :cond_8
    :goto_0
    const-class v5, Ljava/util/ArrayDeque;

    iput-object v5, v0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    goto :goto_3

    .line 115
    :cond_9
    :goto_1
    const-class v5, Ljava/util/TreeSet;

    iput-object v5, v0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    goto :goto_3

    .line 109
    :cond_a
    :goto_2
    const-class v5, Ljava/util/ArrayList;

    iput-object v5, v0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    .line 140
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    iget-object v12, v0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    invoke-virtual {v5, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 149
    return-void

    .line 141
    :cond_b
    new-instance v5, Lcom/opencsv/exceptions/CsvBadConverterException;

    iget-object v12, v0, Lcom/opencsv/bean/BeanFieldSplit;->errorLocale:Ljava/util/Locale;

    .line 144
    invoke-static {v7, v12}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v7

    .line 146
    const-string v12, "unassignable.collection.type"

    invoke-virtual {v7, v12}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    .line 147
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v12, v6

    .line 143
    invoke-static {v7, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v5

    .line 80
    .end local v4    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    move-object/from16 v9, p6

    move-object/from16 v11, p8

    move-object/from16 v10, p9

    new-instance v4, Lcom/opencsv/exceptions/CsvBadConverterException;

    iget-object v12, v0, Lcom/opencsv/bean/BeanFieldSplit;->errorLocale:Ljava/util/Locale;

    .line 83
    invoke-static {v7, v12}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v7

    .line 85
    invoke-virtual {v7, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    .line 86
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 82
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method protected convert(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvConstraintViolationException;
        }
    .end annotation

    .line 166
    .local p0, "this":Lcom/opencsv/bean/BeanFieldSplit;, "Lcom/opencsv/bean/BeanFieldSplit<TT;TI;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .local v2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    nop

    .line 179
    iget-object v3, p0, Lcom/opencsv/bean/BeanFieldSplit;->splitOn:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "splitValues":[Ljava/lang/String;
    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 181
    .local v5, "s":Ljava/lang/String;
    iget-object v6, p0, Lcom/opencsv/bean/BeanFieldSplit;->capture:Ljava/util/regex/Pattern;

    if-eqz v6, :cond_0

    .line 182
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 183
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 184
    invoke-virtual {v6, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 188
    .end local v6    # "m":Ljava/util/regex/Matcher;
    :cond_0
    iget-object v6, p0, Lcom/opencsv/bean/BeanFieldSplit;->converter:Lcom/opencsv/bean/CsvConverter;

    invoke-interface {v6, v5}, Lcom/opencsv/bean/CsvConverter;->convertToRead(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v5    # "s":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_1
    return-object v2

    .line 168
    .end local v2    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v3    # "splitValues":[Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    new-instance v3, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;

    iget-object v4, p0, Lcom/opencsv/bean/BeanFieldSplit;->errorLocale:Ljava/util/Locale;

    .line 172
    const-string v5, "opencsv"

    invoke-static {v5, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    .line 173
    const-string v5, "collection.cannot.be.instantiated"

    invoke-virtual {v4, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    .line 174
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    .line 170
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 175
    .local v0, "csve":Lcom/opencsv/exceptions/CsvBeanIntrospectionException;
    invoke-virtual {v0, v2}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 176
    throw v0
.end method

.method protected convertToWrite(Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    .line 201
    .local p0, "this":Lcom/opencsv/bean/BeanFieldSplit;, "Lcom/opencsv/bean/BeanFieldSplit<TT;TI;>;"
    const-string v0, ""

    .line 202
    .local v0, "retval":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 203
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    .line 204
    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 205
    .local v2, "convertedValue":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 206
    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 207
    .local v5, "o":Ljava/lang/Object;
    iget-object v6, p0, Lcom/opencsv/bean/BeanFieldSplit;->converter:Lcom/opencsv/bean/CsvConverter;

    invoke-interface {v6, v5}, Lcom/opencsv/bean/CsvConverter;->convertToWrite(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 208
    iget-object v6, p0, Lcom/opencsv/bean/BeanFieldSplit;->writeFormat:Ljava/lang/String;

    invoke-static {v6}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    aget-object v6, v2, v3

    .line 209
    invoke-static {v6}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 210
    iget-object v6, p0, Lcom/opencsv/bean/BeanFieldSplit;->writeFormat:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-object v9, v2, v3

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 212
    :cond_0
    nop

    .end local v5    # "o":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    .line 213
    goto :goto_0

    .line 214
    :cond_1
    iget-object v4, p0, Lcom/opencsv/bean/BeanFieldSplit;->writeDelimiter:Ljava/lang/String;

    invoke-static {v2, v4}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .end local v1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v2    # "convertedValue":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2
    return-object v0
.end method

.method protected isFieldEmptyForWrite(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 227
    .local p0, "this":Lcom/opencsv/bean/BeanFieldSplit;, "Lcom/opencsv/bean/BeanFieldSplit<TT;TI;>;"
    invoke-super {p0, p1}, Lcom/opencsv/bean/AbstractBeanField;->isFieldEmptyForWrite(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

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
