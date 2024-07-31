.class public final Lorg/catrobat/paintroid/command/implementation/CutCommand;
.super Ljava/lang/Object;
.source "CutCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
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
.field private final boxHeight:F

.field private final boxRect:Landroid/graphics/RectF;

.field private final boxRotation:F

.field private final boxWidth:F

.field private final paint:Landroid/graphics/Paint;

.field private final toolPosition:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/graphics/Point;FFF)V
    .locals 6
    .param p1, "toolPosition"    # Landroid/graphics/Point;
    .param p2, "boxWidth"    # F
    .param p3, "boxHeight"    # F
    .param p4, "boxRotation"    # F

    const-string v0, "toolPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->toolPosition:Landroid/graphics/Point;

    iput p2, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->boxWidth:F

    iput p3, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->boxHeight:F

    iput p4, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->boxRotation:F

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->boxWidth:F

    neg-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->boxHeight:F

    neg-float v5, v4

    div-float/2addr v5, v3

    div-float/2addr v1, v3

    div-float/2addr v4, v3

    invoke-direct {v0, v2, v5, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->boxRect:Landroid/graphics/RectF;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    move-object v1, v0

    .local v1, "$this$apply":Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 38
    .local v2, "$i$a$-apply-CutCommand$paint$1":I
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v3, Landroid/graphics/Xfermode;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 39
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 40
    nop

    .end local v1    # "$this$apply":Landroid/graphics/Paint;
    .end local v2    # "$i$a$-apply-CutCommand$paint$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 37
    iput-object v0, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 0

    .line 52
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
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layerModel"    # Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 44
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->toolPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->toolPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 45
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->boxRotation:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 46
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->boxRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/CutCommand;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 48
    return-void
.end method
