.class Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap$AsMapEntrySet;
.super Ljava/util/AbstractSet;
.source "AbstractMultiValuedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsMapEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;)V
    .locals 0

    .line 852
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap$AsMapEntrySet;->this$1:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 866
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap$AsMapEntrySet;->this$1:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 871
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap$AsMapEntrySet;->this$1:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;

    iget-object v0, v0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;->decoratedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 856
    new-instance v0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap$AsMapEntrySetIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap$AsMapEntrySet;->this$1:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;

    iget-object v2, v1, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;->decoratedMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap$AsMapEntrySetIterator;-><init>(Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 876
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap$AsMapEntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 879
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 880
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap$AsMapEntrySet;->this$1:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;

    iget-object v0, v0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;->this$0:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    const/4 p1, 0x1

    return p1
.end method

.method public size()I
    .locals 1

    .line 861
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap$AsMapEntrySet;->this$1:Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap$AsMap;->size()I

    move-result v0

    return v0
.end method
