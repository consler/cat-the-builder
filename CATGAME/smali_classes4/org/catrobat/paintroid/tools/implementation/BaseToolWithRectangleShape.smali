.class public abstract Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;
.super Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;
.source "BaseToolWithRectangleShape.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;,
        Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;,
        Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseToolWithRectangleShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseToolWithRectangleShape.kt\norg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,819:1\n12530#2,2:820\n13536#2,2:822\n*S KotlinDebug\n*F\n+ 1 BaseToolWithRectangleShape.kt\norg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape\n*L\n240#1:820,2\n558#1:822,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0006\n\u0002\u0008\u000b\u0008&\u0018\u00002\u00020\u0001:\u0004\u008e\u0001\u008f\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010B\u001a\u00020.2\u0006\u0010C\u001a\u00020>H\u0007J\u0008\u0010D\u001a\u00020.H\u0004J+\u0010E\u001a\u00020.2\u0006\u0010F\u001a\u00020\u00162\u0006\u0010G\u001a\u00020\u00162\u000c\u0010H\u001a\u0008\u0012\u0004\u0012\u00020>0IH\u0002\u00a2\u0006\u0002\u0010JJ\u0008\u0010K\u001a\u00020LH\u0002J\u0010\u0010M\u001a\u00020L2\u0006\u0010N\u001a\u00020OH\u0016J \u0010P\u001a\u00020L2\u0006\u0010N\u001a\u00020O2\u0006\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0016H\u0014J(\u0010Q\u001a\u00020L2\u0006\u0010N\u001a\u00020O2\u0006\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u0016H\u0002J \u0010R\u001a\u00020L2\u0006\u0010N\u001a\u00020O2\u0006\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J \u0010S\u001a\u00020L2\u0006\u0010N\u001a\u00020O2\u0006\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010T\u001a\u00020L2\u0006\u0010N\u001a\u00020OH\u0016J \u0010U\u001a\u00020L2\u0006\u0010N\u001a\u00020O2\u0006\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0016H\u0014J\u0018\u0010V\u001a\u00020 2\u0006\u0010W\u001a\u00020\u00162\u0006\u0010X\u001a\u00020\u0016H\u0002J(\u0010Y\u001a\u00020Z2\u0006\u0010[\u001a\u00020\u00162\u0006\u0010\\\u001a\u00020\u00162\u0006\u0010]\u001a\u00020*2\u0006\u0010^\u001a\u00020*H\u0016J\u0010\u0010_\u001a\u00020*2\u0006\u0010`\u001a\u00020*H\u0002J\u0013\u0010a\u001a\u0008\u0012\u0004\u0012\u00020>0IH\u0002\u00a2\u0006\u0002\u0010bJ\u0012\u0010c\u001a\u00020.2\u0008\u0010C\u001a\u0004\u0018\u00010>H\u0016J\u001a\u0010d\u001a\u00020.2\u0008\u0010C\u001a\u0004\u0018\u00010>2\u0006\u0010e\u001a\u00020.H\u0016J\u0012\u0010f\u001a\u00020.2\u0008\u0010C\u001a\u0004\u0018\u00010>H\u0016J\u0008\u0010g\u001a\u00020LH\u0002J\u0006\u0010h\u001a\u00020LJ\u000e\u0010i\u001a\u00020L2\u0006\u0010j\u001a\u00020.JS\u0010k\u001a\u00020L\"\u0008\u0008\u0000\u0010l*\u00020m\"\u0008\u0008\u0001\u0010n*\u00020m2\u0016\u0010o\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u0001Hl0I\"\u0004\u0018\u0001Hl2\u0018\u0010p\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002Hl0r\u0012\u0004\u0012\u0002Hn0qH\u0002\u00a2\u0006\u0002\u0010sJ\u0008\u0010t\u001a\u00020LH\u0002J\u0018\u0010u\u001a\u00020L2\u0006\u0010v\u001a\u00020\u00162\u0006\u0010w\u001a\u00020\u0016H\u0002J\u0012\u0010x\u001a\u00020L2\u0008\u0010y\u001a\u0004\u0018\u00010zH\u0016J\u0012\u0010{\u001a\u00020L2\u0008\u0010y\u001a\u0004\u0018\u00010zH\u0016J)\u0010|\u001a\u00020L2\u0006\u0010}\u001a\u00020\u00162\u0006\u0010~\u001a\u00020\u00162\u0006\u0010\u007f\u001a\u00020\u00162\u0007\u0010\u0080\u0001\u001a\u00020\u0016H\u0014J\u0019\u0010\u0081\u0001\u001a\u00020L2\u0006\u0010v\u001a\u00020\u00162\u0006\u0010w\u001a\u00020\u0016H\u0002J\u001c\u0010\u0082\u0001\u001a\u00020L2\u0007\u0010\u0083\u0001\u001a\u00020\u00162\u0008\u0010\u0084\u0001\u001a\u00030\u0085\u0001H\u0002J\"\u0010\u0086\u0001\u001a\u00020L2\u0006\u0010F\u001a\u00020\u00162\u0006\u0010G\u001a\u00020\u00162\u0007\u0010\u0087\u0001\u001a\u00020\u0016H\u0002J\u001c\u0010\u0088\u0001\u001a\u00020L2\u0007\u0010\u0089\u0001\u001a\u00020\u00162\u0008\u0010\u0084\u0001\u001a\u00030\u0085\u0001H\u0002J\u0019\u0010\u008a\u0001\u001a\u00020L2\u0006\u0010v\u001a\u00020\u00162\u0006\u0010w\u001a\u00020\u0016H\u0002J\u0012\u0010\u008b\u0001\u001a\u00020L2\t\u0010\u008c\u0001\u001a\u0004\u0018\u00010$J\t\u0010\u008d\u0001\u001a\u00020LH\u0002R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0015\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0017\u0010\u0018R\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001aR\u0018\u0010\u001b\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001c\u0010\u0018R\u0018\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001e\u0010\u0018R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010#\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008%\u0010\u0018R\u0012\u0010&\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\'\u001a\u0004\u0018\u00010(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010)\u001a\u00020*8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010-\u001a\u00020.8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010/\u001a\u00020.8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00100\u001a\u00020.8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020*X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020*X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020*X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020*X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u00105\u001a\u00020.8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u00086\u0010\u0018R\u0018\u00107\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u00088\u0010\u0018R\u0012\u00109\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001aR\u0012\u0010:\u001a\u00020.8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020<X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020>X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010?\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010A\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0090\u0001"
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
        "idlingResource",
        "Landroidx/test/espresso/idling/CountingIdlingResource;",
        "commandManager",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;)V",
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
        "shouldAnimate",
        "handleUp",
        "hideToolSpecificLayout",
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
        "showToolSpecificLayout",
        "FloatingBoxAction",
        "ResizeAction",
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
.method public constructor <init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;)V
    .locals 1

    const-string v0, "contextCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolOptionsViewController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolPaint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspace"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idlingResource"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-direct/range {p0 .. p6}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;)V

    const/4 p2, 0x1

    .line 159
    iput-boolean p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->shouldDrawRectangle:Z

    const/4 p3, 0x0

    .line 161
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    iput-object p5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxResizeMargin:Ljava/lang/Float;

    .line 162
    iput-object p5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationSymbolWidth:Ljava/lang/Float;

    .line 171
    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/ContextCallback;->getOrientation()Lorg/catrobat/paintroid/tools/ContextCallback$ScreenOrientation;

    move-result-object p1

    .line 173
    sget-object p5, Lorg/catrobat/paintroid/tools/ContextCallback$ScreenOrientation;->PORTRAIT:Lorg/catrobat/paintroid/tools/ContextCallback$ScreenOrientation;

    if-ne p1, p5, :cond_0

    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->metrics:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->metrics:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    int-to-float p1, p1

    .line 174
    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/Workspace;->getScale()F

    move-result p5

    div-float/2addr p1, p5

    const/4 p5, 0x2

    int-to-float p6, p5

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getInverselyProportionalSizeForZoom(F)F

    move-result v0

    mul-float/2addr p6, v0

    sub-float/2addr p1, p6

    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    .line 177
    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    .line 179
    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result p6

    int-to-float p6, p6

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p6, v0

    cmpl-float p1, p1, p6

    if-gtz p1, :cond_1

    .line 180
    iget p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result p6

    int-to-float p6, p6

    mul-float/2addr p6, v0

    cmpl-float p1, p1, p6

    if-lez p1, :cond_2

    .line 183
    :cond_1
    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    .line 184
    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    :cond_2
    const/4 p1, 0x0

    .line 186
    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rectangleShrinkingOnHighlight:I

    .line 187
    invoke-direct {p0, p5}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getDensitySpecificValue(I)I

    move-result p4

    iput p4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationArrowArcStrokeWidth:I

    const/16 p4, 0x8

    .line 188
    invoke-direct {p0, p4}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getDensitySpecificValue(I)I

    move-result p4

    iput p4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationArrowArcRadius:I

    const/4 p4, 0x3

    .line 189
    invoke-direct {p0, p4}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getDensitySpecificValue(I)I

    move-result p5

    iput p5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationArrowHeadSize:I

    .line 190
    invoke-direct {p0, p4}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getDensitySpecificValue(I)I

    move-result p4

    iput p4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationArrowOffset:I

    .line 191
    sget-object p4, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->NONE:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    iput-object p4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    .line 192
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationEnabled:Z

    .line 193
    iput-boolean p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizePointsVisible:Z

    .line 194
    iput-boolean p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->respectMaximumBorderRatio:Z

    .line 195
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->respectMaximumBoxResolution:Z

    .line 196
    iput p3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->maximumBoxResolution:F

    .line 197
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->initScaleDependedValues()V

    .line 198
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->createOverlayDrawable()V

    .line 199
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->linePaint:Landroid/graphics/Paint;

    .line 200
    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    .line 201
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 202
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 203
    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 205
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arcPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    .line 207
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 209
    sget-object p3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 211
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arrowPaint:Landroid/graphics/Paint;

    .line 212
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 214
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arcPath:Landroid/graphics/Path;

    .line 215
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arrowPath:Landroid/graphics/Path;

    .line 216
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempDrawingRectangle:Landroid/graphics/RectF;

    .line 217
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempToolPosition:Landroid/graphics/PointF;

    return-void
.end method

.method public static final synthetic access$getCurrentAction$p(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;)Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->currentAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    return-object p0
.end method

.method public static final synthetic access$getDownTimer$p(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;)Landroid/os/CountDownTimer;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->downTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method public static final synthetic access$move(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;FF)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->move(FF)V

    return-void
.end method

.method public static final synthetic access$resize(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;FF)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resize(FF)V

    return-void
.end method

.method public static final synthetic access$rotate(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;FF)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotate(FF)V

    return-void
.end method

.method private final checkRotationPoints(FF[Landroid/graphics/PointF;)Z
    .locals 7

    .line 822
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p3, v2

    .line 559
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationSymbolDistance:F

    const/4 v6, 0x2

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationSymbolDistance:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    iget v4, v3, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationSymbolDistance:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationSymbolDistance:F

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    cmpg-float v3, p2, v3

    if-gez v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private final createOverlayDrawable()V
    .locals 2

    .line 704
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/ToolType;->getOverlayDrawableResource()I

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/tools/ContextCallback;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 707
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final drawOverlayDrawable(Landroid/graphics/Canvas;FFF)V
    .locals 0

    .line 432
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/16 p3, 0x8

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-int p2, p2

    .line 433
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    neg-float p3, p4

    .line 434
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 435
    iget-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    neg-int p4, p2

    .line 436
    invoke-virtual {p3, p4, p4, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 437
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 439
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private final drawRectangle(Landroid/graphics/Canvas;FF)V
    .locals 6

    .line 443
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->linePaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 444
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->linePaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->secondaryShapeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 445
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempDrawingRectangle:Landroid/graphics/RectF;

    neg-float v1, p2

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 446
    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rectangleShrinkingOnHighlight:I

    int-to-float v4, v3

    add-float/2addr v1, v4

    neg-float v4, p3

    div-float/2addr v4, v2

    int-to-float v5, v3

    add-float/2addr v4, v5

    div-float/2addr p2, v2

    int-to-float v5, v3

    sub-float/2addr p2, v5

    div-float/2addr p3, v2

    int-to-float v2, v3

    sub-float/2addr p3, v2

    .line 445
    invoke-virtual {v0, v1, v4, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 451
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempDrawingRectangle:Landroid/graphics/RectF;

    iget-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawRotationArrows(Landroid/graphics/Canvas;FF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 375
    iget v2, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationArrowArcStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getInverselyProportionalSizeForZoom(F)F

    move-result v2

    .line 376
    iget v3, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationArrowArcRadius:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getInverselyProportionalSizeForZoom(F)F

    move-result v3

    .line 377
    iget v4, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationArrowHeadSize:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getInverselyProportionalSizeForZoom(F)F

    move-result v4

    .line 378
    iget v5, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationArrowOffset:I

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getInverselyProportionalSizeForZoom(F)F

    move-result v5

    .line 379
    iget-object v6, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arcPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v2, 0x0

    move/from16 v6, p3

    move v7, v2

    move/from16 v2, p2

    :goto_0
    const/4 v8, 0x4

    if-ge v7, v8, :cond_0

    neg-float v8, v2

    const/4 v9, 0x2

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float/2addr v8, v5

    neg-float v10, v6

    div-float/2addr v10, v9

    sub-float/2addr v10, v5

    .line 383
    iget-object v9, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arcPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 384
    iget-object v9, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempDrawingRectangle:Landroid/graphics/RectF;

    sub-float v11, v8, v3

    sub-float v12, v10, v3

    add-float v13, v8, v3

    add-float v14, v10, v3

    invoke-virtual {v9, v11, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 390
    iget-object v9, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arcPath:Landroid/graphics/Path;

    iget-object v13, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempDrawingRectangle:Landroid/graphics/RectF;

    const/high16 v14, 0x43340000    # 180.0f

    const/high16 v15, 0x42b40000    # 90.0f

    invoke-virtual {v9, v13, v14, v15}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 391
    iget-object v9, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arcPath:Landroid/graphics/Path;

    iget-object v13, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arcPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 392
    iget-object v9, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arrowPath:Landroid/graphics/Path;

    .line 393
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    sub-float v13, v11, v4

    .line 394
    invoke-virtual {v9, v13, v10}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v13, v11, v4

    .line 395
    invoke-virtual {v9, v13, v10}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr v10, v4

    .line 396
    invoke-virtual {v9, v11, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 397
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    sub-float v10, v12, v4

    .line 398
    invoke-virtual {v9, v8, v10}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v10, v12, v4

    .line 399
    invoke-virtual {v9, v8, v10}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr v8, v4

    .line 400
    invoke-virtual {v9, v8, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 401
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    .line 403
    iget-object v8, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arrowPath:Landroid/graphics/Path;

    iget-object v9, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 407
    invoke-virtual {v1, v15}, Landroid/graphics/Canvas;->rotate(F)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v6

    move v6, v2

    move/from16 v2, v16

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final getAction(FF)Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;
    .locals 6

    .line 525
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->NONE:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    .line 526
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxRotation:F

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    .line 528
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    neg-float v0, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, p1, v4

    mul-float/2addr v0, v4

    add-float/2addr v1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v0, v4

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v4, p2, v4

    mul-float/2addr v0, v4

    sub-float/2addr v1, v0

    .line 530
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v5

    mul-float/2addr v4, p1

    add-float/2addr v0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v2

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    .line 532
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxResizeMargin:Ljava/lang/Float;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 534
    :goto_0
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr p2, v2

    sub-float/2addr p2, p1

    cmpg-float p2, v1, p2

    if-gez p2, :cond_1

    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    div-float/2addr v2, v3

    sub-float/2addr p2, v2

    add-float/2addr p2, p1

    cmpl-float p2, v1, p2

    if-lez p2, :cond_1

    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v2, v3

    add-float/2addr p2, v2

    sub-float/2addr p2, p1

    cmpg-float p2, v0, p2

    if-gez p2, :cond_1

    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v2, v3

    sub-float/2addr p2, v2

    add-float/2addr p2, p1

    cmpl-float p2, v0, p2

    if-lez p2, :cond_1

    .line 535
    sget-object p1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;->MOVE:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    return-object p1

    .line 538
    :cond_1
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    div-float/2addr v2, v3

    add-float/2addr p2, v2

    add-float/2addr p2, p1

    cmpg-float p2, v1, p2

    if-gez p2, :cond_2

    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    div-float/2addr v2, v3

    sub-float/2addr p2, v2

    sub-float/2addr p2, p1

    cmpl-float p2, v1, p2

    if-lez p2, :cond_2

    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v2, v3

    add-float/2addr p2, v2

    add-float/2addr p2, p1

    cmpg-float p2, v0, p2

    if-gez p2, :cond_2

    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v2, v3

    sub-float/2addr p2, v2

    sub-float/2addr p2, p1

    cmpl-float p2, v0, p2

    if-lez p2, :cond_2

    .line 539
    invoke-direct {p0, v1, v0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeOnFrame(FFF)V

    .line 540
    sget-object p1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;->RESIZE:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    return-object p1

    .line 542
    :cond_2
    iget-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationEnabled:Z

    if-eqz p1, :cond_3

    .line 545
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getRotationPoints()[Landroid/graphics/PointF;

    move-result-object p1

    .line 542
    invoke-direct {p0, v1, v0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->checkRotationPoints(FF[Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 548
    sget-object p1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;->ROTATE:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    return-object p1

    .line 550
    :cond_3
    sget-object p1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;->MOVE:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    return-object p1
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
    .locals 2

    .line 222
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xa0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr p1, v0

    .line 223
    div-int/2addr p1, v1

    return p1
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
    .locals 7

    .line 503
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

    .line 504
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationSymbolDistance:F

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    .line 505
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationSymbolDistance:F

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    .line 506
    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v6, v3

    add-float/2addr v5, v6

    iget v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationSymbolDistance:F

    div-float/2addr v6, v3

    add-float/2addr v5, v6

    .line 508
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v0, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 509
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v1, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 510
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 511
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/PointF;

    const/4 v5, 0x0

    aput-object v3, v1, v5

    const/4 v3, 0x1

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    return-object v1
.end method

.method public static synthetic getRotationSymbolDistance$annotations()V
    .locals 0

    return-void
.end method

.method private final hideToolSpecificLayout()V
    .locals 4

    .line 253
    instance-of v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->getToolSpecificOptionsLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 257
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->getToolSpecificOptionsLayout()Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    .line 256
    invoke-interface {v0, v2, v1, v3}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->slideDown(Landroid/view/View;ZZ)V

    .line 262
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->animateBottomAndTopNavigation(Z)V

    return-void
.end method

.method private final ifNotNull([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 5
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

    .line 820
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    aget-object v4, p1, v2

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_2
    if-eqz v1, :cond_3

    .line 241
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private final initScaleDependedValues()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x41000000    # 8.0f

    const/high16 v2, 0x40400000    # 3.0f

    .line 227
    invoke-virtual {p0, v2, v0, v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getStrokeWidthForZoom(FFF)F

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolStrokeWidth:F

    const/high16 v0, 0x41a00000    # 20.0f

    .line 231
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getInverselyProportionalSizeForZoom(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxResizeMargin:Ljava/lang/Float;

    .line 232
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getInverselyProportionalSizeForZoom(F)F

    move-result v0

    const/4 v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationSymbolDistance:F

    const/high16 v0, 0x41f00000    # 30.0f

    .line 236
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getInverselyProportionalSizeForZoom(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 235
    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationSymbolWidth:Ljava/lang/Float;

    return-void
.end method

.method private final move(FF)V
    .locals 2

    .line 455
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 456
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private final resize(FF)V
    .locals 10

    .line 641
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxRotation:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    neg-double v2, v0

    .line 642
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    float-to-double v6, p1

    mul-double/2addr v4, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    float-to-double p1, p2

    mul-double/2addr v8, p1

    sub-double/2addr v4, v8

    .line 643
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, p1

    add-double/2addr v8, v2

    .line 644
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    sget-object p2, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/4 p2, 0x7

    if-eq p1, p2, :cond_2

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    goto :goto_2

    .line 646
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double p1, p1, v2

    if-lez p1, :cond_1

    .line 651
    iget p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    float-to-double v2, p1

    add-double/2addr v2, v4

    iget p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    goto :goto_0

    .line 654
    :cond_1
    iget p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    float-to-double v2, p1

    iget p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    float-to-double v4, p2

    add-double/2addr v4, v8

    goto :goto_1

    .line 657
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double p1, p1, v2

    if-lez p1, :cond_3

    .line 662
    iget p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    float-to-double v2, p1

    sub-double/2addr v2, v4

    iget p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    :goto_0
    float-to-double v6, p2

    mul-double/2addr v2, v6

    float-to-double v6, p1

    div-double/2addr v2, v6

    float-to-double p1, p2

    sub-double v8, v2, p1

    goto :goto_2

    .line 665
    :cond_3
    iget p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    float-to-double v2, p1

    iget p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    float-to-double v4, p2

    sub-double/2addr v4, v8

    :goto_1
    mul-double/2addr v2, v4

    float-to-double v4, p2

    div-double/2addr v2, v4

    float-to-double p1, p1

    sub-double v4, v2, p1

    .line 669
    :goto_2
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    .line 670
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 671
    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    .line 672
    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    double-to-float v6, v8

    .line 674
    invoke-direct {p0, v6, v0, v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeHeight(FD)V

    double-to-float v4, v4

    .line 675
    invoke-direct {p0, v4, v0, v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeWidth(FD)V

    .line 678
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 679
    iput v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    .line 680
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 682
    :cond_4
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 683
    iput v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    .line 684
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 686
    :cond_5
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->respectMaximumBoxResolution:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->maximumBoxResolution:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_6

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    iget v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    mul-float/2addr v1, v4

    cmpl-float v0, v1, v0

    if-lez v0, :cond_6

    .line 687
    invoke-virtual {p0, v3, v2, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->preventThatBoxGetsTooLarge(FFFF)V

    :cond_6
    return-void
.end method

.method private final resizeHeight(FD)V
    .locals 5

    .line 567
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float v1, p1, v1

    float-to-double v1, v1

    .line 568
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-float v3, v3

    .line 569
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double/2addr v1, p2

    double-to-float p2, v1

    .line 574
    iget-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result p3

    aget p3, v1, p3

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 588
    :pswitch_0
    iget p3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    add-float/2addr p3, p1

    .line 589
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v3

    .line 590
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p2

    .line 591
    iget-boolean p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->respectMaximumBorderRatio:Z

    if-eqz p2, :cond_0

    cmpl-float p2, p3, v0

    if-lez p2, :cond_0

    .line 592
    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    goto :goto_0

    .line 594
    :cond_0
    iput p3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    .line 595
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput p1, p2, Landroid/graphics/PointF;->x:F

    .line 596
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput v1, p1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 576
    :pswitch_1
    iget p3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    sub-float/2addr p3, p1

    .line 577
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v3

    .line 578
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p2

    .line 579
    iget-boolean p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->respectMaximumBorderRatio:Z

    if-eqz p2, :cond_1

    cmpl-float p2, p3, v0

    if-lez p2, :cond_1

    .line 580
    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    goto :goto_0

    .line 582
    :cond_1
    iput p3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    .line 583
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput p1, p2, Landroid/graphics/PointF;->x:F

    .line 584
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput v1, p1, Landroid/graphics/PointF;->y:F

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final resizeOnFrame(FFF)V
    .locals 4

    .line 482
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

    .line 483
    sget-object p1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->LEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    goto :goto_0

    .line 484
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    sub-float/2addr v0, p3

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 485
    sget-object p1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->RIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    .line 487
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v0, v3

    sub-float/2addr p1, v0

    add-float/2addr p1, p3

    cmpg-float p1, p2, p1

    const/4 v0, 0x1

    if-gez p1, :cond_4

    .line 488
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    sget-object p2, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_2

    .line 491
    sget-object p1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->TOP:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    goto :goto_1

    .line 490
    :cond_2
    sget-object p1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->TOPRIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    goto :goto_1

    .line 489
    :cond_3
    sget-object p1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->TOPLEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    .line 488
    :goto_1
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    goto :goto_3

    .line 493
    :cond_4
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v1, v3

    add-float/2addr p1, v1

    sub-float/2addr p1, p3

    cmpl-float p1, p2, p1

    if-lez p1, :cond_7

    .line 494
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    sget-object p2, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v0, :cond_6

    if-eq p1, v2, :cond_5

    .line 497
    sget-object p1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->BOTTOM:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    goto :goto_2

    .line 496
    :cond_5
    sget-object p1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->BOTTOMRIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    goto :goto_2

    .line 495
    :cond_6
    sget-object p1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->BOTTOMLEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    .line 494
    :goto_2
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    :cond_7
    :goto_3
    return-void
.end method

.method private final resizeWidth(FD)V
    .locals 6

    .line 604
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/4 v1, 0x2

    int-to-float v2, v1

    div-float v2, p1, v2

    float-to-double v2, v2

    .line 605
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-float v4, v4

    .line 606
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double/2addr v2, p2

    double-to-float p2, v2

    .line 611
    iget-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizeAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    sget-object v2, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result p3

    aget p3, v2, p3

    const/4 v2, 0x1

    if-eq p3, v2, :cond_2

    if-eq p3, v1, :cond_0

    const/4 v1, 0x4

    if-eq p3, v1, :cond_0

    const/4 v1, 0x5

    if-eq p3, v1, :cond_2

    const/4 v1, 0x7

    if-eq p3, v1, :cond_2

    const/16 v1, 0x8

    if-eq p3, v1, :cond_0

    goto :goto_0

    .line 625
    :cond_0
    iget p3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    add-float/2addr p3, p1

    .line 626
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, v4

    .line 627
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p2

    .line 628
    iget-boolean p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->respectMaximumBorderRatio:Z

    if-eqz p2, :cond_1

    cmpl-float p2, p3, v0

    if-lez p2, :cond_1

    .line 629
    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    goto :goto_0

    .line 631
    :cond_1
    iput p3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    .line 632
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput p1, p2, Landroid/graphics/PointF;->x:F

    .line 633
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput v1, p1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 613
    :cond_2
    iget p3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    sub-float/2addr p3, p1

    .line 614
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, v4

    .line 615
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p2

    .line 616
    iget-boolean p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->respectMaximumBorderRatio:Z

    if-eqz p2, :cond_3

    cmpl-float p2, p3, v0

    if-lez p2, :cond_3

    .line 617
    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    goto :goto_0

    .line 619
    :cond_3
    iput p3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    .line 620
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput p1, p2, Landroid/graphics/PointF;->x:F

    .line 621
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput v1, p1, Landroid/graphics/PointF;->y:F

    :goto_0
    return-void
.end method

.method private final rotate(FF)V
    .locals 6

    .line 460
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->previousEventCoordinate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 462
    iget v2, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, p1

    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, p1

    float-to-double v2, v2

    .line 463
    iget p1, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    .line 464
    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v4

    float-to-double v4, v0

    .line 465
    iget v0, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 466
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    .line 467
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double/2addr p1, v0

    neg-double p1, p1

    .line 469
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxRotation:F

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x43b40000    # 360.0f

    add-float/2addr p1, p2

    add-float/2addr v0, p1

    rem-float/2addr v0, p2

    .line 470
    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxRotation:F

    const/high16 p1, 0x43340000    # 180.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1

    sub-float/2addr v0, p2

    .line 472
    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxRotation:F

    :cond_1
    :goto_0
    return-void
.end method

.method private final showToolSpecificLayout()V
    .locals 4

    .line 266
    instance-of v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->getToolSpecificOptionsLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 269
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 270
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->getToolSpecificOptionsLayout()Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x1

    .line 269
    invoke-interface {v0, v2, v1, v3}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->slideUp(Landroid/view/View;ZZ)V

    .line 275
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->animateBottomAndTopNavigation(Z)V

    return-void
.end method


# virtual methods
.method public final boxContainsPoint(Landroid/graphics/PointF;)Z
    .locals 6

    const-string v0, "coordinate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 327
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    .line 328
    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxRotation:F

    const v2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v1, v2

    const/high16 v2, 0x43340000    # 180.0f

    div-float/2addr v1, v2

    neg-float v1, v1

    float-to-double v1, v1

    .line 330
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, p1

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    .line 332
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v0, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, p1

    .line 333
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    cmpl-float p1, v3, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    div-float/2addr v1, v2

    add-float/2addr p1, v1

    cmpg-float p1, v3, p1

    if-gez p1, :cond_0

    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v1, v2

    add-float/2addr p1, v1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected final boxIntersectsWorkspace()Z
    .locals 4

    .line 337
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

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    div-float/2addr v3, v2

    add-float/2addr v0, v3

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->drawShape(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawBitmap(Landroid/graphics/Canvas;FF)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->drawingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_1

    .line 413
    :cond_0
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempDrawingRectangle:Landroid/graphics/RectF;

    neg-float v2, p2

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    neg-float v4, p3

    div-float/2addr v4, v3

    div-float/2addr p2, v3

    div-float/2addr p3, v3

    invoke-virtual {v1, v2, v4, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 414
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempDrawingRectangle:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 416
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 417
    iget-object p3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {p3}, Lorg/catrobat/paintroid/tools/Workspace;->getLayerModel()Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object p3

    invoke-interface {p3}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 418
    :cond_1
    invoke-interface {p3}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getValueForOpacityPercentage()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    const/4 p3, 0x0

    .line 422
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempDrawingRectangle:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p3, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method public drawShape(Landroid/graphics/Canvas;)V
    .locals 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->initScaleDependedValues()V

    .line 345
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    .line 346
    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    .line 347
    iget v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxRotation:F

    .line 348
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempToolPosition:Landroid/graphics/PointF;

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 350
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 351
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempToolPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->tempToolPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 352
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 354
    iget-boolean v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->resizePointsVisible:Z

    if-eqz v3, :cond_0

    .line 355
    invoke-virtual {p0, p1, v0, v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->drawToolSpecifics(Landroid/graphics/Canvas;FF)V

    .line 357
    :cond_0
    iget-boolean v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rotationEnabled:Z

    if-eqz v3, :cond_1

    .line 358
    invoke-direct {p0, p1, v0, v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->drawRotationArrows(Landroid/graphics/Canvas;FF)V

    .line 360
    :cond_1
    invoke-virtual {p0, p1, v0, v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->drawBitmap(Landroid/graphics/Canvas;FF)V

    .line 361
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 362
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->drawOverlayDrawable(Landroid/graphics/Canvas;FFF)V

    .line 364
    :cond_2
    iget-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->shouldDrawRectangle:Z

    if-eqz v2, :cond_3

    .line 365
    invoke-direct {p0, p1, v0, v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->drawRectangle(Landroid/graphics/Canvas;FF)V

    .line 367
    :cond_3
    invoke-virtual {p0, p1, v0, v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->drawToolSpecifics(Landroid/graphics/Canvas;FF)V

    .line 368
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected drawToolSpecifics(Landroid/graphics/Canvas;FF)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string v1, "canvas"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 770
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->linePaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->primaryShapeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 771
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->linePaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolStrokeWidth:F

    const/4 v3, 0x2

    int-to-float v8, v3

    mul-float/2addr v2, v8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 772
    new-instance v9, Landroid/graphics/PointF;

    move/from16 v1, p2

    neg-float v2, v1

    div-float/2addr v2, v8

    .line 773
    iget v3, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rectangleShrinkingOnHighlight:I

    int-to-float v4, v3

    add-float/2addr v2, v4

    move/from16 v4, p3

    neg-float v5, v4

    div-float/2addr v5, v8

    int-to-float v3, v3

    add-float/2addr v5, v3

    .line 772
    invoke-direct {v9, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x0

    move v11, v1

    move v12, v2

    move v10, v4

    :goto_0
    const/4 v1, 0x4

    if-ge v12, v1, :cond_0

    const/16 v1, 0xa

    int-to-float v1, v1

    div-float v13, v10, v1

    div-float v14, v11, v1

    .line 781
    iget v1, v9, Landroid/graphics/PointF;->x:F

    iget v2, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolStrokeWidth:F

    div-float/2addr v2, v8

    sub-float v2, v1, v2

    .line 782
    iget v3, v9, Landroid/graphics/PointF;->y:F

    iget v1, v9, Landroid/graphics/PointF;->x:F

    add-float v4, v1, v14

    .line 783
    iget v5, v9, Landroid/graphics/PointF;->y:F

    .line 784
    iget-object v6, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 780
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 787
    iget v2, v9, Landroid/graphics/PointF;->x:F

    .line 788
    iget v1, v9, Landroid/graphics/PointF;->y:F

    iget v3, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolStrokeWidth:F

    div-float/2addr v3, v8

    sub-float v3, v1, v3

    .line 789
    iget v4, v9, Landroid/graphics/PointF;->x:F

    .line 790
    iget v1, v9, Landroid/graphics/PointF;->y:F

    add-float v5, v1, v13

    .line 791
    iget-object v6, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 786
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 794
    iget v1, v9, Landroid/graphics/PointF;->x:F

    div-float v2, v11, v8

    add-float/2addr v1, v2

    sub-float v3, v1, v14

    .line 795
    iget v4, v9, Landroid/graphics/PointF;->y:F

    .line 796
    iget v1, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    add-float v5, v1, v14

    .line 797
    iget v6, v9, Landroid/graphics/PointF;->y:F

    .line 798
    iget-object v13, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v13

    .line 793
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x42b40000    # 90.0f

    .line 800
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 802
    iget v1, v9, Landroid/graphics/PointF;->x:F

    .line 803
    iget v2, v9, Landroid/graphics/PointF;->y:F

    iput v2, v9, Landroid/graphics/PointF;->x:F

    .line 804
    iput v1, v9, Landroid/graphics/PointF;->y:F

    add-int/lit8 v12, v12, 0x1

    move v15, v11

    move v11, v10

    move v10, v15

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAutoScrollDirection(FFII)Landroid/graphics/Point;
    .locals 2

    .line 744
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->currentAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;->MOVE:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->currentAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;->RESIZE:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 746
    :cond_0
    new-instance p1, Landroid/graphics/Point;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    .line 745
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->getAutoScrollDirection(FFII)Landroid/graphics/Point;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public handleDown(Landroid/graphics/PointF;)Z
    .locals 3

    .line 279
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->movedDistance:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->previousEventCoordinate:Landroid/graphics/PointF;

    .line 283
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->getAction(FF)Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    move-result-object p1

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->currentAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    .line 285
    :goto_0
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->touchDownPositionX:F

    .line 286
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->touchDownPositionY:F

    const/4 p1, 0x1

    return p1
.end method

.method public handleMove(Landroid/graphics/PointF;Z)Z
    .locals 1

    .line 291
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->previousEventCoordinate:Landroid/graphics/PointF;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->currentAction:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    if-nez p2, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->hideToolSpecificLayout()V

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/graphics/PointF;

    aput-object p1, p2, v0

    .line 295
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->previousEventCoordinate:Landroid/graphics/PointF;

    const/4 v0, 0x1

    aput-object p1, p2, v0

    new-instance p1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1;

    invoke-direct {p1, p0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p2, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->ifNotNull([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public handleUp(Landroid/graphics/PointF;)Z
    .locals 2

    .line 313
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->previousEventCoordinate:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 316
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->showToolSpecificLayout()V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/PointF;

    aput-object p1, v0, v1

    .line 317
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->previousEventCoordinate:Landroid/graphics/PointF;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance p1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleUp$1;

    invoke-direct {p1, p0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleUp$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->ifNotNull([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    return v1
.end method

.method public final highlightBox()V
    .locals 3

    .line 712
    new-instance v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$highlightBox$1;

    const-wide/16 v1, 0x53

    invoke-direct {v0, p0, v1, v2}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$highlightBox$1;-><init>(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;J)V

    .line 727
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$highlightBox$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    .line 712
    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->downTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public final highlightBoxWhenClickInBox(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 732
    sget v0, Lorg/catrobat/paintroid/R$color;->pocketpaint_main_rectangle_tool_highlight_color:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/catrobat/paintroid/R$color;->pocketpaint_main_rectangle_tool_accent_color:I

    .line 733
    :goto_0
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->contextCallback:Lorg/catrobat/paintroid/tools/ContextCallback;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/tools/ContextCallback;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->secondaryShapeColor:I

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 734
    :goto_1
    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->rectangleShrinkingOnHighlight:I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 759
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "BOX_WIDTH"

    .line 761
    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    const-string v0, "BOX_HEIGHT"

    .line 762
    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    const-string v0, "BOX_ROTATION"

    .line 763
    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxRotation:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxRotation:F

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 750
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "BOX_WIDTH"

    .line 752
    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "BOX_HEIGHT"

    .line 753
    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "BOX_ROTATION"

    .line 754
    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxRotation:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :goto_0
    return-void
.end method

.method protected preventThatBoxGetsTooLarge(FFFF)V
    .locals 0

    .line 697
    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxWidth:F

    .line 698
    iput p2, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->boxHeight:F

    .line 699
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput p3, p1, Landroid/graphics/PointF;->x:F

    .line 700
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->toolPosition:Landroid/graphics/PointF;

    iput p4, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 247
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->drawingBitmap:Landroid/graphics/Bitmap;

    .line 249
    :cond_0
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    return-void
.end method
