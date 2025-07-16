.class public final Lorg/catrobat/paintroid/tools/implementation/TextTool;
.super Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;
.source "TextTool.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/tools/implementation/TextTool$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextTool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextTool.kt\norg/catrobat/paintroid/tools/implementation/TextTool\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,451:1\n37#2,2:452\n13601#3,3:454\n*S KotlinDebug\n*F\n+ 1 TextTool.kt\norg/catrobat/paintroid/tools/implementation/TextTool\n*L\n116#1:452,2\n306#1:454,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012J\u0012\u0010:\u001a\u00020;2\u0008\u0008\u0002\u0010 \u001a\u00020\u0014H\u0002J\u0018\u0010<\u001a\u00020;2\u0006\u0010=\u001a\u0002032\u0006\u0010>\u001a\u00020\u0014H\u0016J\u0008\u0010?\u001a\u00020;H\u0002J \u0010@\u001a\u00020;2\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020(2\u0006\u0010D\u001a\u00020(H\u0014J\u0012\u0010E\u001a\u00020;2\u0008\u0010F\u001a\u0004\u0018\u00010+H\u0016J\u001a\u0010G\u001a\u00020\u00142\u0008\u0010F\u001a\u0004\u0018\u00010+2\u0006\u0010H\u001a\u00020\u0014H\u0016J\u0012\u0010I\u001a\u00020\u00142\u0008\u0010F\u001a\u0004\u0018\u00010+H\u0016J\u0012\u0010J\u001a\u00020;2\u0008\u0010F\u001a\u0004\u0018\u00010+H\u0016J\u0006\u0010K\u001a\u00020;J\u0008\u0010L\u001a\u00020;H\u0002J\u0008\u0010M\u001a\u00020;H\u0016J\u0012\u0010N\u001a\u00020;2\u0008\u0010O\u001a\u0004\u0018\u00010PH\u0016J\u0012\u0010Q\u001a\u00020;2\u0008\u0010O\u001a\u0004\u0018\u00010PH\u0016J\u0008\u0010R\u001a\u00020;H\u0007J\u0008\u0010S\u001a\u00020;H\u0014J\u0008\u0010T\u001a\u00020;H\u0002J\u0006\u0010U\u001a\u00020;J\u0012\u0010V\u001a\u00020;2\u0008\u0008\u0002\u0010 \u001a\u00020\u0014H\u0002J\u0010\u0010W\u001a\u00020+2\u0006\u0010F\u001a\u00020+H\u0016J\u0008\u0010X\u001a\u00020;H\u0002R\u0018\u0010\u0013\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0010\u001a\u00020\u0011X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u001d\u001a\u00020\u001e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001f\u0010\u0016R\u0018\u0010 \u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008!\u0010\u0016R\u0017\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#8G\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u000e\u0010\'\u001a\u00020(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010-\u001a\u00020$8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008.\u0010\u0016R\u0016\u0010/\u001a\u0002008\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u00081\u0010\u0016R\u000e\u00102\u001a\u000203X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u00104\u001a\u0002058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00086\u00107R\u0018\u00108\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u00089\u0010\u0016\u00a8\u0006Y"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/TextTool;",
        "Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;",
        "textToolOptionsView",
        "Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;",
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
        "drawTime",
        "",
        "(Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V",
        "bold",
        "",
        "getBold$annotations",
        "()V",
        "getDrawTime",
        "()J",
        "setDrawTime",
        "(J)V",
        "dubai",
        "Landroid/graphics/Typeface;",
        "font",
        "Lorg/catrobat/paintroid/tools/FontType;",
        "getFont$annotations",
        "italic",
        "getItalic$annotations",
        "multilineText",
        "",
        "",
        "getMultilineText",
        "()[Ljava/lang/String;",
        "oldBoxHeight",
        "",
        "oldBoxWidth",
        "oldToolPosition",
        "Landroid/graphics/PointF;",
        "stc",
        "text",
        "getText$annotations",
        "textPaint",
        "Landroid/graphics/Paint;",
        "getTextPaint$annotations",
        "textSize",
        "",
        "toolType",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "getToolType",
        "()Lorg/catrobat/paintroid/tools/ToolType;",
        "underlined",
        "getUnderlined$annotations",
        "applyAttributes",
        "",
        "changePaintColor",
        "color",
        "invalidate",
        "changeTextColor",
        "drawBitmap",
        "canvas",
        "Landroid/graphics/Canvas;",
        "boxWidth",
        "boxHeight",
        "handleDownAnimations",
        "coordinate",
        "handleMove",
        "shouldAnimate",
        "handleUp",
        "handleUpAnimations",
        "hideTextToolLayout",
        "initializePaint",
        "onClickOnButton",
        "onRestoreInstanceState",
        "bundle",
        "Landroid/os/Bundle;",
        "onSaveInstanceState",
        "resetBoxPosition",
        "resetInternalState",
        "resetPreview",
        "showTextToolLayout",
        "storeAttributes",
        "toolPositionCoordinates",
        "updateTypeface",
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
.field public bold:Z

.field private drawTime:J

.field private final dubai:Landroid/graphics/Typeface;

.field public font:Lorg/catrobat/paintroid/tools/FontType;

.field public italic:Z

.field private oldBoxHeight:F

.field private oldBoxWidth:F

.field private oldToolPosition:Landroid/graphics/PointF;

.field private final stc:Landroid/graphics/Typeface;

.field public text:Ljava/lang/String;

.field public final textPaint:Landroid/graphics/Paint;

.field private textSize:I

.field private final textToolOptionsView:Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;

.field public underlined:Z


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V
    .locals 12

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p5

    const-string v0, "textToolOptionsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolOptionsViewController"

    move-object v11, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolPaint"

    move-object/from16 v3, p4

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspace"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idlingResource"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandManager"

    move-object/from16 v6, p7

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v4, p5

    .line 75
    invoke-direct/range {v0 .. v6}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;)V

    .line 67
    iput-object v8, v7, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textToolOptionsView:Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;

    move-wide/from16 v0, p8

    .line 74
    iput-wide v0, v7, Lorg/catrobat/paintroid/tools/implementation/TextTool;->drawTime:J

    const-string v0, ""

    .line 89
    iput-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/TextTool;->text:Ljava/lang/String;

    .line 93
    sget-object v0, Lorg/catrobat/paintroid/tools/FontType;->SANS_SERIF:Lorg/catrobat/paintroid/tools/FontType;

    iput-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/TextTool;->font:Lorg/catrobat/paintroid/tools/FontType;

    const/16 v0, 0x14

    .line 107
    iput v0, v7, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textSize:I

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, v7, Lorg/catrobat/paintroid/tools/implementation/TextTool;->rotationEnabled:Z

    .line 134
    iput-boolean v0, v7, Lorg/catrobat/paintroid/tools/implementation/TextTool;->resizePointsVisible:Z

    .line 135
    sget v0, Lorg/catrobat/paintroid/R$font;->stc_regular:I

    invoke-interface {p2, v0}, Lorg/catrobat/paintroid/tools/ContextCallback;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/TextTool;->stc:Landroid/graphics/Typeface;

    .line 136
    sget v0, Lorg/catrobat/paintroid/R$font;->dubai:I

    invoke-interface {p2, v0}, Lorg/catrobat/paintroid/tools/ContextCallback;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/TextTool;->dubai:Landroid/graphics/Typeface;

    .line 137
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    .line 138
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->initializePaint()V

    .line 139
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->resetPreview()V

    .line 140
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->resetBoxPosition()V

    .line 142
    new-instance v0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;

    invoke-direct {v0, p0, v10}, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/TextTool;Lorg/catrobat/paintroid/tools/Workspace;)V

    check-cast v0, Lorg/catrobat/paintroid/tools/options/TextToolOptionsView$Callback;

    .line 205
    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;->setCallback(Lorg/catrobat/paintroid/tools/options/TextToolOptionsView$Callback;)V

    .line 206
    invoke-interface {p3}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->showDelayed()V

    return-void
.end method

.method public static final synthetic access$applyAttributes(Lorg/catrobat/paintroid/tools/implementation/TextTool;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->applyAttributes(Z)V

    return-void
.end method

.method public static final synthetic access$getTextSize$p(Lorg/catrobat/paintroid/tools/implementation/TextTool;)I
    .locals 0

    .line 66
    iget p0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textSize:I

    return p0
.end method

.method public static final synthetic access$resetPreview(Lorg/catrobat/paintroid/tools/implementation/TextTool;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->resetPreview()V

    return-void
.end method

.method public static final synthetic access$setTextSize$p(Lorg/catrobat/paintroid/tools/implementation/TextTool;I)V
    .locals 0

    .line 66
    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textSize:I

    return-void
.end method

.method public static final synthetic access$storeAttributes(Lorg/catrobat/paintroid/tools/implementation/TextTool;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->storeAttributes(Z)V

    return-void
.end method

.method public static final synthetic access$updateTypeface(Lorg/catrobat/paintroid/tools/implementation/TextTool;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->updateTypeface()V

    return-void
.end method

.method private final applyAttributes(Z)V
    .locals 1

    .line 338
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->oldBoxWidth:F

    if-eqz p1, :cond_0

    const p1, 0x3f99999a    # 1.2f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    div-float/2addr v0, p1

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->boxWidth:F

    .line 339
    iget p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->oldBoxHeight:F

    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->boxHeight:F

    .line 340
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->oldToolPosition:Landroid/graphics/PointF;

    if-eqz p1, :cond_2

    if-eqz p1, :cond_1

    .line 341
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolPosition:Landroid/graphics/PointF;

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.graphics.PointF"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 343
    :cond_2
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->resetBoxPosition()V

    :goto_1
    return-void
.end method

.method static synthetic applyAttributes$default(Lorg/catrobat/paintroid/tools/implementation/TextTool;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 337
    :cond_0
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->applyAttributes(Z)V

    return-void
.end method

.method private final changeTextColor()V
    .locals 5

    .line 400
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->boxWidth:F

    .line 401
    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->boxHeight:F

    .line 402
    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 403
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v4}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPreviewColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 404
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolPosition:Landroid/graphics/PointF;

    invoke-virtual {v3, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 405
    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->boxWidth:F

    .line 406
    iput v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->boxHeight:F

    .line 407
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    return-void
.end method

.method public static synthetic getBold$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getFont$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getItalic$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getText$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTextPaint$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getUnderlined$annotations()V
    .locals 0

    return-void
.end method

.method private final initializePaint()V
    .locals 2

    .line 210
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 211
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPreviewColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 213
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->underlined:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 214
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->bold:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 215
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->updateTypeface()V

    return-void
.end method

.method private final resetPreview()V
    .locals 7

    .line 318
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    .line 319
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    .line 322
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->getMultilineText()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-nez v2, :cond_2

    aget-object v2, v1, v3

    .line 323
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 322
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v3

    if-gt v4, v3, :cond_1

    :goto_1
    aget-object v5, v1, v4

    .line 323
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 322
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    if-eq v4, v3, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 325
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->getMultilineText()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/16 v1, 0x28

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->boxHeight:F

    add-float/2addr v2, v1

    .line 326
    iput v2, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->boxWidth:F

    return-void

    .line 322
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final storeAttributes(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 331
    iget p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->boxWidth:F

    const v0, 0x3f99999a    # 1.2f

    mul-float/2addr p1, v0

    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->boxWidth:F

    .line 333
    :cond_0
    iget p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->boxWidth:F

    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->oldBoxWidth:F

    .line 334
    iget p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->boxHeight:F

    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->oldBoxHeight:F

    .line 335
    new-instance p1, Landroid/graphics/PointF;

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->oldToolPosition:Landroid/graphics/PointF;

    return-void
.end method

.method static synthetic storeAttributes$default(Lorg/catrobat/paintroid/tools/implementation/TextTool;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 329
    :cond_0
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->storeAttributes(Z)V

    return-void
.end method

.method private final updateTypeface()V
    .locals 4

    .line 377
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->italic:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/high16 v0, -0x41800000    # -0.25f

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 379
    :goto_1
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 380
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->font:Lorg/catrobat/paintroid/tools/FontType;

    sget-object v3, Lorg/catrobat/paintroid/tools/implementation/TextTool$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/FontType;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    const-string v2, "Can\'t set custom font"

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 392
    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->dubai:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v0, "dubai"

    .line 394
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 386
    :cond_3
    :try_start_1
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->stc:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const-string v0, "stc_regular"

    .line 388
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 383
    :cond_4
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_2

    .line 382
    :cond_5
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_2

    .line 381
    :cond_6
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_2
    return-void
.end method


# virtual methods
.method public changePaintColor(IZ)V
    .locals 0

    .line 447
    invoke-super {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->changePaintColor(IZ)V

    .line 448
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->changeTextColor()V

    return-void
.end method

.method protected drawBitmap(Landroid/graphics/Canvas;FF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "canvas"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    iget-object v2, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    .line 283
    iget-object v3, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    sub-float/2addr v3, v2

    .line 284
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->getMultilineText()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    .line 285
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->getMultilineText()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    int-to-float v4, v4

    div-float v4, v3, v4

    .line 286
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->getMultilineText()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    if-nez v6, :cond_5

    aget-object v6, v5, v7

    .line 287
    iget-object v9, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 286
    invoke-static {v5}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v9

    if-gt v8, v9, :cond_1

    :goto_1
    aget-object v10, v5, v8

    .line 287
    iget-object v11, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 286
    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    if-eq v8, v9, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 290
    :cond_1
    iget-boolean v5, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->italic:Z

    const v8, 0x3f99999a    # 1.2f

    if-eqz v5, :cond_2

    mul-float/2addr v6, v8

    .line 294
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/16 v5, 0x28

    int-to-float v5, v5

    sub-float v9, p2, v5

    div-float/2addr v9, v6

    sub-float v5, p3, v5

    div-float/2addr v5, v3

    .line 299
    invoke-virtual {v1, v9, v5}, Landroid/graphics/Canvas;->scale(FF)V

    const/16 v3, 0x14

    int-to-float v3, v3

    div-float v6, v3, v5

    div-float/2addr v3, v9

    div-float v9, p2, v9

    div-float v5, p3, v5

    .line 306
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->getMultilineText()[Ljava/lang/String;

    move-result-object v10

    .line 455
    array-length v11, v10

    move v12, v7

    :goto_2
    if-ge v7, v11, :cond_4

    aget-object v13, v10, v7

    add-int/lit8 v14, v12, 0x1

    const/4 v15, 0x2

    int-to-float v15, v15

    div-float v16, v9, v15

    .line 309
    iget-boolean v8, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->italic:Z

    if-eqz v8, :cond_3

    const v8, 0x3f99999a    # 1.2f

    goto :goto_3

    :cond_3
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_3
    div-float v16, v16, v8

    sub-float v8, v3, v16

    div-float v15, v5, v15

    neg-float v15, v15

    add-float/2addr v15, v6

    sub-float/2addr v15, v2

    int-to-float v12, v12

    mul-float/2addr v12, v4

    add-float/2addr v15, v12

    .line 311
    iget-object v12, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    .line 307
    invoke-virtual {v1, v13, v8, v15, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    move v12, v14

    const v8, 0x3f99999a    # 1.2f

    goto :goto_2

    .line 314
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 286
    :cond_5
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public getDrawTime()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->drawTime:J

    return-wide v0
.end method

.method public final getMultilineText()[Ljava/lang/String;
    .locals 7

    .line 116
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->text:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v0, "\n"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 453
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 119
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->TEXT:Lorg/catrobat/paintroid/tools/ToolType;

    return-object v0
.end method

.method public handleDownAnimations(Landroid/graphics/PointF;)V
    .locals 0

    .line 127
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->hideTextToolLayout()V

    return-void
.end method

.method public handleMove(Landroid/graphics/PointF;Z)Z
    .locals 0

    .line 261
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textToolOptionsView:Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;

    invoke-interface {p2}, Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;->hideKeyboard()V

    .line 262
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->hideTextToolLayout()V

    const/4 p2, 0x0

    .line 263
    invoke-super {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->handleMove(Landroid/graphics/PointF;Z)Z

    move-result p1

    return p1
.end method

.method public handleUp(Landroid/graphics/PointF;)Z
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->boxWidth:F

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->boxHeight:F

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 269
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->showTextToolLayout()V

    .line 270
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->handleUp(Landroid/graphics/PointF;)Z

    .line 271
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textToolOptionsView:Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;->showKeyboard()V

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textToolOptionsView:Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;->hideKeyboard()V

    .line 274
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->hideTextToolLayout()V

    .line 275
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->handleUp(Landroid/graphics/PointF;)Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public handleUpAnimations(Landroid/graphics/PointF;)V
    .locals 1

    .line 122
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->showTextToolLayout()V

    .line 123
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->animateBottomAndTopNavigation(Z)V

    return-void
.end method

.method public final hideTextToolLayout()V
    .locals 4

    .line 219
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textToolOptionsView:Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;->getTopLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 221
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textToolOptionsView:Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;

    invoke-interface {v3}, Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;->getTopLayout()Landroid/view/View;

    move-result-object v3

    .line 220
    invoke-interface {v0, v3, v2, v1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->slideUp(Landroid/view/View;ZZ)V

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textToolOptionsView:Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;->getBottomLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 229
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textToolOptionsView:Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;

    invoke-interface {v3}, Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;->getBottomLayout()Landroid/view/View;

    move-result-object v3

    .line 228
    invoke-interface {v0, v3, v2, v1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->slideDown(Landroid/view/View;ZZ)V

    :cond_1
    return-void
.end method

.method public onClickOnButton()V
    .locals 15

    .line 413
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->highlightBox()V

    .line 414
    new-instance v6, Landroid/graphics/PointF;

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v6, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 416
    new-instance v14, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;

    .line 417
    iget-object v8, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->font:Lorg/catrobat/paintroid/tools/FontType;

    .line 418
    iget-boolean v9, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->bold:Z

    .line 419
    iget-boolean v10, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->underlined:Z

    .line 420
    iget-boolean v11, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->italic:Z

    .line 421
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v12

    .line 422
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v13

    move-object v7, v14

    .line 416
    invoke-direct/range {v7 .. v13}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;-><init>(Lorg/catrobat/paintroid/tools/FontType;ZZZFF)V

    .line 425
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    .line 426
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->getMultilineText()[Ljava/lang/String;

    move-result-object v1

    .line 427
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    const/16 v3, 0x14

    .line 429
    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->boxWidth:F

    .line 430
    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->boxHeight:F

    .line 432
    iget v7, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->boxRotation:F

    move-object v8, v14

    .line 425
    invoke-interface/range {v0 .. v8}, Lorg/catrobat/paintroid/command/CommandFactory;->createTextToolCommand([Ljava/lang/String;Landroid/graphics/Paint;IFFLandroid/graphics/PointF;FLorg/catrobat/paintroid/command/serialization/SerializableTypeface;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 435
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7

    .line 360
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "BUNDLE_TOOL_UNDERLINED"

    .line 362
    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->underlined:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->underlined:Z

    const-string v0, "BUNDLE_TOOL_ITALIC"

    .line 363
    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->italic:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->italic:Z

    const-string v0, "BUNDLE_TOOL_BOLD"

    .line 364
    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->bold:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->bold:Z

    const-string v0, "BUNDLE_TOOL_TEXT"

    .line 365
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->text:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(BUNDLE_TOOL_TEXT, text)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->text:Ljava/lang/String;

    const-string v0, "BUNDLE_TOOL_TEXT_SIZE"

    .line 366
    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textSize:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textSize:I

    .line 367
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->font:Lorg/catrobat/paintroid/tools/FontType;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/FontType;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BUNDLE_TOOL_FONT"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(BUNDLE_TOOL_FONT, font.name)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/catrobat/paintroid/tools/FontType;->valueOf(Ljava/lang/String;)Lorg/catrobat/paintroid/tools/FontType;

    move-result-object p1

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->font:Lorg/catrobat/paintroid/tools/FontType;

    .line 369
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textToolOptionsView:Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;

    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->bold:Z

    iget-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->italic:Z

    iget-boolean v3, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->underlined:Z

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->text:Ljava/lang/String;

    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textSize:I

    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->font:Lorg/catrobat/paintroid/tools/FontType;

    invoke-interface/range {v0 .. v6}, Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;->setState(ZZZLjava/lang/String;ILorg/catrobat/paintroid/tools/FontType;)V

    .line 370
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->underlined:Z

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 371
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->bold:Z

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 372
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->updateTypeface()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 348
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "BUNDLE_TOOL_UNDERLINED"

    .line 350
    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->underlined:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "BUNDLE_TOOL_ITALIC"

    .line 351
    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->italic:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "BUNDLE_TOOL_BOLD"

    .line 352
    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->bold:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "BUNDLE_TOOL_TEXT"

    .line 353
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->text:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BUNDLE_TOOL_TEXT_SIZE"

    .line 354
    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textSize:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 355
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->font:Lorg/catrobat/paintroid/tools/FontType;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/FontType;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BUNDLE_TOOL_FONT"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final resetBoxPosition()V
    .locals 3

    .line 440
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 441
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolPosition:Landroid/graphics/PointF;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 442
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolPosition:Landroid/graphics/PointF;

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->boxHeight:F

    div-float/2addr v1, v2

    const/high16 v2, 0x43480000    # 200.0f

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_0
    return-void
.end method

.method protected resetInternalState()V
    .locals 0

    return-void
.end method

.method public setDrawTime(J)V
    .locals 0

    .line 74
    iput-wide p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->drawTime:J

    return-void
.end method

.method public final showTextToolLayout()V
    .locals 5

    .line 237
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textToolOptionsView:Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;->getTopLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 238
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->show()V

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 242
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textToolOptionsView:Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;

    invoke-interface {v4}, Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;->getTopLayout()Landroid/view/View;

    move-result-object v4

    .line 241
    invoke-interface {v0, v4, v2, v1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->slideDown(Landroid/view/View;ZZ)V

    .line 248
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textToolOptionsView:Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;->getBottomLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 249
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 250
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->show()V

    .line 252
    :cond_2
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 253
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textToolOptionsView:Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;

    invoke-interface {v3}, Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;->getBottomLayout()Landroid/view/View;

    move-result-object v3

    .line 252
    invoke-interface {v0, v3, v2, v1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->slideUp(Landroid/view/View;ZZ)V

    :cond_3
    return-void
.end method

.method public toolPositionCoordinates(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    const-string v0, "coordinate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
