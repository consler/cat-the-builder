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
.method public constructor <init>()V
    .locals 0

    .line 31
    .local p0, "this":Lcom/opencsv/bean/FuzzyMappingStrategy;, "Lcom/opencsv/bean/FuzzyMappingStrategy<TT;>;"
    invoke-direct {p0}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;-><init>()V

    .line 32
    return-void
.end method

.method static synthetic lambda$captureHeader$2(Lorg/apache/commons/collections4/ListValuedMap;Ljava/util/List;Lorg/apache/commons/text/similarity/LevenshteinDistance;Ljava/lang/String;)V
    .locals 2
    .param p0, "unusedFields"    # Lorg/apache/commons/collections4/ListValuedMap;
    .param p1, "comparisons"    # Ljava/util/List;
    .param p2, "levenshtein"    # Lorg/apache/commons/text/similarity/LevenshteinDistance;
    .param p3, "h"    # Ljava/lang/String;

    .line 59
    invoke-interface {p0}, Lorg/apache/commons/collections4/ListValuedMap;->entries()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/opencsv/bean/-$$Lambda$FuzzyMappingStrategy$cVpHXiJDCT24Sl41dNbOkeUzlQU;

    invoke-direct {v1, p1, p2, p3}, Lcom/opencsv/bean/-$$Lambda$FuzzyMappingStrategy$cVpHXiJDCT24Sl41dNbOkeUzlQU;-><init>(Ljava/util/List;Lorg/apache/commons/text/similarity/LevenshteinDistance;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 64
    return-void
.end method

.method static synthetic lambda$captureHeader$3(Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;)Z
    .locals 2
    .param p0, "fc"    # Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;
    .param p1, "e"    # Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;

    .line 80
    iget-object v0, p1, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->header:Ljava/lang/String;

    iget-object v1, p0, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->header:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->field:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->field:Ljava/lang/reflect/Field;

    .line 81
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 80
    :goto_1
    return v0
.end method

.method static synthetic lambda$null$1(Ljava/util/List;Lorg/apache/commons/text/similarity/LevenshteinDistance;Ljava/lang/String;Ljava/util/Map$Entry;)V
    .locals 4
    .param p0, "comparisons"    # Ljava/util/List;
    .param p1, "levenshtein"    # Lorg/apache/commons/text/similarity/LevenshteinDistance;
    .param p2, "h"    # Ljava/lang/String;
    .param p3, "f"    # Ljava/util/Map$Entry;

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

    move-result-object v1

    .line 62
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 60
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method


# virtual methods
.method public captureHeader(Lcom/opencsv/CSVReader;)V
    .locals 20
    .param p1, "reader"    # Lcom/opencsv/CSVReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/opencsv/bean/FuzzyMappingStrategy;, "Lcom/opencsv/bean/FuzzyMappingStrategy<TT;>;"
    move-object/from16 v6, p0

    invoke-super/range {p0 .. p1}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->captureHeader(Lcom/opencsv/CSVReader;)V

    .line 47
    iget-object v0, v6, Lcom/opencsv/bean/FuzzyMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0}, Lcom/opencsv/bean/HeaderIndex;->getHeaderIndex()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/opencsv/bean/-$$Lambda$ysW_fvT8H1f4ly8te8Kd64ujJxw;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ysW_fvT8H1f4ly8te8Kd64ujJxw;

    .line 48
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/opencsv/bean/-$$Lambda$FuzzyMappingStrategy$IBuk66QwKqhuUthPQ8oVAu4MZaQ;

    invoke-direct {v1, v6}, Lcom/opencsv/bean/-$$Lambda$FuzzyMappingStrategy$IBuk66QwKqhuUthPQ8oVAu4MZaQ;-><init>(Lcom/opencsv/bean/FuzzyMappingStrategy;)V

    .line 49
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 50
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/Set;

    .line 53
    .local v7, "unusedHeaders":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/opencsv/bean/FuzzyMappingStrategy;->partitionFields()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/apache/commons/collections4/ListValuedMap;

    .line 56
    .local v8, "unusedFields":Lorg/apache/commons/collections4/ListValuedMap;, "Lorg/apache/commons/collections4/ListValuedMap<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;"
    invoke-static {}, Lorg/apache/commons/text/similarity/LevenshteinDistance;->getDefaultInstance()Lorg/apache/commons/text/similarity/LevenshteinDistance;

    move-result-object v9

    .line 57
    .local v9, "levenshtein":Lorg/apache/commons/text/similarity/LevenshteinDistance;
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v10, v0

    .line 58
    .local v10, "comparisons":Ljava/util/List;, "Ljava/util/List<Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;>;"
    new-instance v0, Lcom/opencsv/bean/-$$Lambda$FuzzyMappingStrategy$MHcCUYwpTl2rOvkgOF_0R7I-R-w;

    invoke-direct {v0, v8, v10, v9}, Lcom/opencsv/bean/-$$Lambda$FuzzyMappingStrategy$MHcCUYwpTl2rOvkgOF_0R7I-R-w;-><init>(Lorg/apache/commons/collections4/ListValuedMap;Ljava/util/List;Lorg/apache/commons/text/similarity/LevenshteinDistance;)V

    invoke-interface {v7, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 65
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 68
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;

    .line 72
    .local v11, "fc":Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;
    iget-object v1, v11, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->field:Ljava/lang/reflect/Field;

    iget-object v0, v11, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->field:Ljava/lang/reflect/Field;

    .line 73
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 72
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/opencsv/bean/FuzzyMappingStrategy;->determineConverter(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/opencsv/bean/CsvConverter;

    move-result-object v0

    .line 74
    .local v0, "converter":Lcom/opencsv/bean/CsvConverter;
    iget-object v1, v6, Lcom/opencsv/bean/FuzzyMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    iget-object v2, v11, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->header:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/opencsv/bean/BeanFieldSingleValue;

    iget-object v13, v11, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->type:Ljava/lang/Class;

    iget-object v14, v11, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->field:Ljava/lang/reflect/Field;

    const/4 v15, 0x0

    iget-object v4, v6, Lcom/opencsv/bean/FuzzyMappingStrategy;->errorLocale:Ljava/util/Locale;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v0

    invoke-direct/range {v12 .. v19}, Lcom/opencsv/bean/BeanFieldSingleValue;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;ZLjava/util/Locale;Lcom/opencsv/bean/CsvConverter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/opencsv/bean/FieldMapByName;->put(Ljava/lang/Comparable;Lcom/opencsv/bean/BeanField;)Lcom/opencsv/bean/BeanField;

    .line 79
    new-instance v1, Lcom/opencsv/bean/-$$Lambda$FuzzyMappingStrategy$uR3Dmy2VFe74HOrfIHs-EAthMxY;

    invoke-direct {v1, v11}, Lcom/opencsv/bean/-$$Lambda$FuzzyMappingStrategy$uR3Dmy2VFe74HOrfIHs-EAthMxY;-><init>(Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;)V

    invoke-interface {v10, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 82
    .end local v0    # "converter":Lcom/opencsv/bean/CsvConverter;
    .end local v11    # "fc":Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;
    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public synthetic lambda$captureHeader$0$FuzzyMappingStrategy(Ljava/lang/String;)Z
    .locals 2
    .param p1, "k"    # Ljava/lang/String;

    .line 49
    .local p0, "this":Lcom/opencsv/bean/FuzzyMappingStrategy;, "Lcom/opencsv/bean/FuzzyMappingStrategy<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/FuzzyMappingStrategy;->fieldMap:Lcom/opencsv/bean/FieldMapByName;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/opencsv/bean/FieldMapByName;->get(Ljava/lang/Comparable;)Lcom/opencsv/bean/BeanField;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    .line 40
    .local p0, "this":Lcom/opencsv/bean/FuzzyMappingStrategy;, "Lcom/opencsv/bean/FuzzyMappingStrategy<TT;>;"
    .local p1, "fields":Lorg/apache/commons/collections4/ListValuedMap;, "Lorg/apache/commons/collections4/ListValuedMap<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;"
    return-void
.end method
