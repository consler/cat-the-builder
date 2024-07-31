.class final Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;
.source "FlowableRangeLong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRangeLong;
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;JJ)V
    .locals 0
    .param p2, "index"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 118
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Ljava/lang/Long;>;"
    invoke-direct {p0, p2, p3, p4, p5}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;-><init>(JJ)V

    .line 119
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 120
    return-void
.end method


# virtual methods
.method fastPath()V
    .locals 7

    .line 124
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->end:J

    .line 125
    .local v0, "f":J
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 127
    .local v2, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Ljava/lang/Long;>;"
    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->index:J

    .local v3, "i":J
    :goto_0
    cmp-long v5, v3, v0

    if-eqz v5, :cond_1

    .line 128
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->cancelled:Z

    if-eqz v5, :cond_0

    .line 129
    return-void

    .line 131
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 127
    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    .line 133
    .end local v3    # "i":J
    :cond_1
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->cancelled:Z

    if-eqz v3, :cond_2

    .line 134
    return-void

    .line 136
    :cond_2
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 137
    return-void
.end method

.method slowPath(J)V
    .locals 9
    .param p1, "r"    # J

    .line 141
    const-wide/16 v0, 0x0

    .line 142
    .local v0, "e":J
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->end:J

    .line 143
    .local v2, "f":J
    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->index:J

    .line 144
    .local v4, "i":J
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 148
    .local v6, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Ljava/lang/Long;>;"
    :goto_0
    cmp-long v7, v0, p1

    if-eqz v7, :cond_1

    cmp-long v7, v4, v2

    if-eqz v7, :cond_1

    .line 149
    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->cancelled:Z

    if-eqz v7, :cond_0

    .line 150
    return-void

    .line 153
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 155
    const-wide/16 v7, 0x1

    add-long/2addr v0, v7

    .line 156
    add-long/2addr v4, v7

    goto :goto_0

    .line 159
    :cond_1
    cmp-long v7, v4, v2

    if-nez v7, :cond_3

    .line 160
    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->cancelled:Z

    if-nez v7, :cond_2

    .line 161
    invoke-interface {v6}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 163
    :cond_2
    return-void

    .line 166
    :cond_3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->get()J

    move-result-wide p1

    .line 167
    cmp-long v7, v0, p1

    if-nez v7, :cond_5

    .line 168
    iput-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->index:J

    .line 169
    neg-long v7, v0

    invoke-virtual {p0, v7, v8}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->addAndGet(J)J

    move-result-wide p1

    .line 170
    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-nez v7, :cond_4

    .line 171
    return-void

    .line 173
    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 167
    :cond_5
    goto :goto_0
.end method
