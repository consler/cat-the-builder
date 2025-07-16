.class public Lorg/apache/commons/collections/map/AbstractLinkedMap$EntrySetIterator;
.super Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;
.source "AbstractLinkedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractLinkedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EntrySetIterator"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/map/AbstractLinkedMap;)V
    .locals 0

    .line 424
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;-><init>(Lorg/apache/commons/collections/map/AbstractLinkedMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .line 428
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->nextEntry()Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .line 432
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->previousEntry()Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    return-object v0
.end method
