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
    .local p0, "this":Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;, "Lcom/opencsv/bean/HeaderColumnNameMappingStrategy<TT;>;"
    invoke-direct {p0}, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;-><init>()V

    .line 39
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
    .local p0, "this":Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;, "Lcom/opencsv/bean/HeaderColumnNameMappingStrategy<TT;>;"
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
    .locals 32
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

    .line 50
    .local p0, "this":Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;, "Lcom/opencsv/bean/HeaderColumnNameMappingStrategy<TT;>;"
    .local p1, "fields":Lorg/apache/commons/collections4/ListValuedMap;, "Lorg/apache/commons/collections4/ListValuedMap<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;"
    move-object/from16 v6, p0

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

    move-object v8, v0

    check-cast v8, Ljava/util/Map$Entry;

    .line 51
    .local v8, "classField":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/Class;

    .line 52
    .local v15, "localType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/reflect/Field;

    .line 56
    .local v14, "localField":Ljava/lang/reflect/Field;
    const-class v0, Lcom/opencsv/bean/CsvCustomBindByName;

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const-class v0, Lcom/opencsv/bean/CsvCustomBindByName;

    .line 58
    invoke-virtual {v14, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/CsvCustomBindByName;

    .line 59
    .local v0, "annotation":Lcom/opencsv/bean/CsvCustomBindByName;
    invoke-interface {v0}, Lcom/opencsv/bean/CsvCustomBindByName;->column()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "columnName":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 64
    :cond_0
    const-class v2, Lcom/opencsv/bean/CsvCustomBindByName;

    .line 65
    invoke-virtual {v14, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/opencsv/bean/CsvCustomBindByName;

    .line 66
    invoke-interface {v2}, Lcom/opencsv/bean/CsvCustomBindByName;->converter()Ljava/lang/Class;

    move-result-object v2

    .line 67
    .local v2, "converter":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/opencsv/bean/AbstractBeanField<TT;Ljava/lang/String;>;>;"
    invoke-virtual {v6, v2}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->instantiateCustomConverter(Ljava/lang/Class;)Lcom/opencsv/bean/BeanField;

    move-result-object v3

    .line 68
    .local v3, "bean":Lcom/opencsv/bean/BeanField;, "Lcom/opencsv/bean/BeanField<TT;Ljava/lang/String;>;"
    invoke-interface {v3, v15}, Lcom/opencsv/bean/BeanField;->setType(Ljava/lang/Class;)V

    .line 69
    invoke-interface {v3, v14}, Lcom/opencsv/bean/BeanField;->setField(Ljava/lang/reflect/Field;)V

    .line 70
    invoke-interface {v0}, Lcom/opencsv/bean/CsvCustomBindByName;->required()Z

    move-result v4

    .line 71
    .local v4, "required":Z
    invoke-interface {v3, v4}, Lcom/opencsv/bean/BeanField;->setRequired(Z)V

    .line 72
    iget-object v5, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    invoke-virtual {v5, v1, v3}, Lcom/opencsv/bean/FieldMapByName;->put(Ljava/lang/Comparable;Lcom/opencsv/bean/BeanField;)Lcom/opencsv/bean/BeanField;

    .line 73
    .end local v0    # "annotation":Lcom/opencsv/bean/CsvCustomBindByName;
    .end local v2    # "converter":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/opencsv/bean/AbstractBeanField<TT;Ljava/lang/String;>;>;"
    .end local v3    # "bean":Lcom/opencsv/bean/BeanField;, "Lcom/opencsv/bean/BeanField<TT;Ljava/lang/String;>;"
    goto/16 :goto_7

    .line 76
    .end local v1    # "columnName":Ljava/lang/String;
    .end local v4    # "required":Z
    :cond_1
    const-class v0, Lcom/opencsv/bean/CsvBindAndSplitByName;

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    const-class v0, Lcom/opencsv/bean/CsvBindAndSplitByName;

    .line 78
    invoke-virtual {v14, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/opencsv/bean/CsvBindAndSplitByName;

    .line 79
    .local v20, "annotation":Lcom/opencsv/bean/CsvBindAndSplitByName;
    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByName;->required()Z

    move-result v21

    .line 80
    .local v21, "required":Z
    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByName;->column()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 81
    .local v13, "columnName":Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByName;->locale()Ljava/lang/String;

    move-result-object v22

    .line 82
    .local v22, "locale":Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByName;->writeLocaleEqualsReadLocale()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v4, v22

    goto :goto_1

    .line 83
    :cond_2
    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByName;->writeLocale()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_1
    nop

    .line 84
    .local v4, "writeLocale":Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByName;->splitOn()Ljava/lang/String;

    move-result-object v23

    .line 85
    .local v23, "splitOn":Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByName;->writeDelimiter()Ljava/lang/String;

    move-result-object v24

    .line 86
    .local v24, "writeDelimiter":Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByName;->collectionType()Ljava/lang/Class;

    move-result-object v25

    .line 87
    .local v25, "collectionType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Collection;>;"
    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByName;->elementType()Ljava/lang/Class;

    move-result-object v26

    .line 88
    .local v26, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByName;->converter()Ljava/lang/Class;

    move-result-object v27

    .line 89
    .local v27, "splitConverter":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/opencsv/bean/AbstractCsvConverter;>;"
    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByName;->capture()Ljava/lang/String;

    move-result-object v28

    .line 90
    .local v28, "capture":Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByName;->format()Ljava/lang/String;

    move-result-object v29

    .line 92
    .local v29, "format":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v26

    move-object/from16 v3, v22

    move-object/from16 v5, v27

    invoke-virtual/range {v0 .. v5}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->determineConverter(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/opencsv/bean/CsvConverter;

    move-result-object v0

    .line 95
    .local v0, "converter":Lcom/opencsv/bean/CsvConverter;
    invoke-static {v13}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    iget-object v1, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/opencsv/bean/BeanFieldSplit;

    iget-object v5, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v9, v3

    move-object v10, v15

    move-object v11, v14

    move/from16 v12, v21

    move-object/from16 v30, v4

    move-object v4, v13

    .end local v13    # "columnName":Ljava/lang/String;
    .local v4, "columnName":Ljava/lang/String;
    .local v30, "writeLocale":Ljava/lang/String;
    move-object v13, v5

    move-object v5, v14

    .end local v14    # "localField":Ljava/lang/reflect/Field;
    .local v5, "localField":Ljava/lang/reflect/Field;
    move-object v14, v0

    move-object/from16 v31, v15

    .end local v15    # "localType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v31, "localType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v15, v23

    move-object/from16 v16, v24

    move-object/from16 v17, v25

    move-object/from16 v18, v28

    move-object/from16 v19, v29

    invoke-direct/range {v9 .. v19}, Lcom/opencsv/bean/BeanFieldSplit;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/opencsv/bean/FieldMapByName;->put(Ljava/lang/Comparable;Lcom/opencsv/bean/BeanField;)Lcom/opencsv/bean/BeanField;

    goto :goto_2

    .line 104
    .end local v5    # "localField":Ljava/lang/reflect/Field;
    .end local v30    # "writeLocale":Ljava/lang/String;
    .end local v31    # "localType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v4, "writeLocale":Ljava/lang/String;
    .restart local v13    # "columnName":Ljava/lang/String;
    .restart local v14    # "localField":Ljava/lang/reflect/Field;
    .restart local v15    # "localType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    move-object/from16 v30, v4

    move-object v4, v13

    move-object v5, v14

    move-object/from16 v31, v15

    .end local v13    # "columnName":Ljava/lang/String;
    .end local v14    # "localField":Ljava/lang/reflect/Field;
    .end local v15    # "localType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v4, "columnName":Ljava/lang/String;
    .restart local v5    # "localField":Ljava/lang/reflect/Field;
    .restart local v30    # "writeLocale":Ljava/lang/String;
    .restart local v31    # "localType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    new-instance v2, Lcom/opencsv/bean/BeanFieldSplit;

    iget-object v13, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v9, v2

    move-object/from16 v10, v31

    move-object v11, v5

    move/from16 v12, v21

    move-object v14, v0

    move-object/from16 v15, v23

    move-object/from16 v16, v24

    move-object/from16 v17, v25

    move-object/from16 v18, v28

    move-object/from16 v19, v29

    invoke-direct/range {v9 .. v19}, Lcom/opencsv/bean/BeanFieldSplit;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v2}, Lcom/opencsv/bean/FieldMapByName;->put(Ljava/lang/Comparable;Lcom/opencsv/bean/BeanField;)Lcom/opencsv/bean/BeanField;

    .line 110
    .end local v0    # "converter":Lcom/opencsv/bean/CsvConverter;
    .end local v20    # "annotation":Lcom/opencsv/bean/CsvBindAndSplitByName;
    .end local v23    # "splitOn":Ljava/lang/String;
    .end local v24    # "writeDelimiter":Ljava/lang/String;
    .end local v25    # "collectionType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Collection;>;"
    .end local v26    # "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v27    # "splitConverter":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/opencsv/bean/AbstractCsvConverter;>;"
    :goto_2
    move/from16 v4, v21

    goto/16 :goto_7

    .line 113
    .end local v4    # "columnName":Ljava/lang/String;
    .end local v5    # "localField":Ljava/lang/reflect/Field;
    .end local v21    # "required":Z
    .end local v22    # "locale":Ljava/lang/String;
    .end local v28    # "capture":Ljava/lang/String;
    .end local v29    # "format":Ljava/lang/String;
    .end local v30    # "writeLocale":Ljava/lang/String;
    .end local v31    # "localType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "localField":Ljava/lang/reflect/Field;
    .restart local v15    # "localType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    move-object v5, v14

    move-object/from16 v31, v15

    .end local v14    # "localField":Ljava/lang/reflect/Field;
    .end local v15    # "localType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "localField":Ljava/lang/reflect/Field;
    .restart local v31    # "localType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/opencsv/bean/CsvBindAndJoinByName;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 114
    const-class v0, Lcom/opencsv/bean/CsvBindAndJoinByName;

    .line 115
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/opencsv/bean/CsvBindAndJoinByName;

    .line 116
    .local v18, "annotation":Lcom/opencsv/bean/CsvBindAndJoinByName;
    invoke-interface/range {v18 .. v18}, Lcom/opencsv/bean/CsvBindAndJoinByName;->required()Z

    move-result v19

    .line 117
    .local v19, "required":Z
    invoke-interface/range {v18 .. v18}, Lcom/opencsv/bean/CsvBindAndJoinByName;->column()Ljava/lang/String;

    move-result-object v15

    .line 118
    .local v15, "columnRegex":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Lcom/opencsv/bean/CsvBindAndJoinByName;->locale()Ljava/lang/String;

    move-result-object v20

    .line 119
    .local v20, "locale":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Lcom/opencsv/bean/CsvBindAndJoinByName;->writeLocaleEqualsReadLocale()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v4, v20

    goto :goto_3

    .line 120
    :cond_5
    invoke-interface/range {v18 .. v18}, Lcom/opencsv/bean/CsvBindAndJoinByName;->writeLocale()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_3
    nop

    .line 121
    .local v4, "writeLocale":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Lcom/opencsv/bean/CsvBindAndJoinByName;->elementType()Ljava/lang/Class;

    move-result-object v21

    .line 122
    .local v21, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface/range {v18 .. v18}, Lcom/opencsv/bean/CsvBindAndJoinByName;->mapType()Ljava/lang/Class;

    move-result-object v22

    .line 123
    .local v22, "mapType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/commons/collections4/MultiValuedMap;>;"
    invoke-interface/range {v18 .. v18}, Lcom/opencsv/bean/CsvBindAndJoinByName;->converter()Ljava/lang/Class;

    move-result-object v23

    .line 124
    .local v23, "joinConverter":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/opencsv/bean/AbstractCsvConverter;>;"
    invoke-interface/range {v18 .. v18}, Lcom/opencsv/bean/CsvBindAndJoinByName;->capture()Ljava/lang/String;

    move-result-object v24

    .line 125
    .local v24, "capture":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Lcom/opencsv/bean/CsvBindAndJoinByName;->format()Ljava/lang/String;

    move-result-object v25

    .line 127
    .local v25, "format":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    move-object v14, v5

    .end local v5    # "localField":Ljava/lang/reflect/Field;
    .restart local v14    # "localField":Ljava/lang/reflect/Field;
    move-object/from16 v5, v23

    invoke-virtual/range {v0 .. v5}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->determineConverter(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/opencsv/bean/CsvConverter;

    move-result-object v0

    .line 130
    .restart local v0    # "converter":Lcom/opencsv/bean/CsvConverter;
    invoke-static {v15}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 131
    iget-object v1, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/opencsv/bean/BeanFieldJoinStringIndex;

    iget-object v13, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v9, v3

    move-object/from16 v10, v31

    move-object v11, v14

    move/from16 v12, v19

    move-object v5, v14

    .end local v14    # "localField":Ljava/lang/reflect/Field;
    .restart local v5    # "localField":Ljava/lang/reflect/Field;
    move-object v14, v0

    move-object/from16 v26, v4

    move-object v4, v15

    .end local v15    # "columnRegex":Ljava/lang/String;
    .local v4, "columnRegex":Ljava/lang/String;
    .local v26, "writeLocale":Ljava/lang/String;
    move-object/from16 v15, v22

    move-object/from16 v16, v24

    move-object/from16 v17, v25

    invoke-direct/range {v9 .. v17}, Lcom/opencsv/bean/BeanFieldJoinStringIndex;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/opencsv/bean/FieldMapByName;->putComplex(Ljava/lang/String;Lcom/opencsv/bean/BeanField;)V

    goto :goto_4

    .line 138
    .end local v5    # "localField":Ljava/lang/reflect/Field;
    .end local v26    # "writeLocale":Ljava/lang/String;
    .local v4, "writeLocale":Ljava/lang/String;
    .restart local v14    # "localField":Ljava/lang/reflect/Field;
    .restart local v15    # "columnRegex":Ljava/lang/String;
    :cond_6
    move-object/from16 v26, v4

    move-object v5, v14

    move-object v4, v15

    .end local v14    # "localField":Ljava/lang/reflect/Field;
    .end local v15    # "columnRegex":Ljava/lang/String;
    .local v4, "columnRegex":Ljava/lang/String;
    .restart local v5    # "localField":Ljava/lang/reflect/Field;
    .restart local v26    # "writeLocale":Ljava/lang/String;
    iget-object v1, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    new-instance v2, Lcom/opencsv/bean/BeanFieldJoinStringIndex;

    iget-object v13, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v9, v2

    move-object/from16 v10, v31

    move-object v11, v5

    move/from16 v12, v19

    move-object v14, v0

    move-object/from16 v15, v22

    move-object/from16 v16, v24

    move-object/from16 v17, v25

    invoke-direct/range {v9 .. v17}, Lcom/opencsv/bean/BeanFieldJoinStringIndex;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v2}, Lcom/opencsv/bean/FieldMapByName;->putComplex(Ljava/lang/String;Lcom/opencsv/bean/BeanField;)V

    .line 143
    .end local v0    # "converter":Lcom/opencsv/bean/CsvConverter;
    .end local v4    # "columnRegex":Ljava/lang/String;
    .end local v18    # "annotation":Lcom/opencsv/bean/CsvBindAndJoinByName;
    .end local v21    # "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v22    # "mapType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/commons/collections4/MultiValuedMap;>;"
    .end local v23    # "joinConverter":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/opencsv/bean/AbstractCsvConverter;>;"
    :goto_4
    move/from16 v4, v19

    goto/16 :goto_7

    .line 147
    .end local v19    # "required":Z
    .end local v20    # "locale":Ljava/lang/String;
    .end local v24    # "capture":Ljava/lang/String;
    .end local v25    # "format":Ljava/lang/String;
    .end local v26    # "writeLocale":Ljava/lang/String;
    :cond_7
    const-class v0, Lcom/opencsv/bean/CsvBindByName;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/opencsv/bean/CsvBindByName;

    .line 148
    .local v17, "annotation":Lcom/opencsv/bean/CsvBindByName;
    invoke-interface/range {v17 .. v17}, Lcom/opencsv/bean/CsvBindByName;->required()Z

    move-result v18

    .line 149
    .local v18, "required":Z
    invoke-interface/range {v17 .. v17}, Lcom/opencsv/bean/CsvBindByName;->column()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 150
    .local v15, "columnName":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Lcom/opencsv/bean/CsvBindByName;->locale()Ljava/lang/String;

    move-result-object v19

    .line 151
    .local v19, "locale":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Lcom/opencsv/bean/CsvBindByName;->writeLocaleEqualsReadLocale()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v4, v19

    goto :goto_5

    .line 152
    :cond_8
    invoke-interface/range {v17 .. v17}, Lcom/opencsv/bean/CsvBindByName;->writeLocale()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_5
    nop

    .line 153
    .local v4, "writeLocale":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Lcom/opencsv/bean/CsvBindByName;->capture()Ljava/lang/String;

    move-result-object v20

    .line 154
    .local v20, "capture":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Lcom/opencsv/bean/CsvBindByName;->format()Ljava/lang/String;

    move-result-object v21

    .line 155
    .local v21, "format":Ljava/lang/String;
    nop

    .line 157
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const/4 v9, 0x0

    .line 155
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v3, v19

    move-object/from16 v22, v5

    .end local v5    # "localField":Ljava/lang/reflect/Field;
    .local v22, "localField":Ljava/lang/reflect/Field;
    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->determineConverter(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/opencsv/bean/CsvConverter;

    move-result-object v0

    .line 160
    .restart local v0    # "converter":Lcom/opencsv/bean/CsvConverter;
    invoke-static {v15}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 161
    iget-object v1, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/opencsv/bean/BeanFieldSingleValue;

    iget-object v13, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v9, v3

    move-object/from16 v10, v31

    move-object/from16 v11, v22

    move/from16 v12, v18

    move-object v14, v0

    move-object v5, v15

    .end local v15    # "columnName":Ljava/lang/String;
    .local v5, "columnName":Ljava/lang/String;
    move-object/from16 v15, v20

    move-object/from16 v16, v21

    invoke-direct/range {v9 .. v16}, Lcom/opencsv/bean/BeanFieldSingleValue;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/opencsv/bean/FieldMapByName;->put(Ljava/lang/Comparable;Lcom/opencsv/bean/BeanField;)Lcom/opencsv/bean/BeanField;

    goto :goto_6

    .line 167
    .end local v5    # "columnName":Ljava/lang/String;
    .restart local v15    # "columnName":Ljava/lang/String;
    :cond_9
    move-object v5, v15

    .end local v15    # "columnName":Ljava/lang/String;
    .restart local v5    # "columnName":Ljava/lang/String;
    iget-object v1, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    new-instance v2, Lcom/opencsv/bean/BeanFieldSingleValue;

    iget-object v13, v6, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v9, v2

    move-object/from16 v10, v31

    move-object/from16 v11, v22

    move/from16 v12, v18

    move-object v14, v0

    move-object/from16 v15, v20

    move-object/from16 v16, v21

    invoke-direct/range {v9 .. v16}, Lcom/opencsv/bean/BeanFieldSingleValue;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v2}, Lcom/opencsv/bean/FieldMapByName;->put(Ljava/lang/Comparable;Lcom/opencsv/bean/BeanField;)Lcom/opencsv/bean/BeanField;

    .line 173
    .end local v0    # "converter":Lcom/opencsv/bean/CsvConverter;
    .end local v4    # "writeLocale":Ljava/lang/String;
    .end local v5    # "columnName":Ljava/lang/String;
    .end local v8    # "classField":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;"
    .end local v17    # "annotation":Lcom/opencsv/bean/CsvBindByName;
    .end local v19    # "locale":Ljava/lang/String;
    .end local v20    # "capture":Ljava/lang/String;
    .end local v21    # "format":Ljava/lang/String;
    .end local v22    # "localField":Ljava/lang/reflect/Field;
    .end local v31    # "localType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_6
    move/from16 v4, v18

    .end local v18    # "required":Z
    .local v4, "required":Z
    :goto_7
    goto/16 :goto_0

    .line 174
    .end local v4    # "required":Z
    :cond_a
    return-void
.end method
