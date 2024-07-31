.class public Lorg/apache/commons/collections4/iterators/IteratorIterable;
.super Ljava/lang/Object;
.source "IteratorIterable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private final typeSafeIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 103
    .local p0, "this":Lorg/apache/commons/collections4/iterators/IteratorIterable;, "Lorg/apache/commons/collections4/iterators/IteratorIterable<TE;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/iterators/IteratorIterable;-><init>(Ljava/util/Iterator;Z)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Z)V
    .locals 1
    .param p2, "multipleUse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;Z)V"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/apache/commons/collections4/iterators/IteratorIterable;, "Lorg/apache/commons/collections4/iterators/IteratorIterable<TE;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    if-eqz p2, :cond_0

    instance-of v0, p1, Lorg/apache/commons/collections4/ResettableIterator;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;-><init>(Ljava/util/Iterator;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorIterable;->iterator:Ljava/util/Iterator;

    goto :goto_0

    .line 118
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/IteratorIterable;->iterator:Ljava/util/Iterator;

    .line 120
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorIterable;->iterator:Ljava/util/Iterator;

    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/IteratorIterable;->createTypesafeIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorIterable;->typeSafeIterator:Ljava/util/Iterator;

    .line 121
    return-void
.end method

.method private static createTypesafeIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 72
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/iterators/IteratorIterable$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/IteratorIterable$1;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lorg/apache/commons/collections4/iterators/IteratorIterable;, "Lorg/apache/commons/collections4/iterators/IteratorIterable<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorIterable;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Lorg/apache/commons/collections4/ResettableIterator;

    if-eqz v1, :cond_0

    .line 131
    check-cast v0, Lorg/apache/commons/collections4/ResettableIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/ResettableIterator;->reset()V

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorIterable;->typeSafeIterator:Ljava/util/Iterator;

    return-object v0
.end method
