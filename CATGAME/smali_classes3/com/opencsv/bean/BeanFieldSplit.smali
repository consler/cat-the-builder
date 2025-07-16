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
    .locals 1
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
    invoke-direct/range {p0 .. p5}, Lcom/opencsv/bean/AbstractBeanField;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;)V

    .line 75
    iput-object p7, p0, Lcom/opencsv/bean/BeanFieldSplit;->writeDelimiter:Ljava/lang/String;

    .line 76
    iput-object p10, p0, Lcom/opencsv/bean/BeanFieldSplit;->writeFormat:Ljava/lang/String;

    .line 79
    const-class p1, Ljava/util/Collection;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    const-string p3, "invalid.collection.type"

    const/4 p4, 0x1

    const-string p5, "opencsv"

    const/4 p7, 0x0

    const-class v0, Lcom/opencsv/bean/BeanFieldSplit;

    if-eqz p1, :cond_c

    .line 90
    iget-object p1, p0, Lcom/opencsv/bean/BeanFieldSplit;->errorLocale:Ljava/util/Locale;

    invoke-static {p6, p7, v0, p1}, Lcom/opencsv/bean/OpencsvUtils;->compilePattern(Ljava/lang/String;ILjava/lang/Class;Ljava/util/Locale;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/BeanFieldSplit;->splitOn:Ljava/util/regex/Pattern;

    .line 92
    iget-object p1, p0, Lcom/opencsv/bean/BeanFieldSplit;->errorLocale:Ljava/util/Locale;

    invoke-static {p9, p7, v0, p1}, Lcom/opencsv/bean/OpencsvUtils;->compilePatternAtLeastOneGroup(Ljava/lang/String;ILjava/lang/Class;Ljava/util/Locale;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/BeanFieldSplit;->capture:Ljava/util/regex/Pattern;

    .line 96
    iget-object p1, p0, Lcom/opencsv/bean/BeanFieldSplit;->errorLocale:Ljava/util/Locale;

    invoke-static {p10, v0, p1}, Lcom/opencsv/bean/OpencsvUtils;->verifyFormatString(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;)V

    .line 100
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p6

    if-nez p6, :cond_0

    .line 102
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    goto/16 :goto_3

    .line 104
    :cond_0
    invoke-virtual {p8}, Ljava/lang/Class;->isInterface()Z

    move-result p6

    if-nez p6, :cond_1

    .line 105
    iput-object p8, p0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    goto/16 :goto_3

    .line 108
    :cond_1
    const-class p6, Ljava/util/Collection;

    invoke-virtual {p6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_a

    const-class p6, Ljava/util/List;

    invoke-virtual {p6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_2

    goto/16 :goto_2

    .line 111
    :cond_2
    const-class p6, Ljava/util/Set;

    invoke-virtual {p6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_3

    .line 112
    const-class p1, Ljava/util/HashSet;

    iput-object p1, p0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    goto :goto_3

    .line 114
    :cond_3
    const-class p6, Ljava/util/SortedSet;

    invoke-virtual {p6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_9

    const-class p6, Ljava/util/NavigableSet;

    invoke-virtual {p6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_4

    goto :goto_1

    .line 117
    :cond_4
    const-class p6, Ljava/util/Queue;

    invoke-virtual {p6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_8

    const-class p6, Ljava/util/Deque;

    invoke-virtual {p6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_5

    goto :goto_0

    .line 120
    :cond_5
    const-class p6, Lorg/apache/commons/collections4/Bag;

    invoke-virtual {p6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_6

    .line 121
    const-class p1, Lorg/apache/commons/collections4/bag/HashBag;

    iput-object p1, p0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    goto :goto_3

    .line 123
    :cond_6
    const-class p6, Lorg/apache/commons/collections4/SortedBag;

    invoke-virtual {p6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 124
    const-class p1, Lorg/apache/commons/collections4/bag/TreeBag;

    iput-object p1, p0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    .line 128
    new-instance p1, Lcom/opencsv/exceptions/CsvBadConverterException;

    iget-object p2, p0, Lcom/opencsv/bean/BeanFieldSplit;->errorLocale:Ljava/util/Locale;

    .line 131
    invoke-static {p5, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p2

    .line 133
    invoke-virtual {p2, p3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array p3, p4, [Ljava/lang/Object;

    .line 134
    invoke-virtual {p8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, p7

    .line 130
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_8
    :goto_0
    const-class p1, Ljava/util/ArrayDeque;

    iput-object p1, p0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    goto :goto_3

    .line 115
    :cond_9
    :goto_1
    const-class p1, Ljava/util/TreeSet;

    iput-object p1, p0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    goto :goto_3

    .line 109
    :cond_a
    :goto_2
    const-class p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    .line 140
    :goto_3
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    iget-object p3, p0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    invoke-virtual {p1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    .line 141
    :cond_b
    new-instance p1, Lcom/opencsv/exceptions/CsvBadConverterException;

    iget-object p3, p0, Lcom/opencsv/bean/BeanFieldSplit;->errorLocale:Ljava/util/Locale;

    .line 144
    invoke-static {p5, p3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p3

    const-string p5, "unassignable.collection.type"

    .line 146
    invoke-virtual {p3, p5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/Object;

    .line 147
    invoke-virtual {p8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p6

    aput-object p6, p5, p7

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p5, p4

    .line 143
    invoke-static {p3, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_c
    new-instance p1, Lcom/opencsv/exceptions/CsvBadConverterException;

    iget-object p6, p0, Lcom/opencsv/bean/BeanFieldSplit;->errorLocale:Ljava/util/Locale;

    .line 83
    invoke-static {p5, p6}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p5

    .line 85
    invoke-virtual {p5, p3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array p4, p4, [Ljava/lang/Object;

    .line 86
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, p7

    .line 82
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected convert(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvConstraintViolationException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 166
    :try_start_0
    iget-object v2, p0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    iget-object v3, p0, Lcom/opencsv/bean/BeanFieldSplit;->splitOn:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    .line 180
    array-length v3, p1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p1, v0

    .line 181
    iget-object v5, p0, Lcom/opencsv/bean/BeanFieldSplit;->capture:Ljava/util/regex/Pattern;

    if-eqz v5, :cond_0

    .line 182
    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 183
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 184
    invoke-virtual {v5, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 188
    :cond_0
    iget-object v5, p0, Lcom/opencsv/bean/BeanFieldSplit;->converter:Lcom/opencsv/bean/CsvConverter;

    invoke-interface {v5, v4}, Lcom/opencsv/bean/CsvConverter;->convertToRead(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 169
    :goto_1
    new-instance v2, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;

    const-string v3, "opencsv"

    iget-object v4, p0, Lcom/opencsv/bean/BeanFieldSplit;->errorLocale:Ljava/util/Locale;

    .line 172
    invoke-static {v3, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v3

    const-string v4, "collection.cannot.be.instantiated"

    .line 173
    invoke-virtual {v3, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/opencsv/bean/BeanFieldSplit;->collectionType:Ljava/lang/Class;

    .line 174
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 170
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v2, p1}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 176
    throw v2
.end method

.method protected convertToWrite(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 203
    check-cast p1, Ljava/util/Collection;

    .line 204
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 206
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 207
    iget-object v4, p0, Lcom/opencsv/bean/BeanFieldSplit;->converter:Lcom/opencsv/bean/CsvConverter;

    invoke-interface {v4, v3}, Lcom/opencsv/bean/CsvConverter;->convertToWrite(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 208
    iget-object v3, p0, Lcom/opencsv/bean/BeanFieldSplit;->writeFormat:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v0, v2

    .line 209
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    iget-object v3, p0, Lcom/opencsv/bean/BeanFieldSplit;->writeFormat:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v5, v0, v2

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_1
    iget-object p1, p0, Lcom/opencsv/bean/BeanFieldSplit;->writeDelimiter:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method protected isFieldEmptyForWrite(Ljava/lang/Object;)Z
    .locals 1

    .line 227
    invoke-super {p0, p1}, Lcom/opencsv/bean/AbstractBeanField;->isFieldEmptyForWrite(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

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
