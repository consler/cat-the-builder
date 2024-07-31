.class public abstract Lcom/opencsv/bean/AbstractFieldMap;
.super Ljava/lang/Object;
.source "AbstractFieldMap.java"

# interfaces
.implements Lcom/opencsv/bean/FieldMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "K::",
        "Ljava/lang/Comparable<",
        "TK;>;C::",
        "Lcom/opencsv/bean/ComplexFieldMapEntry<",
        "TI;TK;TT;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/opencsv/bean/FieldMap<",
        "TI;TK;TC;TT;>;"
    }
.end annotation


# instance fields
.field protected final complexMapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TC;>;"
        }
    .end annotation
.end field

.field protected errorLocale:Ljava/util/Locale;

.field protected final simpleMap:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "TK;",
            "Lcom/opencsv/bean/BeanField<",
            "TT;TK;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "errorLocale"    # Ljava/util/Locale;

    .line 62
    .local p0, "this":Lcom/opencsv/bean/AbstractFieldMap;, "Lcom/opencsv/bean/AbstractFieldMap<TI;TK;TC;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/AbstractFieldMap;->simpleMap:Ljava/util/SortedMap;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/AbstractFieldMap;->complexMapList:Ljava/util/List;

    .line 63
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/opencsv/bean/AbstractFieldMap;->errorLocale:Ljava/util/Locale;

    .line 64
    return-void
.end method

.method static synthetic lambda$get$0(Ljava/lang/Comparable;Lcom/opencsv/bean/ComplexFieldMapEntry;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/Comparable;
    .param p1, "r"    # Lcom/opencsv/bean/ComplexFieldMapEntry;

    .line 71
    invoke-interface {p1, p0}, Lcom/opencsv/bean/ComplexFieldMapEntry;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$values$1(Ljava/util/List;Lcom/opencsv/bean/ComplexFieldMapEntry;)V
    .locals 1
    .param p0, "l"    # Ljava/util/List;
    .param p1, "r"    # Lcom/opencsv/bean/ComplexFieldMapEntry;

    .line 89
    invoke-interface {p1}, Lcom/opencsv/bean/ComplexFieldMapEntry;->getBeanField()Lcom/opencsv/bean/BeanField;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Comparable;)Lcom/opencsv/bean/BeanField;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/opencsv/bean/BeanField<",
            "TT;TK;>;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/opencsv/bean/AbstractFieldMap;, "Lcom/opencsv/bean/AbstractFieldMap<TI;TK;TC;TT;>;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    iget-object v0, p0, Lcom/opencsv/bean/AbstractFieldMap;->simpleMap:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/BeanField;

    .line 69
    .local v0, "f":Lcom/opencsv/bean/BeanField;, "Lcom/opencsv/bean/BeanField<TT;TK;>;"
    if-nez v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/opencsv/bean/AbstractFieldMap;->complexMapList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/opencsv/bean/-$$Lambda$AbstractFieldMap$4mHO7r9U0vVLCtgT-jcYQ_KWDtU;

    invoke-direct {v2, p1}, Lcom/opencsv/bean/-$$Lambda$AbstractFieldMap$4mHO7r9U0vVLCtgT-jcYQ_KWDtU;-><init>(Ljava/lang/Comparable;)V

    .line 71
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/opencsv/bean/-$$Lambda$WJbmvJRnhhb9_-qU1JiVCRYpm2A;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$WJbmvJRnhhb9_-qU1JiVCRYpm2A;

    .line 72
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 73
    invoke-interface {v1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/opencsv/bean/BeanField;

    .line 77
    :cond_0
    return-object v0
.end method

.method public synthetic lambda$setErrorLocale$2$AbstractFieldMap(Lcom/opencsv/bean/ComplexFieldMapEntry;)V
    .locals 1
    .param p1, "e"    # Lcom/opencsv/bean/ComplexFieldMapEntry;

    .line 96
    .local p0, "this":Lcom/opencsv/bean/AbstractFieldMap;, "Lcom/opencsv/bean/AbstractFieldMap<TI;TK;TC;TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/AbstractFieldMap;->errorLocale:Ljava/util/Locale;

    invoke-interface {p1, v0}, Lcom/opencsv/bean/ComplexFieldMapEntry;->setErrorLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public put(Ljava/lang/Comparable;Lcom/opencsv/bean/BeanField;)Lcom/opencsv/bean/BeanField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/opencsv/bean/BeanField<",
            "TT;TK;>;)",
            "Lcom/opencsv/bean/BeanField<",
            "TT;TK;>;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/opencsv/bean/AbstractFieldMap;, "Lcom/opencsv/bean/AbstractFieldMap<TI;TK;TC;TT;>;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    .local p2, "value":Lcom/opencsv/bean/BeanField;, "Lcom/opencsv/bean/BeanField<TT;TK;>;"
    iget-object v0, p0, Lcom/opencsv/bean/AbstractFieldMap;->simpleMap:Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/BeanField;

    return-object v0
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .locals 2
    .param p1, "errorLocale"    # Ljava/util/Locale;

    .line 95
    .local p0, "this":Lcom/opencsv/bean/AbstractFieldMap;, "Lcom/opencsv/bean/AbstractFieldMap<TI;TK;TC;TT;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/opencsv/bean/AbstractFieldMap;->errorLocale:Ljava/util/Locale;

    .line 96
    iget-object v0, p0, Lcom/opencsv/bean/AbstractFieldMap;->complexMapList:Ljava/util/List;

    new-instance v1, Lcom/opencsv/bean/-$$Lambda$AbstractFieldMap$vBzRu1oTQ3KCM_JOGy8lTSIThZU;

    invoke-direct {v1, p0}, Lcom/opencsv/bean/-$$Lambda$AbstractFieldMap$vBzRu1oTQ3KCM_JOGy8lTSIThZU;-><init>(Lcom/opencsv/bean/AbstractFieldMap;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 97
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/opencsv/bean/BeanField<",
            "TT;TK;>;>;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcom/opencsv/bean/AbstractFieldMap;, "Lcom/opencsv/bean/AbstractFieldMap<TI;TK;TC;TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/opencsv/bean/AbstractFieldMap;->simpleMap:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/opencsv/bean/AbstractFieldMap;->complexMapList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Lcom/opencsv/bean/BeanField<TT;TK;>;>;"
    iget-object v1, p0, Lcom/opencsv/bean/AbstractFieldMap;->simpleMap:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    iget-object v1, p0, Lcom/opencsv/bean/AbstractFieldMap;->complexMapList:Ljava/util/List;

    new-instance v2, Lcom/opencsv/bean/-$$Lambda$AbstractFieldMap$BsZ3pNBsTLyQm_puPgR4n_dQxhg;

    invoke-direct {v2, v0}, Lcom/opencsv/bean/-$$Lambda$AbstractFieldMap$BsZ3pNBsTLyQm_puPgR4n_dQxhg;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 90
    return-object v0
.end method
