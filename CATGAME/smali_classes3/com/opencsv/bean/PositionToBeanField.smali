.class public Lcom/opencsv/bean/PositionToBeanField;
.super Lcom/opencsv/bean/AbstractFieldMapEntry;
.source "PositionToBeanField.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opencsv/bean/PositionToBeanField$PositionIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/opencsv/bean/AbstractFieldMapEntry<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "TT;>;",
        "Ljava/lang/Iterable<",
        "Lcom/opencsv/bean/FieldMapByPositionEntry<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final initializer:Ljava/lang/String;

.field private final ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/lang3/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/opencsv/bean/BeanField;Ljava/util/Locale;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/opencsv/bean/BeanField<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    const-string v3, "-"

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 57
    invoke-direct {v1, v4, v5}, Lcom/opencsv/bean/AbstractFieldMapEntry;-><init>(Lcom/opencsv/bean/BeanField;Ljava/util/Locale;)V

    .line 58
    iput-object v2, v1, Lcom/opencsv/bean/PositionToBeanField;->initializer:Ljava/lang/String;

    .line 59
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v1, Lcom/opencsv/bean/PositionToBeanField;->ranges:Ljava/util/List;

    .line 62
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "invalid.range.definition"

    const-string v6, "opencsv"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v4, :cond_c

    const-string v4, ","

    .line 71
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 73
    :try_start_0
    array-length v9, v4

    move v10, v7

    :goto_0
    if-ge v10, v9, :cond_b

    aget-object v11, v4, v10

    .line 74
    invoke-static {v11}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 78
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x2

    .line 79
    invoke-virtual {v11, v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 80
    aget-object v13, v11, v7

    invoke-static {v13}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_1

    :cond_0
    aget-object v13, v11, v7

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 81
    :goto_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 82
    array-length v15, v11

    if-ne v15, v12, :cond_1

    aget-object v12, v11, v8

    invoke-static {v12}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 83
    aget-object v11, v11, v8

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 85
    :cond_1
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lt v11, v0, :cond_3

    .line 86
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lt v11, v0, :cond_2

    move-object v14, v13

    goto :goto_2

    .line 90
    :cond_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 93
    :cond_3
    :goto_2
    invoke-static {v13, v14}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v11

    goto :goto_3

    .line 96
    :cond_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/commons/lang3/Range;->is(Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v11

    .line 101
    :goto_3
    iget-object v12, v1, Lcom/opencsv/bean/PositionToBeanField;->ranges:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v12

    move v13, v7

    .line 103
    :goto_4
    invoke-interface {v12}, Ljava/util/ListIterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    if-nez v13, :cond_9

    .line 104
    invoke-interface {v12}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/lang3/Range;

    .line 105
    invoke-virtual {v14, v11}, Lorg/apache/commons/lang3/Range;->containsRange(Lorg/apache/commons/lang3/Range;)Z

    move-result v15

    if-eqz v15, :cond_5

    move v13, v8

    goto/16 :goto_6

    .line 109
    :cond_5
    invoke-virtual {v14, v11}, Lorg/apache/commons/lang3/Range;->isOverlappedBy(Lorg/apache/commons/lang3/Range;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 111
    invoke-virtual {v14}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v11}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 112
    invoke-virtual {v14}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v11}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 110
    invoke-static {v7, v11}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v7

    .line 113
    invoke-interface {v12}, Ljava/util/ListIterator;->remove()V

    goto :goto_5

    .line 115
    :cond_6
    invoke-virtual {v14}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v8

    invoke-virtual {v11}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v7, v15, :cond_7

    .line 116
    invoke-virtual {v14}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Comparable;

    invoke-virtual {v11}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Comparable;

    invoke-static {v7, v11}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v7

    :goto_5
    move-object v11, v7

    goto :goto_6

    .line 118
    :cond_7
    invoke-virtual {v11}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v8

    invoke-virtual {v14}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v7, v15, :cond_8

    .line 119
    invoke-virtual {v11}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Comparable;

    invoke-virtual {v14}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Comparable;

    invoke-static {v7, v11}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v7

    goto :goto_5

    :cond_8
    :goto_6
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_9
    if-nez v13, :cond_a

    .line 124
    iget-object v7, v1, Lcom/opencsv/bean/PositionToBeanField;->ranges:Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_b
    return-void

    :catch_0
    move-exception v0

    .line 131
    new-instance v3, Lcom/opencsv/exceptions/CsvBadConverterException;

    const-class v4, Lcom/opencsv/bean/BeanFieldJoin;

    iget-object v7, v1, Lcom/opencsv/bean/PositionToBeanField;->errorLocale:Ljava/util/Locale;

    .line 134
    invoke-static {v6, v7}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v6

    .line 135
    invoke-virtual {v6, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    .line 133
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v3, v0}, Lcom/opencsv/exceptions/CsvBadConverterException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 138
    throw v3

    .line 63
    :cond_c
    new-instance v0, Lcom/opencsv/exceptions/CsvBadConverterException;

    const-class v3, Lcom/opencsv/bean/BeanFieldJoin;

    iget-object v4, v1, Lcom/opencsv/bean/PositionToBeanField;->errorLocale:Ljava/util/Locale;

    .line 66
    invoke-static {v6, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    .line 67
    invoke-virtual {v4, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    .line 65
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/opencsv/bean/PositionToBeanField;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/opencsv/bean/PositionToBeanField;->ranges:Ljava/util/List;

    return-object p0
.end method

.method static synthetic lambda$contains$0(Ljava/lang/Integer;Lorg/apache/commons/lang3/Range;)Z
    .locals 0

    .line 170
    invoke-virtual {p1, p0}, Lorg/apache/commons/lang3/Range;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public attenuateRanges(I)V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/opencsv/bean/PositionToBeanField;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 155
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/Range;

    .line 157
    invoke-virtual {v1}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 158
    invoke-virtual {v1}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, p1, :cond_1

    .line 159
    invoke-virtual {v1}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-static {v1}, Lorg/apache/commons/lang3/Range;->is(Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {v1}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/PositionToBeanField;->contains(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Integer;)Z
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/opencsv/bean/PositionToBeanField;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/opencsv/bean/PositionToBeanField$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/opencsv/bean/PositionToBeanField$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getInitializer()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/opencsv/bean/PositionToBeanField;->getInitializer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitializer()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/opencsv/bean/PositionToBeanField;->initializer:Ljava/lang/String;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/opencsv/bean/FieldMapByPositionEntry<",
            "TT;>;>;"
        }
    .end annotation

    .line 180
    new-instance v0, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;

    invoke-direct {v0, p0}, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;-><init>(Lcom/opencsv/bean/PositionToBeanField;)V

    return-object v0
.end method
