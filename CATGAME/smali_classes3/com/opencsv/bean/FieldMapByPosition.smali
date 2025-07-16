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
.method public static synthetic $r8$lambda$MuwDFrbA3G-IcKVjEbH-HfGjxvU(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/opencsv/bean/AbstractFieldMap;-><init>(Ljava/util/Locale;)V

    const p1, 0x7fffffff

    .line 38
    iput p1, p0, Lcom/opencsv/bean/FieldMapByPosition;->maxIndex:I

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/opencsv/bean/FieldMapByPosition;->writeOrder:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic lambda$setMaxIndex$0(ILcom/opencsv/bean/PositionToBeanField;)V
    .locals 0

    .line 147
    invoke-virtual {p1, p0}, Lcom/opencsv/bean/PositionToBeanField;->attenuateRanges(I)V

    return-void
.end method


# virtual methods
.method public generateHeader(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 10
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
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 64
    new-instance v1, Ljava/util/TreeMap;

    iget-object v2, p0, Lcom/opencsv/bean/FieldMapByPosition;->writeOrder:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 65
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
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/opencsv/bean/BeanField;

    invoke-interface {v3}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/opencsv/bean/FieldMapByPosition;->complexMapList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/opencsv/bean/ComplexFieldMapEntry;

    .line 70
    invoke-interface {v3}, Lcom/opencsv/bean/ComplexFieldMapEntry;->getBeanField()Lcom/opencsv/bean/BeanField;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/opencsv/bean/BeanField;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/collections4/MultiValuedMap;

    if-eqz v6, :cond_3

    .line 72
    invoke-interface {v6}, Lorg/apache/commons/collections4/MultiValuedMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 73
    invoke-interface {v6}, Lorg/apache/commons/collections4/MultiValuedMap;->entries()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 75
    invoke-interface {v3, v9}, Lcom/opencsv/bean/ComplexFieldMapEntry;->contains(Ljava/lang/Comparable;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 76
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Lcom/opencsv/bean/ComplexFieldMapEntry;->getBeanField()Lcom/opencsv/bean/BeanField;

    move-result-object v8

    invoke-interface {v8}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v4, v8}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_4

    .line 81
    invoke-interface {v6}, Lorg/apache/commons/collections4/MultiValuedMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v4, :cond_1

    .line 82
    :cond_4
    invoke-interface {v3}, Lcom/opencsv/bean/ComplexFieldMapEntry;->getBeanField()Lcom/opencsv/bean/BeanField;

    move-result-object v4

    invoke-interface {v4}, Lcom/opencsv/bean/BeanField;->isRequired()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    invoke-interface {v3}, Lcom/opencsv/bean/ComplexFieldMapEntry;->getBeanField()Lcom/opencsv/bean/BeanField;

    move-result-object v3

    invoke-interface {v3}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 91
    :cond_5
    new-instance v2, Ljava/util/TreeSet;

    invoke-interface {v1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 92
    invoke-interface {v2}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v3

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
    :goto_3
    new-array v3, v3, [Ljava/lang/String;

    .line 94
    invoke-interface {v2}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v4

    goto :goto_4

    :cond_7
    invoke-interface {v2}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 95
    :goto_4
    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    add-int/2addr v6, v5

    .line 96
    :goto_6
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v6, v8, :cond_8

    .line 97
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 99
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_5

    .line 102
    :cond_9
    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v4

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    .line 103
    aput-object v6, v3, v2

    move v2, v7

    goto :goto_7

    .line 107
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v3

    :cond_b
    const-string v1, "opencsv"

    .line 108
    iget-object v2, p0, Lcom/opencsv/bean/FieldMapByPosition;->errorLocale:Ljava/util/Locale;

    .line 110
    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "header.required.field.absent"

    .line 111
    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 112
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/opencsv/bean/FieldMapByPosition$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/opencsv/bean/FieldMapByPosition$$ExternalSyntheticLambda0;-><init>()V

    .line 113
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    const-string v7, " "

    .line 114
    invoke-static {v7}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v2, v4

    .line 115
    invoke-static {v7, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 108
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 116
    new-instance v2, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v2, p1, v0, v1}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;-><init>(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;)V

    throw v2
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
    new-instance v0, Lcom/opencsv/bean/FieldMapByPosition$1;

    invoke-direct {v0, p0}, Lcom/opencsv/bean/FieldMapByPosition$1;-><init>(Lcom/opencsv/bean/FieldMapByPosition;)V

    return-object v0
.end method

.method public bridge synthetic putComplex(Ljava/lang/Object;Lcom/opencsv/bean/BeanField;)V
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/opencsv/bean/FieldMapByPosition;->putComplex(Ljava/lang/String;Lcom/opencsv/bean/BeanField;)V

    return-void
.end method

.method public putComplex(Ljava/lang/String;Lcom/opencsv/bean/BeanField;)V
    .locals 4
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
    iget-object v0, p0, Lcom/opencsv/bean/FieldMapByPosition;->complexMapList:Ljava/util/List;

    new-instance v1, Lcom/opencsv/bean/PositionToBeanField;

    iget v2, p0, Lcom/opencsv/bean/FieldMapByPosition;->maxIndex:I

    iget-object v3, p0, Lcom/opencsv/bean/FieldMapByPosition;->errorLocale:Ljava/util/Locale;

    invoke-direct {v1, p1, v2, p2, v3}, Lcom/opencsv/bean/PositionToBeanField;-><init>(Ljava/lang/String;ILcom/opencsv/bean/BeanField;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
    iput-object p1, p0, Lcom/opencsv/bean/FieldMapByPosition;->writeOrder:Ljava/util/Comparator;

    return-void
.end method

.method public setMaxIndex(I)V
    .locals 2

    .line 144
    iput p1, p0, Lcom/opencsv/bean/FieldMapByPosition;->maxIndex:I

    .line 147
    iget-object v0, p0, Lcom/opencsv/bean/FieldMapByPosition;->complexMapList:Ljava/util/List;

    new-instance v1, Lcom/opencsv/bean/FieldMapByPosition$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/opencsv/bean/FieldMapByPosition$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
