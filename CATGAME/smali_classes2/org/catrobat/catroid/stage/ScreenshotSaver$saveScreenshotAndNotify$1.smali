.class final Lorg/catrobat/catroid/stage/ScreenshotSaver$saveScreenshotAndNotify$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ScreenshotSaver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/stage/ScreenshotSaver;->saveScreenshotAndNotify([BLjava/lang/String;Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;Lkotlinx/coroutines/CoroutineScope;)V
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
    c = "org.catrobat.catroid.stage.ScreenshotSaver$saveScreenshotAndNotify$1"
    f = "ScreenshotSaver.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $callback:Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;

.field final synthetic $data:[B

.field final synthetic $fileName:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lorg/catrobat/catroid/stage/ScreenshotSaver;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/stage/ScreenshotSaver;[BLjava/lang/String;Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/stage/ScreenshotSaver$saveScreenshotAndNotify$1;->this$0:Lorg/catrobat/catroid/stage/ScreenshotSaver;

    iput-object p2, p0, Lorg/catrobat/catroid/stage/ScreenshotSaver$saveScreenshotAndNotify$1;->$data:[B

    iput-object p3, p0, Lorg/catrobat/catroid/stage/ScreenshotSaver$saveScreenshotAndNotify$1;->$fileName:Ljava/lang/String;

    iput-object p4, p0, Lorg/catrobat/catroid/stage/ScreenshotSaver$saveScreenshotAndNotify$1;->$callback:Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lorg/catrobat/catroid/stage/ScreenshotSaver$saveScreenshotAndNotify$1;

    iget-object v2, p0, Lorg/catrobat/catroid/stage/ScreenshotSaver$saveScreenshotAndNotify$1;->this$0:Lorg/catrobat/catroid/stage/ScreenshotSaver;

    iget-object v3, p0, Lorg/catrobat/catroid/stage/ScreenshotSaver$saveScreenshotAndNotify$1;->$data:[B

    iget-object v4, p0, Lorg/catrobat/catroid/stage/ScreenshotSaver$saveScreenshotAndNotify$1;->$fileName:Ljava/lang/String;

    iget-object v5, p0, Lorg/catrobat/catroid/stage/ScreenshotSaver$saveScreenshotAndNotify$1;->$callback:Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/catroid/stage/ScreenshotSaver$saveScreenshotAndNotify$1;-><init>(Lorg/catrobat/catroid/stage/ScreenshotSaver;[BLjava/lang/String;Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/stage/ScreenshotSaver$saveScreenshotAndNotify$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/catrobat/catroid/stage/ScreenshotSaver$saveScreenshotAndNotify$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/catrobat/catroid/stage/ScreenshotSaver$saveScreenshotAndNotify$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 73
    iget v0, p0, Lorg/catrobat/catroid/stage/ScreenshotSaver$saveScreenshotAndNotify$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 74
    .local v0, "this":Lorg/catrobat/catroid/stage/ScreenshotSaver$saveScreenshotAndNotify$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lorg/catrobat/catroid/stage/ScreenshotSaver$saveScreenshotAndNotify$1;->this$0:Lorg/catrobat/catroid/stage/ScreenshotSaver;

    .line 75
    iget-object v2, v0, Lorg/catrobat/catroid/stage/ScreenshotSaver$saveScreenshotAndNotify$1;->$data:[B

    .line 76
    iget-object v3, v0, Lorg/catrobat/catroid/stage/ScreenshotSaver$saveScreenshotAndNotify$1;->$fileName:Ljava/lang/String;

    .line 74
    invoke-static {v1, v2, v3}, Lorg/catrobat/catroid/stage/ScreenshotSaver;->access$saveScreenshot(Lorg/catrobat/catroid/stage/ScreenshotSaver;[BLjava/lang/String;)Z

    move-result v1

    .line 78
    .local v1, "success":Z
    iget-object v2, v0, Lorg/catrobat/catroid/stage/ScreenshotSaver$saveScreenshotAndNotify$1;->$callback:Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;

    invoke-interface {v2, v1}, Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;->screenshotSaved(Z)V

    .line 79
    .end local v1    # "success":Z
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .end local v0    # "this":Lorg/catrobat/catroid/stage/ScreenshotSaver$saveScreenshotAndNotify$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
