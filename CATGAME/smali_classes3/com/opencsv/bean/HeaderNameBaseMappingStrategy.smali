.class public abstract Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;
.super Lcom/opencsv/bean/AbstractMappingStrategy;
.source "HeaderNameBaseMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/opencsv/bean/AbstractMappingStrategy<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lcom/opencsv/bean/ComplexFieldMapEntry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "TT;>;TT;>;"
    }
.end annotation


# instance fields
.field protected fieldMap:Lcom/opencsv/bean/FieldMapByName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/FieldMapByName<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected writeOrder:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    .local p0, "this":Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;, "Lcom/opencsv/bean/HeaderNameBaseMappingStrategy<TT;>;"
    invoke-direct {p0}, Lcom/opencsv/bean/AbstractMappingStrategy;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    .line 33
    iput-object v0, p0, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->writeOrder:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public captureHeader(Lcom/opencsv/CSVReader;)V
    .locals 12
    .param p1, "reader"    # Lcom/opencsv/CSVReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;, "Lcom/opencsv/bean/HeaderNameBaseMappingStrategy<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->type:Ljava/lang/Class;

    const-string v1, "opencsv"

    if-eqz v0, :cond_3

    .line 45
    invoke-virtual {p1}, Lcom/opencsv/CSVReader;->readNextSilently()[Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 46
    .local v0, "header":[Ljava/lang/String;
    iget-object v2, p0, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v2, v0}, Lcom/opencsv/bean/HeaderIndex;->initializeHeaderIndex([Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    invoke-virtual {v2, v0}, Lcom/opencsv/bean/FieldMapByName;->determineMissingRequiredHeaders([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 50
    .local v2, "missingRequiredHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/opencsv/bean/FieldMapByNameEntry<TT;>;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 51
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 52
    .local v3, "requiredHeaderNames":[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .local v4, "requiredFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v5, v6, :cond_1

    .line 54
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/opencsv/bean/FieldMapByNameEntry;

    .line 55
    .local v6, "fme":Lcom/opencsv/bean/FieldMapByNameEntry;, "Lcom/opencsv/bean/FieldMapByNameEntry<TT;>;"
    invoke-virtual {v6}, Lcom/opencsv/bean/FieldMapByNameEntry;->isRegexPattern()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 56
    iget-object v9, p0, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 58
    invoke-static {v1, v9}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v9

    .line 59
    const-string v10, "matching"

    invoke-virtual {v9, v10}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    .line 60
    invoke-virtual {v6}, Lcom/opencsv/bean/FieldMapByNameEntry;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v7

    .line 56
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    goto :goto_1

    .line 62
    :cond_0
    invoke-virtual {v6}, Lcom/opencsv/bean/FieldMapByNameEntry;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    .line 64
    :goto_1
    invoke-virtual {v6}, Lcom/opencsv/bean/FieldMapByNameEntry;->getField()Lcom/opencsv/bean/BeanField;

    move-result-object v7

    invoke-interface {v7}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v6    # "fme":Lcom/opencsv/bean/FieldMapByNameEntry;, "Lcom/opencsv/bean/FieldMapByNameEntry<TT;>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 66
    .end local v5    # "i":I
    :cond_1
    const-string v5, ", "

    invoke-static {v5, v3}, L$r8$backportedMethods$utility$String$2$joinArray;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "missingRequiredFields":Ljava/lang/String;
    const-string v6, ","

    invoke-static {v6, v0}, L$r8$backportedMethods$utility$String$2$joinArray;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "allHeaders":Ljava/lang/String;
    new-instance v9, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    iget-object v10, p0, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->type:Ljava/lang/Class;

    iget-object v11, p0, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 70
    invoke-static {v1, v11}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 71
    const-string v11, "header.required.field.absent"

    invoke-virtual {v1, v11}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v5, v11, v7

    aput-object v6, v11, v8

    .line 69
    invoke-static {v1, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v10, v4, v1}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;-><init>(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;)V

    move-object v1, v9

    .line 73
    .local v1, "e":Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
    invoke-virtual {v1, v0}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;->setLine([Ljava/lang/String;)V

    .line 74
    throw v1

    .line 76
    .end local v1    # "e":Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
    .end local v3    # "requiredHeaderNames":[Ljava/lang/String;
    .end local v4    # "requiredFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v5    # "missingRequiredFields":Ljava/lang/String;
    .end local v6    # "allHeaders":Ljava/lang/String;
    :cond_2
    return-void

    .line 39
    .end local v0    # "header":[Ljava/lang/String;
    .end local v2    # "missingRequiredHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/opencsv/bean/FieldMapByNameEntry<TT;>;>;"
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v2, p0, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 40
    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 41
    const-string v2, "type.unset"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic chooseMultivaluedFieldIndexFromHeaderIndex(I)Ljava/lang/Comparable;
    .locals 0

    .line 24
    .local p0, "this":Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;, "Lcom/opencsv/bean/HeaderNameBaseMappingStrategy<TT;>;"
    invoke-virtual {p0, p1}, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->chooseMultivaluedFieldIndexFromHeaderIndex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected chooseMultivaluedFieldIndexFromHeaderIndex(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 80
    .local p0, "this":Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;, "Lcom/opencsv/bean/HeaderNameBaseMappingStrategy<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0}, Lcom/opencsv/bean/HeaderIndex;->getHeaderIndex()[Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "s":[Ljava/lang/String;
    array-length v1, v0

    if-lt p1, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    aget-object v1, v0, p1

    :goto_0
    return-object v1
.end method

.method protected findField(I)Lcom/opencsv/bean/BeanField;
    .locals 4
    .param p1, "col"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/opencsv/bean/BeanField<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvBadConverterException;
        }
    .end annotation

    .line 97
    .local p0, "this":Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;, "Lcom/opencsv/bean/HeaderNameBaseMappingStrategy<TT;>;"
    const/4 v0, 0x0

    .line 98
    .local v0, "beanField":Lcom/opencsv/bean/BeanField;, "Lcom/opencsv/bean/BeanField<TT;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "columnName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 100
    const/4 v2, 0x0

    return-object v2

    .line 102
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/opencsv/bean/FieldMapByName;->get(Ljava/lang/Comparable;)Lcom/opencsv/bean/BeanField;

    move-result-object v0

    .line 106
    :cond_1
    return-object v0
.end method

.method public findHeader(I)Ljava/lang/String;
    .locals 1
    .param p1, "col"    # I

    .line 147
    .local p0, "this":Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;, "Lcom/opencsv/bean/HeaderNameBaseMappingStrategy<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

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
            "Ljava/lang/String;",
            "+",
            "Lcom/opencsv/bean/ComplexFieldMapEntry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;>;TT;>;"
        }
    .end annotation

    .line 143
    .local p0, "this":Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;, "Lcom/opencsv/bean/HeaderNameBaseMappingStrategy<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    return-object v0
.end method

.method protected initializeFieldMap()V
    .locals 2

    .line 138
    .local p0, "this":Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;, "Lcom/opencsv/bean/HeaderNameBaseMappingStrategy<TT;>;"
    new-instance v0, Lcom/opencsv/bean/FieldMapByName;

    iget-object v1, p0, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->errorLocale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lcom/opencsv/bean/FieldMapByName;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    .line 139
    iget-object v1, p0, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->writeOrder:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Lcom/opencsv/bean/FieldMapByName;->setColumnOrderOnWrite(Ljava/util/Comparator;)V

    .line 140
    return-void
.end method

.method protected loadUnadornedFieldMap(Lorg/apache/commons/collections4/ListValuedMap;)V
    .locals 17
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

    .line 126
    .local p0, "this":Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;, "Lcom/opencsv/bean/HeaderNameBaseMappingStrategy<TT;>;"
    .local p1, "fields":Lorg/apache/commons/collections4/ListValuedMap;, "Lorg/apache/commons/collections4/ListValuedMap<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;"
    move-object/from16 v6, p0

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/collections4/ListValuedMap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/Map$Entry;

    .line 127
    .local v8, "classFieldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;"
    const-class v0, Ljava/io/Serializable;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "serialVersionUID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/Field;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->determineConverter(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/opencsv/bean/CsvConverter;

    move-result-object v0

    .line 129
    .local v0, "converter":Lcom/opencsv/bean/CsvConverter;
    iget-object v1, v6, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/opencsv/bean/BeanFieldSingleValue;

    .line 130
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/Class;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/reflect/Field;

    const/4 v12, 0x0

    iget-object v13, v6, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->errorLocale:Ljava/util/Locale;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v3

    move-object v14, v0

    invoke-direct/range {v9 .. v16}, Lcom/opencsv/bean/BeanFieldSingleValue;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1, v2, v3}, Lcom/opencsv/bean/FieldMapByName;->put(Ljava/lang/Comparable;Lcom/opencsv/bean/BeanField;)Lcom/opencsv/bean/BeanField;

    .line 133
    .end local v0    # "converter":Lcom/opencsv/bean/CsvConverter;
    .end local v8    # "classFieldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;"
    :cond_1
    goto :goto_0

    .line 134
    :cond_2
    return-void
.end method

.method public setColumnOrderOnWrite(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 161
    .local p0, "this":Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;, "Lcom/opencsv/bean/HeaderNameBaseMappingStrategy<TT;>;"
    .local p1, "writeOrder":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->writeOrder:Ljava/util/Comparator;

    .line 162
    iget-object v0, p0, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, p1}, Lcom/opencsv/bean/FieldMapByName;->setColumnOrderOnWrite(Ljava/util/Comparator;)V

    .line 165
    :cond_0
    return-void
.end method

.method public verifyLineLength(I)V
    .locals 4
    .param p1, "numberOfFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;, "Lcom/opencsv/bean/HeaderNameBaseMappingStrategy<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0}, Lcom/opencsv/bean/HeaderIndex;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0}, Lcom/opencsv/bean/HeaderIndex;->getHeaderIndexLength()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    iget-object v1, p0, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->type:Ljava/lang/Class;

    iget-object v2, p0, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 89
    const-string v3, "opencsv"

    invoke-static {v3, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    .line 90
    const-string v3, "header.data.mismatch"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    :goto_0
    return-void
.end method
