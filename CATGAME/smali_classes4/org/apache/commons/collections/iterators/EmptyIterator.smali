.class public Lorg/apache/commons/collections/iterators/EmptyIterator;
.super Lorg/apache/commons/collections/iterators/AbstractEmptyIterator;
.source "EmptyIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/ResettableIterator;


# static fields
.field public static final INSTANCE:Ljava/util/Iterator;

.field public static final RESETTABLE_INSTANCE:Lorg/apache/commons/collections/ResettableIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lorg/apache/commons/collections/iterators/EmptyIterator;

    invoke-direct {v0}, Lorg/apache/commons/collections/iterators/EmptyIterator;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/iterators/EmptyIterator;->RESETTABLE_INSTANCE:Lorg/apache/commons/collections/ResettableIterator;

    .line 46
    sput-object v0, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/AbstractEmptyIterator;-><init>()V

    return-void
.end method
