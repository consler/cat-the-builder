.class public Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;
.super Ljava/lang/Object;
.source "AbstractIterableGetMapDecorator.java"

# interfaces
.implements Lorg/apache/commons/collections4/IterableGet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/IterableGet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field transient map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 56
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;, "Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;, "Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-eqz p1, :cond_0

    .line 49
    iput-object p1, p0, Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;->map:Ljava/util/Map;

    .line 50
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Map must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 70
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;, "Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 75
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;, "Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected decorated()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;, "Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;->map:Ljava/util/Map;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;, "Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 124
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;, "Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator<TK;TV;>;"
    if-ne p1, p0, :cond_0

    .line 125
    const/4 v0, 0x1

    return v0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 85
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;, "Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 132
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;, "Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 95
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;, "Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

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

    .line 100
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;, "Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/MapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;, "Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;, "Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 105
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;, "Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 137
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;, "Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;, "Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
