.class public final Lorg/apache/commons/collections4/set/MapBackedSet;
.super Ljava/lang/Object;
.source "MapBackedSet.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5d5022889a6faa8bL


# instance fields
.field private final dummyValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TE;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;-TV;>;TV;)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 95
    iput-object p1, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->map:Ljava/util/Map;

    .line 96
    iput-object p2, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->dummyValue:Ljava/lang/Object;

    return-void

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The map must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static mapBackedSet(Ljava/util/Map;)Lorg/apache/commons/collections4/set/MapBackedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TE;-TV;>;)",
            "Lorg/apache/commons/collections4/set/MapBackedSet<",
            "TE;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 64
    invoke-static {p0, v0}, Lorg/apache/commons/collections4/set/MapBackedSet;->mapBackedSet(Ljava/util/Map;Ljava/lang/Object;)Lorg/apache/commons/collections4/set/MapBackedSet;

    move-result-object p0

    return-object p0
.end method

.method public static mapBackedSet(Ljava/util/Map;Ljava/lang/Object;)Lorg/apache/commons/collections4/set/MapBackedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TE;-TV;>;TV;)",
            "Lorg/apache/commons/collections4/set/MapBackedSet<",
            "TE;TV;>;"
        }
    .end annotation

    .line 79
    new-instance v0, Lorg/apache/commons/collections4/set/MapBackedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/set/MapBackedSet;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 128
    iget-object v1, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->map:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->dummyValue:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object p1, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 135
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 136
    iget-object v2, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->map:Ljava/util/Map;

    iget-object v3, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->dummyValue:Ljava/lang/Object;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public clear()V
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 143
    iget-object v0, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 144
    iget-object v1, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object p1, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lorg/apache/commons/collections4/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
