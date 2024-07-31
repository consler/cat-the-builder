.class public abstract Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;
.super Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;
.source "BaseToolWithRectangleShape.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;,
        Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseToolWithRectangleShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseToolWithRectangleShape.kt\norg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,779:1\n12500#2,2:780\n13506#2,2:782\n*E\n*S KotlinDebug\n*F\n+ 1 BaseToolWithRectangleShape.kt\norg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape\n*L\n236#1,2:780\n518#1,2:782\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00c0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0006\n\u0002\u0008\n\u0008&\u0018\u00002\u00020\u0001:\u0004\u0089\u0001\u008a\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010@\u001a\u00020,2\u0006\u0010A\u001a\u00020<H\u0007J\u0008\u0010B\u001a\u00020,H\u0004J+\u0010C\u001a\u00020,2\u0006\u0010D\u001a\u00020\u00142\u0006\u0010E\u001a\u00020\u00142\u000c\u0010F\u001a\u0008\u0012\u0004\u0012\u00020<0GH\u0002\u00a2\u0006\u0002\u0010HJ\u0008\u0010I\u001a\u00020JH\u0002J\u0010\u0010K\u001a\u00020J2\u0006\u0010L\u001a\u00020MH\u0016J \u0010N\u001a\u00020J2\u0006\u0010L\u001a\u00020M2\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014H\u0014J(\u0010O\u001a\u00020J2\u0006\u0010L\u001a\u00020M2\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0014H\u0002J \u0010P\u001a\u00020J2\u0006\u0010L\u001a\u00020M2\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J \u0010Q\u001a\u00020J2\u0006\u0010L\u001a\u00020M2\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010R\u001a\u00020J2\u0006\u0010L\u001a\u00020MH\u0016J \u0010S\u001a\u00020J2\u0006\u0010L\u001a\u00020M2\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014H\u0014J\u0018\u0010T\u001a\u00020\u001e2\u0006\u0010U\u001a\u00020\u00142\u0006\u0010V\u001a\u00020\u0014H\u0002J(\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020\u00142\u0006\u0010Z\u001a\u00020\u00142\u0006\u0010[\u001a\u00020(2\u0006\u0010\\\u001a\u00020(H\u0016J\u0010\u0010]\u001a\u00020(2\u0006\u0010^\u001a\u00020(H\u0002J\u0013\u0010_\u001a\u0008\u0012\u0004\u0012\u00020<0GH\u0002\u00a2\u0006\u0002\u0010`J\u0012\u0010a\u001a\u00020,2\u0008\u0010A\u001a\u0004\u0018\u00010<H\u0016J\u0012\u0010b\u001a\u00020,2\u0008\u0010A\u001a\u0004\u0018\u00010<H\u0016J\u0012\u0010c\u001a\u00020,2\u0008\u0010A\u001a\u0004\u0018\u00010<H\u0016J\u0006\u0010d\u001a\u00020JJ\u000e\u0010e\u001a\u00020J2\u0006\u0010f\u001a\u00020,JS\u0010g\u001a\u00020J\"\u0008\u0008\u0000\u0010h*\u00020i\"\u0008\u0008\u0001\u0010j*\u00020i2\u0016\u0010k\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u0001Hh0G\"\u0004\u0018\u0001Hh2\u0018\u0010l\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002Hh0n\u0012\u0004\u0012\u0002Hj0mH\u0002\u00a2\u0006\u0002\u0010oJ\u0008\u0010p\u001a\u00020JH\u0002J\u0018\u0010q\u001a\u00020J2\u0006\u0010r\u001a\u00020\u00142\u0006\u0010s\u001a\u00020\u0014H\u0002J\u0012\u0010t\u001a\u00020J2\u0008\u0010u\u001a\u0004\u0018\u00010vH\u0016J\u0012\u0010w\u001a\u00020J2\u0008\u0010u\u001a\u0004\u0018\u00010vH\u0016J(\u0010x\u001a\u00020J2\u0006\u0010y\u001a\u00020\u00142\u0006\u0010z\u001a\u00020\u00142\u0006\u0010{\u001a\u00020\u00142\u0006\u0010|\u001a\u00020\u0014H\u0014J\u0018\u0010}\u001a\u00020J2\u0006\u0010r\u001a\u00020\u00142\u0006\u0010s\u001a\u00020\u0014H\u0002J\u001a\u0010~\u001a\u00020J2\u0006\u0010\u007f\u001a\u00020\u00142\u0008\u0010\u0080\u0001\u001a\u00030\u0081\u0001H\u0002J\"\u0010\u0082\u0001\u001a\u00020J2\u0006\u0010D\u001a\u00020\u00142\u0006\u0010E\u001a\u00020\u00142\u0007\u0010\u0083\u0001\u001a\u00020\u0014H\u0002J\u001c\u0010\u0084\u0001\u001a\u00020J2\u0007\u0010\u0085\u0001\u001a\u00020\u00142\u0008\u0010\u0080\u0001\u001a\u00030\u0081\u0001H\u0002J\u0019\u0010\u0086\u0001\u001a\u00020J2\u0006\u0010r\u001a\u00020\u00142\u0006\u0010s\u001a\u00020\u0014H\u0002J\u0012\u0010\u0087\u0001\u001a\u00020J2\t\u0010\u0088\u0001\u001a\u0004\u0018\u00010\"R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0013\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0015\u0010\u0016R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u0018\u0010\u0019\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001a\u0010\u0016R\u0018\u0010\u001b\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001c\u0010\u0016R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010!\u001a\u0004\u0018\u00010\"8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008#\u0010\u0016R\u0012\u0010$\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\'\u001a\u00020(8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010+\u001a\u00020,8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010-\u001a\u00020,8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010.\u001a\u00020,8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u00103\u001a\u00020,8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u00084\u0010\u0016R\u0018\u00105\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u00086\u0010\u0016R\u0012\u00107\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u0012\u00108\u001a\u00020,8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020:X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020<X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010=\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u008b\u0001"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;",
        "Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;",
        "contextCallback",
        "Lorg/catrobat/paintroid/tools/ContextCallback;",
        "toolOptionsViewController",
        "Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;",
        "toolPaint",
        "Lorg/catrobat/paintroid/tools/ToolPaint;",
        "workspace",
        "Lorg/catrobat/paintroid/tools/Workspace;",
        "commandManager",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;)V",
        "arcPaint",
        "Landroid/graphics/Paint;",
        "arcPath",
        "Landroid/graphics/Path;",
        "arrowPaint",
        "arrowPath",
        "boxHeight",
        "",
        "getBoxHeight$annotations",
        "()V",
        "boxResizeMargin",
        "Ljava/lang/Float;",
        "boxRotation",
        "getBoxRotation$annotations",
        "boxWidth",
        "getBoxWidth$annotations",
        "currentAction",
        "Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;",
        "downTimer",
        "Landroid/os/CountDownTimer;",
        "drawingBitmap",
        "Landroid/graphics/Bitmap;",
        "getDrawingBitmap$annotations",
        "maximumBoxResolution",
        "overlayDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "rectangleShrinkingOnHighlight",
        "",
        "resizeAction",
        "Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;",
        "resizePointsVisible",
        "",
        "respectMaximumBorderRatio",
        "respectMaximumBoxResolution",
        "rotationArrowArcRadius",
        "rotationArrowArcStrokeWidth",
        "rotationArrowHeadSize",
        "rotationArrowOffset",
        "rotationEnabled",
        "getRotationEnabled$annotations",
        "rotationSymbolDistance",
        "getRotationSymbolDistance$annotations",
        "rotationSymbolWidth",
        "shouldDrawRectangle",
        "tempDrawingRectangle",
        "Landroid/graphics/RectF;",
        "tempToolPosition",
        "Landroid/graphics/PointF;",
        "toolStrokeWidth",
        "touchDownPositionX",
        "touchDownPositionY",
        "boxContainsPoint",
        "coordinate",
        "boxIntersectsWorkspace",
        "checkRotationPoints",
        "clickCoordinatesRotatedX",
        "clickCoordinatesRotatedY",
        "rotationPoints",
        "",
        "(FF[Landroid/graphics/PointF;)Z",
        "createOverlayDrawable",
        "",
        "draw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "drawBitmap",
        "drawOverlayDrawable",
        "drawRectangle",
        "drawRotationArrows",
        "drawShape",
        "drawToolSpecifics",
        "getAction",
        "clickCoordinatesX",
        "clickCoordinatesY",
        "getAutoScrollDirection",
        "Landroid/graphics/Point;",
        "pointX",
        "pointY",
        "screenWidth",
        "screenHeight",
        "getDensitySpecificValue",
        "value",
        "getRotationPoints",
        "()[Landroid/graphics/PointF;",
        "handleDown",
        "handleMove",
        "handleUp",
        "highlightBox",
        "highlightBoxWhenClickInBox",
        "highlight",
        "ifNotNull",
        "T",
        "",
        "R",
        "options",
        "block",
        "Lkotlin/Function1;",
        "",
        "([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "initScaleDependedValues",
        "move",
        "deltaX",
        "deltaY",
        "onRestoreInstanceState",
        "bundle",
        "Landroid/os/Bundle;",
        "onSaveInstanceState",
        "preventThatBoxGetsTooLarge",
        "oldWidth",
        "oldHeight",
        "oldPosX",
        "oldPosY",
        "resize",
        "resizeHeight",
        "deltaYCorrected",
        "rotationRadian",
        "",
        "resizeOnFrame",
        "margin",
        "resizeWidth",
        "deltaXCorrected",
        "rotate",
        "setBitmap",
        "bitmap",
        "FloatingBoxAction",
        "ResizeAction",
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
.field private final arcPaint:Landroid/graphics/Paint;

.field private final arcPath:Landroid/graphics/Path;

.field private final arrowPaint:Landroid/graphics/Paint;

.field private final arrowPath:Landroid/graphics/Path;

.field public boxHeight:F

.field private boxResizeMargin:Ljava/lang/Float;

.field public boxRotation:F

.field public boxWidth:F

.field private currentAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

.field private downTimer:Landroid/os/CountDownTimer;

.field public drawingBitmap:Landroid/graphics/Bitmap;

.field public maximumBoxResolution:F

.field private overlayDrawable:Landroid/graphics/drawable/Drawable;

.field public rectangleShrinkingOnHighlight:I

.field private resizeAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

.field public resizePointsVisible:Z

.field public respectMaximumBorderRatio:Z

.field public respectMaximumBoxResolution:Z

.field private final rotationArrowArcRadius:I

.field private final rotationArrowArcStrokeWidth:I

.field private final rotationArrowHeadSize:I

.field private final rotationArrowOffset:I

.field public rotationEnabled:Z

.field public rotationSymbolDistance:F

.field private rotationSymbolWidth:Ljava/lang/Float;

.field public shouldDrawRectangle:Z

.field private final tempDrawingRectangle:Landroid/graphics/RectF;

.field private final tempToolPosition:Landroid/graphics/PointF;

.field public toolStrokeWidth:F

.field private touchDownPositionX:F

.field private touchDownPositionY:F


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;)V
    .locals 8
    .param p1, "contextCallback"    # Lorg/catrobat/paintroid/tools/ContextCallback;
    .param p2, "toolOptionsViewController"    # Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;
    .param p3, "toolPaint"    # Lorg/catrobat/paintroid/tools/ToolPaint;
    .param p4, "workspace"    # Lorg/catrobat/paintroid/tools/Workspace;
    .param p5, "commandManager"    # Lorg/catrobat/paintroid/command/CommandManager;

    const-string v0, "contextCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolOptionsViewController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolPaint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspace"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    nop

    .line 95
    nop

    .line 96
    nop

    .line 97
    nop

    .line 98
    nop

    .line 99
    nop

    .line 94
    invoke-direct/range {p0 .. p5}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;)V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->shouldDrawRectangle:Z

    .line 157
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxResizeMargin:Ljava/lang/Float;

    .line 158
    iput-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationSymbolWidth:Ljava/lang/Float;

    .line 166
    nop

    .line 167
    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/ContextCallback;->getOrientation()Lorg/catrobat/paintroid/tools/ContextCallback$ScreenOrientation;

    move-result-object v2

    .line 168
    .local v2, "orientation":Lorg/catrobat/paintroid/tools/ContextCallback$ScreenOrientation;
    nop

    .line 169
    sget-object v3, Lorg/catrobat/paintroid/tools/ContextCallback$ScreenOrientation;->PORTRAIT:Lorg/catrobat/paintroid/tools/ContextCallback$ScreenOrientation;

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->metrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->metrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    int-to-float v3, v3

    .line 168
    nop

    .line 170
    .local v3, "boxSize":F
    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/Workspace;->getScale()F

    move-result v4

    div-float v4, v3, v4

    const/4 v5, 0x2

    int-to-float v6, v5

    .line 171
    const/high16 v7, 0x42c80000    # 100.0f

    .line 170
    invoke-virtual {p0, v7}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getInverselyProportionalSizeForZoom(F)F

    move-result v7

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    iput v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    .line 173
    iput v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    .line 174
    nop

    .line 175
    nop

    .line 176
    nop

    .line 175
    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_1

    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    .line 176
    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    cmpl-float v4, v4, v6

    if-lez v4, :cond_2

    .line 179
    :cond_1
    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iput v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    .line 180
    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iput v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    .line 182
    :cond_2
    const/4 v4, 0x0

    iput v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rectangleShrinkingOnHighlight:I

    .line 183
    invoke-direct {p0, v5}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getDensitySpecificValue(I)I

    move-result v5

    iput v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationArrowArcStrokeWidth:I

    .line 184
    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getDensitySpecificValue(I)I

    move-result v5

    iput v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationArrowArcRadius:I

    .line 185
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getDensitySpecificValue(I)I

    move-result v6

    iput v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationArrowHeadSize:I

    .line 186
    invoke-direct {p0, v5}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getDensitySpecificValue(I)I

    move-result v5

    iput v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationArrowOffset:I

    .line 187
    sget-object v5, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->NONE:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    iput-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    .line 188
    iput-boolean v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationEnabled:Z

    .line 189
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizePointsVisible:Z

    .line 190
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->respectMaximumBorderRatio:Z

    .line 191
    iput-boolean v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->respectMaximumBoxResolution:Z

    .line 192
    iput v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->maximumBoxResolution:F

    .line 193
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->initScaleDependedValues()V

    .line 194
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->createOverlayDrawable()V

    .line 195
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->linePaint:Landroid/graphics/Paint;

    .local v1, "$this$apply":Landroid/graphics/Paint;
    const/4 v4, 0x0

    .line 196
    .local v4, "$i$a$-apply-BaseToolWithRectangleShape$1":I
    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 197
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 198
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 199
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 200
    nop

    .line 195
    .end local v1    # "$this$apply":Landroid/graphics/Paint;
    .end local v4    # "$i$a$-apply-BaseToolWithRectangleShape$1":I
    nop

    .line 201
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arcPaint:Landroid/graphics/Paint;

    .line 202
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arcPaint:Landroid/graphics/Paint;

    .local v0, "$this$apply":Landroid/graphics/Paint;
    const/4 v1, 0x0

    .line 203
    .local v1, "$i$a$-apply-BaseToolWithRectangleShape$2":I
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 205
    sget-object v5, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 206
    nop

    .line 202
    .end local v0    # "$this$apply":Landroid/graphics/Paint;
    .end local v1    # "$i$a$-apply-BaseToolWithRectangleShape$2":I
    nop

    .line 207
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arrowPaint:Landroid/graphics/Paint;

    .line 208
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arrowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 210
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arcPath:Landroid/graphics/Path;

    .line 211
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arrowPath:Landroid/graphics/Path;

    .line 212
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempDrawingRectangle:Landroid/graphics/RectF;

    .line 213
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempToolPosition:Landroid/graphics/PointF;

    .line 214
    .end local v2    # "orientation":Lorg/catrobat/paintroid/tools/ContextCallback$ScreenOrientation;
    .end local v3    # "boxSize":F
    return-void
.end method

.method public static final synthetic access$getCurrentAction$p(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;)Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    .line 88
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->currentAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    return-object v0
.end method

.method public static final synthetic access$getDownTimer$p(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    .line 88
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->downTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method public static final synthetic access$move(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;FF)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .line 88
    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->move(FF)V

    return-void
.end method

.method public static final synthetic access$resize(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;FF)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .line 88
    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resize(FF)V

    return-void
.end method

.method public static final synthetic access$rotate(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;FF)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .line 88
    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotate(FF)V

    return-void
.end method

.method public static final synthetic access$setCurrentAction$p(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    .line 88
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->currentAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    return-void
.end method

.method public static final synthetic access$setDownTimer$p(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;Landroid/os/CountDownTimer;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;
    .param p1, "<set-?>"    # Landroid/os/CountDownTimer;

    .line 88
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->downTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private final checkRotationPoints(FF[Landroid/graphics/PointF;)Z
    .locals 11
    .param p1, "clickCoordinatesRotatedX"    # F
    .param p2, "clickCoordinatesRotatedY"    # F
    .param p3, "rotationPoints"    # [Landroid/graphics/PointF;

    .line 518
    move-object v0, p3

    .local v0, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 782
    .local v1, "$i$f$forEach":I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    .local v6, "point":Landroid/graphics/PointF;
    const/4 v7, 0x0

    .line 519
    .local v7, "$i$a$-forEach-BaseToolWithRectangleShape$checkRotationPoints$1":I
    iget v8, v6, Landroid/graphics/PointF;->x:F

    iget v9, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationSymbolDistance:F

    const/4 v10, 0x2

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    cmpl-float v8, p1, v8

    if-lez v8, :cond_0

    iget v8, v6, Landroid/graphics/PointF;->x:F

    iget v9, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationSymbolDistance:F

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    cmpg-float v8, p1, v8

    if-gez v8, :cond_0

    iget v8, v6, Landroid/graphics/PointF;->y:F

    iget v9, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationSymbolDistance:F

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    cmpl-float v8, p2, v8

    if-lez v8, :cond_0

    iget v8, v6, Landroid/graphics/PointF;->y:F

    iget v9, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationSymbolDistance:F

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    cmpg-float v8, p2, v8

    if-gez v8, :cond_0

    .line 520
    const/4 v2, 0x1

    return v2

    .line 522
    :cond_0
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v6    # "point":Landroid/graphics/PointF;
    .end local v7    # "$i$a$-forEach-BaseToolWithRectangleShape$checkRotationPoints$1":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 783
    :cond_1
    nop

    .line 523
    .end local v0    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$forEach":I
    return v3
.end method

.method private final createOverlayDrawable()V
    .locals 3

    .line 664
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/ToolType;->getOverlayDrawableResource()I

    move-result v0

    .line 665
    .local v0, "overlayDrawableResource":I
    if-eqz v0, :cond_0

    .line 666
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/tools/ContextCallback;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 667
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 669
    :cond_0
    return-void
.end method

.method private final drawOverlayDrawable(Landroid/graphics/Canvas;FFF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "boxWidth"    # F
    .param p3, "boxHeight"    # F
    .param p4, "boxRotation"    # F

    .line 392
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/16 v1, 0x8

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 393
    .local v0, "size":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 394
    neg-float v1, p4

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 395
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .local v1, "$this$run":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 396
    .local v2, "$i$a$-run-BaseToolWithRectangleShape$drawOverlayDrawable$1":I
    neg-int v3, v0

    neg-int v4, v0

    invoke-virtual {v1, v3, v4, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 397
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 398
    nop

    .line 395
    .end local v1    # "$this$run":Landroid/graphics/drawable/Drawable;
    .end local v2    # "$i$a$-run-BaseToolWithRectangleShape$drawOverlayDrawable$1":I
    nop

    .line 399
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 400
    return-void
.end method

.method private final drawRectangle(Landroid/graphics/Canvas;FF)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "boxWidth"    # F
    .param p3, "boxHeight"    # F

    .line 403
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->linePaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 404
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->linePaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->secondaryShapeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 405
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempDrawingRectangle:Landroid/graphics/RectF;

    .line 406
    neg-float v1, p2

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rectangleShrinkingOnHighlight:I

    int-to-float v4, v3

    add-float/2addr v1, v4

    .line 407
    neg-float v4, p3

    div-float/2addr v4, v2

    int-to-float v5, v3

    add-float/2addr v4, v5

    .line 408
    div-float v5, p2, v2

    int-to-float v6, v3

    sub-float/2addr v5, v6

    .line 409
    div-float v2, p3, v2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 405
    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 411
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempDrawingRectangle:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 412
    return-void
.end method

.method private final drawRotationArrows(Landroid/graphics/Canvas;FF)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "boxWidth"    # F
    .param p3, "boxHeight"    # F

    .line 339
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 340
    .local v2, "width":F
    move/from16 v3, p3

    .line 341
    .local v3, "height":F
    nop

    .line 342
    iget v4, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationArrowArcStrokeWidth:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getInverselyProportionalSizeForZoom(F)F

    move-result v4

    .line 341
    nop

    .line 343
    .local v4, "arcStrokeWidth":F
    iget v5, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationArrowArcRadius:I

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getInverselyProportionalSizeForZoom(F)F

    move-result v5

    .line 344
    .local v5, "arcRadius":F
    iget v6, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationArrowHeadSize:I

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getInverselyProportionalSizeForZoom(F)F

    move-result v6

    .line 345
    .local v6, "arrowSize":F
    iget v7, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationArrowOffset:I

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getInverselyProportionalSizeForZoom(F)F

    move-result v7

    .line 346
    .local v7, "offset":F
    iget-object v8, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arcPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 347
    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x4

    if-ge v8, v9, :cond_0

    move v9, v8

    .local v9, "it":I
    const/4 v10, 0x0

    .line 348
    .local v10, "$i$a$-repeat-BaseToolWithRectangleShape$drawRotationArrows$1":I
    neg-float v11, v2

    const/4 v12, 0x2

    int-to-float v12, v12

    div-float/2addr v11, v12

    sub-float/2addr v11, v7

    .line 349
    .local v11, "xBase":F
    neg-float v13, v3

    div-float/2addr v13, v12

    sub-float/2addr v13, v7

    .line 350
    .local v13, "yBase":F
    iget-object v12, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arcPath:Landroid/graphics/Path;

    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    .line 351
    iget-object v12, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempDrawingRectangle:Landroid/graphics/RectF;

    .line 352
    sub-float v14, v11, v5

    .line 353
    sub-float v15, v13, v5

    .line 354
    move/from16 v16, v4

    .end local v4    # "arcStrokeWidth":F
    .local v16, "arcStrokeWidth":F
    add-float v4, v11, v5

    .line 355
    move/from16 v17, v7

    .end local v7    # "offset":F
    .local v17, "offset":F
    add-float v7, v13, v5

    .line 351
    invoke-virtual {v12, v14, v15, v4, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 357
    iget-object v4, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arcPath:Landroid/graphics/Path;

    iget-object v7, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempDrawingRectangle:Landroid/graphics/RectF;

    const/high16 v12, 0x43340000    # 180.0f

    const/high16 v14, 0x42b40000    # 90.0f

    invoke-virtual {v4, v7, v12, v14}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 358
    iget-object v4, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arcPath:Landroid/graphics/Path;

    iget-object v7, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arcPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 359
    iget-object v4, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arrowPath:Landroid/graphics/Path;

    .local v4, "$this$run":Landroid/graphics/Path;
    const/4 v7, 0x0

    .line 360
    .local v7, "$i$a$-run-BaseToolWithRectangleShape$drawRotationArrows$1$1":I
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 361
    sub-float v12, v11, v5

    sub-float/2addr v12, v6

    invoke-virtual {v4, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 362
    sub-float v12, v11, v5

    add-float/2addr v12, v6

    invoke-virtual {v4, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 363
    sub-float v12, v11, v5

    add-float v15, v13, v6

    invoke-virtual {v4, v12, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 364
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 365
    sub-float v12, v13, v5

    sub-float/2addr v12, v6

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 366
    sub-float v12, v13, v5

    add-float/2addr v12, v6

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 367
    add-float v12, v11, v6

    sub-float v15, v13, v5

    invoke-virtual {v4, v12, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 368
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 369
    nop

    .line 359
    .end local v4    # "$this$run":Landroid/graphics/Path;
    .end local v7    # "$i$a$-run-BaseToolWithRectangleShape$drawRotationArrows$1$1":I
    nop

    .line 370
    iget-object v4, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arrowPath:Landroid/graphics/Path;

    iget-object v7, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 371
    move v4, v2

    .line 372
    .local v4, "tempLength":F
    move v2, v3

    .line 373
    move v3, v4

    .line 374
    invoke-virtual {v1, v14}, Landroid/graphics/Canvas;->rotate(F)V

    .line 375
    .end local v4    # "tempLength":F
    .end local v11    # "xBase":F
    .end local v13    # "yBase":F
    nop

    .line 347
    .end local v9    # "it":I
    .end local v10    # "$i$a$-repeat-BaseToolWithRectangleShape$drawRotationArrows$1":I
    add-int/lit8 v8, v8, 0x1

    move/from16 v4, v16

    move/from16 v7, v17

    goto :goto_0

    .line 376
    .end local v16    # "arcStrokeWidth":F
    .end local v17    # "offset":F
    .local v4, "arcStrokeWidth":F
    .local v7, "offset":F
    :cond_0
    return-void
.end method

.method private final getAction(FF)Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;
    .locals 7
    .param p1, "clickCoordinatesX"    # F
    .param p2, "clickCoordinatesY"    # F

    .line 485
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->NONE:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    .line 486
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxRotation:F

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    double-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    .line 487
    .local v0, "rotationRadiant":F
    nop

    .line 488
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    neg-float v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    neg-float v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, p2, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 487
    nop

    .line 489
    .local v1, "clickCoordinatesRotatedX":F
    nop

    .line 490
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    neg-float v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    neg-float v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v4, p2, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 489
    nop

    .line 492
    .local v2, "clickCoordinatesRotatedY":F
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxResizeMargin:Ljava/lang/Float;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 494
    .local v3, "margin":F
    :goto_0
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    const/4 v6, 0x2

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    sub-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    add-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    sub-float/2addr v4, v3

    cmpg-float v4, v2, v4

    if-gez v4, :cond_1

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    add-float/2addr v4, v3

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1

    .line 495
    sget-object v4, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;->MOVE:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    return-object v4

    .line 498
    :cond_1
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    add-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    sub-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    add-float/2addr v4, v3

    cmpg-float v4, v2, v4

    if-gez v4, :cond_2

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    sub-float/2addr v4, v3

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    .line 499
    invoke-direct {p0, v1, v2, v3}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeOnFrame(FFF)V

    .line 500
    sget-object v4, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;->RESIZE:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    return-object v4

    .line 502
    :cond_2
    iget-boolean v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationEnabled:Z

    if-eqz v4, :cond_3

    .line 503
    nop

    .line 504
    nop

    .line 505
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getRotationPoints()[Landroid/graphics/PointF;

    move-result-object v4

    .line 502
    invoke-direct {p0, v1, v2, v4}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->checkRotationPoints(FF[Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 508
    sget-object v4, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;->ROTATE:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    return-object v4

    .line 510
    :cond_3
    sget-object v4, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;->MOVE:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    return-object v4
.end method

.method public static synthetic getBoxHeight$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getBoxRotation$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getBoxWidth$annotations()V
    .locals 0

    return-void
.end method

.method private final getDensitySpecificValue(I)I
    .locals 3
    .param p1, "value"    # I

    .line 217
    const/16 v0, 0xa0

    .line 218
    .local v0, "baseDensity":I
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xa0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 219
    .local v1, "density":I
    mul-int v2, p1, v1

    div-int/2addr v2, v0

    return v2
.end method

.method public static synthetic getDrawingBitmap$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getRotationEnabled$annotations()V
    .locals 0

    return-void
.end method

.method private final getRotationPoints()[Landroid/graphics/PointF;
    .locals 11

    .line 463
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    const/4 v2, 0x2

    int-to-float v3, v2

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationSymbolDistance:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 464
    .local v0, "newX1":F
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationSymbolDistance:F

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    .line 465
    .local v1, "newX2":F
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationSymbolDistance:F

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    .line 466
    .local v4, "newY1":F
    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v6, v3

    add-float/2addr v5, v6

    iget v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationSymbolDistance:F

    div-float/2addr v6, v3

    add-float/2addr v5, v6

    .line 468
    .local v5, "newY2":F
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v0, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 469
    .local v3, "topLeftRotationPoint":Landroid/graphics/PointF;
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v1, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 470
    .local v6, "topRightRotationPoint":Landroid/graphics/PointF;
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v0, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 471
    .local v7, "bottomLeftRotationPoint":Landroid/graphics/PointF;
    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8, v1, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 473
    .local v8, "bottomRightRotationPoint":Landroid/graphics/PointF;
    const/4 v9, 0x4

    new-array v9, v9, [Landroid/graphics/PointF;

    .line 474
    const/4 v10, 0x0

    aput-object v3, v9, v10

    .line 475
    const/4 v10, 0x1

    aput-object v6, v9, v10

    .line 476
    aput-object v7, v9, v2

    .line 477
    const/4 v2, 0x3

    aput-object v8, v9, v2

    .line 473
    return-object v9
.end method

.method public static synthetic getRotationSymbolDistance$annotations()V
    .locals 0

    return-void
.end method

.method private final ifNotNull([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .param p1, "options"    # [Ljava/lang/Object;
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+TT;>;+TR;>;)V"
        }
    .end annotation

    .line 236
    move-object v0, p1

    .local v0, "$this$all$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 780
    .local v1, "$i$f$all":I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_2

    aget-object v6, v0, v4

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    .local v7, "it":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 236
    .local v8, "$i$a$-all-BaseToolWithRectangleShape$ifNotNull$1":I
    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    move v5, v3

    .end local v7    # "it":Ljava/lang/Object;
    .end local v8    # "$i$a$-all-BaseToolWithRectangleShape$ifNotNull$1":I
    :goto_1
    if-nez v5, :cond_1

    goto :goto_2

    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 781
    :cond_2
    move v3, v5

    .line 236
    .end local v0    # "$this$all$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$all":I
    :goto_2
    if-eqz v3, :cond_3

    .line 237
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_3
    return-void
.end method

.method private final initScaleDependedValues()V
    .locals 3

    .line 223
    nop

    .line 224
    nop

    .line 225
    nop

    .line 223
    const/high16 v0, 0x40400000    # 3.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p0, v0, v1, v2}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getStrokeWidthForZoom(FFF)F

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolStrokeWidth:F

    .line 227
    const/16 v0, 0x14

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getInverselyProportionalSizeForZoom(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxResizeMargin:Ljava/lang/Float;

    .line 228
    nop

    .line 229
    nop

    .line 228
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getInverselyProportionalSizeForZoom(F)F

    move-result v0

    .line 230
    const/4 v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationSymbolDistance:F

    .line 231
    nop

    .line 232
    const/16 v0, 0x1e

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getInverselyProportionalSizeForZoom(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationSymbolWidth:Ljava/lang/Float;

    .line 233
    return-void
.end method

.method private final move(FF)V
    .locals 2
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .line 415
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 416
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 417
    return-void
.end method

.method private final resize(FF)V
    .locals 13
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .line 601
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxRotation:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 602
    .local v0, "rotationRadian":D
    neg-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    float-to-double v4, p1

    mul-double/2addr v2, v4

    neg-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    float-to-double v6, p2

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    .line 603
    .local v2, "deltaXCorrected":D
    neg-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    float-to-double v6, p1

    mul-double/2addr v4, v6

    neg-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    float-to-double v8, p2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 604
    .local v4, "deltaYCorrected":D
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    sget-object v7, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-virtual {v6}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v6

    aget v6, v7, v6

    const/4 v7, 0x1

    const/4 v8, 0x3

    if-eq v6, v7, :cond_2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    if-eq v6, v8, :cond_0

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    .line 627
    goto :goto_0

    .line 617
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 618
    nop

    .line 617
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v6, v6, v9

    if-lez v6, :cond_1

    .line 621
    nop

    .line 622
    iget v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    float-to-double v9, v6

    sub-double/2addr v9, v2

    iget v7, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    float-to-double v11, v7

    mul-double/2addr v9, v11

    float-to-double v11, v6

    div-double/2addr v9, v11

    float-to-double v6, v7

    sub-double v4, v9, v6

    goto :goto_0

    .line 624
    :cond_1
    nop

    .line 625
    iget v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    float-to-double v9, v6

    iget v7, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    float-to-double v11, v7

    sub-double/2addr v11, v4

    mul-double/2addr v9, v11

    float-to-double v11, v7

    div-double/2addr v9, v11

    float-to-double v6, v6

    sub-double v2, v9, v6

    .line 626
    goto :goto_0

    .line 606
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 607
    nop

    .line 606
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v6, v6, v9

    if-lez v6, :cond_3

    .line 610
    nop

    .line 611
    iget v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    float-to-double v9, v6

    add-double/2addr v9, v2

    iget v7, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    float-to-double v11, v7

    mul-double/2addr v9, v11

    float-to-double v11, v6

    div-double/2addr v9, v11

    float-to-double v6, v7

    sub-double v4, v9, v6

    goto :goto_0

    .line 613
    :cond_3
    nop

    .line 614
    iget v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    float-to-double v9, v6

    iget v7, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    float-to-double v11, v7

    add-double/2addr v11, v4

    mul-double/2addr v9, v11

    float-to-double v11, v7

    div-double/2addr v9, v11

    float-to-double v6, v6

    sub-double v2, v9, v6

    .line 615
    nop

    .line 628
    :goto_0
    nop

    .line 629
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    .line 630
    .local v6, "oldPosX":F
    iget-object v7, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 631
    .local v7, "oldPosY":F
    iget v9, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    .line 632
    .local v9, "oldHeight":F
    iget v10, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    .line 634
    .local v10, "oldWidth":F
    double-to-float v11, v4

    invoke-direct {p0, v11, v0, v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeHeight(FD)V

    .line 635
    double-to-float v11, v2

    invoke-direct {p0, v11, v0, v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeWidth(FD)V

    .line 638
    iget v11, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    int-to-float v8, v8

    cmpg-float v11, v11, v8

    if-gez v11, :cond_4

    .line 639
    iput v8, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    .line 640
    iget-object v11, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput v6, v11, Landroid/graphics/PointF;->x:F

    .line 642
    :cond_4
    iget v11, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    cmpg-float v11, v11, v8

    if-gez v11, :cond_5

    .line 643
    iput v8, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    .line 644
    iget-object v8, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput v7, v8, Landroid/graphics/PointF;->y:F

    .line 646
    :cond_5
    iget-boolean v8, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->respectMaximumBoxResolution:Z

    if-eqz v8, :cond_6

    iget v8, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->maximumBoxResolution:F

    const/4 v11, 0x0

    int-to-float v11, v11

    cmpl-float v11, v8, v11

    if-lez v11, :cond_6

    iget v11, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    iget v12, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    mul-float/2addr v11, v12

    cmpl-float v8, v11, v8

    if-lez v8, :cond_6

    .line 647
    invoke-virtual {p0, v10, v9, v6, v7}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->preventThatBoxGetsTooLarge(FFFF)V

    .line 649
    :cond_6
    return-void
.end method

.method private final resizeHeight(FD)V
    .locals 8
    .param p1, "deltaYCorrected"    # F
    .param p2, "rotationRadian"    # D

    .line 527
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 528
    .local v0, "maximumBorderRatioHeight":F
    const/4 v1, 0x2

    int-to-float v1, v1

    div-float v2, p1, v1

    float-to-double v2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 529
    .local v2, "resizeYMoveCenterX":F
    div-float v1, p1, v1

    float-to-double v3, v1

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-float v1, v3

    .line 530
    .local v1, "resizeYMoveCenterY":F
    const/4 v3, 0x0

    .line 531
    .local v3, "height":F
    const/4 v4, 0x0

    .line 532
    .local v4, "posX":F
    const/4 v5, 0x0

    .line 534
    .local v5, "posY":F
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    sget-object v7, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {v6}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    .line 559
    goto :goto_0

    .line 548
    :pswitch_0
    iget v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    add-float v3, v6, p1

    .line 549
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float v4, v6, v2

    .line 550
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float v5, v6, v1

    .line 551
    iget-boolean v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->respectMaximumBorderRatio:Z

    if-eqz v6, :cond_0

    cmpl-float v6, v3, v0

    if-lez v6, :cond_0

    .line 552
    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    goto :goto_0

    .line 554
    :cond_0
    iput v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    .line 555
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput v4, v6, Landroid/graphics/PointF;->x:F

    .line 556
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput v5, v6, Landroid/graphics/PointF;->y:F

    .line 557
    goto :goto_0

    .line 536
    :pswitch_1
    iget v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    sub-float v3, v6, p1

    .line 537
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float v4, v6, v2

    .line 538
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float v5, v6, v1

    .line 539
    iget-boolean v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->respectMaximumBorderRatio:Z

    if-eqz v6, :cond_1

    cmpl-float v6, v3, v0

    if-lez v6, :cond_1

    .line 540
    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    goto :goto_0

    .line 542
    :cond_1
    iput v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    .line 543
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput v4, v6, Landroid/graphics/PointF;->x:F

    .line 544
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput v5, v6, Landroid/graphics/PointF;->y:F

    .line 545
    nop

    .line 560
    :goto_0
    nop

    .line 561
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final resizeOnFrame(FFF)V
    .locals 5
    .param p1, "clickCoordinatesRotatedX"    # F
    .param p2, "clickCoordinatesRotatedY"    # F
    .param p3, "margin"    # F

    .line 442
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    const/4 v2, 0x2

    int-to-float v3, v2

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 443
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->LEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    goto :goto_0

    .line 444
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    sub-float/2addr v0, p3

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 445
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->RIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    .line 446
    :cond_1
    :goto_0
    nop

    .line 447
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    const/4 v1, 0x1

    if-gez v0, :cond_4

    .line 448
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    sget-object v3, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    .line 451
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->TOP:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    goto :goto_1

    .line 450
    :cond_2
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->TOPRIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    goto :goto_1

    .line 449
    :cond_3
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->TOPLEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    .line 448
    :goto_1
    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    goto :goto_3

    .line 453
    :cond_4
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v4, v3

    add-float/2addr v0, v4

    sub-float/2addr v0, p3

    cmpl-float v0, p2, v0

    if-lez v0, :cond_7

    .line 454
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    sget-object v3, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_5

    .line 457
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->BOTTOM:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    goto :goto_2

    .line 456
    :cond_5
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->BOTTOMRIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    goto :goto_2

    .line 455
    :cond_6
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->BOTTOMLEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    .line 454
    :goto_2
    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    .line 459
    :cond_7
    :goto_3
    nop

    .line 460
    return-void
.end method

.method private final resizeWidth(FD)V
    .locals 8
    .param p1, "deltaXCorrected"    # F
    .param p2, "rotationRadian"    # D

    .line 564
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 565
    .local v0, "maximumBorderRatioWidth":F
    const/4 v1, 0x2

    int-to-float v1, v1

    div-float v2, p1, v1

    float-to-double v2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 566
    .local v2, "resizeXMoveCenterX":F
    div-float v1, p1, v1

    float-to-double v3, v1

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-float v1, v3

    .line 567
    .local v1, "resizeXMoveCenterY":F
    const/4 v3, 0x0

    .line 568
    .local v3, "width":F
    const/4 v4, 0x0

    .line 569
    .local v4, "posX":F
    const/4 v5, 0x0

    .line 571
    .local v5, "posY":F
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    sget-object v7, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {v6}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    .line 596
    goto :goto_0

    .line 585
    :pswitch_0
    iget v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    add-float v3, v6, p1

    .line 586
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float v4, v6, v2

    .line 587
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float v5, v6, v1

    .line 588
    iget-boolean v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->respectMaximumBorderRatio:Z

    if-eqz v6, :cond_0

    cmpl-float v6, v3, v0

    if-lez v6, :cond_0

    .line 589
    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    goto :goto_0

    .line 591
    :cond_0
    iput v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    .line 592
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput v4, v6, Landroid/graphics/PointF;->x:F

    .line 593
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput v5, v6, Landroid/graphics/PointF;->y:F

    .line 594
    goto :goto_0

    .line 573
    :pswitch_1
    iget v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    sub-float v3, v6, p1

    .line 574
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float v4, v6, v2

    .line 575
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float v5, v6, v1

    .line 576
    iget-boolean v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->respectMaximumBorderRatio:Z

    if-eqz v6, :cond_1

    cmpl-float v6, v3, v0

    if-lez v6, :cond_1

    .line 577
    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    goto :goto_0

    .line 579
    :cond_1
    iput v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    .line 580
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput v4, v6, Landroid/graphics/PointF;->x:F

    .line 581
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput v5, v6, Landroid/graphics/PointF;->y:F

    .line 582
    nop

    .line 597
    :goto_0
    nop

    .line 598
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final rotate(FF)V
    .locals 21
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .line 420
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->previousEventCoordinate:Landroid/graphics/PointF;

    if-eqz v1, :cond_1

    .local v1, "it":Landroid/graphics/PointF;
    const/4 v2, 0x0

    .line 421
    .local v2, "$i$a$-let-BaseToolWithRectangleShape$rotate$1":I
    new-instance v3, Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 422
    .local v3, "currentPoint":Landroid/graphics/PointF;
    iget v4, v1, Landroid/graphics/PointF;->x:F

    sub-float v4, v4, p1

    iget-object v5, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    .line 423
    .local v4, "previousXLength":D
    iget v6, v1, Landroid/graphics/PointF;->y:F

    sub-float v6, v6, p2

    iget-object v7, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    .line 424
    .local v6, "previousYLength":D
    iget v8, v3, Landroid/graphics/PointF;->x:F

    iget-object v9, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    .line 425
    .local v8, "currentXLength":D
    iget v10, v3, Landroid/graphics/PointF;->y:F

    iget-object v11, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v11

    float-to-double v10, v10

    .line 426
    .local v10, "currentYLength":D
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    .line 427
    .local v12, "rotationAnglePrevious":D
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    .line 428
    .local v14, "rotationAngleCurrent":D
    move-object/from16 v16, v1

    move/from16 v17, v2

    .end local v1    # "it":Landroid/graphics/PointF;
    .end local v2    # "$i$a$-let-BaseToolWithRectangleShape$rotate$1":I
    .local v16, "it":Landroid/graphics/PointF;
    .local v17, "$i$a$-let-BaseToolWithRectangleShape$rotate$1":I
    sub-double v1, v12, v14

    neg-double v1, v1

    .line 429
    .local v1, "deltaAngle":D
    move-object/from16 v18, v3

    .end local v3    # "currentPoint":Landroid/graphics/PointF;
    .local v18, "currentPoint":Landroid/graphics/PointF;
    iget v3, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxRotation:F

    move-wide/from16 v19, v4

    .end local v4    # "previousXLength":D
    .local v19, "previousXLength":D
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x43b40000    # 360.0f

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxRotation:F

    .line 430
    rem-float/2addr v3, v5

    iput v3, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxRotation:F

    .line 431
    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    .line 432
    sub-float/2addr v3, v5

    iput v3, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxRotation:F

    .line 434
    .end local v1    # "deltaAngle":D
    .end local v6    # "previousYLength":D
    .end local v8    # "currentXLength":D
    .end local v10    # "currentYLength":D
    .end local v12    # "rotationAnglePrevious":D
    .end local v14    # "rotationAngleCurrent":D
    .end local v18    # "currentPoint":Landroid/graphics/PointF;
    .end local v19    # "previousXLength":D
    :cond_0
    nop

    .line 420
    .end local v16    # "it":Landroid/graphics/PointF;
    .end local v17    # "$i$a$-let-BaseToolWithRectangleShape$rotate$1":I
    nop

    .line 435
    :cond_1
    return-void
.end method


# virtual methods
.method public final boxContainsPoint(Landroid/graphics/PointF;)Z
    .locals 8
    .param p1, "coordinate"    # Landroid/graphics/PointF;

    const-string v0, "coordinate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 294
    .local v0, "relativeToOriginX":F
    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    .line 295
    .local v1, "relativeToOriginY":F
    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxRotation:F

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    double-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x43340000    # 180.0f

    div-float/2addr v2, v3

    neg-float v2, v2

    .line 296
    .local v2, "radians":F
    nop

    .line 297
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    .line 296
    nop

    .line 298
    .local v3, "rotatedX":F
    nop

    .line 299
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    .line 298
    nop

    .line 300
    .local v4, "rotatedY":F
    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    const/4 v7, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    cmpl-float v5, v3, v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    cmpg-float v5, v3, v5

    if-gez v5, :cond_0

    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    cmpl-float v5, v4, v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    cmpg-float v5, v4, v5

    if-gez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5
.end method

.method protected final boxIntersectsWorkspace()Z
    .locals 5

    .line 304
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v3}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    div-float/2addr v3, v2

    add-float/2addr v0, v3

    int-to-float v3, v1

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v4, v2

    add-float/2addr v0, v4

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->drawShape(Landroid/graphics/Canvas;)V

    .line 308
    return-void
.end method

.method protected drawBitmap(Landroid/graphics/Canvas;FF)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "boxWidth"    # F
    .param p3, "boxHeight"    # F

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->drawingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .local v0, "it":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 380
    .local v1, "$i$a$-let-BaseToolWithRectangleShape$drawBitmap$1":I
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempDrawingRectangle:Landroid/graphics/RectF;

    neg-float v3, p2

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    neg-float v5, p3

    div-float/2addr v5, v4

    div-float v6, p2, v4

    div-float v4, p3, v4

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 381
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempDrawingRectangle:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 382
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempDrawingRectangle:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 383
    nop

    .line 379
    .end local v0    # "it":Landroid/graphics/Bitmap;
    .end local v1    # "$i$a$-let-BaseToolWithRectangleShape$drawBitmap$1":I
    nop

    .line 384
    :cond_0
    return-void
.end method

.method public drawShape(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->initScaleDependedValues()V

    .line 312
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    .line 313
    .local v0, "boxWidth":F
    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    .line 314
    .local v1, "boxHeight":F
    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxRotation:F

    .line 315
    .local v2, "boxRotation":F
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempToolPosition:Landroid/graphics/PointF;

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 316
    move-object v3, p1

    .local v3, "$this$run":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    .line 317
    .local v4, "$i$a$-run-BaseToolWithRectangleShape$drawShape$1":I
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 318
    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempToolPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempToolPosition:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 319
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 320
    nop

    .line 316
    .end local v3    # "$this$run":Landroid/graphics/Canvas;
    .end local v4    # "$i$a$-run-BaseToolWithRectangleShape$drawShape$1":I
    nop

    .line 321
    iget-boolean v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizePointsVisible:Z

    if-eqz v3, :cond_0

    .line 322
    invoke-virtual {p0, p1, v0, v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->drawToolSpecifics(Landroid/graphics/Canvas;FF)V

    .line 324
    :cond_0
    iget-boolean v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationEnabled:Z

    if-eqz v3, :cond_1

    .line 325
    invoke-direct {p0, p1, v0, v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->drawRotationArrows(Landroid/graphics/Canvas;FF)V

    .line 327
    :cond_1
    invoke-virtual {p0, p1, v0, v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->drawBitmap(Landroid/graphics/Canvas;FF)V

    .line 328
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 329
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->drawOverlayDrawable(Landroid/graphics/Canvas;FFF)V

    .line 331
    :cond_2
    iget-boolean v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->shouldDrawRectangle:Z

    if-eqz v3, :cond_3

    .line 332
    invoke-direct {p0, p1, v0, v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->drawRectangle(Landroid/graphics/Canvas;FF)V

    .line 334
    :cond_3
    invoke-virtual {p0, p1, v0, v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->drawToolSpecifics(Landroid/graphics/Canvas;FF)V

    .line 335
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 336
    return-void
.end method

.method protected drawToolSpecifics(Landroid/graphics/Canvas;FF)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "boxWidth"    # F
    .param p3, "boxHeight"    # F

    move-object/from16 v0, p0

    const-string v1, "canvas"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 728
    move/from16 v1, p2

    .line 729
    .local v1, "width":F
    move/from16 v3, p3

    .line 730
    .local v3, "height":F
    iget-object v4, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->linePaint:Landroid/graphics/Paint;

    iget v5, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->primaryShapeColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 731
    iget-object v4, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->linePaint:Landroid/graphics/Paint;

    iget v5, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolStrokeWidth:F

    const/4 v6, 0x2

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 732
    new-instance v4, Landroid/graphics/PointF;

    .line 733
    neg-float v5, v1

    div-float/2addr v5, v6

    iget v7, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rectangleShrinkingOnHighlight:I

    int-to-float v8, v7

    add-float/2addr v5, v8

    .line 734
    neg-float v8, v3

    div-float/2addr v8, v6

    int-to-float v7, v7

    add-float/2addr v8, v7

    .line 732
    invoke-direct {v4, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 736
    .local v4, "rightTopPoint":Landroid/graphics/PointF;
    const/4 v5, 0x0

    :goto_0
    const/4 v7, 0x4

    if-ge v5, v7, :cond_0

    move v7, v5

    .local v7, "it":I
    const/4 v8, 0x0

    .line 737
    .local v8, "$i$a$-repeat-BaseToolWithRectangleShape$drawToolSpecifics$1":I
    const/16 v9, 0xa

    int-to-float v9, v9

    div-float v10, v3, v9

    .line 738
    .local v10, "resizeLineLengthHeight":F
    div-float v9, v1, v9

    .line 739
    .local v9, "resizeLineLengthWidth":F
    move-object/from16 v15, p1

    .local v15, "$this$run":Landroid/graphics/Canvas;
    const/16 v17, 0x0

    .line 740
    .local v17, "$i$a$-run-BaseToolWithRectangleShape$drawToolSpecifics$1$1":I
    nop

    .line 741
    iget v11, v4, Landroid/graphics/PointF;->x:F

    iget v12, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolStrokeWidth:F

    div-float/2addr v12, v6

    sub-float v12, v11, v12

    .line 742
    iget v13, v4, Landroid/graphics/PointF;->y:F

    iget v11, v4, Landroid/graphics/PointF;->x:F

    add-float v14, v11, v9

    .line 743
    iget v11, v4, Landroid/graphics/PointF;->y:F

    .line 744
    iget-object v2, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->linePaint:Landroid/graphics/Paint;

    .line 740
    move/from16 v16, v11

    move-object v11, v15

    move-object/from16 v18, v15

    .end local v15    # "$this$run":Landroid/graphics/Canvas;
    .local v18, "$this$run":Landroid/graphics/Canvas;
    move/from16 v15, v16

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 746
    nop

    .line 747
    iget v12, v4, Landroid/graphics/PointF;->x:F

    .line 748
    iget v2, v4, Landroid/graphics/PointF;->y:F

    iget v11, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolStrokeWidth:F

    div-float/2addr v11, v6

    sub-float v13, v2, v11

    .line 749
    iget v14, v4, Landroid/graphics/PointF;->x:F

    .line 750
    iget v2, v4, Landroid/graphics/PointF;->y:F

    add-float v15, v2, v10

    .line 751
    iget-object v2, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->linePaint:Landroid/graphics/Paint;

    .line 746
    move-object/from16 v11, v18

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 753
    nop

    .line 754
    iget v2, v4, Landroid/graphics/PointF;->x:F

    div-float v11, v1, v6

    add-float/2addr v2, v11

    sub-float v12, v2, v9

    .line 755
    iget v13, v4, Landroid/graphics/PointF;->y:F

    .line 756
    iget v2, v4, Landroid/graphics/PointF;->x:F

    div-float v11, v1, v6

    add-float/2addr v2, v11

    add-float v14, v2, v9

    .line 757
    iget v15, v4, Landroid/graphics/PointF;->y:F

    .line 758
    iget-object v2, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->linePaint:Landroid/graphics/Paint;

    .line 753
    move-object/from16 v11, v18

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 760
    const/high16 v2, 0x42b40000    # 90.0f

    .end local v18    # "$this$run":Landroid/graphics/Canvas;
    .local v11, "$this$run":Landroid/graphics/Canvas;
    invoke-virtual {v11, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 761
    nop

    .line 739
    .end local v11    # "$this$run":Landroid/graphics/Canvas;
    .end local v17    # "$i$a$-run-BaseToolWithRectangleShape$drawToolSpecifics$1$1":I
    nop

    .line 762
    iget v2, v4, Landroid/graphics/PointF;->x:F

    .line 763
    .local v2, "tempX":F
    iget v11, v4, Landroid/graphics/PointF;->y:F

    iput v11, v4, Landroid/graphics/PointF;->x:F

    .line 764
    iput v2, v4, Landroid/graphics/PointF;->y:F

    .line 765
    move v11, v3

    .line 766
    .local v11, "tempHeight":F
    move v3, v1

    .line 767
    move v1, v11

    .line 768
    .end local v2    # "tempX":F
    .end local v9    # "resizeLineLengthWidth":F
    .end local v10    # "resizeLineLengthHeight":F
    .end local v11    # "tempHeight":F
    nop

    .line 736
    .end local v7    # "it":I
    .end local v8    # "$i$a$-repeat-BaseToolWithRectangleShape$drawToolSpecifics$1":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p1

    goto :goto_0

    .line 769
    :cond_0
    return-void
.end method

.method public getAutoScrollDirection(FFII)Landroid/graphics/Point;
    .locals 2
    .param p1, "pointX"    # F
    .param p2, "pointY"    # F
    .param p3, "screenWidth"    # I
    .param p4, "screenHeight"    # I

    .line 704
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->currentAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;->MOVE:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->currentAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;->RESIZE:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 706
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    .line 705
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->getAutoScrollDirection(FFII)Landroid/graphics/Point;

    move-result-object v0

    .line 704
    :goto_1
    return-object v0
.end method

.method public handleDown(Landroid/graphics/PointF;)Z
    .locals 5
    .param p1, "coordinate"    # Landroid/graphics/PointF;

    .line 249
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->movedDistance:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 250
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "$this$apply":Landroid/graphics/PointF;
    const/4 v1, 0x0

    .line 251
    .local v1, "$i$a$-apply-BaseToolWithRectangleShape$handleDown$1":I
    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->previousEventCoordinate:Landroid/graphics/PointF;

    .line 252
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v2, v3}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getAction(FF)Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->currentAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    .line 253
    nop

    .line 250
    .end local v0    # "$this$apply":Landroid/graphics/PointF;
    .end local v1    # "$i$a$-apply-BaseToolWithRectangleShape$handleDown$1":I
    nop

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->touchDownPositionX:F

    .line 255
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->touchDownPositionY:F

    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method public handleMove(Landroid/graphics/PointF;)Z
    .locals 3
    .param p1, "coordinate"    # Landroid/graphics/PointF;

    .line 260
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->previousEventCoordinate:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->currentAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    if-nez v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/PointF;

    aput-object p1, v0, v1

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->previousEventCoordinate:Landroid/graphics/PointF;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0, v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->ifNotNull([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 277
    return v2

    .line 261
    :cond_1
    :goto_0
    return v1
.end method

.method public handleUp(Landroid/graphics/PointF;)Z
    .locals 3
    .param p1, "coordinate"    # Landroid/graphics/PointF;

    .line 281
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->previousEventCoordinate:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 282
    return v1

    .line 284
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/PointF;

    aput-object p1, v0, v1

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->previousEventCoordinate:Landroid/graphics/PointF;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleUp$1;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleUp$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0, v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->ifNotNull([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 288
    return v2
.end method

.method public final highlightBox()V
    .locals 7

    .line 672
    nop

    .line 687
    nop

    .line 672
    new-instance v6, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$highlightBox$1;

    .line 674
    const/16 v0, 0xfa

    int-to-long v2, v0

    .line 675
    const/16 v0, 0x53

    int-to-long v4, v0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$highlightBox$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;JJ)V

    .line 687
    invoke-virtual {v6}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$highlightBox$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->downTimer:Landroid/os/CountDownTimer;

    .line 688
    return-void
.end method

.method public final highlightBoxWhenClickInBox(Z)V
    .locals 2
    .param p1, "highlight"    # Z

    .line 691
    nop

    .line 692
    if-eqz p1, :cond_0

    sget v0, Lorg/catrobat/paintroid/R$color;->pocketpaint_main_rectangle_tool_highlight_color:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/catrobat/paintroid/R$color;->pocketpaint_main_rectangle_tool_accent_color:I

    .line 691
    :goto_0
    nop

    .line 693
    .local v0, "colorId":I
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/tools/ContextCallback;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->secondaryShapeColor:I

    .line 694
    nop

    .line 695
    if-eqz p1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rectangleShrinkingOnHighlight:I

    .line 696
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 719
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 720
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "$this$apply":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 721
    .local v1, "$i$a$-apply-BaseToolWithRectangleShape$onRestoreInstanceState$1":I
    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    const-string v3, "BOX_WIDTH"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    .line 722
    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    const-string v3, "BOX_HEIGHT"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    .line 723
    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxRotation:F

    const-string v3, "BOX_ROTATION"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxRotation:F

    .line 724
    nop

    .line 720
    .end local v0    # "$this$apply":Landroid/os/Bundle;
    .end local v1    # "$i$a$-apply-BaseToolWithRectangleShape$onRestoreInstanceState$1":I
    nop

    .line 725
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 710
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 711
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "$this$apply":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 712
    .local v1, "$i$a$-apply-BaseToolWithRectangleShape$onSaveInstanceState$1":I
    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    const-string v3, "BOX_WIDTH"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 713
    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    const-string v3, "BOX_HEIGHT"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 714
    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxRotation:F

    const-string v3, "BOX_ROTATION"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 715
    nop

    .line 711
    .end local v0    # "$this$apply":Landroid/os/Bundle;
    .end local v1    # "$i$a$-apply-BaseToolWithRectangleShape$onSaveInstanceState$1":I
    nop

    .line 716
    :cond_0
    return-void
.end method

.method protected preventThatBoxGetsTooLarge(FFFF)V
    .locals 1
    .param p1, "oldWidth"    # F
    .param p2, "oldHeight"    # F
    .param p3, "oldPosX"    # F
    .param p4, "oldPosY"    # F

    .line 657
    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    .line 658
    iput p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    .line 659
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput p3, v0, Landroid/graphics/PointF;->x:F

    .line 660
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput p4, v0, Landroid/graphics/PointF;->y:F

    .line 661
    return-void
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 242
    if-eqz p1, :cond_0

    .line 243
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->drawingBitmap:Landroid/graphics/Bitmap;

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    .line 246
    return-void
.end method
