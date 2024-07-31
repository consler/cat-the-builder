.class public Lcom/opencsv/bean/FieldMapByPosition;
.super Lcom/opencsv/bean/AbstractFieldMap;
.source "FieldMapByPosition.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/opencsv/bean/AbstractFieldMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/opencsv/bean/PositionToBeanField<",
        "TT;>;TT;>;",
        "Ljava/lang/Iterable<",
        "Lcom/opencsv/bean/FieldMapByPositionEntry<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private maxIndex:I

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
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "errorLocale"    # Ljava/util/Locale;

    .line 49
    .local p0, "this":Lcom/opencsv/bean/FieldMapByPosition;, "Lcom/opencsv/bean/FieldMapByPosition<TT;>;"
    invoke-direct {p0, p1}, Lcom/opencsv/bean/AbstractFieldMap;-><init>(Ljava/util/Locale;)V

    .line 38
    const v0, 0x7fffffff

    iput v0, p0, Lcom/opencsv/bean/FieldMapByPosition;->maxIndex:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/bean/FieldMapByPosition;->writeOrder:Ljava/util/Comparator;

    .line 50
    return-void
.end method

.method static synthetic lambda$setMaxIndex$0(ILcom/opencsv/bean/PositionToBeanField;)V
    .locals 0
    .param p0, "maxIndex"    # I
    .param p1, "p"    # Lcom/opencsv/bean/PositionToBeanField;

    .line 147
    invoke-virtual {p1, p0}, Lcom/opencsv/bean/PositionToBeanField;->attenuateRanges(I)V

    return-void
.end method


# virtual methods
.method public generateHeader(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 13
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

    .line 63
    .local p0, "this":Lcom/opencsv/bean/FieldMapByPosition;, "Lcom/opencsv/bean/FieldMapByPosition<TT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 64
    .local v0, "missingRequiredHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    new-instance v1, Ljava/util/TreeMap;

    iget-object v2, p0, Lcom/opencsv/bean/FieldMapByPosition;->writeOrder:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 65
    .local v1, "headerMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/opencsv/bean/FieldMapByPosition;->simpleMap:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 66
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/opencsv/bean/BeanField<TT;Ljava/lang/Integer;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/opencsv/bean/BeanField;

    invoke-interface {v5}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/opencsv/bean/BeanField<TT;Ljava/lang/Integer;>;>;"
    goto :goto_0

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/opencsv/bean/FieldMapByPosition;->complexMapList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/opencsv/bean/ComplexFieldMapEntry;

    .line 70
    .local v3, "r":Lcom/opencsv/bean/ComplexFieldMapEntry;, "Lcom/opencsv/bean/ComplexFieldMapEntry<Ljava/lang/String;Ljava/lang/Integer;TT;>;"
    invoke-interface {v3}, Lcom/opencsv/bean/ComplexFieldMapEntry;->getBeanField()Lcom/opencsv/bean/BeanField;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/opencsv/bean/BeanField;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/collections4/MultiValuedMap;

    .line 71
    .local v4, "m":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<Ljava/lang/Integer;TT;>;"
    const/4 v5, 0x0

    .line 72
    .local v5, "oneEntryMatched":Z
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lorg/apache/commons/collections4/MultiValuedMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 73
    invoke-interface {v4}, Lorg/apache/commons/collections4/MultiValuedMap;->entries()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 74
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TT;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 75
    .local v8, "key":Ljava/lang/Integer;
    invoke-interface {v3, v8}, Lcom/opencsv/bean/ComplexFieldMapEntry;->contains(Ljava/lang/Comparable;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 76
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v3}, Lcom/opencsv/bean/ComplexFieldMapEntry;->getBeanField()Lcom/opencsv/bean/BeanField;

    move-result-object v10

    invoke-interface {v10}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/4 v5, 0x1

    .line 79
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TT;>;"
    .end local v8    # "key":Ljava/lang/Integer;
    :cond_1
    goto :goto_2

    .line 81
    :cond_2
    if-eqz v4, :cond_3

    invoke-interface {v4}, Lorg/apache/commons/collections4/MultiValuedMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    if-nez v5, :cond_4

    .line 82
    :cond_3
    invoke-interface {v3}, Lcom/opencsv/bean/ComplexFieldMapEntry;->getBeanField()Lcom/opencsv/bean/BeanField;

    move-result-object v6

    invoke-interface {v6}, Lcom/opencsv/bean/BeanField;->isRequired()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 83
    invoke-interface {v3}, Lcom/opencsv/bean/ComplexFieldMapEntry;->getBeanField()Lcom/opencsv/bean/BeanField;

    move-result-object v6

    invoke-interface {v6}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v3    # "r":Lcom/opencsv/bean/ComplexFieldMapEntry;, "Lcom/opencsv/bean/ComplexFieldMapEntry<Ljava/lang/String;Ljava/lang/Integer;TT;>;"
    .end local v4    # "m":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<Ljava/lang/Integer;TT;>;"
    .end local v5    # "oneEntryMatched":Z
    :cond_4
    goto :goto_1

    .line 91
    :cond_5
    new-instance v2, Ljava/util/TreeSet;

    invoke-interface {v1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 92
    .local v2, "headerSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_6

    move v3, v4

    goto :goto_3

    :cond_6
    invoke-interface {v2}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v5

    .line 93
    .local v3, "arraySize":I
    :goto_3
    new-array v6, v3, [Ljava/lang/String;

    .line 94
    .local v6, "headers":[Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v4

    goto :goto_4

    :cond_7
    invoke-interface {v2}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 95
    .local v7, "previousIndex":I
    :goto_4
    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 96
    .local v9, "i":Ljava/lang/Integer;
    add-int/lit8 v10, v7, 0x1

    .local v10, "j":I
    :goto_6
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v10, v11, :cond_8

    .line 97
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v1, v11, v12}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 99
    .end local v10    # "j":I
    :cond_8
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 100
    .end local v9    # "i":Ljava/lang/Integer;
    goto :goto_5

    .line 101
    :cond_9
    const/4 v7, 0x0

    .line 102
    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 103
    .local v9, "value":Ljava/lang/String;
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "previousIndex":I
    .local v10, "previousIndex":I
    aput-object v9, v6, v7

    .line 104
    .end local v9    # "value":Ljava/lang/String;
    move v7, v10

    goto :goto_7

    .line 107
    .end local v10    # "previousIndex":I
    .restart local v7    # "previousIndex":I
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 119
    return-object v6

    .line 108
    :cond_b
    iget-object v8, p0, Lcom/opencsv/bean/FieldMapByPosition;->errorLocale:Ljava/util/Locale;

    .line 110
    const-string v9, "opencsv"

    invoke-static {v9, v8}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v8

    .line 111
    const-string v9, "header.required.field.absent"

    invoke-virtual {v8, v9}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 112
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    sget-object v11, Lcom/opencsv/bean/-$$Lambda$EwHr87MK7hEsolm9oeBYC5WlLmc;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$EwHr87MK7hEsolm9oeBYC5WlLmc;

    .line 113
    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v10

    .line 114
    const-string v11, " "

    invoke-static {v11}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v4

    .line 115
    invoke-static {v11, v6}, L$r8$backportedMethods$utility$String$2$joinArray;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v5

    .line 108
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "errorMessage":Ljava/lang/String;
    new-instance v5, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v5, v8, v0, v4}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;-><init>(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;)V

    throw v5
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

    .line 152
    .local p0, "this":Lcom/opencsv/bean/FieldMapByPosition;, "Lcom/opencsv/bean/FieldMapByPosition<TT;>;"
    new-instance v0, Lcom/opencsv/bean/FieldMapByPosition$1;

    invoke-direct {v0, p0}, Lcom/opencsv/bean/FieldMapByPosition$1;-><init>(Lcom/opencsv/bean/FieldMapByPosition;)V

    return-object v0
.end method

.method public bridge synthetic putComplex(Ljava/lang/Object;Lcom/opencsv/bean/BeanField;)V
    .locals 0

    .line 36
    .local p0, "this":Lcom/opencsv/bean/FieldMapByPosition;, "Lcom/opencsv/bean/FieldMapByPosition<TT;>;"
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/opencsv/bean/FieldMapByPosition;->putComplex(Ljava/lang/String;Lcom/opencsv/bean/BeanField;)V

    return-void
.end method

.method public putComplex(Ljava/lang/String;Lcom/opencsv/bean/BeanField;)V
    .locals 4
    .param p1, "rangeDefinition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/opencsv/bean/BeanField<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/opencsv/bean/FieldMapByPosition;, "Lcom/opencsv/bean/FieldMapByPosition<TT;>;"
    .local p2, "field":Lcom/opencsv/bean/BeanField;, "Lcom/opencsv/bean/BeanField<TT;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/opencsv/bean/FieldMapByPosition;->complexMapList:Ljava/util/List;

    new-instance v1, Lcom/opencsv/bean/PositionToBeanField;

    iget v2, p0, Lcom/opencsv/bean/FieldMapByPosition;->maxIndex:I

    iget-object v3, p0, Lcom/opencsv/bean/FieldMapByPosition;->errorLocale:Ljava/util/Locale;

    invoke-direct {v1, p1, v2, p2, v3}, Lcom/opencsv/bean/PositionToBeanField;-><init>(Ljava/lang/String;ILcom/opencsv/bean/BeanField;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public setColumnOrderOnWrite(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 178
    .local p0, "this":Lcom/opencsv/bean/FieldMapByPosition;, "Lcom/opencsv/bean/FieldMapByPosition<TT;>;"
    .local p1, "writeOrder":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/opencsv/bean/FieldMapByPosition;->writeOrder:Ljava/util/Comparator;

    .line 179
    return-void
.end method

.method public setMaxIndex(I)V
    .locals 2
    .param p1, "maxIndex"    # I

    .line 144
    .local p0, "this":Lcom/opencsv/bean/FieldMapByPosition;, "Lcom/opencsv/bean/FieldMapByPosition<TT;>;"
    iput p1, p0, Lcom/opencsv/bean/FieldMapByPosition;->maxIndex:I

    .line 147
    iget-object v0, p0, Lcom/opencsv/bean/FieldMapByPosition;->complexMapList:Ljava/util/List;

    new-instance v1, Lcom/opencsv/bean/-$$Lambda$FieldMapByPosition$UhozatDq27MmylJ6IOoP6haKNJc;

    invoke-direct {v1, p1}, Lcom/opencsv/bean/-$$Lambda$FieldMapByPosition$UhozatDq27MmylJ6IOoP6haKNJc;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 148
    return-void
.end method
