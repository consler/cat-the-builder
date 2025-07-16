.class public Lorg/apache/commons/collections4/set/TransformedSet;
.super Lorg/apache/commons/collections4/collection/TransformedCollection;
.source "TransformedSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/TransformedCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x43f953bbd8fce12L


# direct methods
.method protected constructor <init>(Ljava/util/Set;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/collection/TransformedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;)V

    return-void
.end method

.method public static transformedSet(Ljava/util/Set;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 79
    new-instance v0, Lorg/apache/commons/collections4/set/TransformedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/set/TransformedSet;-><init>(Ljava/util/Set;Lorg/apache/commons/collections4/Transformer;)V

    .line 80
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 82
    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 83
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 84
    array-length p0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    aget-object v3, v1, v2

    .line 85
    invoke-virtual {v0}, Lorg/apache/commons/collections4/set/TransformedSet;->decorated()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {p1, v3}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static transformingSet(Ljava/util/Set;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/set/TransformedSet<",
            "TE;>;"
        }
    .end annotation

    .line 60
    new-instance v0, Lorg/apache/commons/collections4/set/TransformedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/set/TransformedSet;-><init>(Ljava/util/Set;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 108
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedSet;->decorated()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 113
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedSet;->decorated()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method
