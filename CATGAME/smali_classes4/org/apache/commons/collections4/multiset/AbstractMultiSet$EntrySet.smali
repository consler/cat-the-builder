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
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet<TE;>;"
    .local p1, "parent":Lorg/apache/commons/collections4/multiset/AbstractMultiSet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 368
    iput-object p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;->parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    .line 369
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 383
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet<TE;>;"
    instance-of v0, p1, Lorg/apache/commons/collections4/MultiSet$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 384
    return v1

    .line 386
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections4/MultiSet$Entry;

    .line 387
    .local v0, "entry":Lorg/apache/commons/collections4/MultiSet$Entry;, "Lorg/apache/commons/collections4/MultiSet$Entry<*>;"
    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiSet$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    .line 388
    .local v2, "element":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;->parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {v3, v2}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->getCount(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiSet$Entry;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_1

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
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;->parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->createEntrySetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 393
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet<TE;>;"
    instance-of v0, p1, Lorg/apache/commons/collections4/MultiSet$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 394
    return v1

    .line 396
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections4/MultiSet$Entry;

    .line 397
    .local v0, "entry":Lorg/apache/commons/collections4/MultiSet$Entry;, "Lorg/apache/commons/collections4/MultiSet$Entry<*>;"
    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiSet$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    .line 398
    .local v2, "element":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;->parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {v3, v2}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 399
    iget-object v3, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;->parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {v3, v2}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->getCount(Ljava/lang/Object;)I

    move-result v3

    .line 400
    .local v3, "count":I
    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiSet$Entry;->getCount()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 401
    iget-object v1, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;->parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->remove(Ljava/lang/Object;I)I

    .line 402
    const/4 v1, 0x1

    return v1

    .line 405
    .end local v3    # "count":I
    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    .line 373
    .local p0, "this":Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;, "Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$EntrySet;->parent:Lorg/apache/commons/collections4/multiset/AbstractMultiSet;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet;->uniqueElements()I

    move-result v0

    return v0
.end method
