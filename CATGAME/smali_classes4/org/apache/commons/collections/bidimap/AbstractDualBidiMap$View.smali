.class public abstract Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;
.super Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;
.source "AbstractDualBidiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "View"
.end annotation


# instance fields
.field protected final parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;


# direct methods
.method protected constructor <init>(Ljava/util/Collection;Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V
    .locals 0
    .param p1, "coll"    # Ljava/util/Collection;
    .param p2, "parent"    # Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    .line 344
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;-><init>(Ljava/util/Collection;)V

    .line 345
    iput-object p2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    .line 346
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 383
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->clear()V

    .line 384
    return-void
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .param p1, "coll"    # Ljava/util/Collection;

    .line 349
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 352
    :cond_0
    const/4 v0, 0x0

    .line 353
    .local v0, "modified":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 354
    .local v1, "it":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 355
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 356
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 357
    const/4 v0, 0x1

    goto :goto_0

    .line 360
    :cond_2
    return v0

    .line 350
    .end local v0    # "modified":Z
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .param p1, "coll"    # Ljava/util/Collection;

    .line 364
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const/4 v0, 0x0

    return v0

    .line 367
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->clear()V

    .line 369
    const/4 v0, 0x1

    return v0

    .line 371
    :cond_1
    const/4 v0, 0x0

    .line 372
    .local v0, "modified":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 373
    .local v1, "it":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 374
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 375
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 376
    const/4 v0, 0x1

    goto :goto_0

    .line 379
    :cond_3
    return v0
.end method
