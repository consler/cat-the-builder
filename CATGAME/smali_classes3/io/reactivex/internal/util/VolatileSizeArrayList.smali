.class public final Lio/reactivex/internal/util/VolatileSizeArrayList;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "VolatileSizeArrayList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Ljava/util/List<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3720ca74d4749213L


# instance fields
.field final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 35
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    .line 37
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 134
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/util/VolatileSizeArrayList;->lazySet(I)V

    .line 136
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 71
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 72
    .local v0, "b":Z
    iget-object v1, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lio/reactivex/internal/util/VolatileSizeArrayList;->lazySet(I)V

    .line 73
    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 97
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 98
    .local v0, "b":Z
    iget-object v1, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lio/reactivex/internal/util/VolatileSizeArrayList;->lazySet(I)V

    .line 99
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 90
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 91
    .local v0, "b":Z
    iget-object v1, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lio/reactivex/internal/util/VolatileSizeArrayList;->lazySet(I)V

    .line 92
    return v0
.end method

.method public clear()V
    .locals 1

    .line 118
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/util/VolatileSizeArrayList;->lazySet(I)V

    .line 120
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 51
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 85
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 172
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    instance-of v0, p1, Lio/reactivex/internal/util/VolatileSizeArrayList;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Lio/reactivex/internal/util/VolatileSizeArrayList;

    iget-object v1, v1, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 175
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 180
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 147
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 46
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/util/VolatileSizeArrayList;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 152
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 157
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 141
    .local v0, "v":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lio/reactivex/internal/util/VolatileSizeArrayList;->lazySet(I)V

    .line 142
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 78
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 79
    .local v0, "b":Z
    iget-object v1, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lio/reactivex/internal/util/VolatileSizeArrayList;->lazySet(I)V

    .line 80
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 104
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 105
    .local v0, "b":Z
    iget-object v1, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lio/reactivex/internal/util/VolatileSizeArrayList;->lazySet(I)V

    .line 106
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 111
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 112
    .local v0, "b":Z
    iget-object v1, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lio/reactivex/internal/util/VolatileSizeArrayList;->lazySet(I)V

    .line 113
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 41
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/util/VolatileSizeArrayList;->get()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 61
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TE;"
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 185
    .local p0, "this":Lio/reactivex/internal/util/VolatileSizeArrayList;, "Lio/reactivex/internal/util/VolatileSizeArrayList<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/util/VolatileSizeArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
