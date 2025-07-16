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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/Get;Lorg/apache/commons/collections4/SplitMapUtils$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;-><init>(Lorg/apache/commons/collections4/Get;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Get;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Get;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
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
    iget-object v0, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    invoke-interface {v0}, Lorg/apache/commons/collections4/Get;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 79
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;

    iget-object p1, p1, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    iget-object v1, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Get;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x15764b10

    or-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 94
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
    iget-object v0, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    instance-of v1, v0, Lorg/apache/commons/collections4/IterableGet;

    if-eqz v1, :cond_0

    .line 131
    check-cast v0, Lorg/apache/commons/collections4/IterableGet;

    invoke-interface {v0}, Lorg/apache/commons/collections4/IterableGet;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;

    iget-object v1, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    invoke-interface {v1}, Lorg/apache/commons/collections4/Get;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;-><init>(Ljava/util/Set;)V

    .line 135
    :goto_0
    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableMapIterator;->unmodifiableMapIterator(Lorg/apache/commons/collections4/MapIterator;)Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 104
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 109
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Get;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 119
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
    iget-object v0, p0, Lorg/apache/commons/collections4/SplitMapUtils$WrappedGet;->get:Lorg/apache/commons/collections4/Get;

    invoke-interface {v0}, Lorg/apache/commons/collections4/Get;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/collection/UnmodifiableCollection;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
