.class Lorg/apache/commons/collections/list/FixedSizeList$FixedSizeListIterator;
.super Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;
.source "FixedSizeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/list/FixedSizeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FixedSizeListIterator"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/util/ListIterator;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    .line 151
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "List is fixed size"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove()V
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "List is fixed size"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
