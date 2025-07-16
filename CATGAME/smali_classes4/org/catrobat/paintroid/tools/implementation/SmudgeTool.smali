.class public final Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;
.super Lorg/catrobat/paintroid/tools/implementation/BaseTool;
.source "SmudgeTool.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSmudgeTool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmudgeTool.kt\norg/catrobat/paintroid/tools/implementation/SmudgeTool\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,318:1\n1849#2,2:319\n*S KotlinDebug\n*F\n+ 1 SmudgeTool.kt\norg/catrobat/paintroid/tools/implementation/SmudgeTool\n*L\n281#1:319,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\u0008\u0010:\u001a\u00020;H\u0002J\u0010\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020?H\u0016J\u0010\u0010@\u001a\u00020\u00122\u0006\u0010A\u001a\u00020\u0012H\u0002J\u0012\u0010B\u001a\u00020;2\u0008\u0010C\u001a\u0004\u0018\u00010-H\u0016J\u0012\u0010D\u001a\u00020=2\u0008\u0010C\u001a\u0004\u0018\u00010-H\u0016J\u001a\u0010E\u001a\u00020;2\u0008\u0010C\u001a\u0004\u0018\u00010-2\u0006\u0010F\u001a\u00020;H\u0016J\u0012\u0010G\u001a\u00020;2\u0008\u0010C\u001a\u0004\u0018\u00010-H\u0016J\u0012\u0010H\u001a\u00020=2\u0008\u0010C\u001a\u0004\u0018\u00010-H\u0016J\u0010\u0010I\u001a\u00020-2\u0006\u0010C\u001a\u00020-H\u0016J\u000e\u0010J\u001a\u00020=2\u0006\u0010K\u001a\u00020*J\u000e\u0010L\u001a\u00020=2\u0006\u0010M\u001a\u00020*R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u0014X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R$\u0010\u0019\u001a\u00020\u001a8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R$\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\"\u0010\u001c\u001a\u0004\u0008#\u0010\u001e\"\u0004\u0008$\u0010 R$\u0010%\u001a\u00020\u001a8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008&\u0010\u001c\u001a\u0004\u0008\'\u0010\u001e\"\u0004\u0008(\u0010 R\u000e\u0010)\u001a\u00020*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010+\u001a\u0008\u0012\u0004\u0012\u00020-0,8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008.\u0010\u001c\u001a\u0004\u0008/\u00100R$\u00101\u001a\u00020\u001a8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00082\u0010\u001c\u001a\u0004\u00083\u0010\u001e\"\u0004\u00084\u0010 R\u0010\u00105\u001a\u0004\u0018\u00010-X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00106\u001a\u0002078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00088\u00109\u00a8\u0006N"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;",
        "Lorg/catrobat/paintroid/tools/implementation/BaseTool;",
        "smudgeToolOptionsView",
        "Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView;",
        "contextCallback",
        "Lorg/catrobat/paintroid/tools/ContextCallback;",
        "toolOptionsViewController",
        "Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;",
        "toolPaint",
        "Lorg/catrobat/paintroid/tools/ToolPaint;",
        "workspace",
        "Lorg/catrobat/paintroid/tools/Workspace;",
        "idlingResource",
        "Landroidx/test/espresso/idling/CountingIdlingResource;",
        "commandManager",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "(Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;)V",
        "currentBitmap",
        "Landroid/graphics/Bitmap;",
        "drawTime",
        "",
        "getDrawTime",
        "()J",
        "setDrawTime",
        "(J)V",
        "maxPressure",
        "",
        "getMaxPressure$annotations",
        "()V",
        "getMaxPressure",
        "()F",
        "setMaxPressure",
        "(F)V",
        "maxSmudgeSize",
        "getMaxSmudgeSize$annotations",
        "getMaxSmudgeSize",
        "setMaxSmudgeSize",
        "minSmudgeSize",
        "getMinSmudgeSize$annotations",
        "getMinSmudgeSize",
        "setMinSmudgeSize",
        "numOfPointsOnPath",
        "",
        "pointArray",
        "",
        "Landroid/graphics/PointF;",
        "getPointArray$annotations",
        "getPointArray",
        "()Ljava/util/List;",
        "pressure",
        "getPressure$annotations",
        "getPressure",
        "setPressure",
        "prevPoint",
        "toolType",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "getToolType",
        "()Lorg/catrobat/paintroid/tools/ToolType;",
        "currentBitmapHasColor",
        "",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "getBitmapClippedCircle",
        "bitmap",
        "handleDown",
        "coordinate",
        "handleDownAnimations",
        "handleMove",
        "shouldAnimate",
        "handleUp",
        "handleUpAnimations",
        "toolPositionCoordinates",
        "updateDrag",
        "dragInPercent",
        "updatePressure",
        "pressureInPercent",
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
.field private currentBitmap:Landroid/graphics/Bitmap;

.field private drawTime:J

.field private maxPressure:F

.field private maxSmudgeSize:F

.field private minSmudgeSize:F

.field private numOfPointsOnPath:I

.field private final pointArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private pressure:F

.field private prevPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;)V
    .locals 7

    const-string v0, "smudgeToolOptionsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolOptionsViewController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolPaint"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspace"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idlingResource"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 60
    invoke-direct/range {v0 .. v6}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;)V

    const/4 p2, -0x1

    .line 73
    iput p2, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->numOfPointsOnPath:I

    .line 79
    iget p2, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->maxPressure:F

    iput p2, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->pressure:F

    .line 82
    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/ToolPaint;->getStrokeWidth()F

    move-result p2

    iput p2, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->maxSmudgeSize:F

    .line 88
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->pointArray:Ljava/util/List;

    .line 94
    new-instance p2, Lorg/catrobat/paintroid/tools/common/CommonBrushChangedListener;

    move-object p3, p0

    check-cast p3, Lorg/catrobat/paintroid/tools/Tool;

    invoke-direct {p2, p3}, Lorg/catrobat/paintroid/tools/common/CommonBrushChangedListener;-><init>(Lorg/catrobat/paintroid/tools/Tool;)V

    check-cast p2, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;

    invoke-interface {p1, p2}, Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView;->setBrushChangedListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;)V

    .line 96
    new-instance p2, Lorg/catrobat/paintroid/tools/common/CommonBrushPreviewListener;

    .line 98
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object p3

    .line 96
    invoke-direct {p2, p4, p3}, Lorg/catrobat/paintroid/tools/common/CommonBrushPreviewListener;-><init>(Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/ToolType;)V

    check-cast p2, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;

    .line 95
    invoke-interface {p1, p2}, Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView;->setBrushPreviewListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;)V

    .line 101
    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView;->setCurrentPaint(Landroid/graphics/Paint;)V

    .line 102
    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/ToolPaint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView;->setStrokeCapButtonChecked(Landroid/graphics/Paint$Cap;)V

    .line 103
    new-instance p2, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool$1;

    invoke-direct {p2, p0}, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;)V

    check-cast p2, Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView$Callback;

    invoke-interface {p1, p2}, Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView;->setCallback(Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView$Callback;)V

    const/16 p1, 0x32

    .line 113
    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->updatePressure(I)V

    .line 114
    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->updateDrag(I)V

    return-void
.end method

.method private final currentBitmapHasColor()Z
    .locals 8

    .line 220
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->currentBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_3

    .line 221
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_5

    move v3, v1

    :goto_0
    add-int/lit8 v4, v3, 0x1

    .line 222
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-lez v5, :cond_3

    move v6, v1

    :goto_1
    add-int/lit8 v7, v6, 0x1

    .line 223
    invoke-virtual {v0, v3, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    if-lt v7, v5, :cond_2

    goto :goto_2

    :cond_2
    move v6, v7

    goto :goto_1

    :cond_3
    :goto_2
    if-lt v4, v2, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    goto :goto_0

    :cond_5
    :goto_3
    return v1
.end method

.method private final getBitmapClippedCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 203
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 204
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 205
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 206
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 208
    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    .line 209
    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    .line 210
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 211
    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 207
    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 213
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 214
    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 215
    invoke-virtual {v0, p1, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const-string p1, "outputBitmap"

    .line 216
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public static synthetic getMaxPressure$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getMaxSmudgeSize$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getMinSmudgeSize$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getPointArray$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getPressure$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->pointArray:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    .line 267
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->pointArray:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 269
    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->numOfPointsOnPath:I

    if-gez v1, :cond_0

    .line 270
    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->maxSmudgeSize:F

    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->minSmudgeSize:F

    sub-float/2addr v1, v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0

    .line 272
    :cond_0
    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->maxSmudgeSize:F

    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->minSmudgeSize:F

    sub-float/2addr v2, v3

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 275
    :goto_0
    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->maxSmudgeSize:F

    .line 276
    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->maxPressure:F

    .line 277
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 278
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 279
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->currentBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v6, :cond_1

    move-object v6, v7

    goto :goto_1

    :cond_1
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v6, v9, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 281
    :goto_1
    check-cast v0, Ljava/lang/Iterable;

    .line 319
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    const/high16 v10, 0x3f800000    # 1.0f

    .line 282
    invoke-virtual {v4, v10, v10, v10, v3}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 283
    new-instance v10, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v10, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    check-cast v10, Landroid/graphics/ColorFilter;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 286
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->getMaxSmudgeSize()F

    move-result v10

    float-to-int v10, v10

    .line 287
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->getMaxSmudgeSize()F

    move-result v11

    float-to-int v11, v11

    .line 288
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 285
    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 291
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    const/4 v12, 0x0

    .line 293
    invoke-virtual {v11, v6, v12, v12, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_3
    if-nez v6, :cond_3

    goto :goto_4

    .line 297
    :cond_3
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 300
    :goto_4
    new-instance v6, Landroid/graphics/RectF;

    neg-float v11, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    div-float v12, v2, v12

    invoke-direct {v6, v11, v11, v12, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 302
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 303
    iget-object v11, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v11}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v11

    iget-object v12, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v12}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v12

    invoke-virtual {p1, v8, v8, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 304
    iget v11, v9, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v11, v9}, Landroid/graphics/Canvas;->translate(FF)V

    if-nez v10, :cond_4

    goto :goto_5

    .line 306
    :cond_4
    new-instance v9, Landroid/graphics/Paint;

    const/4 v11, 0x4

    invoke-direct {v9, v11}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1, v10, v7, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 308
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    sub-float/2addr v2, v1

    const v6, 0x3b83126f    # 0.004f

    sub-float/2addr v3, v6

    move-object v6, v10

    goto :goto_2

    :cond_5
    if-nez v6, :cond_6

    goto :goto_6

    .line 314
    :cond_6
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    :goto_6
    return-void
.end method

.method public getDrawTime()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->drawTime:J

    return-wide v0
.end method

.method public final getMaxPressure()F
    .locals 1

    .line 76
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->maxPressure:F

    return v0
.end method

.method public final getMaxSmudgeSize()F
    .locals 1

    .line 82
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->maxSmudgeSize:F

    return v0
.end method

.method public final getMinSmudgeSize()F
    .locals 1

    .line 85
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->minSmudgeSize:F

    return v0
.end method

.method public final getPointArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->pointArray:Ljava/util/List;

    return-object v0
.end method

.method public final getPressure()F
    .locals 1

    .line 79
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->pressure:F

    return v0
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 91
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->SMUDGE:Lorg/catrobat/paintroid/tools/ToolType;

    return-object v0
.end method

.method public handleDown(Landroid/graphics/PointF;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 131
    :cond_0
    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->maxSmudgeSize:F

    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/ToolPaint;->getStrokeWidth()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    .line 132
    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->minSmudgeSize:F

    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->maxSmudgeSize:F

    div-float/2addr v1, v3

    .line 133
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v3}, Lorg/catrobat/paintroid/tools/ToolPaint;->getStrokeWidth()F

    move-result v3

    iput v3, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->maxSmudgeSize:F

    mul-float/2addr v3, v1

    .line 134
    iput v3, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->minSmudgeSize:F

    .line 137
    :cond_2
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->getBitmapOfCurrentLayer()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 139
    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->maxSmudgeSize:F

    float-to-int v4, v3

    float-to-int v3, v3

    .line 141
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 138
    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->currentBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    if-nez v3, :cond_3

    goto :goto_2

    .line 144
    :cond_3
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 145
    iget v6, p1, Landroid/graphics/PointF;->x:F

    neg-float v6, v6

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->getMaxSmudgeSize()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, p1, Landroid/graphics/PointF;->y:F

    neg-float v7, v7

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->getMaxSmudgeSize()F

    move-result v9

    div-float/2addr v9, v8

    add-float/2addr v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 146
    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, p1, Landroid/graphics/PointF;->y:F

    const/high16 v8, -0x80000000

    invoke-virtual {v5, v8, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    .line 148
    invoke-virtual {v5, v1, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 152
    :goto_1
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/ToolPaint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v1

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    if-ne v1, v5, :cond_5

    .line 153
    invoke-direct {p0, v3}, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->getBitmapClippedCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->currentBitmap:Landroid/graphics/Bitmap;

    .line 157
    :cond_5
    :goto_2
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->currentBitmapHasColor()Z

    move-result v1

    if-nez v1, :cond_7

    .line 158
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->currentBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 159
    :goto_3
    iput-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->currentBitmap:Landroid/graphics/Bitmap;

    return v0

    .line 163
    :cond_7
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->prevPoint:Landroid/graphics/PointF;

    .line 165
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->getPointArray()Ljava/util/List;

    move-result-object p1

    new-instance v1, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method public handleDownAnimations(Landroid/graphics/PointF;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->handleDown(Landroid/graphics/PointF;)Z

    return-void
.end method

.method public handleMove(Landroid/graphics/PointF;Z)Z
    .locals 7

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 175
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->pressure:F

    const v1, 0x3f4ccccd    # 0.8f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    return p2

    .line 179
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->prevPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_2

    goto :goto_1

    .line 180
    :cond_2
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    .line 181
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    mul-float v2, v1, v1

    mul-float v3, p1, p1

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 183
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v2

    div-float/2addr v1, v3

    div-float/2addr p1, v3

    :goto_0
    if-ge p2, v2, :cond_3

    .line 188
    iget v3, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 189
    iget v3, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, p1

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 191
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->getPressure()F

    move-result v3

    const v4, 0x3b83126f    # 0.004f

    sub-float/2addr v3, v4

    invoke-virtual {p0, v3}, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->setPressure(F)V

    .line 193
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->getPointArray()Ljava/util/List;

    move-result-object v3

    new-instance v4, Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_4
    return p2
.end method

.method public handleUp(Landroid/graphics/PointF;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 235
    :cond_0
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->pointArray:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_4

    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    if-nez v3, :cond_1

    goto :goto_0

    .line 237
    :cond_1
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    .line 239
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->getPointArray()Ljava/util/List;

    move-result-object v4

    .line 240
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->getMaxPressure()F

    move-result v5

    .line 241
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->getMaxSmudgeSize()F

    move-result v6

    .line 242
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->getMinSmudgeSize()F

    move-result v7

    .line 237
    invoke-interface/range {v2 .. v7}, Lorg/catrobat/paintroid/command/CommandFactory;->createSmudgePathCommand(Landroid/graphics/Bitmap;Ljava/util/List;FFF)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    .line 244
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 247
    :goto_0
    iget p1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->numOfPointsOnPath:I

    if-gez p1, :cond_2

    .line 248
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->pointArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_1

    .line 250
    :cond_2
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->pointArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    .line 247
    :goto_1
    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->numOfPointsOnPath:I

    .line 253
    iget p1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->maxPressure:F

    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->pressure:F

    .line 254
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->pointArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 255
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->currentBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :goto_2
    const/4 p1, 0x0

    .line 256
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->currentBitmap:Landroid/graphics/Bitmap;

    return v1

    :cond_4
    return v0
.end method

.method public handleUpAnimations(Landroid/graphics/PointF;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseTool;->handleUp(Landroid/graphics/PointF;)Z

    return-void
.end method

.method public setDrawTime(J)V
    .locals 0

    .line 62
    iput-wide p1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->drawTime:J

    return-void
.end method

.method public final setMaxPressure(F)V
    .locals 0

    .line 76
    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->maxPressure:F

    return-void
.end method

.method public final setMaxSmudgeSize(F)V
    .locals 0

    .line 82
    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->maxSmudgeSize:F

    return-void
.end method

.method public final setMinSmudgeSize(F)V
    .locals 0

    .line 85
    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->minSmudgeSize:F

    return-void
.end method

.method public final setPressure(F)V
    .locals 0

    .line 79
    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->pressure:F

    return-void
.end method

.method public toolPositionCoordinates(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    const-string v0, "coordinate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final updateDrag(I)V
    .locals 2

    .line 124
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->maxSmudgeSize:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    .line 125
    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->minSmudgeSize:F

    return-void
.end method

.method public final updatePressure(I)V
    .locals 1

    int-to-float p1, p1

    const v0, 0x3ac49ba4    # 0.0014999998f

    mul-float/2addr p1, v0

    const v0, 0x3f59999a    # 0.85f

    add-float/2addr p1, v0

    .line 119
    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->maxPressure:F

    .line 120
    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;->pressure:F

    return-void
.end method
