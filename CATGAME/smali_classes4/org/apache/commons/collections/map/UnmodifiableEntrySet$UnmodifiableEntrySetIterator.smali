.class final Lorg/apache/commons/collections/map/UnmodifiableEntrySet$UnmodifiableEntrySetIterator;
.super Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;
.source "UnmodifiableEntrySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/UnmodifiableEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnmodifiableEntrySetIterator"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 2

    .line 139
    iget-object v0, p0, Lorg/apache/commons/collections/map/UnmodifiableEntrySet$UnmodifiableEntrySetIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 140
    new-instance v1, Lorg/apache/commons/collections/map/UnmodifiableEntrySet$UnmodifiableEntry;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections/map/UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public remove()V
    .locals 1

    .line 144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
