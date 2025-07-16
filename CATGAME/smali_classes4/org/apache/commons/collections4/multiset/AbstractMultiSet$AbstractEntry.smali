.class public abstract Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry;
.super Ljava/lang/Object;
.source "AbstractMultiSet.java"

# interfaces
.implements Lorg/apache/commons/collections4/MultiSet$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multiset/AbstractMultiSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "AbstractEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/MultiSet$Entry<",
        "TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 416
    instance-of v0, p1, Lorg/apache/commons/collections4/MultiSet$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 417
    check-cast p1, Lorg/apache/commons/collections4/MultiSet$Entry;

    .line 418
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v0

    .line 419
    invoke-interface {p1}, Lorg/apache/commons/collections4/MultiSet$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    .line 421
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry;->getCount()I

    move-result v3

    invoke-interface {p1}, Lorg/apache/commons/collections4/MultiSet$Entry;->getCount()I

    move-result p1

    if-ne v3, p1, :cond_1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 430
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 431
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry;->getCount()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 436
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/multiset/AbstractMultiSet$AbstractEntry;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s:%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
