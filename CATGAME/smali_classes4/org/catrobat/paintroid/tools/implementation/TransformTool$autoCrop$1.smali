.class final Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransformTool.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/tools/implementation/TransformTool;->autoCrop()V
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
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.catrobat.paintroid.tools.implementation.TransformTool$autoCrop$1"
    f = "TransformTool.kt"
    i = {}
    l = {
        0x1ac
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/tools/implementation/TransformTool;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/paintroid/tools/implementation/TransformTool;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    invoke-direct {p1, v0, p2}, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/TransformTool;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 418
    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 433
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 418
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 419
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    iget-object p1, p1, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    invoke-virtual {p1}, Landroidx/test/espresso/idling/CountingIdlingResource;->increment()V

    .line 420
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    invoke-static {p1}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->access$getCropAlgorithm$p(Lorg/catrobat/paintroid/tools/implementation/TransformTool;)Lorg/catrobat/paintroid/tools/helper/CropAlgorithm;

    move-result-object p1

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    iget-object v1, v1, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->getBitmapOfAllLayers()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/catrobat/paintroid/tools/helper/CropAlgorithm;->crop(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 422
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    iput v3, v1, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxWidth:F

    .line 423
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v4

    iput v3, v1, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->boxHeight:F

    .line 424
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    iget-object v1, v1, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 425
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    iget-object v1, v1, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->toolPosition:Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v2

    int-to-float p1, p1

    div-float/2addr p1, v5

    add-float/2addr v3, p1

    iput v3, v1, Landroid/graphics/PointF;->y:F

    .line 428
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1$1;

    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/TransformTool;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;->label:I

    invoke-static {p1, v1, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 432
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TransformTool$autoCrop$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    iget-object p1, p1, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    invoke-virtual {p1}, Landroidx/test/espresso/idling/CountingIdlingResource;->decrement()V

    .line 433
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
