.class Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;
.super Ljava/lang/Object;
.source "SingletonMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/OrderedMapIterator;
.implements Lorg/apache/commons/collections4/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/SingletonMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingletonMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/OrderedMapIterator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/ResettableIterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private canGetSet:Z

.field private hasNext:Z

.field private final parent:Lorg/apache/commons/collections4/map/SingletonMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/SingletonMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/SingletonMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/SingletonMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 430
    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    const/4 v0, 0x0

    .line 431
    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    .line 435
    iput-object p1, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections4/map/SingletonMap;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 474
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections4/map/SingletonMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 475
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 482
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections4/map/SingletonMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 483
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 440
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 455
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 445
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 448
    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    const/4 v0, 0x1

    .line 449
    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    .line 450
    iget-object v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections4/map/SingletonMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 446
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 460
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 463
    iput-boolean v1, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    .line 464
    iget-object v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections4/map/SingletonMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 461
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No previous() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 469
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    .line 498
    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 490
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections4/map/SingletonMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/SingletonMap;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 491
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setValue() can only be called after next() and before remove()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 503
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    if-eqz v0, :cond_0

    const-string v0, "Iterator[]"

    return-object v0

    .line 506
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Iterator["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/SingletonMap$SingletonMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
