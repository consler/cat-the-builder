.class final Lorg/catrobat/paintroid/tools/implementation/SprayTool$createSprayPatternAsync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SprayTool.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/tools/implementation/SprayTool;->createSprayPatternAsync()V
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
    c = "org.catrobat.paintroid.tools.implementation.SprayTool$createSprayPatternAsync$1"
    f = "SprayTool.kt"
    i = {}
    l = {
        0xd3
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lorg/catrobat/paintroid/tools/implementation/SprayTool;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/tools/implementation/SprayTool;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/paintroid/tools/implementation/SprayTool;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/catrobat/paintroid/tools/implementation/SprayTool$createSprayPatternAsync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/SprayTool$createSprayPatternAsync$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/SprayTool;

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

    new-instance p1, Lorg/catrobat/paintroid/tools/implementation/SprayTool$createSprayPatternAsync$1;

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/SprayTool$createSprayPatternAsync$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/SprayTool;

    invoke-direct {p1, v0, p2}, Lorg/catrobat/paintroid/tools/implementation/SprayTool$createSprayPatternAsync$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/SprayTool;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/SprayTool$createSprayPatternAsync$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/SprayTool$createSprayPatternAsync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/catrobat/paintroid/tools/implementation/SprayTool$createSprayPatternAsync$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/catrobat/paintroid/tools/implementation/SprayTool$createSprayPatternAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 194
    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/SprayTool$createSprayPatternAsync$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    .line 196
    :cond_2
    iget-object v1, p1, Lorg/catrobat/paintroid/tools/implementation/SprayTool$createSprayPatternAsync$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/SprayTool;

    invoke-static {v1}, Lorg/catrobat/paintroid/tools/implementation/SprayTool;->access$getSprayRadius$p(Lorg/catrobat/paintroid/tools/implementation/SprayTool;)I

    move-result v1

    div-int/lit8 v1, v1, 0x1e

    iget-object v3, p1, Lorg/catrobat/paintroid/tools/implementation/SprayTool$createSprayPatternAsync$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/SprayTool;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_5

    .line 197
    invoke-virtual {v3}, Lorg/catrobat/paintroid/tools/implementation/SprayTool;->getSprayedPoints()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 198
    invoke-static {v3}, Lorg/catrobat/paintroid/tools/implementation/SprayTool;->access$createMidPoint(Lorg/catrobat/paintroid/tools/implementation/SprayTool;)Landroid/graphics/PointF;

    move-result-object v5

    .line 199
    iget-object v6, v3, Lorg/catrobat/paintroid/tools/implementation/SprayTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v6, v5}, Lorg/catrobat/paintroid/tools/Workspace;->contains(Landroid/graphics/PointF;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 200
    invoke-static {v3}, Lorg/catrobat/paintroid/tools/implementation/SprayTool;->access$getPreviewCanvas$p(Lorg/catrobat/paintroid/tools/implementation/SprayTool;)Landroid/graphics/Canvas;

    move-result-object v6

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3}, Lorg/catrobat/paintroid/tools/implementation/SprayTool;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 201
    invoke-virtual {v3}, Lorg/catrobat/paintroid/tools/implementation/SprayTool;->getSprayedPoints()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_3
    invoke-static {v3}, Lorg/catrobat/paintroid/tools/implementation/SprayTool;->access$createRandomPointInCircle(Lorg/catrobat/paintroid/tools/implementation/SprayTool;)Landroid/graphics/PointF;

    move-result-object v5

    .line 205
    iget-object v6, v3, Lorg/catrobat/paintroid/tools/implementation/SprayTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v6, v5}, Lorg/catrobat/paintroid/tools/Workspace;->contains(Landroid/graphics/PointF;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 206
    invoke-static {v3}, Lorg/catrobat/paintroid/tools/implementation/SprayTool;->access$getPreviewCanvas$p(Lorg/catrobat/paintroid/tools/implementation/SprayTool;)Landroid/graphics/Canvas;

    move-result-object v6

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3}, Lorg/catrobat/paintroid/tools/implementation/SprayTool;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 207
    invoke-virtual {v3}, Lorg/catrobat/paintroid/tools/implementation/SprayTool;->getSprayedPoints()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 211
    :cond_5
    move-object v1, p1

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p1, Lorg/catrobat/paintroid/tools/implementation/SprayTool$createSprayPatternAsync$1;->label:I

    const-wide/16 v3, 0x1

    invoke-static {v3, v4, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0
.end method
