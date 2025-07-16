.class final Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;
.super Ljava/lang/Object;
.source "DrawingSurface.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/ui/DrawingSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DrawLoop"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;",
        "Ljava/lang/Runnable;",
        "(Lorg/catrobat/paintroid/ui/DrawingSurface;)V",
        "holder",
        "Landroid/view/SurfaceHolder;",
        "getHolder",
        "()Landroid/view/SurfaceHolder;",
        "run",
        "",
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final holder:Landroid/view/SurfaceHolder;

.field final synthetic this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/ui/DrawingSurface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/DrawingSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const-string v0, "getHolder()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->holder:Landroid/view/SurfaceHolder;

    return-void
.end method


# virtual methods
.method public final getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 248
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->holder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public run()V
    .locals 8

    .line 250
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getSurfaceLock$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    .line 251
    monitor-enter v0

    .line 252
    :try_start_0
    invoke-static {v1}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getSurfaceDirty$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getSurfaceReady$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v2, :cond_1

    .line 254
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_0

    .line 256
    :catch_0
    monitor-exit v0

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 259
    :try_start_2
    invoke-static {v1, v2}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$setSurfaceDirty$p(Lorg/catrobat/paintroid/ui/DrawingSurface;Z)V

    .line 261
    :goto_0
    invoke-static {v1}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getSurfaceReady$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-nez v1, :cond_2

    .line 262
    monitor-exit v0

    return-void

    .line 264
    :cond_2
    :try_start_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 251
    monitor-exit v0

    .line 268
    :goto_1
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->holder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    monitor-enter v0

    const/4 v2, 0x0

    .line 270
    :try_start_4
    invoke-static {v1}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getIdlingResource$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Landroidx/test/espresso/idling/CountingIdlingResource;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "idlingResource"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_3
    invoke-virtual {v3}, Landroidx/test/espresso/idling/CountingIdlingResource;->increment()V

    .line 271
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v3, :cond_4

    goto :goto_2

    .line 273
    :cond_4
    :try_start_5
    invoke-static {v1, v3}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$doDraw(Lorg/catrobat/paintroid/ui/DrawingSurface;Landroid/graphics/Canvas;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 279
    :goto_2
    :try_start_6
    invoke-static {v1}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getIdlingResource$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Landroidx/test/espresso/idling/CountingIdlingResource;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, "idlingResource"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v2, v1

    :goto_3
    invoke-virtual {v2}, Landroidx/test/espresso/idling/CountingIdlingResource;->decrement()V

    if-nez v3, :cond_6

    goto :goto_6

    .line 281
    :cond_6
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    :catchall_0
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    goto :goto_7

    :catch_1
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    goto :goto_4

    :catchall_1
    move-exception v3

    move-object v4, v2

    goto :goto_7

    :catch_2
    move-exception v3

    move-object v4, v2

    .line 277
    :goto_4
    :try_start_7
    invoke-static {}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v5

    const-string v6, "run: "

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 279
    :try_start_8
    invoke-static {v1}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getIdlingResource$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Landroidx/test/espresso/idling/CountingIdlingResource;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v1, "idlingResource"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    move-object v2, v1

    :goto_5
    invoke-virtual {v2}, Landroidx/test/espresso/idling/CountingIdlingResource;->decrement()V

    if-nez v4, :cond_8

    goto :goto_6

    .line 281
    :cond_8
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 268
    :goto_6
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v3

    .line 279
    :goto_7
    :try_start_9
    invoke-static {v1}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getIdlingResource$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Landroidx/test/espresso/idling/CountingIdlingResource;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, "idlingResource"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    move-object v2, v1

    :goto_8
    invoke-virtual {v2}, Landroidx/test/espresso/idling/CountingIdlingResource;->decrement()V

    if-nez v4, :cond_a

    goto :goto_9

    .line 281
    :cond_a
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 280
    :goto_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v1

    .line 268
    monitor-exit v0

    throw v1

    :catchall_4
    move-exception v1

    .line 251
    monitor-exit v0

    throw v1
.end method
