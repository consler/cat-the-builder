.class public Lcom/opencsv/bean/FuzzyMappingStrategy;
.super Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;
.source "FuzzyMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/opencsv/bean/HeaderColumnNameMappingStrategy<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$RUgTMKBFSM5JmQYe-scT_4CThWo(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;-><init>()V

    return-void
.end method

.method static synthetic lambda$captureHeader$2(Lorg/apache/commons/collections4/ListValuedMap;Ljava/util/List;Lorg/apache/commons/text/similarity/LevenshteinDistance;Ljava/lang/String;)V
    .locals 1

    .line 59
    invoke-interface {p0}, Lorg/apache/commons/collections4/ListValuedMap;->entries()Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Lcom/opencsv/bean/FuzzyMappingStrategy$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2, p3}, Lcom/opencsv/bean/FuzzyMappingStrategy$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;Lorg/apache/commons/text/similarity/LevenshteinDistance;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$captureHeader$3(Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;)Z
    .locals 2

    .line 80
    iget-object v0, p1, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->header:Ljava/lang/String;

    iget-object v1, p0, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->header:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->field:Ljava/lang/reflect/Field;

    iget-object p0, p0, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->field:Ljava/lang/reflect/Field;

    .line 81
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$null$1(Ljava/util/List;Lorg/apache/commons/text/similarity/LevenshteinDistance;Ljava/lang/String;Ljava/util/Map$Entry;)V
    .locals 3

    .line 60
    new-instance v0, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;

    .line 61
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/text/similarity/LevenshteinDistance;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    .line 62
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/reflect/Field;

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 60
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public captureHeader(Lcom/opencsv/CSVReader;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 44
    invoke-super/range {p0 .. p1}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->captureHeader(Lcom/opencsv/CSVReader;)V

    .line 47
    iget-object v0, v6, Lcom/opencsv/bean/FuzzyMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0}, Lcom/opencsv/bean/HeaderIndex;->getHeaderIndex()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/opencsv/bean/FuzzyMappingStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/opencsv/bean/FuzzyMappingStrategy$$ExternalSyntheticLambda0;-><init>()V

    .line 48
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/opencsv/bean/FuzzyMappingStrategy$$ExternalSyntheticLambda1;

    invoke-direct {v1, v6}, Lcom/opencsv/bean/FuzzyMappingStrategy$$ExternalSyntheticLambda1;-><init>(Lcom/opencsv/bean/FuzzyMappingStrategy;)V

    .line 49
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 50
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/opencsv/bean/FuzzyMappingStrategy;->partitionFields()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections4/ListValuedMap;

    .line 56
    invoke-static {}, Lorg/apache/commons/text/similarity/LevenshteinDistance;->getDefaultInstance()Lorg/apache/commons/text/similarity/LevenshteinDistance;

    move-result-object v2

    .line 57
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 58
    new-instance v3, Lcom/opencsv/bean/FuzzyMappingStrategy$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, v7, v2}, Lcom/opencsv/bean/FuzzyMappingStrategy$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/collections4/ListValuedMap;Ljava/util/List;Lorg/apache/commons/text/similarity/LevenshteinDistance;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 65
    invoke-interface {v7, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 68
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 69
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;

    .line 72
    iget-object v1, v8, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->field:Ljava/lang/reflect/Field;

    iget-object v0, v8, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->field:Ljava/lang/reflect/Field;

    .line 73
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    .line 72
    invoke-virtual/range {v0 .. v5}, Lcom/opencsv/bean/FuzzyMappingStrategy;->determineConverter(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/opencsv/bean/CsvConverter;

    move-result-object v14

    .line 74
    iget-object v0, v6, Lcom/opencsv/bean/FuzzyMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    iget-object v1, v8, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->header:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/opencsv/bean/BeanFieldSingleValue;

    iget-object v10, v8, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->type:Ljava/lang/Class;

    iget-object v11, v8, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->field:Ljava/lang/reflect/Field;

    const/4 v12, 0x0

    iget-object v13, v6, Lcom/opencsv/bean/FuzzyMappingStrategy;->errorLocale:Ljava/util/Locale;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lcom/opencsv/bean/BeanFieldSingleValue;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/opencsv/bean/FieldMapByName;->put(Ljava/lang/Comparable;Lcom/opencsv/bean/BeanField;)Lcom/opencsv/bean/BeanField;

    .line 79
    new-instance v0, Lcom/opencsv/bean/FuzzyMappingStrategy$$ExternalSyntheticLambda3;

    invoke-direct {v0, v8}, Lcom/opencsv/bean/FuzzyMappingStrategy$$ExternalSyntheticLambda3;-><init>(Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;)V

    invoke-interface {v7, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic lambda$captureHeader$0$com-opencsv-bean-FuzzyMappingStrategy(Ljava/lang/String;)Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/opencsv/bean/FuzzyMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/opencsv/bean/FieldMapByName;->get(Ljava/lang/Comparable;)Lcom/opencsv/bean/BeanField;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected loadUnadornedFieldMap(Lorg/apache/commons/collections4/ListValuedMap;)V
    .locals 0
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

    return-void
.end method
