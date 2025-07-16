.class public Lorg/apache/commons/collections/iterators/EmptyOrderedIterator;
.super Lorg/apache/commons/collections/iterators/AbstractEmptyIterator;
.source "EmptyOrderedIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedIterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections/OrderedIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/apache/commons/collections/iterators/EmptyOrderedIterator;

    invoke-direct {v0}, Lorg/apache/commons/collections/iterators/EmptyOrderedIterator;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/iterators/EmptyOrderedIterator;->INSTANCE:Lorg/apache/commons/collections/OrderedIterator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/AbstractEmptyIterator;-><init>()V

    return-void
.end method
