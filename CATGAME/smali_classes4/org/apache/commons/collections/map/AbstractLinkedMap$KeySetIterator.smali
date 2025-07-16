.class public Lorg/apache/commons/collections/map/AbstractLinkedMap$KeySetIterator;
.super Lorg/apache/commons/collections/map/AbstractLinkedMap$EntrySetIterator;
.source "AbstractLinkedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractLinkedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "KeySetIterator"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/map/AbstractLinkedMap;)V
    .locals 0

    .line 456
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractLinkedMap$EntrySetIterator;-><init>(Lorg/apache/commons/collections/map/AbstractLinkedMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .line 460
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$EntrySetIterator;->nextEntry()Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .line 464
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$EntrySetIterator;->previousEntry()Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
