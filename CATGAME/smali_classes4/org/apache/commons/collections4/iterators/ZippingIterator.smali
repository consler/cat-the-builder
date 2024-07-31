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

    .line 61
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ZippingIterator;, "Lorg/apache/commons/collections4/iterators/ZippingIterator<TE;>;"
    .local p1, "a":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    .local p2, "b":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Iterator;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/iterators/ZippingIterator;-><init>([Ljava/util/Iterator;)V

    .line 62
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

    .line 77
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ZippingIterator;, "Lorg/apache/commons/collections4/iterators/ZippingIterator<TE;>;"
    .local p1, "a":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    .local p2, "b":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    .local p3, "c":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Iterator;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/iterators/ZippingIterator;-><init>([Ljava/util/Iterator;)V

    .line 78
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ZippingIterator;, "Lorg/apache/commons/collections4/iterators/ZippingIterator<TE;>;"
    .local p1, "iterators":[Ljava/util/Iterator;, "[Ljava/util/Iterator<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->nextIterator:Ljava/util/Iterator;

    .line 46
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->lastReturned:Ljava/util/Iterator;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Iterator<+TE;>;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 91
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    if-eqz v3, :cond_0

    .line 94
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Iterator must not be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/collections4/FluentIterable;->of(Ljava/lang/Iterable;)Lorg/apache/commons/collections4/FluentIterable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/collections4/FluentIterable;->loop()Lorg/apache/commons/collections4/FluentIterable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/collections4/FluentIterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->iterators:Ljava/util/Iterator;

    .line 97
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 111
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ZippingIterator;, "Lorg/apache/commons/collections4/iterators/ZippingIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->nextIterator:Ljava/util/Iterator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 112
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
    .local v0, "childIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->nextIterator:Ljava/util/Iterator;

    .line 119
    return v1

    .line 122
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->iterators:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 123
    .end local v0    # "childIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    goto :goto_0

    .line 124
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
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ZippingIterator;, "Lorg/apache/commons/collections4/iterators/ZippingIterator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/ZippingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->nextIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 140
    .local v0, "val":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->nextIterator:Ljava/util/Iterator;

    iput-object v1, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->lastReturned:Ljava/util/Iterator;

    .line 141
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->nextIterator:Ljava/util/Iterator;

    .line 142
    return-object v0

    .line 136
    .end local v0    # "val":Ljava/lang/Object;, "TE;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 153
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ZippingIterator;, "Lorg/apache/commons/collections4/iterators/ZippingIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->lastReturned:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/ZippingIterator;->lastReturned:Ljava/util/Iterator;

    .line 158
    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No value can be removed at present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
