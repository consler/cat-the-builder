.class public Lorg/apache/commons/collections4/MultiMapUtils;
.super Ljava/lang/Object;
.source "MultiMapUtils.java"


# static fields
.field public static final EMPTY_MULTI_VALUED_MAP:Lorg/apache/commons/collections4/MultiValuedMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>(II)V

    .line 56
    invoke-static {v0}, Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;->unmodifiableMultiValuedMap(Lorg/apache/commons/collections4/MultiValuedMap;)Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections4/MultiMapUtils;->EMPTY_MULTI_VALUED_MAP:Lorg/apache/commons/collections4/MultiValuedMap;

    .line 55
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emptyIfNull(Lorg/apache/commons/collections4/MultiValuedMap;)Lorg/apache/commons/collections4/MultiValuedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 83
    .local p0, "map":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<TK;TV;>;"
    if-nez p0, :cond_0

    sget-object v0, Lorg/apache/commons/collections4/MultiMapUtils;->EMPTY_MULTI_VALUED_MAP:Lorg/apache/commons/collections4/MultiValuedMap;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static emptyMultiValuedMap()Lorg/apache/commons/collections4/MultiValuedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 67
    sget-object v0, Lorg/apache/commons/collections4/MultiMapUtils;->EMPTY_MULTI_VALUED_MAP:Lorg/apache/commons/collections4/MultiValuedMap;

    return-object v0
.end method

.method public static getCollection(Lorg/apache/commons/collections4/MultiValuedMap;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "TK;TV;>;TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 111
    .local p0, "map":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p0, :cond_0

    .line 112
    invoke-interface {p0, p1}, Lorg/apache/commons/collections4/MultiValuedMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 114
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getValuesAsBag(Lorg/apache/commons/collections4/MultiValuedMap;Ljava/lang/Object;)Lorg/apache/commons/collections4/Bag;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "TK;TV;>;TK;)",
            "Lorg/apache/commons/collections4/Bag<",
            "TV;>;"
        }
    .end annotation

    .line 170
    .local p0, "map":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p0, :cond_1

    .line 171
    invoke-interface {p0, p1}, Lorg/apache/commons/collections4/MultiValuedMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 172
    .local v0, "col":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    instance-of v1, v0, Lorg/apache/commons/collections4/Bag;

    if-eqz v1, :cond_0

    .line 173
    move-object v1, v0

    check-cast v1, Lorg/apache/commons/collections4/Bag;

    return-object v1

    .line 175
    :cond_0
    new-instance v1, Lorg/apache/commons/collections4/bag/HashBag;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections4/bag/HashBag;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 177
    .end local v0    # "col":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getValuesAsList(Lorg/apache/commons/collections4/MultiValuedMap;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "TK;TV;>;TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 130
    .local p0, "map":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p0, :cond_1

    .line 131
    invoke-interface {p0, p1}, Lorg/apache/commons/collections4/MultiValuedMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 132
    .local v0, "col":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 133
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    return-object v1

    .line 135
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 137
    .end local v0    # "col":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getValuesAsSet(Lorg/apache/commons/collections4/MultiValuedMap;Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "TK;TV;>;TK;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 150
    .local p0, "map":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p0, :cond_1

    .line 151
    invoke-interface {p0, p1}, Lorg/apache/commons/collections4/MultiValuedMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 152
    .local v0, "col":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    instance-of v1, v0, Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 153
    move-object v1, v0

    check-cast v1, Ljava/util/Set;

    return-object v1

    .line 155
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 157
    .end local v0    # "col":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isEmpty(Lorg/apache/commons/collections4/MultiValuedMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "**>;)Z"
        }
    .end annotation

    .line 95
    .local p0, "map":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<**>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/apache/commons/collections4/MultiValuedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static newListValuedHashMap()Lorg/apache/commons/collections4/ListValuedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/ListValuedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 192
    new-instance v0, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>()V

    return-object v0
.end method

.method public static newSetValuedHashMap()Lorg/apache/commons/collections4/SetValuedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/SetValuedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 204
    new-instance v0, Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;-><init>()V

    return-object v0
.end method

.method public static transformedMultiValuedMap(Lorg/apache/commons/collections4/MultiValuedMap;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/MultiValuedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TK;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TV;+TV;>;)",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 251
    .local p0, "map":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<TK;TV;>;"
    .local p1, "keyTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TK;+TK;>;"
    .local p2, "valueTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TV;+TV;>;"
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;->transformingMap(Lorg/apache/commons/collections4/MultiValuedMap;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/multimap/TransformedMultiValuedMap;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableMultiValuedMap(Lorg/apache/commons/collections4/MultiValuedMap;)Lorg/apache/commons/collections4/MultiValuedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "+TK;+TV;>;)",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 222
    .local p0, "map":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<+TK;+TV;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;->unmodifiableMultiValuedMap(Lorg/apache/commons/collections4/MultiValuedMap;)Lorg/apache/commons/collections4/multimap/UnmodifiableMultiValuedMap;

    move-result-object v0

    return-object v0
.end method
