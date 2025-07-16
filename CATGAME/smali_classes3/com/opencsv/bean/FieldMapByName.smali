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
.method public static synthetic $r8$lambda$3kEwb89y_3mqdjFd9lZCoRLWtdA()Ljava/util/LinkedList;
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public static synthetic $r8$lambda$MuwDFrbA3G-IcKVjEbH-HfGjxvU(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/opencsv/bean/AbstractFieldMap;-><init>(Ljava/util/Locale;)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/opencsv/bean/FieldMapByName;->writeOrder:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic lambda$determineMissingRequiredHeaders$0(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 70
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/opencsv/bean/BeanField;

    invoke-interface {p0}, Lcom/opencsv/bean/BeanField;->isRequired()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$determineMissingRequiredHeaders$1(Lcom/opencsv/bean/RegexToBeanField;)Z
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/opencsv/bean/RegexToBeanField;->getBeanField()Lcom/opencsv/bean/BeanField;

    move-result-object p0

    invoke-interface {p0}, Lcom/opencsv/bean/BeanField;->isRequired()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public determineMissingRequiredHeaders([Ljava/lang/String;)Ljava/util/List;
    .locals 10
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
    iget-object v0, p0, Lcom/opencsv/bean/FieldMapByName;->simpleMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/opencsv/bean/FieldMapByName$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/opencsv/bean/FieldMapByName$$ExternalSyntheticLambda0;-><init>()V

    .line 70
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/opencsv/bean/FieldMapByName$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/opencsv/bean/FieldMapByName$$ExternalSyntheticLambda1;-><init>()V

    .line 71
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/opencsv/bean/FieldMapByName$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/opencsv/bean/FieldMapByName$$ExternalSyntheticLambda2;-><init>()V

    .line 72
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 73
    iget-object v1, p0, Lcom/opencsv/bean/FieldMapByName;->complexMapList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/opencsv/bean/FieldMapByName$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/opencsv/bean/FieldMapByName$$ExternalSyntheticLambda3;-><init>()V

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
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_2

    aget-object v6, p1, v4

    .line 79
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 80
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    move v8, v3

    :cond_0
    :goto_1
    if-nez v8, :cond_1

    .line 82
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 83
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/opencsv/bean/ComplexFieldMapEntry;

    .line 84
    invoke-interface {v9, v6}, Lcom/opencsv/bean/ComplexFieldMapEntry;->contains(Ljava/lang/Comparable;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 86
    invoke-interface {v7}, Ljava/util/ListIterator;->remove()V

    move v8, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    :cond_2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 94
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    new-instance v4, Lcom/opencsv/bean/FieldMapByNameEntry;

    iget-object v6, p0, Lcom/opencsv/bean/FieldMapByName;->simpleMap:Ljava/util/SortedMap;

    invoke-interface {v6, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/opencsv/bean/BeanField;

    invoke-direct {v4, v2, v6, v3}, Lcom/opencsv/bean/FieldMapByNameEntry;-><init>(Ljava/lang/String;Lcom/opencsv/bean/BeanField;Z)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 97
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opencsv/bean/ComplexFieldMapEntry;

    .line 98
    new-instance v2, Lcom/opencsv/bean/FieldMapByNameEntry;

    invoke-interface {v1}, Lcom/opencsv/bean/ComplexFieldMapEntry;->getInitializer()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Lcom/opencsv/bean/ComplexFieldMapEntry;->getBeanField()Lcom/opencsv/bean/BeanField;

    move-result-object v1

    invoke-direct {v2, v3, v1, v5}, Lcom/opencsv/bean/FieldMapByNameEntry;-><init>(Ljava/lang/String;Lcom/opencsv/bean/BeanField;Z)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    return-object p1
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
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/opencsv/bean/FieldMapByName;->simpleMap:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    iget-object v2, p0, Lcom/opencsv/bean/FieldMapByName;->complexMapList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/opencsv/bean/ComplexFieldMapEntry;

    .line 131
    invoke-interface {v3}, Lcom/opencsv/bean/ComplexFieldMapEntry;->getBeanField()Lcom/opencsv/bean/BeanField;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/opencsv/bean/BeanField;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/collections4/MultiValuedMap;

    if-eqz v4, :cond_1

    .line 132
    invoke-interface {v4}, Lorg/apache/commons/collections4/MultiValuedMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 133
    invoke-interface {v4}, Lorg/apache/commons/collections4/MultiValuedMap;->entries()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/opencsv/bean/FieldMapByName$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/opencsv/bean/FieldMapByName$$ExternalSyntheticLambda1;-><init>()V

    .line 134
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/opencsv/bean/FieldMapByName$$ExternalSyntheticLambda4;

    invoke-direct {v5, v3}, Lcom/opencsv/bean/FieldMapByName$$ExternalSyntheticLambda4;-><init>(Lcom/opencsv/bean/ComplexFieldMapEntry;)V

    .line 135
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 136
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 133
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 139
    :cond_1
    invoke-interface {v3}, Lcom/opencsv/bean/ComplexFieldMapEntry;->getBeanField()Lcom/opencsv/bean/BeanField;

    move-result-object v4

    invoke-interface {v4}, Lcom/opencsv/bean/BeanField;->isRequired()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    invoke-interface {v3}, Lcom/opencsv/bean/ComplexFieldMapEntry;->getBeanField()Lcom/opencsv/bean/BeanField;

    move-result-object v3

    invoke-interface {v3}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 159
    iget-object p1, p0, Lcom/opencsv/bean/FieldMapByName;->writeOrder:Ljava/util/Comparator;

    invoke-interface {v1, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    new-array p1, v3, [Ljava/lang/String;

    .line 160
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_3
    const-string v2, "opencsv"

    .line 147
    iget-object v4, p0, Lcom/opencsv/bean/FieldMapByName;->errorLocale:Ljava/util/Locale;

    .line 149
    invoke-static {v2, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    const-string v4, "header.required.field.absent"

    .line 150
    invoke-virtual {v2, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 151
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/opencsv/bean/FieldMapByName$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/opencsv/bean/FieldMapByName$$ExternalSyntheticLambda5;-><init>()V

    .line 152
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    const-string v6, " "

    .line 153
    invoke-static {v6}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x1

    .line 154
    invoke-static {v6, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 147
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 155
    new-instance v2, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v2, p1, v0, v1}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;-><init>(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic putComplex(Ljava/lang/Object;Lcom/opencsv/bean/BeanField;)V
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/opencsv/bean/FieldMapByName;->putComplex(Ljava/lang/String;Lcom/opencsv/bean/BeanField;)V

    return-void
.end method

.method public putComplex(Ljava/lang/String;Lcom/opencsv/bean/BeanField;)V
    .locals 3
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
    iget-object v0, p0, Lcom/opencsv/bean/FieldMapByName;->complexMapList:Ljava/util/List;

    new-instance v1, Lcom/opencsv/bean/RegexToBeanField;

    iget-object v2, p0, Lcom/opencsv/bean/FieldMapByName;->errorLocale:Ljava/util/Locale;

    invoke-direct {v1, p1, p2, v2}, Lcom/opencsv/bean/RegexToBeanField;-><init>(Ljava/lang/String;Lcom/opencsv/bean/BeanField;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
    iput-object p1, p0, Lcom/opencsv/bean/FieldMapByName;->writeOrder:Ljava/util/Comparator;

    return-void
.end method
