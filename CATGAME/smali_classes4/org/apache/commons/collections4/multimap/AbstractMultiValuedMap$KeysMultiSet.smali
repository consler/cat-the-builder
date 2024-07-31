.class Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;
.super Lorg/apache/commons/collections4/multiset/AbstractMultiSet;
.source "AbstractMultiValuedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeysMultiSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet$MapEntryTransformer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;)V
    .locals 0

    .line 554
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.KeysMultiSet;"
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-direct {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;
    .param p2, "x1"    # Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$1;

    .line 554
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.KeysMultiSet;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 558
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.KeysMultiSet;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected createEntrySetIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TK;>;>;"
        }
    .end annotation

    .line 588
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.KeysMultiSet;"
    new-instance v0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet$MapEntryTransformer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet$MapEntryTransformer;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$1;)V

    .line 589
    .local v0, "transformer":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet$MapEntryTransformer;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.KeysMultiSet.MapEntryTransformer;"
    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->access$300(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/commons/collections4/IteratorUtils;->transformedIterator(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 578
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.KeysMultiSet;"
    const/4 v0, 0x0

    .line 579
    .local v0, "count":I
    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 580
    .local v1, "col":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v1, :cond_0

    .line 581
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 583
    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 563
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.KeysMultiSet;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 568
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.KeysMultiSet;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->size()I

    move-result v0

    return v0
.end method

.method protected uniqueElements()I
    .locals 1

    .line 573
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.KeysMultiSet;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$KeysMultiSet;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
