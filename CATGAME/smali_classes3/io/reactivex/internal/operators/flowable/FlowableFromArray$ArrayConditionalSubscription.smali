.class final Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;
.source "FlowableFromArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFromArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArrayConditionalSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x23e7f25903d0c345L


# instance fields
.field final actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;[TT;)V"
        }
    .end annotation

    .line 199
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription<TT;>;"
    .local p1, "actual":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-TT;>;"
    .local p2, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;-><init>([Ljava/lang/Object;)V

    .line 200
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 201
    return-void
.end method


# virtual methods
.method fastPath()V
    .locals 7

    .line 205
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->array:[Ljava/lang/Object;

    .line 206
    .local v0, "arr":[Ljava/lang/Object;, "[TT;"
    array-length v1, v0

    .line 207
    .local v1, "f":I
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 209
    .local v2, "a":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-TT;>;"
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->index:I

    .local v3, "i":I
    :goto_0
    if-eq v3, v1, :cond_2

    .line 210
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->cancelled:Z

    if-eqz v4, :cond_0

    .line 211
    return-void

    .line 213
    :cond_0
    aget-object v4, v0, v3

    .line 214
    .local v4, "t":Ljava/lang/Object;, "TT;"
    if-nez v4, :cond_1

    .line 215
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "array element is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 216
    return-void

    .line 218
    :cond_1
    invoke-interface {v2, v4}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    .line 209
    .end local v4    # "t":Ljava/lang/Object;, "TT;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 221
    .end local v3    # "i":I
    :cond_2
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->cancelled:Z

    if-eqz v3, :cond_3

    .line 222
    return-void

    .line 224
    :cond_3
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    .line 225
    return-void
.end method

.method slowPath(J)V
    .locals 9
    .param p1, "r"    # J

    .line 229
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription<TT;>;"
    const-wide/16 v0, 0x0

    .line 230
    .local v0, "e":J
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->array:[Ljava/lang/Object;

    .line 231
    .local v2, "arr":[Ljava/lang/Object;, "[TT;"
    array-length v3, v2

    .line 232
    .local v3, "f":I
    iget v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->index:I

    .line 233
    .local v4, "i":I
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 237
    .local v5, "a":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-TT;>;"
    :goto_0
    cmp-long v6, v0, p1

    if-eqz v6, :cond_3

    if-eq v4, v3, :cond_3

    .line 238
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->cancelled:Z

    if-eqz v6, :cond_0

    .line 239
    return-void

    .line 242
    :cond_0
    aget-object v6, v2, v4

    .line 244
    .local v6, "t":Ljava/lang/Object;, "TT;"
    if-nez v6, :cond_1

    .line 245
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "array element is null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v7}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 246
    return-void

    .line 248
    :cond_1
    invoke-interface {v5, v6}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 249
    const-wide/16 v7, 0x1

    add-long/2addr v0, v7

    .line 252
    :cond_2
    nop

    .end local v6    # "t":Ljava/lang/Object;, "TT;"
    add-int/lit8 v4, v4, 0x1

    .line 254
    goto :goto_0

    .line 256
    :cond_3
    if-ne v4, v3, :cond_5

    .line 257
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->cancelled:Z

    if-nez v6, :cond_4

    .line 258
    invoke-interface {v5}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    .line 260
    :cond_4
    return-void

    .line 263
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->get()J

    move-result-wide p1

    .line 264
    cmp-long v6, v0, p1

    if-nez v6, :cond_7

    .line 265
    iput v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->index:I

    .line 266
    neg-long v6, v0

    invoke-virtual {p0, v6, v7}, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->addAndGet(J)J

    move-result-wide p1

    .line 267
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-nez v6, :cond_6

    .line 268
    return-void

    .line 270
    :cond_6
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 264
    :cond_7
    goto :goto_0
.end method
