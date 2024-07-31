.class public abstract Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;
.super Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;
.source "AbstractMultiSetDecorator.java"

# interfaces
.implements Lorg/apache/commons/collections4/MultiSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/MultiSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1337952L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 43
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;-><init>()V

    .line 44
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections4/MultiSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator<TE;>;"
    .local p1, "multiset":Lorg/apache/commons/collections4/MultiSet;, "Lorg/apache/commons/collections4/MultiSet<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;-><init>(Ljava/util/Collection;)V

    .line 54
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 1
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 90
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/MultiSet;->add(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 33
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Lorg/apache/commons/collections4/MultiSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/MultiSet<",
            "TE;>;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/MultiSet;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiSet;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 68
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator<TE;>;"
    if-eq p1, p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/MultiSet;->equals(Ljava/lang/Object;)Z

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

.method public getCount(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 80
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/MultiSet;->getCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 73
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "count"    # I

    .line 95
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/MultiSet;->remove(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 1
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 85
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/MultiSet;->setCount(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSetDecorator;->decorated()Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiSet;->uniqueSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
