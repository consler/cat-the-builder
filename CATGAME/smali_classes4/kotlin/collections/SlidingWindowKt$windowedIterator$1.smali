.class final Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SlidingWindow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/SlidingWindowKt;->windowedIterator(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Ljava/util/List<",
        "+TT;>;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlin/sequences/SequenceScope;",
        "",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlin.collections.SlidingWindowKt$windowedIterator$1"
    f = "SlidingWindow.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x2,
        0x2,
        0x3,
        0x3
    }
    l = {
        0x22,
        0x28,
        0x31,
        0x37,
        0x3a
    }
    m = "invokeSuspend"
    n = {
        "$this$iterator",
        "buffer",
        "gap",
        "$this$iterator",
        "buffer",
        "$this$iterator",
        "buffer"
    }
    s = {
        "L$0",
        "L$1",
        "I$0",
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $iterator:Ljava/util/Iterator;

.field final synthetic $partialWindows:Z

.field final synthetic $reuseBuffer:Z

.field final synthetic $size:I

.field final synthetic $step:I

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(IILjava/util/Iterator;ZZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput p1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    iput p2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    iput-object p3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    iput-boolean p4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    iput-boolean p5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;

    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    iget v3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    iget-object v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    iget-boolean v5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    iget-boolean v6, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;-><init>(IILjava/util/Iterator;ZZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 24
    iget v1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    move-object v0, p0

    .local v0, "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 61
    .end local v0    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    move-object v1, p0

    .local v1, "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    move-object v4, v7

    .local v4, "$this$iterator":Lkotlin/sequences/SequenceScope;
    .restart local p1    # "$result":Ljava/lang/Object;
    move-object v5, v7

    .local v5, "buffer":Lkotlin/collections/RingBuffer;
    iget-object v8, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    move-object v5, v8

    check-cast v5, Lkotlin/collections/RingBuffer;

    iget-object v8, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    move-object v4, v8

    check-cast v4, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_b

    .end local v1    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .end local v4    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v5    # "buffer":Lkotlin/collections/RingBuffer;
    .end local p1    # "$result":Ljava/lang/Object;
    :cond_2
    move-object v1, p0

    .restart local v1    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    move-object v5, v7

    .local v5, "$this$iterator":Lkotlin/sequences/SequenceScope;
    .restart local p1    # "$result":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "buffer":Lkotlin/collections/RingBuffer;
    iget-object v9, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    move-object v8, v10

    check-cast v8, Lkotlin/collections/RingBuffer;

    iget-object v10, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    move-object v5, v10

    check-cast v5, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    .end local v1    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .end local v5    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v8    # "buffer":Lkotlin/collections/RingBuffer;
    .end local p1    # "$result":Ljava/lang/Object;
    :cond_3
    move-object v0, p0

    .restart local v0    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    move-object v1, v7

    .local v1, "$this$iterator":Lkotlin/sequences/SequenceScope;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .end local v0    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .end local v1    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :cond_4
    move-object v1, p0

    .local v1, "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    move-object v2, v7

    .local v2, "$this$iterator":Lkotlin/sequences/SequenceScope;
    const/4 v3, 0x0

    .local v3, "gap":I
    .restart local p1    # "$result":Ljava/lang/Object;
    move-object v4, v7

    .local v4, "buffer":Ljava/util/ArrayList;
    iget v3, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iget-object v8, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    move-object v4, v9

    check-cast v4, Ljava/util/ArrayList;

    iget-object v9, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    move-object v2, v9

    check-cast v2, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .end local v2    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v3    # "gap":I
    .end local v4    # "buffer":Ljava/util/ArrayList;
    .end local p1    # "$result":Ljava/lang/Object;
    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v8, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlin/sequences/SequenceScope;

    .line 25
    .local v8, "$this$iterator":Lkotlin/sequences/SequenceScope;
    iget v9, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    const/16 v10, 0x400

    invoke-static {v9, v10}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v9

    .line 26
    .local v9, "bufferInitialCapacity":I
    iget v10, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    iget v11, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    sub-int/2addr v10, v11

    .line 27
    .local v10, "gap":I
    if-ltz v10, :cond_d

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .end local v9    # "bufferInitialCapacity":I
    .local v2, "buffer":Ljava/util/ArrayList;
    const/4 v3, 0x0

    .line 30
    .local v3, "skip":I
    iget-object v4, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    move-object v13, v4

    move-object v4, v2

    move-object v2, v13

    .end local v1    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .end local v2    # "buffer":Ljava/util/ArrayList;
    .restart local v0    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .restart local v4    # "buffer":Ljava/util/ArrayList;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 31
    .local v9, "e":Ljava/lang/Object;
    if-lez v3, :cond_6

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 32
    :cond_6
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .end local v9    # "e":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v11, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    if-ne v9, v11, :cond_9

    .line 34
    .end local v3    # "skip":I
    iput-object v8, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iput v10, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput v6, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v8, v4, v0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_7

    .line 24
    return-object v1

    .line 34
    :cond_7
    move v3, v10

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    move-object v13, v8

    move-object v8, v2

    move-object v2, v13

    .line 35
    .end local v0    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .end local v8    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v10    # "gap":I
    .restart local v1    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .local v2, "$this$iterator":Lkotlin/sequences/SequenceScope;
    .local v3, "gap":I
    :goto_1
    iget-boolean v9, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v9, :cond_8

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_8
    new-instance v9, Ljava/util/ArrayList;

    iget v10, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v9

    .line 36
    :goto_2
    move v9, v3

    move v10, v3

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    move-object v13, v8

    move-object v8, v2

    move-object v2, v13

    .line 30
    .end local v1    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .end local v2    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .restart local v0    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .local v3, "skip":I
    .restart local v8    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .restart local v10    # "gap":I
    :cond_9
    :goto_3
    goto :goto_0

    .line 39
    .end local v3    # "skip":I
    .end local v10    # "gap":I
    :cond_a
    move-object v2, v4

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v6

    if-eqz v2, :cond_18

    .line 40
    iget-boolean v2, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    if-nez v2, :cond_b

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    if-ne v2, v3, :cond_18

    :cond_b
    iput-object v7, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v8, v4, v0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v4    # "buffer":Ljava/util/ArrayList;
    if-ne v2, v1, :cond_c

    .line 24
    return-object v1

    .line 40
    :cond_c
    move-object v1, v8

    .end local v8    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .local v1, "$this$iterator":Lkotlin/sequences/SequenceScope;
    :goto_4
    goto/16 :goto_d

    .line 43
    .end local v0    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .local v1, "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .restart local v8    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .local v9, "bufferInitialCapacity":I
    :cond_d
    new-instance v5, Lkotlin/collections/RingBuffer;

    invoke-direct {v5, v9}, Lkotlin/collections/RingBuffer;-><init>(I)V

    .line 44
    .end local v9    # "bufferInitialCapacity":I
    .local v5, "buffer":Lkotlin/collections/RingBuffer;
    iget-object v9, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    move-object v12, v8

    move-object v8, v5

    move-object v5, v12

    .local v5, "$this$iterator":Lkotlin/sequences/SequenceScope;
    .local v8, "buffer":Lkotlin/collections/RingBuffer;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 45
    .local v10, "e":Ljava/lang/Object;
    invoke-virtual {v8, v10}, Lkotlin/collections/RingBuffer;->add(Ljava/lang/Object;)V

    .line 46
    .end local v10    # "e":Ljava/lang/Object;
    invoke-virtual {v8}, Lkotlin/collections/RingBuffer;->isFull()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 47
    invoke-virtual {v8}, Lkotlin/collections/RingBuffer;->size()I

    move-result v10

    iget v11, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    if-ge v10, v11, :cond_e

    invoke-virtual {v8, v11}, Lkotlin/collections/RingBuffer;->expanded(I)Lkotlin/collections/RingBuffer;

    move-result-object v8

    goto :goto_8

    .line 49
    :cond_e
    iget-boolean v10, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v10, :cond_f

    move-object v10, v8

    check-cast v10, Ljava/util/List;

    goto :goto_6

    :cond_f
    new-instance v10, Ljava/util/ArrayList;

    move-object v11, v8

    check-cast v11, Ljava/util/Collection;

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v10, Ljava/util/List;

    :goto_6
    iput-object v5, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput-object v8, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput-object v9, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iput v4, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v5, v10, v1}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v0, :cond_10

    .line 24
    return-object v0

    .line 50
    :cond_10
    :goto_7
    iget v10, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    invoke-virtual {v8, v10}, Lkotlin/collections/RingBuffer;->removeFirst(I)V

    .line 44
    :cond_11
    :goto_8
    goto :goto_5

    .line 53
    :cond_12
    iget-boolean v4, v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    if-eqz v4, :cond_17

    move-object v4, v5

    move-object v5, v8

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    .line 54
    .end local v1    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .end local v8    # "buffer":Lkotlin/collections/RingBuffer;
    .restart local v0    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .local v4, "$this$iterator":Lkotlin/sequences/SequenceScope;
    .local v5, "buffer":Lkotlin/collections/RingBuffer;
    :goto_9
    invoke-virtual {v5}, Lkotlin/collections/RingBuffer;->size()I

    move-result v8

    iget v9, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    if-le v8, v9, :cond_15

    .line 55
    iget-boolean v8, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v8, :cond_13

    move-object v8, v5

    check-cast v8, Ljava/util/List;

    goto :goto_a

    :cond_13
    new-instance v8, Ljava/util/ArrayList;

    move-object v9, v5

    check-cast v9, Ljava/util/Collection;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v8, Ljava/util/List;

    :goto_a
    iput-object v4, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v4, v8, v0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_14

    .line 24
    return-object v1

    .line 56
    :cond_14
    :goto_b
    iget v8, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    invoke-virtual {v5, v8}, Lkotlin/collections/RingBuffer;->removeFirst(I)V

    .line 54
    goto :goto_9

    .line 58
    :cond_15
    move-object v3, v5

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v6

    if-eqz v3, :cond_18

    iput-object v7, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iput v2, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v4, v5, v0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v4    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v5    # "buffer":Lkotlin/collections/RingBuffer;
    if-ne v2, v1, :cond_16

    .line 24
    return-object v1

    .line 60
    :cond_16
    :goto_c
    goto :goto_d

    .line 53
    .end local v0    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .restart local v1    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .local v5, "$this$iterator":Lkotlin/sequences/SequenceScope;
    .restart local v8    # "buffer":Lkotlin/collections/RingBuffer;
    :cond_17
    move-object v0, v1

    .line 61
    .end local v1    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .end local v5    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v8    # "buffer":Lkotlin/collections/RingBuffer;
    .restart local v0    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    :cond_18
    :goto_d
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
