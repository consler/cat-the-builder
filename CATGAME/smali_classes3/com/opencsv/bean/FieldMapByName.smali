.class public Lcom/opencsv/bean/FieldMapByName;
.super Lcom/opencsv/bean/AbstractFieldMap;
.source "FieldMapByName.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/opencsv/bean/AbstractFieldMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lcom/opencsv/bean/RegexToBeanField<",
        "TT;>;TT;>;"
    }
.end annotation


# instance fields
.field private writeOrder:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "errorLocale"    # Ljava/util/Locale;

    .line 47
    .local p0, "this":Lcom/opencsv/bean/FieldMapByName;, "Lcom/opencsv/bean/FieldMapByName<TT;>;"
    invoke-direct {p0, p1}, Lcom/opencsv/bean/AbstractFieldMap;-><init>(Ljava/util/Locale;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/bean/FieldMapByName;->writeOrder:Ljava/util/Comparator;

    .line 48
    return-void
.end method

.method static synthetic lambda$determineMissingRequiredHeaders$0(Ljava/util/Map$Entry;)Z
    .locals 1
    .param p0, "e"    # Ljava/util/Map$Entry;

    .line 70
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/BeanField;

    invoke-interface {v0}, Lcom/opencsv/bean/BeanField;->isRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$determineMissingRequiredHeaders$1(Lcom/opencsv/bean/RegexToBeanField;)Z
    .locals 1
    .param p0, "r"    # Lcom/opencsv/bean/RegexToBeanField;

    .line 74
    invoke-virtual {p0}, Lcom/opencsv/bean/RegexToBeanField;->getBeanField()Lcom/opencsv/bean/BeanField;

    move-result-object v0

    invoke-interface {v0}, Lcom/opencsv/bean/BeanField;->isRequired()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public determineMissingRequiredHeaders([Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "headersPresent"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/opencsv/bean/FieldMapByNameEntry<",
            "TT;>;>;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/opencsv/bean/FieldMapByName;, "Lcom/opencsv/bean/FieldMapByName<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/FieldMapByName;->simpleMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/opencsv/bean/-$$Lambda$FieldMapByName$nyGOgUWavOVjws8XsR3Xz3Q1wT0;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$FieldMapByName$nyGOgUWavOVjws8XsR3Xz3Q1wT0;

    .line 70
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/opencsv/bean/-$$Lambda$CSz_ibwXhtkKNl72Q8tR5oBgkWk;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$CSz_ibwXhtkKNl72Q8tR5oBgkWk;

    .line 71
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/opencsv/bean/-$$Lambda$vj0u7_xDM0lr_9YZgFS7Tq8Esr0;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$vj0u7_xDM0lr_9YZgFS7Tq8Esr0;

    .line 72
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 73
    .local v0, "requiredStringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/opencsv/bean/FieldMapByName;->complexMapList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/opencsv/bean/-$$Lambda$FieldMapByName$NyI1vRCK6gb0T3DU3ev4f_GLo0E;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$FieldMapByName$NyI1vRCK6gb0T3DU3ev4f_GLo0E;

    .line 74
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 75
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 78
    .local v1, "requiredRegexList":Ljava/util/List;, "Ljava/util/List<Lcom/opencsv/bean/ComplexFieldMapEntry<Ljava/lang/String;Ljava/lang/String;TT;>;>;"
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p1, v4

    .line 79
    .local v5, "h":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 80
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    .line 81
    .local v6, "requiredRegexListIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/opencsv/bean/ComplexFieldMapEntry<Ljava/lang/String;Ljava/lang/String;TT;>;>;"
    const/4 v7, 0x0

    .line 82
    .local v7, "found":Z
    :goto_1
    if-nez v7, :cond_1

    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 83
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/opencsv/bean/ComplexFieldMapEntry;

    .line 84
    .local v8, "r":Lcom/opencsv/bean/ComplexFieldMapEntry;, "Lcom/opencsv/bean/ComplexFieldMapEntry<Ljava/lang/String;Ljava/lang/String;TT;>;"
    invoke-interface {v8, v5}, Lcom/opencsv/bean/ComplexFieldMapEntry;->contains(Ljava/lang/Comparable;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 85
    const/4 v7, 0x1

    .line 86
    invoke-interface {v6}, Ljava/util/ListIterator;->remove()V

    .line 88
    .end local v8    # "r":Lcom/opencsv/bean/ComplexFieldMapEntry;, "Lcom/opencsv/bean/ComplexFieldMapEntry<Ljava/lang/String;Ljava/lang/String;TT;>;"
    :cond_0
    goto :goto_1

    .line 78
    .end local v5    # "h":Ljava/lang/String;
    .end local v6    # "requiredRegexListIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/opencsv/bean/ComplexFieldMapEntry<Ljava/lang/String;Ljava/lang/String;TT;>;>;"
    .end local v7    # "found":Z
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    :cond_2
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 94
    .local v2, "missingRequiredHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/opencsv/bean/FieldMapByNameEntry<TT;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 95
    .local v5, "s":Ljava/lang/String;
    new-instance v6, Lcom/opencsv/bean/FieldMapByNameEntry;

    iget-object v7, p0, Lcom/opencsv/bean/FieldMapByName;->simpleMap:Ljava/util/SortedMap;

    invoke-interface {v7, v5}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/opencsv/bean/BeanField;

    invoke-direct {v6, v5, v7, v3}, Lcom/opencsv/bean/FieldMapByNameEntry;-><init>(Ljava/lang/String;Lcom/opencsv/bean/BeanField;Z)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v5    # "s":Ljava/lang/String;
    goto :goto_2

    .line 97
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/opencsv/bean/ComplexFieldMapEntry;

    .line 98
    .local v4, "r":Lcom/opencsv/bean/ComplexFieldMapEntry;, "Lcom/opencsv/bean/ComplexFieldMapEntry<Ljava/lang/String;Ljava/lang/String;TT;>;"
    new-instance v5, Lcom/opencsv/bean/FieldMapByNameEntry;

    invoke-interface {v4}, Lcom/opencsv/bean/ComplexFieldMapEntry;->getInitializer()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Lcom/opencsv/bean/ComplexFieldMapEntry;->getBeanField()Lcom/opencsv/bean/BeanField;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Lcom/opencsv/bean/FieldMapByNameEntry;-><init>(Ljava/lang/String;Lcom/opencsv/bean/BeanField;Z)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v4    # "r":Lcom/opencsv/bean/ComplexFieldMapEntry;, "Lcom/opencsv/bean/ComplexFieldMapEntry<Ljava/lang/String;Ljava/lang/String;TT;>;"
    goto :goto_3

    .line 101
    :cond_4
    return-object v2
.end method

.method public generateHeader(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 8
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

    .line 127
    .local p0, "this":Lcom/opencsv/bean/FieldMapByName;, "Lcom/opencsv/bean/FieldMapByName<TT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 128
    .local v0, "missingRequiredHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/opencsv/bean/FieldMapByName;->simpleMap:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    .local v1, "headerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/opencsv/bean/FieldMapByName;->complexMapList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/opencsv/bean/ComplexFieldMapEntry;

    .line 131
    .local v3, "r":Lcom/opencsv/bean/ComplexFieldMapEntry;, "Lcom/opencsv/bean/ComplexFieldMapEntry<Ljava/lang/String;Ljava/lang/String;TT;>;"
    invoke-interface {v3}, Lcom/opencsv/bean/ComplexFieldMapEntry;->getBeanField()Lcom/opencsv/bean/BeanField;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/opencsv/bean/BeanField;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/collections4/MultiValuedMap;

    .line 132
    .local v4, "m":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<Ljava/lang/String;TT;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lorg/apache/commons/collections4/MultiValuedMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 133
    invoke-interface {v4}, Lorg/apache/commons/collections4/MultiValuedMap;->entries()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    sget-object v6, Lcom/opencsv/bean/-$$Lambda$CSz_ibwXhtkKNl72Q8tR5oBgkWk;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$CSz_ibwXhtkKNl72Q8tR5oBgkWk;

    .line 134
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/opencsv/bean/-$$Lambda$shQKrlCoKy2a_F3qPlEpUzdppCE;

    invoke-direct {v6, v3}, Lcom/opencsv/bean/-$$Lambda$shQKrlCoKy2a_F3qPlEpUzdppCE;-><init>(Lcom/opencsv/bean/ComplexFieldMapEntry;)V

    .line 135
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 136
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 133
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 139
    :cond_0
    invoke-interface {v3}, Lcom/opencsv/bean/ComplexFieldMapEntry;->getBeanField()Lcom/opencsv/bean/BeanField;

    move-result-object v5

    invoke-interface {v5}, Lcom/opencsv/bean/BeanField;->isRequired()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 140
    invoke-interface {v3}, Lcom/opencsv/bean/ComplexFieldMapEntry;->getBeanField()Lcom/opencsv/bean/BeanField;

    move-result-object v5

    invoke-interface {v5}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v3    # "r":Lcom/opencsv/bean/ComplexFieldMapEntry;, "Lcom/opencsv/bean/ComplexFieldMapEntry<Ljava/lang/String;Ljava/lang/String;TT;>;"
    .end local v4    # "m":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<Ljava/lang/String;TT;>;"
    :cond_1
    :goto_1
    goto :goto_0

    .line 146
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 159
    iget-object v2, p0, Lcom/opencsv/bean/FieldMapByName;->writeOrder:Ljava/util/Comparator;

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 160
    new-array v2, v3, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 147
    :cond_3
    iget-object v2, p0, Lcom/opencsv/bean/FieldMapByName;->errorLocale:Ljava/util/Locale;

    .line 149
    const-string v4, "opencsv"

    invoke-static {v4, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    .line 150
    const-string v4, "header.required.field.absent"

    invoke-virtual {v2, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 151
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    sget-object v6, Lcom/opencsv/bean/-$$Lambda$EwHr87MK7hEsolm9oeBYC5WlLmc;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$EwHr87MK7hEsolm9oeBYC5WlLmc;

    .line 152
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 153
    const-string v6, " "

    invoke-static {v6}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x1

    .line 154
    invoke-static {v6, v1}, L$r8$backportedMethods$utility$String$2$joinIterable;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 147
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "errorMessage":Ljava/lang/String;
    new-instance v3, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, v4, v0, v2}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;-><init>(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic putComplex(Ljava/lang/Object;Lcom/opencsv/bean/BeanField;)V
    .locals 0

    .line 36
    .local p0, "this":Lcom/opencsv/bean/FieldMapByName;, "Lcom/opencsv/bean/FieldMapByName<TT;>;"
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/opencsv/bean/FieldMapByName;->putComplex(Ljava/lang/String;Lcom/opencsv/bean/BeanField;)V

    return-void
.end method

.method public putComplex(Ljava/lang/String;Lcom/opencsv/bean/BeanField;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/opencsv/bean/BeanField<",
            "TT;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/opencsv/bean/FieldMapByName;, "Lcom/opencsv/bean/FieldMapByName<TT;>;"
    .local p2, "value":Lcom/opencsv/bean/BeanField;, "Lcom/opencsv/bean/BeanField<TT;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/opencsv/bean/FieldMapByName;->complexMapList:Ljava/util/List;

    new-instance v1, Lcom/opencsv/bean/RegexToBeanField;

    iget-object v2, p0, Lcom/opencsv/bean/FieldMapByName;->errorLocale:Ljava/util/Locale;

    invoke-direct {v1, p1, p2, v2}, Lcom/opencsv/bean/RegexToBeanField;-><init>(Ljava/lang/String;Lcom/opencsv/bean/BeanField;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public setColumnOrderOnWrite(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 172
    .local p0, "this":Lcom/opencsv/bean/FieldMapByName;, "Lcom/opencsv/bean/FieldMapByName<TT;>;"
    .local p1, "writeOrder":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/opencsv/bean/FieldMapByName;->writeOrder:Ljava/util/Comparator;

    .line 173
    return-void
.end method
