.class public Lorg/apache/commons/collections4/multiset/AbstractMultiSet$UniqueSet;
.super Ljava/util/AbstractSet;
.source "AbstractMultiSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multiset/AbstractMultiSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UniqueSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected final parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/multiset/AbstractMultiSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 319
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 320
    iput-object p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$UniqueSet;->parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 350
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$UniqueSet;->parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$UniqueSet;->parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->contains(Ljava/lang/Object;)Z

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

    .line 335
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$UniqueSet;->parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
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

    .line 325
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$UniqueSet;->parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->createUniqueSetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 340
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$UniqueSet;->parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->getCount(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->remove(Ljava/lang/Object;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public size()I
    .locals 1

    .line 345
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$UniqueSet;->parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->uniqueElements()I

    move-result v0

    return v0
.end method
