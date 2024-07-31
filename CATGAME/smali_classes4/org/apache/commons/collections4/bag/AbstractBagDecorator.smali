.class public abstract Lorg/apache/commons/collections4/bag/AbstractBagDecorator;
.super Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;
.source "AbstractBagDecorator.java"

# interfaces
.implements Lorg/apache/commons/collections4/Bag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/Bag<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x344b24d6999449c9L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 44
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractBagDecorator;, "Lorg/apache/commons/collections4/bag/AbstractBagDecorator<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;-><init>()V

    .line 45
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections4/Bag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractBagDecorator;, "Lorg/apache/commons/collections4/bag/AbstractBagDecorator<TE;>;"
    .local p1, "bag":Lorg/apache/commons/collections4/Bag;, "Lorg/apache/commons/collections4/Bag<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;-><init>(Ljava/util/Collection;)V

    .line 55
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Z
    .locals 1
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractBagDecorator;, "Lorg/apache/commons/collections4/bag/AbstractBagDecorator<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractBagDecorator;->decorated()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/Bag;->add(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 33
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractBagDecorator;, "Lorg/apache/commons/collections4/bag/AbstractBagDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractBagDecorator;->decorated()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Lorg/apache/commons/collections4/Bag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractBagDecorator;, "Lorg/apache/commons/collections4/bag/AbstractBagDecorator<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/Bag;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 69
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractBagDecorator;, "Lorg/apache/commons/collections4/bag/AbstractBagDecorator<TE;>;"
    if-eq p1, p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractBagDecorator;->decorated()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

    .line 81
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractBagDecorator;, "Lorg/apache/commons/collections4/bag/AbstractBagDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractBagDecorator;->decorated()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Bag;->getCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 74
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractBagDecorator;, "Lorg/apache/commons/collections4/bag/AbstractBagDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractBagDecorator;->decorated()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "count"    # I

    .line 91
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractBagDecorator;, "Lorg/apache/commons/collections4/bag/AbstractBagDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractBagDecorator;->decorated()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/Bag;->remove(Ljava/lang/Object;I)Z

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

    .line 96
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractBagDecorator;, "Lorg/apache/commons/collections4/bag/AbstractBagDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bag/AbstractBagDecorator;->decorated()Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/Bag;->uniqueSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
