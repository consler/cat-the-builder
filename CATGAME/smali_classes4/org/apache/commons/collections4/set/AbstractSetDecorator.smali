.class public abstract Lorg/apache/commons/collections4/set/AbstractSetDecorator;
.super Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;
.source "AbstractSetDecorator.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x40edf809f6364252L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 43
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractSetDecorator<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;-><init>()V

    .line 44
    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractSetDecorator<TE;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;-><init>(Ljava/util/Collection;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 32
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractSetDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractSetDecorator;->decorated()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractSetDecorator<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 68
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractSetDecorator<TE;>;"
    if-eq p1, p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractSetDecorator;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 1

    .line 73
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractSetDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractSetDecorator;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method
