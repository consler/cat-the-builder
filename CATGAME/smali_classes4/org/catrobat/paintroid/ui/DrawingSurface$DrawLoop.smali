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
    bv = {
        0x1,
        0x0,
        0x3
    }
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
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final holder:Landroid/view/SurfaceHolder;

.field final synthetic this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/ui/DrawingSurface;)V
    .locals 2
    .param p1, "this$0"    # Lorg/catrobat/paintroid/ui/DrawingSurface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/DrawingSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const-string v1, "getHolder()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->holder:Landroid/view/SurfaceHolder;

    return-void
.end method


# virtual methods
.method public final getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->holder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public run()V
    .locals 7

    .line 262
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getSurfaceLock$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .local v0, "it":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 263
    .local v1, "$i$a$-let-DrawingSurface$DrawLoop$run$1":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 264
    .local v2, "$i$a$-synchronized-DrawingSurface$DrawLoop$run$1$1":I
    :try_start_0
    iget-object v3, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-static {v3}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getSurfaceDirty$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-static {v3}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getSurfaceReady$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 265
    nop

    .line 266
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v3

    .line 268
    .end local v2    # "$i$a$-synchronized-DrawingSurface$DrawLoop$run$1$1":I
    monitor-exit v0

    return-void

    .line 271
    .restart local v2    # "$i$a$-synchronized-DrawingSurface$DrawLoop$run$1$1":I
    :cond_0
    :try_start_2
    iget-object v3, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$setSurfaceDirty$p(Lorg/catrobat/paintroid/ui/DrawingSurface;Z)V

    .line 272
    :goto_0
    nop

    .line 273
    iget-object v3, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-static {v3}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getSurfaceReady$p(Lorg/catrobat/paintroid/ui/DrawingSurface;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_1

    .line 274
    .end local v2    # "$i$a$-synchronized-DrawingSurface$DrawLoop$run$1$1":I
    monitor-exit v0

    return-void

    .line 276
    .restart local v2    # "$i$a$-synchronized-DrawingSurface$DrawLoop$run$1$1":I
    :cond_1
    nop

    .end local v2    # "$i$a$-synchronized-DrawingSurface$DrawLoop$run$1$1":I
    :try_start_3
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 263
    monitor-exit v0

    .line 277
    nop

    .line 262
    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-DrawingSurface$DrawLoop$run$1":I
    goto :goto_1

    .line 263
    .restart local v0    # "it":Ljava/lang/Object;
    .restart local v1    # "$i$a$-let-DrawingSurface$DrawLoop$run$1":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2

    .line 279
    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-DrawingSurface$DrawLoop$run$1":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Canvas;

    .line 280
    .local v0, "canvas":Ljava/lang/Object;
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->holder:Landroid/view/SurfaceHolder;

    monitor-enter v1

    const/4 v2, 0x0

    .line 281
    .local v2, "$i$a$-synchronized-DrawingSurface$DrawLoop$run$2":I
    nop

    .line 282
    :try_start_4
    iget-object v3, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v3

    move-object v0, v3

    .line 283
    if-eqz v0, :cond_3

    move-object v3, v0

    .local v3, "it":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    .line 284
    .local v4, "$i$a$-let-DrawingSurface$DrawLoop$run$2$1":I
    iget-object v5, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurface;

    invoke-static {v5, v3}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$doDraw(Lorg/catrobat/paintroid/ui/DrawingSurface;Landroid/graphics/Canvas;)V

    .line 285
    nop

    .end local v3    # "it":Landroid/graphics/Canvas;
    .end local v4    # "$i$a$-let-DrawingSurface$DrawLoop$run$2$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 283
    :cond_3
    nop

    .line 289
    if-eqz v0, :cond_4

    move-object v3, v0

    .restart local v3    # "it":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    .line 290
    .local v4, "$i$a$-let-DrawingSurface$DrawLoop$run$2$2":I
    :try_start_5
    iget-object v5, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 291
    nop

    .line 289
    .end local v3    # "it":Landroid/graphics/Canvas;
    .end local v4    # "$i$a$-let-DrawingSurface$DrawLoop$run$2$2":I
    :cond_4
    :goto_2
    nop

    .line 292
    goto :goto_3

    :catchall_1
    move-exception v3

    goto :goto_4

    .line 286
    :catch_1
    move-exception v3

    .line 287
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_6
    invoke-static {}, Lorg/catrobat/paintroid/ui/DrawingSurface;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v4

    const-string v5, "run: "

    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 289
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v0, :cond_4

    move-object v3, v0

    .local v3, "it":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    .line 290
    .restart local v4    # "$i$a$-let-DrawingSurface$DrawLoop$run$2$2":I
    :try_start_7
    iget-object v5, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 291
    nop

    .end local v3    # "it":Landroid/graphics/Canvas;
    .end local v4    # "$i$a$-let-DrawingSurface$DrawLoop$run$2$2":I
    goto :goto_2

    .line 289
    :goto_3
    nop

    .line 280
    .end local v2    # "$i$a$-synchronized-DrawingSurface$DrawLoop$run$2":I
    monitor-exit v1

    .line 294
    return-void

    .line 289
    .restart local v2    # "$i$a$-synchronized-DrawingSurface$DrawLoop$run$2":I
    :goto_4
    if-eqz v0, :cond_5

    move-object v4, v0

    .local v4, "it":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    .line 290
    .local v5, "$i$a$-let-DrawingSurface$DrawLoop$run$2$2":I
    :try_start_8
    iget-object v6, p0, Lorg/catrobat/paintroid/ui/DrawingSurface$DrawLoop;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v4}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 291
    nop

    .end local v4    # "it":Landroid/graphics/Canvas;
    .end local v5    # "$i$a$-let-DrawingSurface$DrawLoop$run$2$2":I
    goto :goto_5

    .line 280
    .end local v2    # "$i$a$-synchronized-DrawingSurface$DrawLoop$run$2":I
    :catchall_2
    move-exception v2

    goto :goto_6

    .line 289
    .restart local v2    # "$i$a$-synchronized-DrawingSurface$DrawLoop$run$2":I
    :cond_5
    :goto_5
    nop

    .end local v0    # "canvas":Ljava/lang/Object;
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 280
    .end local v2    # "$i$a$-synchronized-DrawingSurface$DrawLoop$run$2":I
    .restart local v0    # "canvas":Ljava/lang/Object;
    :goto_6
    monitor-exit v1

    throw v2
.end method
