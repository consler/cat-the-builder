.class public Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkMapIterator;
.super Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;
.source "AbstractLinkedMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/OrderedMapIterator;
.implements Lorg/apache/commons/collections4/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractLinkedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LinkMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/OrderedMapIterator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/ResettableIterator<",
        "TK;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/map/AbstractLinkedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 364
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractLinkedMap;)V

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

    .line 379
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkMapIterator;->currentEntry()Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 381
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

    .line 388
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkMapIterator;->currentEntry()Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 390
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 369
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->nextEntry()Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 374
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->previousEntry()Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 397
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkMapIterator;->currentEntry()Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 399
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setValue() can only be called after next() and before remove()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
