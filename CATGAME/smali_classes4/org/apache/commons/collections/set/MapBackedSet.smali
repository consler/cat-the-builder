.class public final Lorg/apache/commons/collections/set/MapBackedSet;
.super Ljava/lang/Object;
.source "MapBackedSet.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5d5022889a6faa8bL


# instance fields
.field protected final dummyValue:Ljava/lang/Object;

.field protected final map:Ljava/util/Map;


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    .line 85
    iput-object p2, p0, Lorg/apache/commons/collections/set/MapBackedSet;->dummyValue:Ljava/lang/Object;

    return-void
.end method

.method public static decorate(Ljava/util/Map;)Ljava/util/Set;
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-static {p0, v0}, Lorg/apache/commons/collections/set/MapBackedSet;->decorate(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static decorate(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    if-eqz p0, :cond_0

    .line 71
    new-instance v0, Lorg/apache/commons/collections/set/MapBackedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/set/MapBackedSet;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0

    .line 69
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The map must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3

    .line 110
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 111
    iget-object v1, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/commons/collections/set/MapBackedSet;->dummyValue:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object p1, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

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

    .line 116
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 117
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 119
    iget-object v2, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    iget-object v3, p0, Lorg/apache/commons/collections/set/MapBackedSet;->dummyValue:Ljava/lang/Object;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

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

    .line 139
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 125
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 126
    iget-object v1, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object p1, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

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

    .line 131
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
