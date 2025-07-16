.class public Lorg/apache/commons/collections4/iterators/ZippingIterator;
.super Ljava/lang/Object;
.source "ZippingIterator.java"

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
.field private final iterators:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Iterator<",
            "+TE;>;>;"
        }
    .end annotation
.end field

.field private lastReturned:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private nextIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Iterator;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 61
    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/iterators/ZippingIterator;-><init>([Ljava/util/Iterator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;",
            "Ljava/util/Iterator<",
            "+TE;>;",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Iterator;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 77
    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/iterators/ZippingIterator;-><init>([Ljava/util/Iterator;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/util/Iterator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->nextIterator:Ljava/util/Iterator;

    .line 46
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->lastReturned:Ljava/util/Iterator;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    .line 94
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Iterator must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/collections4/FluentIterable;->of(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/collections4/FluentIterable;->loop()Lorg/apache/commons/collections4/FluentIterable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/collections4/FluentIterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->iterators:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 111
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->nextIterator:Ljava/util/Iterator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 115
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->iterators:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->iterators:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->nextIterator:Ljava/util/Iterator;

    return v1

    .line 122
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->iterators:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/ZippingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->nextIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->nextIterator:Ljava/util/Iterator;

    iput-object v1, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->lastReturned:Ljava/util/Iterator;

    const/4 v1, 0x0

    .line 141
    iput-object v1, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->nextIterator:Ljava/util/Iterator;

    return-object v0

    .line 136
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 153
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->lastReturned:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->lastReturned:Ljava/util/Iterator;

    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No value can be removed at present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
