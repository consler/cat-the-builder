.class final Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/MainActivity;->startAutoSaveCoroutine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.catrobat.paintroid.MainActivity$startAutoSaveCoroutine$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x2a4
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lorg/catrobat/paintroid/MainActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/MainActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;->this$0:Lorg/catrobat/paintroid/MainActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;

    iget-object v1, p0, Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;->this$0:Lorg/catrobat/paintroid/MainActivity;

    invoke-direct {v0, v1, p2}, Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;-><init>(Lorg/catrobat/paintroid/MainActivity;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 674
    iget v1, p0, Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    move-object v1, p0

    .local v1, "this":Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 675
    .end local v1    # "this":Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 674
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 675
    .restart local v1    # "this":Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_0
    nop

    .line 676
    const/16 v3, 0x3e8

    int-to-long v3, v3

    iput v2, v1, Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;->label:I

    invoke-static {v3, v4, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    .line 674
    return-object v0

    .line 677
    :cond_2
    :goto_1
    iget-object v3, v1, Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;->this$0:Lorg/catrobat/paintroid/MainActivity;

    invoke-static {v3, v2}, Lorg/catrobat/paintroid/MainActivity;->access$addToMinuteTemporaryCopiesCounter(Lorg/catrobat/paintroid/MainActivity;I)V

    .line 678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v1, Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;->this$0:Lorg/catrobat/paintroid/MainActivity;

    invoke-static {v5}, Lorg/catrobat/paintroid/MainActivity;->access$getLastInteractionTime$p(Lorg/catrobat/paintroid/MainActivity;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const/16 v5, 0x7d0

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    iget-object v3, v1, Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;->this$0:Lorg/catrobat/paintroid/MainActivity;

    invoke-static {v3}, Lorg/catrobat/paintroid/MainActivity;->access$getMinuteTemporaryCopiesCounter$p(Lorg/catrobat/paintroid/MainActivity;)I

    move-result v3

    const/16 v4, 0x3c

    if-lt v3, v4, :cond_4

    :cond_3
    iget-object v3, v1, Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;->this$0:Lorg/catrobat/paintroid/MainActivity;

    invoke-static {v3}, Lorg/catrobat/paintroid/MainActivity;->access$getUserInteraction$p(Lorg/catrobat/paintroid/MainActivity;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 679
    iget-object v3, v1, Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;->this$0:Lorg/catrobat/paintroid/MainActivity;

    invoke-static {v3}, Lorg/catrobat/paintroid/MainActivity;->access$getPresenterMain$p(Lorg/catrobat/paintroid/MainActivity;)Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object v3

    invoke-interface {v3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->saveNewTemporaryImage()V

    .line 680
    iget-object v3, v1, Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;->this$0:Lorg/catrobat/paintroid/MainActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/catrobat/paintroid/MainActivity;->access$setMinuteTemporaryCopiesCounter$p(Lorg/catrobat/paintroid/MainActivity;I)V

    .line 681
    iget-object v3, v1, Lorg/catrobat/paintroid/MainActivity$startAutoSaveCoroutine$1;->this$0:Lorg/catrobat/paintroid/MainActivity;

    invoke-static {v3, v4}, Lorg/catrobat/paintroid/MainActivity;->access$setUserInteraction$p(Lorg/catrobat/paintroid/MainActivity;Z)V

    .line 675
    :cond_4
    goto :goto_0
.end method
