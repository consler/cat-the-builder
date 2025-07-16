.class public Lorg/apache/commons/collections/EnumerationUtils;
.super Ljava/lang/Object;
.source "EnumerationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toList(Ljava/util/Enumeration;)Ljava/util/List;
    .locals 1

    .line 51
    new-instance v0, Lorg/apache/commons/collections/iterators/EnumerationIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/EnumerationIterator;-><init>(Ljava/util/Enumeration;)V

    invoke-static {v0}, Lorg/apache/commons/collections/IteratorUtils;->toList(Ljava/util/Iterator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
