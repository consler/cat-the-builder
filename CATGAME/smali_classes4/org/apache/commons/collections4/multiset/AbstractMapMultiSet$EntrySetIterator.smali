.class public Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$EntrySetIterator;
.super Ljava/lang/Object;
.source "AbstractMapMultiSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EntrySetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/commons/collections4/MultiSet$Entry<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field protected canRemove:Z

.field protected final decorated:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TE;",
            "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;",
            ">;>;"
        }
    .end annotation
.end field

.field protected last:Lorg/apache/commons/collections4/MultiSet$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected final parent:Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TE;",
            "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;",
            ">;>;",
            "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 377
    iput-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$EntrySetIterator;->last:Lorg/apache/commons/collections4/MultiSet$Entry;

    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$EntrySetIterator;->canRemove:Z

    .line 389
    iput-object p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$EntrySetIterator;->decorated:Ljava/util/Iterator;

    .line 390
    iput-object p2, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$EntrySetIterator;->parent:Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$EntrySetIterator;->decorated:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 369
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$EntrySetIterator;->next()Lorg/apache/commons/collections4/MultiSet$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/commons/collections4/MultiSet$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/MultiSet$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 400
    new-instance v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MultiSetEntry;

    iget-object v1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$EntrySetIterator;->decorated:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MultiSetEntry;-><init>(Ljava/util/Map$Entry;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$EntrySetIterator;->last:Lorg/apache/commons/collections4/MultiSet$Entry;

    const/4 v1, 0x1

    .line 401
    iput-boolean v1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$EntrySetIterator;->canRemove:Z

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 407
    iget-boolean v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$EntrySetIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$EntrySetIterator;->decorated:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    .line 411
    iput-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$EntrySetIterator;->last:Lorg/apache/commons/collections4/MultiSet$Entry;

    const/4 v0, 0x0

    .line 412
    iput-boolean v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$EntrySetIterator;->canRemove:Z

    return-void

    .line 408
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
