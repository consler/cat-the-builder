.class public Lorg/apache/commons/collections4/iterators/SkippingIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;
.source "SkippingIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final offset:J

.field private pos:J


# direct methods
.method public constructor <init>(Ljava/util/Iterator;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TE;>;J)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    .line 57
    iput-wide p2, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->offset:J

    .line 58
    iput-wide v0, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->pos:J

    .line 59
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/SkippingIterator;->init()V

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Offset parameter must not be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private init()V
    .locals 4

    .line 66
    :goto_0
    iget-wide v0, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->pos:J

    iget-wide v2, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->offset:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/SkippingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/SkippingIterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 75
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 76
    iget-wide v1, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->pos:J

    return-object v0
.end method

.method public remove()V
    .locals 4

    .line 90
    iget-wide v0, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->pos:J

    iget-wide v2, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->offset:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 93
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;->remove()V

    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can not be called before calling next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
