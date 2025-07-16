.class public final Lorg/catrobat/paintroid/command/implementation/CutCommand;
.super Ljava/lang/Object;
.source "CutCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\nR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001a"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/CutCommand;",
        "Lorg/catrobat/paintroid/command/Command;",
        "toolPosition",
        "Landroid/graphics/Point;",
        "boxWidth",
        "",
        "boxHeight",
        "boxRotation",
        "(Landroid/graphics/Point;FFF)V",
        "getBoxHeight",
        "()F",
        "boxRect",
        "Landroid/graphics/RectF;",
        "getBoxRotation",
        "getBoxWidth",
        "paint",
        "Landroid/graphics/Paint;",
        "getToolPosition",
        "()Landroid/graphics/Point;",
        "freeResources",
        "",
        "run",
        "canvas",
        "Landroid/graphics/Canvas;",
        "layerModel",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
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
.field private final boxHeight:F

.field private final boxRect:Landroid/graphics/RectF;

.field private final boxRotation:F

.field private final boxWidth:F

.field private final paint:Landroid/graphics/Paint;

.field private final toolPosition:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/graphics/Point;FFF)V
    .locals 2

    const-string v0, "toolPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->toolPosition:Landroid/graphics/Point;

    .line 32
    iput p2, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->boxWidth:F

    .line 33
    iput p3, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->boxHeight:F

    .line 34
    iput p4, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->boxRotation:F

    .line 36
    new-instance p1, Landroid/graphics/RectF;

    neg-float p4, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    neg-float v1, p3

    div-float/2addr v1, v0

    div-float/2addr p2, v0

    div-float/2addr p3, v0

    invoke-direct {p1, p4, v1, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->boxRect:Landroid/graphics/RectF;

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 38
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast p2, Landroid/graphics/Xfermode;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 p2, 0x0

    .line 39
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 40
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 37
    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 0

    return-void
.end method

.method public final getBoxHeight()F
    .locals 1

    .line 33
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->boxHeight:F

    return v0
.end method

.method public final getBoxRotation()F
    .locals 1

    .line 34
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->boxRotation:F

    return v0
.end method

.method public final getBoxWidth()F
    .locals 1

    .line 32
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->boxWidth:F

    return v0
.end method

.method public final getToolPosition()Landroid/graphics/Point;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->toolPosition:Landroid/graphics/Point;

    return-object v0
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 44
    iget-object p2, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->toolPosition:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->toolPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 45
    iget p2, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->boxRotation:F

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 46
    iget-object p2, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->boxRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
