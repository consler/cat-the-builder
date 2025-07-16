.class public Lcom/opencsv/bean/ColumnPositionMappingStrategy;
.super Lcom/opencsv/bean/AbstractMappingStrategy;
.source "ColumnPositionMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/opencsv/bean/AbstractMappingStrategy<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/opencsv/bean/ComplexFieldMapEntry<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "TT;>;TT;>;"
    }
.end annotation


# instance fields
.field private columnIndexForWriting:[Ljava/lang/Integer;

.field private columnsExplicitlySet:Z

.field private fieldMap:Lcom/opencsv/bean/FieldMapByPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/FieldMapByPosition<",
            "TT;>;"
        }
    .end annotation
.end field

.field private writeOrder:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/opencsv/bean/AbstractMappingStrategy;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnsExplicitlySet:Z

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnIndexForWriting:[Ljava/lang/Integer;

    return-void
.end method

.method static synthetic lambda$generateHeader$0(I)Ljava/lang/Integer;
    .locals 0

    .line 121
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public captureHeader(Lcom/opencsv/CSVReader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->type:Ljava/lang/Class;

    if-eqz v0, :cond_3

    .line 73
    invoke-virtual {p1}, Lcom/opencsv/CSVReader;->peek()[Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lcom/opencsv/bean/FieldMapByPosition;->setMaxIndex(I)V

    .line 75
    iget-boolean p1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnsExplicitlySet:Z

    if-nez p1, :cond_2

    .line 76
    iget-object p1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {p1}, Lcom/opencsv/bean/HeaderIndex;->clear()V

    .line 77
    iget-object p1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    invoke-virtual {p1}, Lcom/opencsv/bean/FieldMapByPosition;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/FieldMapByPositionEntry;

    .line 78
    invoke-virtual {v0}, Lcom/opencsv/bean/FieldMapByPositionEntry;->getField()Lcom/opencsv/bean/BeanField;

    move-result-object v1

    invoke-interface {v1}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object v1

    .line 79
    const-class v2, Lcom/opencsv/bean/CsvCustomBindByPosition;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-nez v2, :cond_1

    const-class v2, Lcom/opencsv/bean/CsvBindAndSplitByPosition;

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-nez v2, :cond_1

    const-class v2, Lcom/opencsv/bean/CsvBindAndJoinByPosition;

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-nez v2, :cond_1

    const-class v2, Lcom/opencsv/bean/CsvBindByPosition;

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0}, Lcom/opencsv/bean/FieldMapByPositionEntry;->getPosition()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/opencsv/bean/HeaderIndex;->put(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void

    .line 68
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "opencsv"

    iget-object v1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 69
    invoke-static {v0, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "type.unset"

    .line 70
    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected bridge synthetic chooseMultivaluedFieldIndexFromHeaderIndex(I)Ljava/lang/Comparable;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->chooseMultivaluedFieldIndexFromHeaderIndex(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected chooseMultivaluedFieldIndexFromHeaderIndex(I)Ljava/lang/Integer;
    .locals 0

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected findField(I)Lcom/opencsv/bean/BeanField;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/opencsv/bean/BeanField<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnIndexForWriting:[Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 104
    array-length v1, v0

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    aget-object p1, v0, p1

    invoke-virtual {v1, p1}, Lcom/opencsv/bean/FieldMapByPosition;->get(Ljava/lang/Comparable;)Lcom/opencsv/bean/BeanField;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/opencsv/bean/FieldMapByPosition;->get(Ljava/lang/Comparable;)Lcom/opencsv/bean/BeanField;

    move-result-object p1

    return-object p1
.end method

.method public findHeader(I)Ljava/lang/String;
    .locals 0

    .line 322
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateHeader(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    .line 119
    invoke-super {p0, p1}, Lcom/opencsv/bean/AbstractMappingStrategy;->generateHeader(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p1

    .line 120
    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Integer;

    iput-object p1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnIndexForWriting:[Ljava/lang/Integer;

    .line 121
    new-instance v0, Lcom/opencsv/bean/ColumnPositionMappingStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/opencsv/bean/ColumnPositionMappingStrategy$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    .line 124
    iget-object p1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnIndexForWriting:[Ljava/lang/Integer;

    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->writeOrder:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 125
    sget-object p1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p1
.end method

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

    .line 280
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/opencsv/bean/CsvBindByPosition;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/opencsv/bean/CsvCustomBindByPosition;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/opencsv/bean/CsvBindAndJoinByPosition;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/opencsv/bean/CsvBindAndSplitByPosition;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getColumnMapping()[Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0}, Lcom/opencsv/bean/HeaderIndex;->getHeaderIndex()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0, p1}, Lcom/opencsv/bean/HeaderIndex;->getByPosition(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getFieldMap()Lcom/opencsv/bean/FieldMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/opencsv/bean/FieldMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/opencsv/bean/ComplexFieldMapEntry<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "TT;>;TT;>;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    return-object v0
.end method

.method protected initializeFieldMap()V
    .locals 2

    .line 289
    new-instance v0, Lcom/opencsv/bean/FieldMapByPosition;

    iget-object v1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->errorLocale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lcom/opencsv/bean/FieldMapByPosition;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    .line 290
    iget-object v1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->writeOrder:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Lcom/opencsv/bean/FieldMapByPosition;->setColumnOrderOnWrite(Ljava/util/Comparator;)V

    return-void
.end method

.method protected loadAnnotatedFieldMap(Lorg/apache/commons/collections4/ListValuedMap;)V
    .locals 19
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

    .line 175
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/collections4/ListValuedMap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 176
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/Class;

    .line 177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/reflect/Field;

    .line 181
    const-class v0, Lcom/opencsv/bean/CsvCustomBindByPosition;

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const-class v0, Lcom/opencsv/bean/CsvCustomBindByPosition;

    .line 183
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/CsvCustomBindByPosition;

    .line 185
    invoke-interface {v0}, Lcom/opencsv/bean/CsvCustomBindByPosition;->converter()Ljava/lang/Class;

    move-result-object v1

    .line 186
    invoke-virtual {v6, v1}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->instantiateCustomConverter(Ljava/lang/Class;)Lcom/opencsv/bean/BeanField;

    move-result-object v1

    .line 187
    invoke-interface {v1, v9}, Lcom/opencsv/bean/BeanField;->setType(Ljava/lang/Class;)V

    .line 188
    invoke-interface {v1, v10}, Lcom/opencsv/bean/BeanField;->setField(Ljava/lang/reflect/Field;)V

    .line 189
    invoke-interface {v0}, Lcom/opencsv/bean/CsvCustomBindByPosition;->required()Z

    move-result v2

    .line 190
    invoke-interface {v1, v2}, Lcom/opencsv/bean/BeanField;->setRequired(Z)V

    .line 191
    iget-object v2, v6, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    invoke-interface {v0}, Lcom/opencsv/bean/CsvCustomBindByPosition;->position()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/opencsv/bean/FieldMapByPosition;->put(Ljava/lang/Comparable;Lcom/opencsv/bean/BeanField;)Lcom/opencsv/bean/BeanField;

    goto :goto_0

    .line 195
    :cond_0
    const-class v0, Lcom/opencsv/bean/CsvBindAndSplitByPosition;

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    const-class v0, Lcom/opencsv/bean/CsvBindAndSplitByPosition;

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/opencsv/bean/CsvBindAndSplitByPosition;

    .line 197
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->required()Z

    move-result v11

    .line 198
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->locale()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->writeLocaleEqualsReadLocale()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v4, v3

    goto :goto_1

    .line 201
    :cond_1
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->writeLocale()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 202
    :goto_1
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->splitOn()Ljava/lang/String;

    move-result-object v14

    .line 203
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->writeDelimiter()Ljava/lang/String;

    move-result-object v15

    .line 204
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->collectionType()Ljava/lang/Class;

    move-result-object v16

    .line 205
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->elementType()Ljava/lang/Class;

    move-result-object v2

    .line 206
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->converter()Ljava/lang/Class;

    move-result-object v5

    .line 207
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->capture()Ljava/lang/String;

    move-result-object v17

    .line 208
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->format()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object v1, v10

    .line 210
    invoke-virtual/range {v0 .. v5}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->determineConverter(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/opencsv/bean/CsvConverter;

    move-result-object v13

    .line 211
    iget-object v0, v6, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->position()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/opencsv/bean/BeanFieldSplit;

    iget-object v12, v6, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v8, v2

    invoke-direct/range {v8 .. v18}, Lcom/opencsv/bean/BeanFieldSplit;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/opencsv/bean/FieldMapByPosition;->put(Ljava/lang/Comparable;Lcom/opencsv/bean/BeanField;)Lcom/opencsv/bean/BeanField;

    goto/16 :goto_0

    .line 217
    :cond_2
    const-class v0, Lcom/opencsv/bean/CsvBindAndJoinByPosition;

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    const-class v0, Lcom/opencsv/bean/CsvBindAndJoinByPosition;

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/opencsv/bean/CsvBindAndJoinByPosition;

    .line 219
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindAndJoinByPosition;->required()Z

    move-result v11

    .line 220
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindAndJoinByPosition;->locale()Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindAndJoinByPosition;->writeLocaleEqualsReadLocale()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v4, v3

    goto :goto_2

    .line 223
    :cond_3
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindAndJoinByPosition;->writeLocale()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 224
    :goto_2
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindAndJoinByPosition;->elementType()Ljava/lang/Class;

    move-result-object v2

    .line 225
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindAndJoinByPosition;->mapType()Ljava/lang/Class;

    move-result-object v14

    .line 226
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindAndJoinByPosition;->converter()Ljava/lang/Class;

    move-result-object v5

    .line 227
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindAndJoinByPosition;->capture()Ljava/lang/String;

    move-result-object v15

    .line 228
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindAndJoinByPosition;->format()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object v1, v10

    .line 230
    invoke-virtual/range {v0 .. v5}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->determineConverter(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/opencsv/bean/CsvConverter;

    move-result-object v13

    .line 231
    iget-object v0, v6, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindAndJoinByPosition;->position()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/opencsv/bean/BeanFieldJoinIntegerIndex;

    iget-object v12, v6, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v8, v2

    invoke-direct/range {v8 .. v16}, Lcom/opencsv/bean/BeanFieldJoinIntegerIndex;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/opencsv/bean/FieldMapByPosition;->putComplex(Ljava/lang/String;Lcom/opencsv/bean/BeanField;)V

    goto/16 :goto_0

    .line 237
    :cond_4
    const-class v0, Lcom/opencsv/bean/CsvBindByPosition;

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/opencsv/bean/CsvBindByPosition;

    .line 238
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindByPosition;->required()Z

    move-result v11

    .line 239
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindByPosition;->locale()Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindByPosition;->writeLocaleEqualsReadLocale()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v4, v3

    goto :goto_3

    .line 242
    :cond_5
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindByPosition;->writeLocale()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 243
    :goto_3
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindByPosition;->capture()Ljava/lang/String;

    move-result-object v14

    .line 244
    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindByPosition;->format()Ljava/lang/String;

    move-result-object v15

    .line 245
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual/range {v0 .. v5}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->determineConverter(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/opencsv/bean/CsvConverter;

    move-result-object v13

    .line 247
    iget-object v0, v6, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    invoke-interface {v8}, Lcom/opencsv/bean/CsvBindByPosition;->position()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/opencsv/bean/BeanFieldSingleValue;

    iget-object v12, v6, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Lcom/opencsv/bean/BeanFieldSingleValue;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/opencsv/bean/FieldMapByPosition;->put(Ljava/lang/Comparable;Lcom/opencsv/bean/BeanField;)Lcom/opencsv/bean/BeanField;

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method protected loadUnadornedFieldMap(Lorg/apache/commons/collections4/ListValuedMap;)V
    .locals 12
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

    .line 255
    invoke-interface {p1}, Lorg/apache/commons/collections4/ListValuedMap;->entries()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 256
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Class;

    .line 257
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 258
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->determineConverter(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/opencsv/bean/CsvConverter;

    move-result-object v7

    .line 259
    iget-object v1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/opencsv/bean/HeaderIndex;->getByName(Ljava/lang/String;)[I

    move-result-object v1

    .line 260
    array-length v2, v1

    if-eqz v2, :cond_0

    .line 261
    iget-object v10, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v11, Lcom/opencsv/bean/BeanFieldSingleValue;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->errorLocale:Ljava/util/Locale;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v11

    move-object v4, v0

    invoke-direct/range {v2 .. v9}, Lcom/opencsv/bean/BeanFieldSingleValue;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v1, v11}, Lcom/opencsv/bean/FieldMapByPosition;->put(Ljava/lang/Comparable;Lcom/opencsv/bean/BeanField;)Lcom/opencsv/bean/BeanField;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs setColumnMapping([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0, p1}, Lcom/opencsv/bean/HeaderIndex;->initializeHeaderIndex([Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {p1}, Lcom/opencsv/bean/HeaderIndex;->clear()V

    :goto_0
    const/4 p1, 0x1

    .line 161
    iput-boolean p1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnsExplicitlySet:Z

    .line 162
    invoke-virtual {p0}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->getType()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->loadFieldMap()V

    :cond_1
    return-void
.end method

.method public setColumnOrderOnWrite(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->writeOrder:Ljava/util/Comparator;

    .line 342
    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0, p1}, Lcom/opencsv/bean/FieldMapByPosition;->setColumnOrderOnWrite(Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

.method protected verifyLineLength(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0}, Lcom/opencsv/bean/HeaderIndex;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 298
    :goto_0
    iget-object v1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v1}, Lcom/opencsv/bean/HeaderIndex;->findMaxIndex()I

    move-result v1

    if-gt p1, v1, :cond_2

    .line 299
    invoke-virtual {p0, p1}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->findField(I)Lcom/opencsv/bean/BeanField;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 300
    invoke-interface {v1}, Lcom/opencsv/bean/BeanField;->isRequired()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "opencsv"

    iget-object v3, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->errorLocale:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    const-string v3, "multiple.required.field.empty"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :cond_0
    const/16 v2, 0x20

    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    invoke-interface {v1}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    .line 309
    :cond_3
    new-instance p1, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    iget-object v1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method
