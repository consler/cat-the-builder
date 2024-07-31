.class final Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;
.source "FlowableRangeLong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRangeLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeConditionalSubscription"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x23e7f25903d0c345L


# instance fields
.field final actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;JJ)V
    .locals 0
    .param p2, "index"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 187
    .local p1, "actual":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-Ljava/lang/Long;>;"
    invoke-direct {p0, p2, p3, p4, p5}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;-><init>(JJ)V

    .line 188
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 189
    return-void
.end method


# virtual methods
.method fastPath()V
    .locals 7

    .line 193
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->end:J

    .line 194
    .local v0, "f":J
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 196
    .local v2, "a":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-Ljava/lang/Long;>;"
    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->index:J

    .local v3, "i":J
    :goto_0
    cmp-long v5, v3, v0

    if-eqz v5, :cond_1

    .line 197
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->cancelled:Z

    if-eqz v5, :cond_0

    .line 198
    return-void

    .line 200
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    .line 196
    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    .line 202
    .end local v3    # "i":J
    :cond_1
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->cancelled:Z

    if-eqz v3, :cond_2

    .line 203
    return-void

    .line 205
    :cond_2
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    .line 206
    return-void
.end method

.method slowPath(J)V
    .locals 10
    .param p1, "r"    # J

    .line 210
    const-wide/16 v0, 0x0

    .line 211
    .local v0, "e":J
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->end:J

    .line 212
    .local v2, "f":J
    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->index:J

    .line 213
    .local v4, "i":J
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 217
    .local v6, "a":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-Ljava/lang/Long;>;"
    :goto_0
    cmp-long v7, v0, p1

    if-eqz v7, :cond_2

    cmp-long v7, v4, v2

    if-eqz v7, :cond_2

    .line 218
    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->cancelled:Z

    if-eqz v7, :cond_0

    .line 219
    return-void

    .line 222
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v7

    const-wide/16 v8, 0x1

    if-eqz v7, :cond_1

    .line 223
    add-long/2addr v0, v8

    .line 226
    :cond_1
    add-long/2addr v4, v8

    goto :goto_0

    .line 229
    :cond_2
    cmp-long v7, v4, v2

    if-nez v7, :cond_4

    .line 230
    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->cancelled:Z

    if-nez v7, :cond_3

    .line 231
    invoke-interface {v6}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    .line 233
    :cond_3
    return-void

    .line 236
    :cond_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->get()J

    move-result-wide p1

    .line 237
    cmp-long v7, v0, p1

    if-nez v7, :cond_6

    .line 238
    iput-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->index:J

    .line 239
    neg-long v7, v0

    invoke-virtual {p0, v7, v8}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->addAndGet(J)J

    move-result-wide p1

    .line 240
    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-nez v7, :cond_5

    .line 241
    return-void

    .line 243
    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 237
    :cond_6
    goto :goto_0
.end method
