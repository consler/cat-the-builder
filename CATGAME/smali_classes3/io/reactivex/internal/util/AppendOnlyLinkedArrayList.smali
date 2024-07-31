.class public Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;
.super Ljava/lang/Object;
.source "AppendOnlyLinkedArrayList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final capacity:I

.field final head:[Ljava/lang/Object;

.field offset:I

.field tail:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 36
    .local p0, "this":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->capacity:I

    .line 38
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    .line 39
    iput-object v0, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    .line 40
    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/Observer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observer<",
            "-TU;>;)Z"
        }
    .end annotation

    .line 138
    .local p0, "this":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<TT;>;"
    .local p1, "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    .line 139
    .local v0, "a":[Ljava/lang/Object;
    iget v1, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->capacity:I

    .line 140
    .local v1, "c":I
    :goto_0
    if-eqz v0, :cond_3

    .line 141
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 142
    aget-object v3, v0, v2

    .line 143
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 144
    goto :goto_2

    .line 147
    :cond_0
    invoke-static {v3, p1}, Lio/reactivex/internal/util/NotificationLite;->acceptFull(Ljava/lang/Object;Lio/reactivex/Observer;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    const/4 v4, 0x1

    return v4

    .line 141
    .end local v3    # "o":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 151
    .end local v2    # "i":I
    :cond_2
    :goto_2
    aget-object v2, v0, v1

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0

    .line 153
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method public accept(Lorg/reactivestreams/Subscriber;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Subscriber<",
            "-TU;>;)Z"
        }
    .end annotation

    .line 110
    .local p0, "this":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<TT;>;"
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    .line 111
    .local v0, "a":[Ljava/lang/Object;
    iget v1, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->capacity:I

    .line 112
    .local v1, "c":I
    :goto_0
    if-eqz v0, :cond_3

    .line 113
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 114
    aget-object v3, v0, v2

    .line 115
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 116
    goto :goto_2

    .line 119
    :cond_0
    invoke-static {v3, p1}, Lio/reactivex/internal/util/NotificationLite;->acceptFull(Ljava/lang/Object;Lorg/reactivestreams/Subscriber;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    const/4 v4, 0x1

    return v4

    .line 113
    .end local v3    # "o":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    .end local v2    # "i":I
    :cond_2
    :goto_2
    aget-object v2, v0, v1

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method public add(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->capacity:I

    .line 49
    .local v0, "c":I
    iget v1, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->offset:I

    .line 50
    .local v1, "o":I
    if-ne v1, v0, :cond_0

    .line 51
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 52
    .local v2, "next":[Ljava/lang/Object;
    iget-object v3, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 53
    iput-object v2, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    .line 54
    const/4 v1, 0x0

    .line 56
    .end local v2    # "next":[Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 57
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->offset:I

    .line 58
    return-void
.end method

.method public forEachWhile(Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<TT;>;"
    .local p1, "consumer":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate<-TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    .line 86
    .local v0, "a":[Ljava/lang/Object;
    iget v1, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->capacity:I

    .line 87
    .local v1, "c":I
    :goto_0
    if-eqz v0, :cond_3

    .line 88
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 89
    aget-object v3, v0, v2

    .line 90
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 91
    goto :goto_2

    .line 93
    :cond_0
    invoke-interface {p1, v3}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    goto :goto_2

    .line 88
    .end local v3    # "o":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 97
    .end local v2    # "i":I
    :cond_2
    :goto_2
    aget-object v2, v0, v1

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0

    .line 99
    :cond_3
    return-void
.end method

.method public forEachWhile(Ljava/lang/Object;Lio/reactivex/functions/BiPredicate;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(TS;",
            "Lio/reactivex/functions/BiPredicate<",
            "-TS;-TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    .local p0, "this":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    .local p2, "consumer":Lio/reactivex/functions/BiPredicate;, "Lio/reactivex/functions/BiPredicate<-TS;-TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    .line 167
    .local v0, "a":[Ljava/lang/Object;
    iget v1, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->capacity:I

    .line 169
    .local v1, "c":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 170
    aget-object v3, v0, v2

    .line 171
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 172
    return-void

    .line 174
    :cond_0
    invoke-interface {p2, p1, v3}, Lio/reactivex/functions/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 175
    return-void

    .line 169
    .end local v3    # "o":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 178
    .end local v2    # "i":I
    :cond_2
    aget-object v2, v0, v1

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public setFirst(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 66
    return-void
.end method
