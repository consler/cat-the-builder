.class public Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;
.super Ljava/util/AbstractSet;
.source "AbstractMultiSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multiset/AbstractMultiSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "Lorg/apache/commons/collections4/MultiSet$Entry<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;
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

    .line 367
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 368
    iput-object p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;->parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 383
    instance-of v0, p1, Lorg/apache/commons/collections4/MultiSet$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 386
    :cond_0
    check-cast p1, Lorg/apache/commons/collections4/MultiSet$Entry;

    .line 387
    invoke-interface {p1}, Lorg/apache/commons/collections4/MultiSet$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    .line 388
    iget-object v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;->parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {v2, v0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->getCount(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/collections4/MultiSet$Entry;->getCount()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;->parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->createEntrySetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 393
    instance-of v0, p1, Lorg/apache/commons/collections4/MultiSet$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 396
    :cond_0
    check-cast p1, Lorg/apache/commons/collections4/MultiSet$Entry;

    .line 397
    invoke-interface {p1}, Lorg/apache/commons/collections4/MultiSet$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    .line 398
    iget-object v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;->parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {v2, v0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    iget-object v2, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;->parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {v2, v0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->getCount(Ljava/lang/Object;)I

    move-result v2

    .line 400
    invoke-interface {p1}, Lorg/apache/commons/collections4/MultiSet$Entry;->getCount()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 401
    iget-object p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;->parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {p1, v0, v2}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->remove(Ljava/lang/Object;I)I

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    .line 373
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;->parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->uniqueElements()I

    move-result v0

    return v0
.end method
