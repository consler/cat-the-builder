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
    .locals 19
    .param p1, "rangeDefinition"    # Ljava/lang/String;
    .param p2, "maxIndex"    # I
    .param p4, "errorLocale"    # Ljava/util/Locale;
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

    .line 57
    .local p0, "this":Lcom/opencsv/bean/PositionToBeanField;, "Lcom/opencsv/bean/PositionToBeanField<TT;>;"
    .local p3, "field":Lcom/opencsv/bean/BeanField;, "Lcom/opencsv/bean/BeanField<TT;Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v0, "-"

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct {v1, v4, v5}, Lcom/opencsv/bean/AbstractFieldMapEntry;-><init>(Lcom/opencsv/bean/BeanField;Ljava/util/Locale;)V

    .line 58
    iput-object v2, v1, Lcom/opencsv/bean/PositionToBeanField;->initializer:Ljava/lang/String;

    .line 59
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, v1, Lcom/opencsv/bean/PositionToBeanField;->ranges:Ljava/util/List;

    .line 62
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "invalid.range.definition"

    const-string v8, "opencsv"

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v6, :cond_d

    .line 71
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, "partialRangeDefinitions":[Ljava/lang/String;
    :try_start_0
    array-length v11, v6

    move v12, v9

    :goto_0
    if-ge v12, v11, :cond_c

    aget-object v13, v6, v12

    .line 74
    .local v13, "r":Ljava/lang/String;
    invoke-static {v13}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 78
    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 79
    const/4 v14, 0x2

    invoke-virtual {v13, v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v15

    .line 80
    .local v15, "endpoints":[Ljava/lang/String;
    aget-object v16, v15, v9

    invoke-static/range {v16 .. v16}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    goto :goto_1

    :cond_0
    aget-object v16, v15, v9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    :goto_1
    move-object/from16 v17, v16

    .line 81
    .local v17, "min":Ljava/lang/Integer;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 82
    .local v16, "max":Ljava/lang/Integer;
    array-length v9, v15

    if-ne v9, v14, :cond_1

    aget-object v9, v15, v10

    invoke-static {v9}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 83
    aget-object v9, v15, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v16, v9

    .line 85
    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lt v9, v3, :cond_3

    .line 86
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lt v9, v3, :cond_2

    .line 87
    move-object/from16 v16, v17

    move-object/from16 v9, v16

    goto :goto_2

    .line 90
    :cond_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v16, v9

    goto :goto_2

    .line 85
    :cond_3
    move-object/from16 v9, v16

    .line 93
    .end local v16    # "max":Ljava/lang/Integer;
    .local v9, "max":Ljava/lang/Integer;
    :goto_2
    move-object/from16 v14, v17

    .end local v17    # "min":Ljava/lang/Integer;
    .local v14, "min":Ljava/lang/Integer;
    invoke-static {v14, v9}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v16

    move-object/from16 v9, v16

    .line 94
    .end local v14    # "min":Ljava/lang/Integer;
    .end local v15    # "endpoints":[Ljava/lang/String;
    .local v9, "range":Lorg/apache/commons/lang3/Range;, "Lorg/apache/commons/lang3/Range<Ljava/lang/Integer;>;"
    goto :goto_3

    .line 96
    .end local v9    # "range":Lorg/apache/commons/lang3/Range;, "Lorg/apache/commons/lang3/Range<Ljava/lang/Integer;>;"
    :cond_4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/lang3/Range;->is(Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v9

    .line 101
    .restart local v9    # "range":Lorg/apache/commons/lang3/Range;, "Lorg/apache/commons/lang3/Range<Ljava/lang/Integer;>;"
    :goto_3
    iget-object v14, v1, Lcom/opencsv/bean/PositionToBeanField;->ranges:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v14

    .line 102
    .local v14, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/commons/lang3/Range<Ljava/lang/Integer;>;>;"
    const/4 v15, 0x0

    .line 103
    .local v15, "completelyContained":Z
    :goto_4
    invoke-interface {v14}, Ljava/util/ListIterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    if-nez v15, :cond_9

    .line 104
    invoke-interface {v14}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/lang3/Range;

    move-object/from16 v17, v16

    .line 105
    .local v17, "next":Lorg/apache/commons/lang3/Range;, "Lorg/apache/commons/lang3/Range<Ljava/lang/Integer;>;"
    move-object/from16 v10, v17

    .end local v17    # "next":Lorg/apache/commons/lang3/Range;, "Lorg/apache/commons/lang3/Range<Ljava/lang/Integer;>;"
    .local v10, "next":Lorg/apache/commons/lang3/Range;, "Lorg/apache/commons/lang3/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v10, v9}, Lorg/apache/commons/lang3/Range;->containsRange(Lorg/apache/commons/lang3/Range;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 106
    const/4 v15, 0x1

    move-object/from16 v18, v0

    goto/16 :goto_5

    .line 109
    :cond_5
    invoke-virtual {v10, v9}, Lorg/apache/commons/lang3/Range;->isOverlappedBy(Lorg/apache/commons/lang3/Range;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 110
    nop

    .line 111
    invoke-virtual {v10}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v9}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 112
    invoke-virtual {v10}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v9}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 110
    invoke-static {v0, v3}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v0

    .line 113
    .end local v9    # "range":Lorg/apache/commons/lang3/Range;, "Lorg/apache/commons/lang3/Range<Ljava/lang/Integer;>;"
    .local v0, "range":Lorg/apache/commons/lang3/Range;, "Lorg/apache/commons/lang3/Range<Ljava/lang/Integer;>;"
    invoke-interface {v14}, Ljava/util/ListIterator;->remove()V

    move-object v9, v0

    goto :goto_5

    .line 115
    .end local v0    # "range":Lorg/apache/commons/lang3/Range;, "Lorg/apache/commons/lang3/Range<Ljava/lang/Integer;>;"
    .restart local v9    # "range":Lorg/apache/commons/lang3/Range;, "Lorg/apache/commons/lang3/Range<Ljava/lang/Integer;>;"
    :cond_6
    move-object/from16 v18, v0

    invoke-virtual {v10}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {v9}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_7

    .line 116
    invoke-virtual {v10}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {v9}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-static {v0, v3}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v0

    move-object v9, v0

    .end local v9    # "range":Lorg/apache/commons/lang3/Range;, "Lorg/apache/commons/lang3/Range<Ljava/lang/Integer;>;"
    .restart local v0    # "range":Lorg/apache/commons/lang3/Range;, "Lorg/apache/commons/lang3/Range<Ljava/lang/Integer;>;"
    goto :goto_5

    .line 118
    .end local v0    # "range":Lorg/apache/commons/lang3/Range;, "Lorg/apache/commons/lang3/Range<Ljava/lang/Integer;>;"
    .restart local v9    # "range":Lorg/apache/commons/lang3/Range;, "Lorg/apache/commons/lang3/Range<Ljava/lang/Integer;>;"
    :cond_7
    invoke-virtual {v9}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {v10}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_8

    .line 119
    invoke-virtual {v9}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {v10}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-static {v0, v3}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v0

    move-object v9, v0

    .line 122
    .end local v10    # "next":Lorg/apache/commons/lang3/Range;, "Lorg/apache/commons/lang3/Range<Ljava/lang/Integer;>;"
    :cond_8
    :goto_5
    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v0, v18

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 103
    :cond_9
    move-object/from16 v18, v0

    .line 123
    if-nez v15, :cond_b

    .line 124
    iget-object v0, v1, Lcom/opencsv/bean/PositionToBeanField;->ranges:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 74
    .end local v9    # "range":Lorg/apache/commons/lang3/Range;, "Lorg/apache/commons/lang3/Range<Ljava/lang/Integer;>;"
    .end local v14    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/commons/lang3/Range<Ljava/lang/Integer;>;>;"
    .end local v15    # "completelyContained":Z
    :cond_a
    move-object/from16 v18, v0

    .line 73
    .end local v13    # "r":Ljava/lang/String;
    :cond_b
    :goto_6
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v0, v18

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 139
    :cond_c
    nop

    .line 140
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/opencsv/exceptions/CsvBadConverterException;

    const-class v4, Lcom/opencsv/bean/BeanFieldJoin;

    iget-object v9, v1, Lcom/opencsv/bean/PositionToBeanField;->errorLocale:Ljava/util/Locale;

    .line 134
    invoke-static {v8, v9}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v8

    .line 135
    invoke-virtual {v8, v7}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    .line 133
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v7}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 137
    .local v3, "csve":Lcom/opencsv/exceptions/CsvBadConverterException;
    invoke-virtual {v3, v0}, Lcom/opencsv/exceptions/CsvBadConverterException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 138
    throw v3

    .line 63
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "csve":Lcom/opencsv/exceptions/CsvBadConverterException;
    .end local v6    # "partialRangeDefinitions":[Ljava/lang/String;
    :cond_d
    new-instance v0, Lcom/opencsv/exceptions/CsvBadConverterException;

    const-class v3, Lcom/opencsv/bean/BeanFieldJoin;

    iget-object v4, v1, Lcom/opencsv/bean/PositionToBeanField;->errorLocale:Ljava/util/Locale;

    .line 66
    invoke-static {v8, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    .line 67
    invoke-virtual {v4, v7}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    .line 65
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/opencsv/bean/PositionToBeanField;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/opencsv/bean/PositionToBeanField;

    .line 31
    iget-object v0, p0, Lcom/opencsv/bean/PositionToBeanField;->ranges:Ljava/util/List;

    return-object v0
.end method

.method static synthetic lambda$contains$0(Ljava/lang/Integer;Lorg/apache/commons/lang3/Range;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/Integer;
    .param p1, "range"    # Lorg/apache/commons/lang3/Range;

    .line 170
    invoke-virtual {p1, p0}, Lorg/apache/commons/lang3/Range;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public attenuateRanges(I)V
    .locals 4
    .param p1, "maxIndex"    # I

    .line 154
    .local p0, "this":Lcom/opencsv/bean/PositionToBeanField;, "Lcom/opencsv/bean/PositionToBeanField<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/PositionToBeanField;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 155
    .local v0, "rangeIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/commons/lang3/Range<Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/Range;

    .line 157
    .local v1, "r":Lorg/apache/commons/lang3/Range;, "Lorg/apache/commons/lang3/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, p1, :cond_1

    .line 158
    invoke-virtual {v1}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 159
    invoke-virtual {v1}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-static {v2}, Lorg/apache/commons/lang3/Range;->is(Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 162
    :cond_0
    invoke-virtual {v1}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 165
    .end local v1    # "r":Lorg/apache/commons/lang3/Range;, "Lorg/apache/commons/lang3/Range<Ljava/lang/Integer;>;"
    :cond_1
    :goto_1
    goto :goto_0

    .line 166
    :cond_2
    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 0

    .line 31
    .local p0, "this":Lcom/opencsv/bean/PositionToBeanField;, "Lcom/opencsv/bean/PositionToBeanField<TT;>;"
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/PositionToBeanField;->contains(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Integer;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Integer;

    .line 170
    .local p0, "this":Lcom/opencsv/bean/PositionToBeanField;, "Lcom/opencsv/bean/PositionToBeanField<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/PositionToBeanField;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/opencsv/bean/-$$Lambda$PositionToBeanField$hn0WyZS1CR3-1lSBHJ-0oFzULDo;

    invoke-direct {v1, p1}, Lcom/opencsv/bean/-$$Lambda$PositionToBeanField$hn0WyZS1CR3-1lSBHJ-0oFzULDo;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getInitializer()Ljava/lang/Object;
    .locals 1

    .line 31
    .local p0, "this":Lcom/opencsv/bean/PositionToBeanField;, "Lcom/opencsv/bean/PositionToBeanField<TT;>;"
    invoke-virtual {p0}, Lcom/opencsv/bean/PositionToBeanField;->getInitializer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitializer()Ljava/lang/String;
    .locals 1

    .line 175
    .local p0, "this":Lcom/opencsv/bean/PositionToBeanField;, "Lcom/opencsv/bean/PositionToBeanField<TT;>;"
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
    .local p0, "this":Lcom/opencsv/bean/PositionToBeanField;, "Lcom/opencsv/bean/PositionToBeanField<TT;>;"
    new-instance v0, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;

    invoke-direct {v0, p0}, Lcom/opencsv/bean/PositionToBeanField$PositionIterator;-><init>(Lcom/opencsv/bean/PositionToBeanField;)V

    return-object v0
.end method
