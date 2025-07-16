.class public Lorg/apache/commons/collections4/iterators/BoundedIterator;
.super Ljava/lang/Object;
.source "BoundedIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
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

.field private final max:J

.field private final offset:J

.field private pos:J


# direct methods
.method public constructor <init>(Ljava/util/Iterator;JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;JJ)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    cmp-long v2, p4, v0

    if-ltz v2, :cond_0

    .line 73
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/BoundedIterator;->iterator:Ljava/util/Iterator;

    .line 74
    iput-wide p2, p0, Lorg/apache/commons/collections4/iterators/BoundedIterator;->offset:J

    .line 75
    iput-wide p4, p0, Lorg/apache/commons/collections4/iterators/BoundedIterator;->max:J

    .line 76
    iput-wide v0, p0, Lorg/apache/commons/collections4/iterators/BoundedIterator;->pos:J

    .line 77
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/BoundedIterator;->init()V

    return-void

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Max parameter must not be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Offset parameter must not be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Iterator must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkBounds()Z
    .locals 4

    .line 105
    iget-wide v0, p0, Lorg/apache/commons/collections4/iterators/BoundedIterator;->pos:J

    iget-wide v2, p0, Lorg/apache/commons/collections4/iterators/BoundedIterator;->offset:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/collections4/iterators/BoundedIterator;->max:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private init()V
    .locals 4

    .line 84
    :goto_0
    iget-wide v0, p0, Lorg/apache/commons/collections4/iterators/BoundedIterator;->pos:J

    iget-wide v2, p0, Lorg/apache/commons/collections4/iterators/BoundedIterator;->offset:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/BoundedIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/BoundedIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    iget-wide v0, p0, Lorg/apache/commons/collections4/iterators/BoundedIterator;->pos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/collections4/iterators/BoundedIterator;->pos:J

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 94
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/BoundedIterator;->checkBounds()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/BoundedIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/BoundedIterator;->checkBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/BoundedIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 117
    iget-wide v1, p0, Lorg/apache/commons/collections4/iterators/BoundedIterator;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/collections4/iterators/BoundedIterator;->pos:J

    return-object v0

    .line 114
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 4

    .line 131
    iget-wide v0, p0, Lorg/apache/commons/collections4/iterators/BoundedIterator;->pos:J

    iget-wide v2, p0, Lorg/apache/commons/collections4/iterators/BoundedIterator;->offset:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/BoundedIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can not be called before calling next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
