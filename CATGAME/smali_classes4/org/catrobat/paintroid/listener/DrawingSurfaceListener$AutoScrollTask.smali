.class public Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;
.super Ljava/lang/Object;
.source "DrawingSurfaceListener.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoScrollTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000  2\u00020\u0001:\u0001 B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u0015H\u0002J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\u0018\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\u001e\u001a\u00020\u001bH\u0016J\u0008\u0010\u001f\u001a\u00020\u001bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R2\u0010\t\u001a&\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\u000b0\u000b \u000c*\u0012\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\u000b0\u000b\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u000eX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;",
        "Ljava/lang/Runnable;",
        "handler",
        "Landroid/os/Handler;",
        "callback",
        "Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;",
        "(Landroid/os/Handler;Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;)V",
        "height",
        "",
        "ignoredTools",
        "Ljava/util/EnumSet;",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "kotlin.jvm.PlatformType",
        "isRunning",
        "",
        "()Z",
        "setRunning",
        "(Z)V",
        "newMovePoint",
        "Landroid/graphics/PointF;",
        "pointX",
        "",
        "pointY",
        "width",
        "calculateScrollInterval",
        "scale",
        "run",
        "",
        "setEventPoint",
        "setViewDimensions",
        "start",
        "stop",
        "Companion",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask$Companion;

.field private static final SCROLL_INTERVAL_FACTOR:I = 0x28

.field private static final STEP:F = 2.0f


# instance fields
.field private final callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;

.field private final handler:Landroid/os/Handler;

.field private height:I

.field private final ignoredTools:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/catrobat/paintroid/tools/ToolType;",
            ">;"
        }
    .end annotation
.end field

.field private isRunning:Z

.field private final newMovePoint:Landroid/graphics/PointF;

.field private pointX:F

.field private pointY:F

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->Companion:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;

    .line 237
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->PIPETTE:Lorg/catrobat/paintroid/tools/ToolType;

    check-cast v0, Ljava/lang/Enum;

    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->FILL:Lorg/catrobat/paintroid/tools/ToolType;

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lorg/catrobat/paintroid/tools/ToolType;->TRANSFORM:Lorg/catrobat/paintroid/tools/ToolType;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->ignoredTools:Ljava/util/EnumSet;

    .line 238
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->newMovePoint:Landroid/graphics/PointF;

    return-void
.end method

.method private final calculateScrollInterval(F)I
    .locals 4
    .param p1, "scale"    # F

    .line 274
    const/16 v0, 0x28

    int-to-double v0, v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->isRunning:Z

    return v0
.end method

.method public run()V
    .locals 5

    .line 277
    nop

    .line 278
    iget-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;

    iget v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->pointX:F

    iget v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->pointY:F

    iget v3, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->width:I

    iget v4, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->height:I

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;->getToolAutoScrollDirection(FFII)Landroid/graphics/Point;

    move-result-object v0

    .line 277
    nop

    .line 279
    .local v0, "autoScrollDirection":Landroid/graphics/Point;
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_1

    .line 280
    :cond_0
    iget-object v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->newMovePoint:Landroid/graphics/PointF;

    iget v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->pointX:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 281
    iget-object v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->newMovePoint:Landroid/graphics/PointF;

    iget v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->pointY:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 282
    iget-object v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;

    iget-object v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->newMovePoint:Landroid/graphics/PointF;

    invoke-interface {v1, v2}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;->convertToCanvasFromSurface(Landroid/graphics/PointF;)V

    .line 283
    iget-object v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;

    iget-object v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->newMovePoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget-object v3, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->newMovePoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;->isPointOnCanvas(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    iget-object v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;

    .line 285
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    .line 286
    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    .line 284
    invoke-interface {v1, v2, v4}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;->translatePerspective(FF)V

    .line 288
    iget-object v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;

    iget-object v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->newMovePoint:Landroid/graphics/PointF;

    invoke-interface {v1, v2}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;->handleToolMove(Landroid/graphics/PointF;)V

    .line 289
    iget-object v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;

    invoke-interface {v1}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;->refreshDrawingSurface()V

    .line 292
    :cond_1
    iget-object v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->handler:Landroid/os/Handler;

    .line 293
    move-object v2, p0

    check-cast v2, Ljava/lang/Runnable;

    .line 294
    iget-object v3, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;

    invoke-interface {v3}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;->getPerspectiveScale()F

    move-result v3

    invoke-direct {p0, v3}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->calculateScrollInterval(F)I

    move-result v3

    int-to-long v3, v3

    .line 292
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 296
    return-void
.end method

.method public setEventPoint(FF)V
    .locals 0
    .param p1, "pointX"    # F
    .param p2, "pointY"    # F

    .line 248
    iput p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->pointX:F

    .line 249
    iput p2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->pointY:F

    .line 250
    return-void
.end method

.method public setRunning(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 232
    iput-boolean p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->isRunning:Z

    return-void
.end method

.method public setViewDimensions(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 253
    iput p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->width:I

    .line 254
    iput p2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->height:I

    .line 255
    return-void
.end method

.method public start()V
    .locals 3

    .line 258
    invoke-virtual {p0}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->width:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->height:I

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->ignoredTools:Ljava/util/EnumSet;

    iget-object v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;

    invoke-interface {v2}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;->getCurrentToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    return-void

    .line 262
    :cond_1
    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->setRunning(Z)V

    .line 263
    invoke-virtual {p0}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->run()V

    .line 264
    return-void

    .line 258
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public stop()V
    .locals 2

    .line 267
    invoke-virtual {p0}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->setRunning(Z)V

    .line 269
    iget-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->handler:Landroid/os/Handler;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 271
    :cond_0
    return-void
.end method
