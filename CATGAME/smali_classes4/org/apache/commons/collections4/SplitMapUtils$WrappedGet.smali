.class Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;
.super Ljava/lang/Object;
.source "SplitMapUtils.java"

# interfaces
.implements Lorg/apache/commons/collections4/IterableMap;
.implements Lorg/apache/commons/collections4/Unmodifiable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/SplitMapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedGet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/IterableMap<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;"
    }
.end annotation


# instance fields
.field private final get:Lorg/apache/commons/collections4/Get;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Get<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/Get;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Get<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;, "Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet<TK;TV;>;"
    .local p1, "get":Lorg/apache/commons/collections4/Get;, "Lorg/apache/commons/collections4/Get<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/Get;Lorg/apache/commons/collections4/SplitMapUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/collections4/Get;
    .param p2, "x1"    # Lorg/apache/commons/collections4/SplitMapUtils$1;

    .line 47
    .local p0, "this":Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;, "Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;-><init>(Lorg/apache/commons/collections4/Get;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 56
    .local p0, "this":Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;, "Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 61
    .local p0, "this":Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;, "Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Get;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 66
    .local p0, "this":Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;, "Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Get;->containsValue(Ljava/lang/Object;)Z

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
            "TK;TV;>;>;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;, "Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    invoke-interface {v0}, Lorg/apache/commons/collections4/Get;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .line 76
    .local p0, "this":Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;, "Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 77
    return v0

    .line 79
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;

    iget-object v1, v1, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    iget-object v2, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
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

    .line 84
    .local p0, "this":Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;, "Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Get;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 89
    .local p0, "this":Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;, "Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet<TK;TV;>;"
    const-string v0, "WrappedGet"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 94
    .local p0, "this":Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;, "Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    invoke-interface {v0}, Lorg/apache/commons/collections4/Get;->isEmpty()Z

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

    .line 99
    .local p0, "this":Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;, "Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    invoke-interface {v0}, Lorg/apache/commons/collections4/Get;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

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

    .line 130
    .local p0, "this":Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;, "Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    instance-of v1, v0, Lorg/apache/commons/collections4/IterableGet;

    if-eqz v1, :cond_0

    .line 131
    check-cast v0, Lorg/apache/commons/collections4/IterableGet;

    invoke-interface {v0}, Lorg/apache/commons/collections4/IterableGet;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    .local v0, "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<TK;TV;>;"
    goto :goto_0

    .line 133
    .end local v0    # "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<TK;TV;>;"
    :cond_0
    new-instance v1, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;

    invoke-interface {v0}, Lorg/apache/commons/collections4/Get;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;-><init>(Ljava/util/Set;)V

    move-object v0, v1

    .line 135
    .restart local v0    # "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<TK;TV;>;"
    :goto_0
    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableMapIterator;->unmodifiableMapIterator(Lorg/apache/commons/collections4/MapIterator;)Lorg/apache/commons/collections4/MapIterator;

    move-result-object v1

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;, "Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;, "Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet<TK;TV;>;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 114
    .local p0, "this":Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;, "Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Get;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 119
    .local p0, "this":Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;, "Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    invoke-interface {v0}, Lorg/apache/commons/collections4/Get;->size()I

    move-result v0

    return v0
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

    .line 124
    .local p0, "this":Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;, "Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    invoke-interface {v0}, Lorg/apache/commons/collections4/Get;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/collection/UnmodifiableCollection;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
