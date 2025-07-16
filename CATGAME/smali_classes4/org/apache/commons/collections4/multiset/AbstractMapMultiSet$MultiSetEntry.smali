.class public Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MultiSetEntry;
.super Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry;
.source "AbstractMapMultiSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MultiSetEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected final parentEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TE;",
            "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TE;",
            "Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;",
            ">;)V"
        }
    .end annotation

    .line 427
    invoke-direct {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry;-><init>()V

    .line 428
    iput-object p1, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MultiSetEntry;->parentEntry:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 438
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MultiSetEntry;->parentEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;

    iget v0, v0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MutableInteger;->value:I

    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lorg/apache/commons/collections4/multiset/AbstractMapMultiSet$MultiSetEntry;->parentEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
