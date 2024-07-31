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
    .local p0, "this":Lcom/opencsv/bean/ColumnPositionMappingStrategy;, "Lcom/opencsv/bean/ColumnPositionMappingStrategy<TT;>;"
    invoke-direct {p0}, Lcom/opencsv/bean/AbstractMappingStrategy;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnsExplicitlySet:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnIndexForWriting:[Ljava/lang/Integer;

    .line 56
    return-void
.end method

.method static synthetic lambda$generateHeader$0(I)Ljava/lang/Integer;
    .locals 1
    .param p0, "i"    # I

    .line 121
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public captureHeader(Lcom/opencsv/CSVReader;)V
    .locals 7
    .param p1, "reader"    # Lcom/opencsv/CSVReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    .local p0, "this":Lcom/opencsv/bean/ColumnPositionMappingStrategy;, "Lcom/opencsv/bean/ColumnPositionMappingStrategy<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->type:Ljava/lang/Class;

    if-eqz v0, :cond_3

    .line 73
    invoke-virtual {p1}, Lcom/opencsv/CSVReader;->peek()[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 74
    .local v0, "firstLine":[Ljava/lang/String;
    iget-object v1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/opencsv/bean/FieldMapByPosition;->setMaxIndex(I)V

    .line 75
    iget-boolean v1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnsExplicitlySet:Z

    if-nez v1, :cond_2

    .line 76
    iget-object v1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v1}, Lcom/opencsv/bean/HeaderIndex;->clear()V

    .line 77
    iget-object v1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    invoke-virtual {v1}, Lcom/opencsv/bean/FieldMapByPosition;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opencsv/bean/FieldMapByPositionEntry;

    .line 78
    .local v2, "entry":Lcom/opencsv/bean/FieldMapByPositionEntry;, "Lcom/opencsv/bean/FieldMapByPositionEntry<TT;>;"
    invoke-virtual {v2}, Lcom/opencsv/bean/FieldMapByPositionEntry;->getField()Lcom/opencsv/bean/BeanField;

    move-result-object v3

    invoke-interface {v3}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object v3

    .line 79
    .local v3, "f":Ljava/lang/reflect/Field;
    const-class v4, Lcom/opencsv/bean/CsvCustomBindByPosition;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_0

    const-class v4, Lcom/opencsv/bean/CsvBindAndSplitByPosition;

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_0

    const-class v4, Lcom/opencsv/bean/CsvBindAndJoinByPosition;

    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_0

    const-class v4, Lcom/opencsv/bean/CsvBindByPosition;

    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 83
    :cond_0
    iget-object v4, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v2}, Lcom/opencsv/bean/FieldMapByPositionEntry;->getPosition()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/opencsv/bean/HeaderIndex;->put(ILjava/lang/String;)V

    .line 85
    .end local v2    # "entry":Lcom/opencsv/bean/FieldMapByPositionEntry;, "Lcom/opencsv/bean/FieldMapByPositionEntry<TT;>;"
    .end local v3    # "f":Ljava/lang/reflect/Field;
    :cond_1
    goto :goto_0

    .line 87
    :cond_2
    return-void

    .line 68
    .end local v0    # "firstLine":[Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 69
    const-string v2, "opencsv"

    invoke-static {v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 70
    const-string v2, "type.unset"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic chooseMultivaluedFieldIndexFromHeaderIndex(I)Ljava/lang/Comparable;
    .locals 0

    .line 28
    .local p0, "this":Lcom/opencsv/bean/ColumnPositionMappingStrategy;, "Lcom/opencsv/bean/ColumnPositionMappingStrategy<TT;>;"
    invoke-virtual {p0, p1}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->chooseMultivaluedFieldIndexFromHeaderIndex(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected chooseMultivaluedFieldIndexFromHeaderIndex(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "index"    # I

    .line 96
    .local p0, "this":Lcom/opencsv/bean/ColumnPositionMappingStrategy;, "Lcom/opencsv/bean/ColumnPositionMappingStrategy<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected findField(I)Lcom/opencsv/bean/BeanField;
    .locals 2
    .param p1, "col"    # I
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
    .local p0, "this":Lcom/opencsv/bean/ColumnPositionMappingStrategy;, "Lcom/opencsv/bean/ColumnPositionMappingStrategy<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnIndexForWriting:[Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 104
    array-length v1, v0

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Lcom/opencsv/bean/FieldMapByPosition;->get(Ljava/lang/Comparable;)Lcom/opencsv/bean/BeanField;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/opencsv/bean/FieldMapByPosition;->get(Ljava/lang/Comparable;)Lcom/opencsv/bean/BeanField;

    move-result-object v0

    return-object v0
.end method

.method public findHeader(I)Ljava/lang/String;
    .locals 1
    .param p1, "col"    # I

    .line 322
    .local p0, "this":Lcom/opencsv/bean/ColumnPositionMappingStrategy;, "Lcom/opencsv/bean/ColumnPositionMappingStrategy<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateHeader(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 3
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
    .local p0, "this":Lcom/opencsv/bean/ColumnPositionMappingStrategy;, "Lcom/opencsv/bean/ColumnPositionMappingStrategy<TT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1}, Lcom/opencsv/bean/AbstractMappingStrategy;->generateHeader(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "h":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Integer;

    iput-object v1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnIndexForWriting:[Ljava/lang/Integer;

    .line 121
    sget-object v2, Lcom/opencsv/bean/-$$Lambda$ColumnPositionMappingStrategy$Jl7WuoffldCLUElDwqlG9icDEIs;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ColumnPositionMappingStrategy$Jl7WuoffldCLUElDwqlG9icDEIs;

    invoke-static {v1, v2}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    .line 124
    iget-object v1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnIndexForWriting:[Ljava/lang/Integer;

    iget-object v2, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->writeOrder:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 125
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v1
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
    .local p0, "this":Lcom/opencsv/bean/ColumnPositionMappingStrategy;, "Lcom/opencsv/bean/ColumnPositionMappingStrategy<TT;>;"
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
    .local p0, "this":Lcom/opencsv/bean/ColumnPositionMappingStrategy;, "Lcom/opencsv/bean/ColumnPositionMappingStrategy<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0}, Lcom/opencsv/bean/HeaderIndex;->getHeaderIndex()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "col"    # I

    .line 136
    .local p0, "this":Lcom/opencsv/bean/ColumnPositionMappingStrategy;, "Lcom/opencsv/bean/ColumnPositionMappingStrategy<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0, p1}, Lcom/opencsv/bean/HeaderIndex;->getByPosition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .local p0, "this":Lcom/opencsv/bean/ColumnPositionMappingStrategy;, "Lcom/opencsv/bean/ColumnPositionMappingStrategy<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    return-object v0
.end method

.method protected initializeFieldMap()V
    .locals 2

    .line 289
    .local p0, "this":Lcom/opencsv/bean/ColumnPositionMappingStrategy;, "Lcom/opencsv/bean/ColumnPositionMappingStrategy<TT;>;"
    new-instance v0, Lcom/opencsv/bean/FieldMapByPosition;

    iget-object v1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->errorLocale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lcom/opencsv/bean/FieldMapByPosition;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    .line 290
    iget-object v1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->writeOrder:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Lcom/opencsv/bean/FieldMapByPosition;->setColumnOrderOnWrite(Ljava/util/Comparator;)V

    .line 291
    return-void
.end method

.method protected loadAnnotatedFieldMap(Lorg/apache/commons/collections4/ListValuedMap;)V
    .locals 31
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

    .line 175
    .local p0, "this":Lcom/opencsv/bean/ColumnPositionMappingStrategy;, "Lcom/opencsv/bean/ColumnPositionMappingStrategy<TT;>;"
    .local p1, "fields":Lorg/apache/commons/collections4/ListValuedMap;, "Lorg/apache/commons/collections4/ListValuedMap<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;"
    move-object/from16 v6, p0

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

    move-object v8, v0

    check-cast v8, Ljava/util/Map$Entry;

    .line 176
    .local v8, "classAndField":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/Class;

    .line 177
    .local v15, "localType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/reflect/Field;

    .line 181
    .local v14, "localField":Ljava/lang/reflect/Field;
    const-class v0, Lcom/opencsv/bean/CsvCustomBindByPosition;

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const-class v0, Lcom/opencsv/bean/CsvCustomBindByPosition;

    .line 183
    invoke-virtual {v14, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/CsvCustomBindByPosition;

    .line 185
    .local v0, "annotation":Lcom/opencsv/bean/CsvCustomBindByPosition;
    invoke-interface {v0}, Lcom/opencsv/bean/CsvCustomBindByPosition;->converter()Ljava/lang/Class;

    move-result-object v1

    .line 186
    .local v1, "converter":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/opencsv/bean/AbstractBeanField<TT;Ljava/lang/Integer;>;>;"
    invoke-virtual {v6, v1}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->instantiateCustomConverter(Ljava/lang/Class;)Lcom/opencsv/bean/BeanField;

    move-result-object v2

    .line 187
    .local v2, "bean":Lcom/opencsv/bean/BeanField;, "Lcom/opencsv/bean/BeanField<TT;Ljava/lang/Integer;>;"
    invoke-interface {v2, v15}, Lcom/opencsv/bean/BeanField;->setType(Ljava/lang/Class;)V

    .line 188
    invoke-interface {v2, v14}, Lcom/opencsv/bean/BeanField;->setField(Ljava/lang/reflect/Field;)V

    .line 189
    invoke-interface {v0}, Lcom/opencsv/bean/CsvCustomBindByPosition;->required()Z

    move-result v3

    .line 190
    .local v3, "required":Z
    invoke-interface {v2, v3}, Lcom/opencsv/bean/BeanField;->setRequired(Z)V

    .line 191
    iget-object v4, v6, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    invoke-interface {v0}, Lcom/opencsv/bean/CsvCustomBindByPosition;->position()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/opencsv/bean/FieldMapByPosition;->put(Ljava/lang/Comparable;Lcom/opencsv/bean/BeanField;)Lcom/opencsv/bean/BeanField;

    .line 192
    .end local v0    # "annotation":Lcom/opencsv/bean/CsvCustomBindByPosition;
    .end local v1    # "converter":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/opencsv/bean/AbstractBeanField<TT;Ljava/lang/Integer;>;>;"
    .end local v2    # "bean":Lcom/opencsv/bean/BeanField;, "Lcom/opencsv/bean/BeanField<TT;Ljava/lang/Integer;>;"
    goto/16 :goto_4

    .line 195
    .end local v3    # "required":Z
    :cond_0
    const-class v0, Lcom/opencsv/bean/CsvBindAndSplitByPosition;

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    const-class v0, Lcom/opencsv/bean/CsvBindAndSplitByPosition;

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/opencsv/bean/CsvBindAndSplitByPosition;

    .line 197
    .local v20, "annotation":Lcom/opencsv/bean/CsvBindAndSplitByPosition;
    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->required()Z

    move-result v21

    .line 198
    .local v21, "required":Z
    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->locale()Ljava/lang/String;

    move-result-object v22

    .line 199
    .local v22, "fieldLocale":Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->writeLocaleEqualsReadLocale()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v4, v22

    goto :goto_1

    .line 201
    :cond_1
    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->writeLocale()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_1
    nop

    .line 202
    .local v4, "fieldWriteLocale":Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->splitOn()Ljava/lang/String;

    move-result-object v23

    .line 203
    .local v23, "splitOn":Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->writeDelimiter()Ljava/lang/String;

    move-result-object v24

    .line 204
    .local v24, "writeDelimiter":Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->collectionType()Ljava/lang/Class;

    move-result-object v25

    .line 205
    .local v25, "collectionType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Collection;>;"
    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->elementType()Ljava/lang/Class;

    move-result-object v26

    .line 206
    .local v26, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->converter()Ljava/lang/Class;

    move-result-object v27

    .line 207
    .local v27, "splitConverter":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/opencsv/bean/AbstractCsvConverter;>;"
    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->capture()Ljava/lang/String;

    move-result-object v28

    .line 208
    .local v28, "capture":Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->format()Ljava/lang/String;

    move-result-object v29

    .line 210
    .local v29, "format":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v26

    move-object/from16 v3, v22

    move-object/from16 v5, v27

    invoke-virtual/range {v0 .. v5}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->determineConverter(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/opencsv/bean/CsvConverter;

    move-result-object v0

    .line 211
    .local v0, "converter":Lcom/opencsv/bean/CsvConverter;
    iget-object v1, v6, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    invoke-interface/range {v20 .. v20}, Lcom/opencsv/bean/CsvBindAndSplitByPosition;->position()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/opencsv/bean/BeanFieldSplit;

    iget-object v13, v6, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v9, v3

    move-object v10, v15

    move-object v11, v14

    move/from16 v12, v21

    move-object v5, v14

    .end local v14    # "localField":Ljava/lang/reflect/Field;
    .local v5, "localField":Ljava/lang/reflect/Field;
    move-object v14, v0

    move-object/from16 v30, v15

    .end local v15    # "localType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v30, "localType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v15, v23

    move-object/from16 v16, v24

    move-object/from16 v17, v25

    move-object/from16 v18, v28

    move-object/from16 v19, v29

    invoke-direct/range {v9 .. v19}, Lcom/opencsv/bean/BeanFieldSplit;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/opencsv/bean/FieldMapByPosition;->put(Ljava/lang/Comparable;Lcom/opencsv/bean/BeanField;)Lcom/opencsv/bean/BeanField;

    .line 214
    .end local v0    # "converter":Lcom/opencsv/bean/CsvConverter;
    .end local v20    # "annotation":Lcom/opencsv/bean/CsvBindAndSplitByPosition;
    .end local v23    # "splitOn":Ljava/lang/String;
    .end local v24    # "writeDelimiter":Ljava/lang/String;
    .end local v25    # "collectionType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Collection;>;"
    .end local v26    # "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v27    # "splitConverter":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/opencsv/bean/AbstractCsvConverter;>;"
    move/from16 v3, v21

    goto/16 :goto_4

    .line 217
    .end local v4    # "fieldWriteLocale":Ljava/lang/String;
    .end local v5    # "localField":Ljava/lang/reflect/Field;
    .end local v21    # "required":Z
    .end local v22    # "fieldLocale":Ljava/lang/String;
    .end local v28    # "capture":Ljava/lang/String;
    .end local v29    # "format":Ljava/lang/String;
    .end local v30    # "localType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "localField":Ljava/lang/reflect/Field;
    .restart local v15    # "localType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    move-object v5, v14

    move-object/from16 v30, v15

    .end local v14    # "localField":Ljava/lang/reflect/Field;
    .end local v15    # "localType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "localField":Ljava/lang/reflect/Field;
    .restart local v30    # "localType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/opencsv/bean/CsvBindAndJoinByPosition;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    const-class v0, Lcom/opencsv/bean/CsvBindAndJoinByPosition;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/opencsv/bean/CsvBindAndJoinByPosition;

    .line 219
    .local v18, "annotation":Lcom/opencsv/bean/CsvBindAndJoinByPosition;
    invoke-interface/range {v18 .. v18}, Lcom/opencsv/bean/CsvBindAndJoinByPosition;->required()Z

    move-result v19

    .line 220
    .local v19, "required":Z
    invoke-interface/range {v18 .. v18}, Lcom/opencsv/bean/CsvBindAndJoinByPosition;->locale()Ljava/lang/String;

    move-result-object v20

    .line 221
    .local v20, "fieldLocale":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Lcom/opencsv/bean/CsvBindAndJoinByPosition;->writeLocaleEqualsReadLocale()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v4, v20

    goto :goto_2

    .line 223
    :cond_3
    invoke-interface/range {v18 .. v18}, Lcom/opencsv/bean/CsvBindAndJoinByPosition;->writeLocale()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_2
    nop

    .line 224
    .restart local v4    # "fieldWriteLocale":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Lcom/opencsv/bean/CsvBindAndJoinByPosition;->elementType()Ljava/lang/Class;

    move-result-object v21

    .line 225
    .local v21, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface/range {v18 .. v18}, Lcom/opencsv/bean/CsvBindAndJoinByPosition;->mapType()Ljava/lang/Class;

    move-result-object v22

    .line 226
    .local v22, "mapType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/commons/collections4/MultiValuedMap;>;"
    invoke-interface/range {v18 .. v18}, Lcom/opencsv/bean/CsvBindAndJoinByPosition;->converter()Ljava/lang/Class;

    move-result-object v23

    .line 227
    .local v23, "joinConverter":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/opencsv/bean/AbstractCsvConverter;>;"
    invoke-interface/range {v18 .. v18}, Lcom/opencsv/bean/CsvBindAndJoinByPosition;->capture()Ljava/lang/String;

    move-result-object v24

    .line 228
    .local v24, "capture":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Lcom/opencsv/bean/CsvBindAndJoinByPosition;->format()Ljava/lang/String;

    move-result-object v25

    .line 230
    .local v25, "format":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    move-object v15, v5

    .end local v5    # "localField":Ljava/lang/reflect/Field;
    .local v15, "localField":Ljava/lang/reflect/Field;
    move-object/from16 v5, v23

    invoke-virtual/range {v0 .. v5}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->determineConverter(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/opencsv/bean/CsvConverter;

    move-result-object v0

    .line 231
    .restart local v0    # "converter":Lcom/opencsv/bean/CsvConverter;
    iget-object v1, v6, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    invoke-interface/range {v18 .. v18}, Lcom/opencsv/bean/CsvBindAndJoinByPosition;->position()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/opencsv/bean/BeanFieldJoinIntegerIndex;

    iget-object v13, v6, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v9, v3

    move-object/from16 v10, v30

    move-object v11, v15

    move/from16 v12, v19

    move-object v14, v0

    move-object v5, v15

    .end local v15    # "localField":Ljava/lang/reflect/Field;
    .restart local v5    # "localField":Ljava/lang/reflect/Field;
    move-object/from16 v15, v22

    move-object/from16 v16, v24

    move-object/from16 v17, v25

    invoke-direct/range {v9 .. v17}, Lcom/opencsv/bean/BeanFieldJoinIntegerIndex;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/opencsv/bean/FieldMapByPosition;->putComplex(Ljava/lang/String;Lcom/opencsv/bean/BeanField;)V

    .line 233
    .end local v0    # "converter":Lcom/opencsv/bean/CsvConverter;
    .end local v18    # "annotation":Lcom/opencsv/bean/CsvBindAndJoinByPosition;
    .end local v21    # "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v22    # "mapType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/commons/collections4/MultiValuedMap;>;"
    .end local v23    # "joinConverter":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/opencsv/bean/AbstractCsvConverter;>;"
    move/from16 v3, v19

    goto :goto_4

    .line 237
    .end local v4    # "fieldWriteLocale":Ljava/lang/String;
    .end local v19    # "required":Z
    .end local v20    # "fieldLocale":Ljava/lang/String;
    .end local v24    # "capture":Ljava/lang/String;
    .end local v25    # "format":Ljava/lang/String;
    :cond_4
    const-class v0, Lcom/opencsv/bean/CsvBindByPosition;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/opencsv/bean/CsvBindByPosition;

    .line 238
    .local v17, "annotation":Lcom/opencsv/bean/CsvBindByPosition;
    invoke-interface/range {v17 .. v17}, Lcom/opencsv/bean/CsvBindByPosition;->required()Z

    move-result v18

    .line 239
    .local v18, "required":Z
    invoke-interface/range {v17 .. v17}, Lcom/opencsv/bean/CsvBindByPosition;->locale()Ljava/lang/String;

    move-result-object v19

    .line 240
    .local v19, "fieldLocale":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Lcom/opencsv/bean/CsvBindByPosition;->writeLocaleEqualsReadLocale()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v4, v19

    goto :goto_3

    .line 242
    :cond_5
    invoke-interface/range {v17 .. v17}, Lcom/opencsv/bean/CsvBindByPosition;->writeLocale()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_3
    nop

    .line 243
    .restart local v4    # "fieldWriteLocale":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Lcom/opencsv/bean/CsvBindByPosition;->capture()Ljava/lang/String;

    move-result-object v20

    .line 244
    .local v20, "capture":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Lcom/opencsv/bean/CsvBindByPosition;->format()Ljava/lang/String;

    move-result-object v21

    .line 245
    .local v21, "format":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v3, v19

    move-object/from16 v22, v5

    .end local v5    # "localField":Ljava/lang/reflect/Field;
    .local v22, "localField":Ljava/lang/reflect/Field;
    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->determineConverter(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/opencsv/bean/CsvConverter;

    move-result-object v0

    .line 247
    .restart local v0    # "converter":Lcom/opencsv/bean/CsvConverter;
    iget-object v1, v6, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    invoke-interface/range {v17 .. v17}, Lcom/opencsv/bean/CsvBindByPosition;->position()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/opencsv/bean/BeanFieldSingleValue;

    iget-object v13, v6, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v9, v3

    move-object/from16 v10, v30

    move-object/from16 v11, v22

    move/from16 v12, v18

    move-object v14, v0

    move-object/from16 v15, v20

    move-object/from16 v16, v21

    invoke-direct/range {v9 .. v16}, Lcom/opencsv/bean/BeanFieldSingleValue;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/opencsv/bean/FieldMapByPosition;->put(Ljava/lang/Comparable;Lcom/opencsv/bean/BeanField;)Lcom/opencsv/bean/BeanField;

    move/from16 v3, v18

    .line 250
    .end local v0    # "converter":Lcom/opencsv/bean/CsvConverter;
    .end local v4    # "fieldWriteLocale":Ljava/lang/String;
    .end local v8    # "classAndField":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;"
    .end local v17    # "annotation":Lcom/opencsv/bean/CsvBindByPosition;
    .end local v18    # "required":Z
    .end local v19    # "fieldLocale":Ljava/lang/String;
    .end local v20    # "capture":Ljava/lang/String;
    .end local v21    # "format":Ljava/lang/String;
    .end local v22    # "localField":Ljava/lang/reflect/Field;
    .end local v30    # "localType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "required":Z
    :goto_4
    goto/16 :goto_0

    .line 251
    .end local v3    # "required":Z
    :cond_6
    return-void
.end method

.method protected loadUnadornedFieldMap(Lorg/apache/commons/collections4/ListValuedMap;)V
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

    .line 255
    .local p0, "this":Lcom/opencsv/bean/ColumnPositionMappingStrategy;, "Lcom/opencsv/bean/ColumnPositionMappingStrategy<TT;>;"
    .local p1, "fields":Lorg/apache/commons/collections4/ListValuedMap;, "Lorg/apache/commons/collections4/ListValuedMap<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;"
    move-object/from16 v6, p0

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/collections4/ListValuedMap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/Map$Entry;

    .line 256
    .local v8, "classAndField":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Class;

    .line 257
    .local v17, "localType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/reflect/Field;

    .line 258
    .local v18, "localField":Ljava/lang/reflect/Field;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual/range {v0 .. v5}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->determineConverter(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/opencsv/bean/CsvConverter;

    move-result-object v0

    .line 259
    .local v0, "converter":Lcom/opencsv/bean/CsvConverter;
    iget-object v1, v6, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/opencsv/bean/HeaderIndex;->getByName(Ljava/lang/String;)[I

    move-result-object v1

    .line 260
    .local v1, "indices":[I
    array-length v2, v1

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, v6, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/opencsv/bean/BeanFieldSingleValue;

    const/4 v12, 0x0

    iget-object v13, v6, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->errorLocale:Ljava/util/Locale;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v4

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object v14, v0

    invoke-direct/range {v9 .. v16}, Lcom/opencsv/bean/BeanFieldSingleValue;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/opencsv/bean/FieldMapByPosition;->put(Ljava/lang/Comparable;Lcom/opencsv/bean/BeanField;)Lcom/opencsv/bean/BeanField;

    .line 264
    .end local v0    # "converter":Lcom/opencsv/bean/CsvConverter;
    .end local v1    # "indices":[I
    .end local v8    # "classAndField":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;"
    .end local v17    # "localType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "localField":Ljava/lang/reflect/Field;
    :cond_0
    goto :goto_0

    .line 265
    :cond_1
    return-void
.end method

.method public varargs setColumnMapping([Ljava/lang/String;)V
    .locals 1
    .param p1, "columnMapping"    # [Ljava/lang/String;

    .line 156
    .local p0, "this":Lcom/opencsv/bean/ColumnPositionMappingStrategy;, "Lcom/opencsv/bean/ColumnPositionMappingStrategy<TT;>;"
    if-eqz p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0, p1}, Lcom/opencsv/bean/HeaderIndex;->initializeHeaderIndex([Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0}, Lcom/opencsv/bean/HeaderIndex;->clear()V

    .line 161
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnsExplicitlySet:Z

    .line 162
    invoke-virtual {p0}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->getType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->loadFieldMap()V

    .line 165
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
    .local p0, "this":Lcom/opencsv/bean/ColumnPositionMappingStrategy;, "Lcom/opencsv/bean/ColumnPositionMappingStrategy<TT;>;"
    .local p1, "writeOrder":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->writeOrder:Ljava/util/Comparator;

    .line 342
    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByPosition;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0, p1}, Lcom/opencsv/bean/FieldMapByPosition;->setColumnOrderOnWrite(Ljava/util/Comparator;)V

    .line 345
    :cond_0
    return-void
.end method

.method protected verifyLineLength(I)V
    .locals 6
    .param p1, "numberOfFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    .line 295
    .local p0, "this":Lcom/opencsv/bean/ColumnPositionMappingStrategy;, "Lcom/opencsv/bean/ColumnPositionMappingStrategy<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0}, Lcom/opencsv/bean/HeaderIndex;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "sb":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v2}, Lcom/opencsv/bean/HeaderIndex;->findMaxIndex()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 299
    invoke-virtual {p0, v1}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->findField(I)Lcom/opencsv/bean/BeanField;

    move-result-object v2

    .line 300
    .local v2, "f":Lcom/opencsv/bean/BeanField;, "Lcom/opencsv/bean/BeanField<TT;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/opencsv/bean/BeanField;->isRequired()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    if-nez v0, :cond_0

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->errorLocale:Ljava/util/Locale;

    const-string v5, "opencsv"

    invoke-static {v5, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    const-string v5, "multiple.required.field.empty"

    invoke-virtual {v4, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 304
    :cond_0
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    invoke-interface {v2}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "i":I
    .end local v2    # "f":Lcom/opencsv/bean/BeanField;, "Lcom/opencsv/bean/BeanField<TT;Ljava/lang/Integer;>;"
    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    .line 309
    :cond_3
    new-instance v1, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    iget-object v2, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v1

    .line 312
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    :goto_1
    return-void
.end method
