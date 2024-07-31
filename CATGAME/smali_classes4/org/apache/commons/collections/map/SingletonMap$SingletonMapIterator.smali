.class Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;
.super Ljava/lang/Object;
.source "SingletonMap.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedMapIterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/SingletonMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingletonMapIterator"
.end annotation


# instance fields
.field private canGetSet:Z

.field private hasNext:Z

.field private final parent:Lorg/apache/commons/collections/map/SingletonMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/SingletonMap;)V
    .locals 1
    .param p1, "parent"    # Lorg/apache/commons/collections/map/SingletonMap;

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    .line 436
    iput-object p1, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections/map/SingletonMap;

    .line 437
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2

    .line 469
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections/map/SingletonMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 470
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 476
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections/map/SingletonMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 477
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 440
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 453
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 444
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    if-eqz v0, :cond_0

    .line 447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    .line 449
    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections/map/SingletonMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 445
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .line 457
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 460
    iput-boolean v1, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    .line 461
    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections/map/SingletonMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 458
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No previous() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 465
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    .line 491
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 483
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections/map/SingletonMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/SingletonMap;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 484
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 494
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    if-eqz v0, :cond_0

    .line 495
    const-string v0, "Iterator[]"

    return-object v0

    .line 497
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Iterator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
