.class public final Lorg/apache/commons/collections4/set/UnmodifiableSet;
.super Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator;
.source "UnmodifiableSet.java"

# interfaces
.implements Lorg/apache/commons/collections4/Unmodifiable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5a31831706488a61L


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+TE;>;)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableSet<TE;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator;-><init>(Ljava/util/Set;)V

    .line 74
    return-void
.end method

.method public static unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 56
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    .line 58
    move-object v0, p0

    .line 59
    .local v0, "tmpSet":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    return-object v0

    .line 61
    .end local v0    # "tmpSet":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/set/UnmodifiableSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableSet<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
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
            "+TE;>;)Z"
        }
    .end annotation

    .line 89
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 94
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableSet<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 79
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;->unmodifiableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 99
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableSet<TE;>;"
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

    .line 112
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableSet<TE;>;"
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
            "-TE;>;)Z"
        }
    .end annotation

    .line 107
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableSet<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
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

    .line 117
    .local p0, "this":Lorg/apache/commons/collections4/set/UnmodifiableSet;, "Lorg/apache/commons/collections4/set/UnmodifiableSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
