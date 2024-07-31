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
    .locals 3
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TE;>;J)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lorg/apache/commons/collections4/iterators/SkippingIterator;, "Lorg/apache/commons/collections4/iterators/SkippingIterator<TE;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    .line 53
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 57
    iput-wide p2, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->offset:J

    .line 58
    iput-wide v0, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->pos:J

    .line 59
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/SkippingIterator;->init()V

    .line 60
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offset parameter must not be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init()V
    .locals 4

    .line 66
    .local p0, "this":Lorg/apache/commons/collections4/iterators/SkippingIterator;, "Lorg/apache/commons/collections4/iterators/SkippingIterator<TE;>;"
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

    .line 69
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/SkippingIterator;, "Lorg/apache/commons/collections4/iterators/SkippingIterator<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 76
    .local v0, "next":Ljava/lang/Object;, "TE;"
    iget-wide v1, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->pos:J

    .line 77
    return-object v0
.end method

.method public remove()V
    .locals 4

    .line 90
    .local p0, "this":Lorg/apache/commons/collections4/iterators/SkippingIterator;, "Lorg/apache/commons/collections4/iterators/SkippingIterator<TE;>;"
    iget-wide v0, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->pos:J

    iget-wide v2, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->offset:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 93
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;->remove()V

    .line 94
    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can not be called before calling next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
