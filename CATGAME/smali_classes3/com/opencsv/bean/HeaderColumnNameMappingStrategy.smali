.class public Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;
.super Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;
.source "HeaderColumnNameMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/opencsv/bean/HeaderNameBaseMappingStrategy<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBindingAnnotations()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/opencsv/bean/CsvBindByName;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/opencsv/bean/CsvCustomBindByName;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/opencsv/bean/CsvBindAndSplitByName;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/opencsv/bean/CsvBindAndJoinByName;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected loadAnnotatedFieldMap(Lorg/apache/commons/collections4/ListValuedMap;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/ListValuedMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    .line 50
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/collections4/ListValuedMap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/Class;

    .line 52
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/reflect/Field;

    .line 56
    const-class v0, Lcom/opencsv/bean/CsvCustomBindByName;

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const-class v0, Lcom/opencsv/bean/CsvCustomBindByName;

    .line 58
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/CsvCustomBindByName;

    .line 59
    invoke-interface {v0}, Lcom/opencsv/bean/CsvCustomBindByName;->column()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 64
    :cond_0
    const-class v2, Lcom/opencsv/bean/CsvCustomBindByName;

    .line 65
    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/opencsv/bean/CsvCustomBindByName;

    .line 66
    invoke-interface {v2}, Lcom/opencsv/bean/CsvCustomBindByName;->converter()Ljava/lang/Class;

    move-result-object v2

    .line 67
    invoke-virtual {v6, v2}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->instantiateCustomConverter(Ljava/lang/Class;)Lcom/opencsv/bean/BeanField;

    move-result-object v2

    .line 68
    invoke-interface {v2, v9}, Lcom/opencsv/bean/BeanField;->setType(Ljava/lang/Class;)V

    .line 69
    invoke-interface {v2, v10}, Lcom/opencsv/bean/BeanField;->setField(Ljava/lang/reflect/Field;)V

    .line 70
    invoke-interface {v0}, Lcom/opencsv/bean/CsvCustomBindByName;->required()Z

    move-result v0

    .line 71
    invoke-interface {v2, v0}, Lcom/opencsv/bean/BeanField;->setRequired(Z)V

    .line 72
    iget-object v0, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    invoke-virtual {v0, v1, v2}, Lcom/opencsv/bean/FieldMapByName;->put(Ljava/lang/Comparable;Lcom/opencsv/bean/BeanField;)Lcom/opencsv/bean/BeanField;

    goto :goto_0

    .line 76
    :cond_1
    const-class v0, Lcom/opencsv/bean/CsvBindAndSplitByName;

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    const-class v0, Lcom/opencsv/bean/CsvBindAndSplitByName;

    .line 78
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/CsvBindAndSplitByName;

    .line 79
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindAndSplitByName;->required()Z

    move-result v11

    .line 80
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindAndSplitByName;->column()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 81
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindAndSplitByName;->locale()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindAndSplitByName;->writeLocaleEqualsReadLocale()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v4, v3

    goto :goto_1

    .line 83
    :cond_2
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindAndSplitByName;->writeLocale()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 84
    :goto_1
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindAndSplitByName;->splitOn()Ljava/lang/String;

    move-result-object v14

    .line 85
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindAndSplitByName;->writeDelimiter()Ljava/lang/String;

    move-result-object v16

    .line 86
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindAndSplitByName;->collectionType()Ljava/lang/Class;

    move-result-object v17

    .line 87
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindAndSplitByName;->elementType()Ljava/lang/Class;

    move-result-object v2

    .line 88
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindAndSplitByName;->converter()Ljava/lang/Class;

    move-result-object v5

    .line 89
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindAndSplitByName;->capture()Ljava/lang/String;

    move-result-object v18

    .line 90
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindAndSplitByName;->format()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object v1, v10

    .line 92
    invoke-virtual/range {v0 .. v5}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->determineConverter(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/opencsv/bean/CsvConverter;

    move-result-object v13

    .line 95
    invoke-static {v15}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/opencsv/bean/BeanFieldSplit;

    iget-object v12, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v8, v2

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    invoke-direct/range {v8 .. v18}, Lcom/opencsv/bean/BeanFieldSplit;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/opencsv/bean/FieldMapByName;->put(Ljava/lang/Comparable;Lcom/opencsv/bean/BeanField;)Lcom/opencsv/bean/BeanField;

    goto/16 :goto_0

    .line 104
    :cond_3
    iget-object v0, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    new-instance v1, Lcom/opencsv/bean/BeanFieldSplit;

    iget-object v12, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v8, v1

    move-object v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    invoke-direct/range {v8 .. v18}, Lcom/opencsv/bean/BeanFieldSplit;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lcom/opencsv/bean/FieldMapByName;->put(Ljava/lang/Comparable;Lcom/opencsv/bean/BeanField;)Lcom/opencsv/bean/BeanField;

    goto/16 :goto_0

    .line 113
    :cond_4
    const-class v0, Lcom/opencsv/bean/CsvBindAndJoinByName;

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 114
    const-class v0, Lcom/opencsv/bean/CsvBindAndJoinByName;

    .line 115
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/CsvBindAndJoinByName;

    .line 116
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindAndJoinByName;->required()Z

    move-result v11

    .line 117
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindAndJoinByName;->column()Ljava/lang/String;

    move-result-object v15

    .line 118
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindAndJoinByName;->locale()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindAndJoinByName;->writeLocaleEqualsReadLocale()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v4, v3

    goto :goto_2

    .line 120
    :cond_5
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindAndJoinByName;->writeLocale()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 121
    :goto_2
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindAndJoinByName;->elementType()Ljava/lang/Class;

    move-result-object v2

    .line 122
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindAndJoinByName;->mapType()Ljava/lang/Class;

    move-result-object v14

    .line 123
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindAndJoinByName;->converter()Ljava/lang/Class;

    move-result-object v5

    .line 124
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindAndJoinByName;->capture()Ljava/lang/String;

    move-result-object v16

    .line 125
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindAndJoinByName;->format()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v10

    .line 127
    invoke-virtual/range {v0 .. v5}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->determineConverter(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/opencsv/bean/CsvConverter;

    move-result-object v13

    .line 130
    invoke-static {v15}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 131
    iget-object v0, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/opencsv/bean/BeanFieldJoinStringIndex;

    iget-object v12, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v8, v2

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v8 .. v16}, Lcom/opencsv/bean/BeanFieldJoinStringIndex;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/opencsv/bean/FieldMapByName;->putComplex(Ljava/lang/String;Lcom/opencsv/bean/BeanField;)V

    goto/16 :goto_0

    .line 138
    :cond_6
    iget-object v0, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    new-instance v1, Lcom/opencsv/bean/BeanFieldJoinStringIndex;

    iget-object v12, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v8, v1

    move-object v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v8 .. v16}, Lcom/opencsv/bean/BeanFieldJoinStringIndex;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lcom/opencsv/bean/FieldMapByName;->putComplex(Ljava/lang/String;Lcom/opencsv/bean/BeanField;)V

    goto/16 :goto_0

    .line 147
    :cond_7
    const-class v0, Lcom/opencsv/bean/CsvBindByName;

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/CsvBindByName;

    .line 148
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindByName;->required()Z

    move-result v11

    .line 149
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindByName;->column()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 150
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindByName;->locale()Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindByName;->writeLocaleEqualsReadLocale()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v4, v3

    goto :goto_3

    .line 152
    :cond_8
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindByName;->writeLocale()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 153
    :goto_3
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindByName;->capture()Ljava/lang/String;

    move-result-object v14

    .line 154
    invoke-interface {v0}, Lcom/opencsv/bean/CsvBindByName;->format()Ljava/lang/String;

    move-result-object v16

    .line 157
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    .line 155
    invoke-virtual/range {v0 .. v5}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->determineConverter(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/opencsv/bean/CsvConverter;

    move-result-object v13

    .line 160
    invoke-static {v15}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 161
    iget-object v0, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/opencsv/bean/BeanFieldSingleValue;

    iget-object v12, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v8, v2

    move-object/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lcom/opencsv/bean/BeanFieldSingleValue;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/opencsv/bean/FieldMapByName;->put(Ljava/lang/Comparable;Lcom/opencsv/bean/BeanField;)Lcom/opencsv/bean/BeanField;

    goto/16 :goto_0

    .line 167
    :cond_9
    iget-object v0, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    new-instance v1, Lcom/opencsv/bean/BeanFieldSingleValue;

    iget-object v12, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v8, v1

    move-object v2, v15

    move-object/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lcom/opencsv/bean/BeanFieldSingleValue;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lcom/opencsv/bean/FieldMapByName;->put(Ljava/lang/Comparable;Lcom/opencsv/bean/BeanField;)Lcom/opencsv/bean/BeanField;

    goto/16 :goto_0

    :cond_a
    return-void
.end method
