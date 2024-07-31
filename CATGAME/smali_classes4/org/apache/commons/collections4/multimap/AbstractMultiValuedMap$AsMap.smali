.class Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;
.super Ljava/util/AbstractMap;
.source "AbstractMultiValuedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap$AsMapEntrySetIterator;,
        Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap$AsMapEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final transient decoratedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 783
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.AsMap;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 784
    iput-object p2, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;->decoratedMap:Ljava/util/Map;

    .line 785
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 849
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->clear()V

    .line 850
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 794
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;->decoratedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 789
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.AsMap;"
    new-instance v0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap$AsMapEntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap$AsMapEntrySet;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 834
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.AsMap;"
    if-eq p0, p1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;->decoratedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

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

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 780
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.AsMap;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 799
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;->decoratedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 800
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 801
    const/4 v1, 0x0

    return-object v1

    .line 805
    :cond_0
    move-object v1, p1

    .line 806
    .local v1, "k":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v2, v1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->wrappedCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method public hashCode()I
    .locals 1

    .line 839
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;->decoratedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 811
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 780
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.AsMap;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 821
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;->decoratedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 822
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 823
    const/4 v1, 0x0

    return-object v1

    .line 826
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->createCollection()Ljava/util/Collection;

    move-result-object v1

    .line 827
    .local v1, "output":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 828
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 829
    return-object v1
.end method

.method public size()I
    .locals 1

    .line 816
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;->decoratedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 844
    .local p0, "this":Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;, "Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;->decoratedMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
