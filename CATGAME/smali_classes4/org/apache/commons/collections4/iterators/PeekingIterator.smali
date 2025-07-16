.class public Lorg/apache/commons/collections4/iterators/PeekingIterator;
.super Ljava/lang/Object;
.source "PeekingIterator.java"

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
.field private exhausted:Z

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private slot:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private slotFilled:Z


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

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->exhausted:Z

    .line 41
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->slotFilled:Z

    .line 77
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method private fill()V
    .locals 2

    .line 81
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->exhausted:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->slotFilled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->slot:Ljava/lang/Object;

    .line 86
    iput-boolean v1, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->slotFilled:Z

    goto :goto_0

    .line 88
    :cond_1
    iput-boolean v1, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->exhausted:Z

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->slot:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->slotFilled:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static peekingIterator(Ljava/util/Iterator;)Lorg/apache/commons/collections4/iterators/PeekingIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/iterators/PeekingIterator<",
            "TE;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 61
    instance-of v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;

    if-eqz v0, :cond_0

    .line 63
    check-cast p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;

    return-object p0

    .line 66
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/PeekingIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/PeekingIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 59
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Iterator must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/PeekingIterator;->fill()V

    .line 129
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->exhausted:Z

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->slot:Ljava/lang/Object;

    return-object v0

    .line 130
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 97
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->exhausted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 100
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->slotFilled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->slotFilled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->slot:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 142
    iput-object v1, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->slot:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 143
    iput-boolean v1, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->slotFilled:Z

    return-object v0

    .line 138
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/PeekingIterator;->fill()V

    .line 117
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->exhausted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->slot:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 155
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->slotFilled:Z

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PeekingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "peek() or element() called before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
