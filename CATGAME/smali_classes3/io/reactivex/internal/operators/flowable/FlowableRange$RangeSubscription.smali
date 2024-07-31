.class final Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;
.source "FlowableRange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeSubscription"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x23e7f25903d0c345L


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;II)V
    .locals 0
    .param p2, "index"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .line 117
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Ljava/lang/Integer;>;"
    invoke-direct {p0, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;-><init>(II)V

    .line 118
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 119
    return-void
.end method


# virtual methods
.method fastPath()V
    .locals 4

    .line 123
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->end:I

    .line 124
    .local v0, "f":I
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 126
    .local v1, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Ljava/lang/Integer;>;"
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->index:I

    .local v2, "i":I
    :goto_0
    if-eq v2, v0, :cond_1

    .line 127
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->cancelled:Z

    if-eqz v3, :cond_0

    .line 128
    return-void

    .line 130
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v2    # "i":I
    :cond_1
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->cancelled:Z

    if-eqz v2, :cond_2

    .line 133
    return-void

    .line 135
    :cond_2
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 136
    return-void
.end method

.method slowPath(J)V
    .locals 7
    .param p1, "r"    # J

    .line 140
    const-wide/16 v0, 0x0

    .line 141
    .local v0, "e":J
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->end:I

    .line 142
    .local v2, "f":I
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->index:I

    .line 143
    .local v3, "i":I
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 147
    .local v4, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Ljava/lang/Integer;>;"
    :goto_0
    cmp-long v5, v0, p1

    if-eqz v5, :cond_1

    if-eq v3, v2, :cond_1

    .line 148
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->cancelled:Z

    if-eqz v5, :cond_0

    .line 149
    return-void

    .line 152
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 154
    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    .line 155
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    :cond_1
    if-ne v3, v2, :cond_3

    .line 159
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->cancelled:Z

    if-nez v5, :cond_2

    .line 160
    invoke-interface {v4}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 162
    :cond_2
    return-void

    .line 165
    :cond_3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->get()J

    move-result-wide p1

    .line 166
    cmp-long v5, v0, p1

    if-nez v5, :cond_5

    .line 167
    iput v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->index:I

    .line 168
    neg-long v5, v0

    invoke-virtual {p0, v5, v6}, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->addAndGet(J)J

    move-result-wide p1

    .line 169
    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-nez v5, :cond_4

    .line 170
    return-void

    .line 172
    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 166
    :cond_5
    goto :goto_0
.end method
