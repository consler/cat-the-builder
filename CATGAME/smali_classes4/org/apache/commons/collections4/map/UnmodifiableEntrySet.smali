.class public final Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;
.super Lorg/apache/commons/collections4/set/AbstractSetDecorator;
.source "UnmodifiableEntrySet.java"

# interfaces
.implements Lorg/apache/commons/collections4/Unmodifiable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntry;,
        Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntrySetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/set/AbstractSetDecorator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x174ab5b03b1856e1L


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;, "Lorg/apache/commons/collections4/map/UnmodifiableEntrySet<TK;TV;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/set/AbstractSetDecorator;-><init>(Ljava/util/Set;)V

    .line 74
    return-void
.end method

.method public static unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 59
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    .line 60
    return-object p0

    .line 62
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;, "Lorg/apache/commons/collections4/map/UnmodifiableEntrySet<TK;TV;>;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;, "Lorg/apache/commons/collections4/map/UnmodifiableEntrySet<TK;TV;>;"
    .local p1, "object":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;, "Lorg/apache/commons/collections4/map/UnmodifiableEntrySet<TK;TV;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 89
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;, "Lorg/apache/commons/collections4/map/UnmodifiableEntrySet<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;, "Lorg/apache/commons/collections4/map/UnmodifiableEntrySet<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntrySetIterator;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->decorated()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntrySetIterator;-><init>(Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 94
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;, "Lorg/apache/commons/collections4/map/UnmodifiableEntrySet<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 107
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;, "Lorg/apache/commons/collections4/map/UnmodifiableEntrySet<TK;TV;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;, "Lorg/apache/commons/collections4/map/UnmodifiableEntrySet<TK;TV;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 112
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;, "Lorg/apache/commons/collections4/map/UnmodifiableEntrySet<TK;TV;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 124
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;, "Lorg/apache/commons/collections4/map/UnmodifiableEntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, "array":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 126
    new-instance v2, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntry;

    aget-object v3, v0, v1

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;Ljava/util/Map$Entry;)V

    aput-object v2, v0, v1

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;, "Lorg/apache/commons/collections4/map/UnmodifiableEntrySet<TK;TV;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    move-object v0, p1

    .line 135
    .local v0, "result":[Ljava/lang/Object;
    array-length v1, p1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 140
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->decorated()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 141
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 142
    new-instance v3, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntry;

    aget-object v4, v0, v1

    check-cast v4, Ljava/util/Map$Entry;

    invoke-direct {v3, p0, v4}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;Ljava/util/Map$Entry;)V

    aput-object v3, v0, v1

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    :cond_1
    array-length v1, v0

    array-length v3, p1

    if-le v1, v3, :cond_2

    .line 147
    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    return-object v1

    .line 151
    :cond_2
    array-length v1, v0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_3

    .line 153
    array-length v1, v0

    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 155
    :cond_3
    return-object p1
.end method
