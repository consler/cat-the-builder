.class public Lorg/apache/commons/collections/iterators/EmptyMapIterator;
.super Lorg/apache/commons/collections/iterators/AbstractEmptyIterator;
.source "EmptyMapIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/MapIterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections/MapIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/apache/commons/collections/iterators/EmptyMapIterator;

    invoke-direct {v0}, Lorg/apache/commons/collections/iterators/EmptyMapIterator;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/iterators/EmptyMapIterator;->INSTANCE:Lorg/apache/commons/collections/MapIterator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/AbstractEmptyIterator;-><init>()V

    return-void
.end method
