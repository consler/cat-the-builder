.class public final Lorg/catrobat/paintroid/tools/implementation/LineTool;
.super Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;
.source "LineTool.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLineTool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LineTool.kt\norg/catrobat/paintroid/tools/implementation/LineTool\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,515:1\n1#2:516\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0014\u0018\u0000 t2\u00020\u0001:\u0001tBE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012J\u0010\u0010M\u001a\u00020\u00142\u0006\u0010N\u001a\u00020\u001dH\u0002J\u0018\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u0002002\u0006\u0010R\u001a\u00020\u0014H\u0016J\u0010\u0010S\u001a\u00020P2\u0006\u0010T\u001a\u00020UH\u0016J\u0010\u0010V\u001a\u00020P2\u0006\u0010W\u001a\u000200H\u0016J\u0010\u0010X\u001a\u00020P2\u0006\u0010Y\u001a\u00020ZH\u0016J\u0010\u0010[\u001a\u00020P2\u0006\u0010Y\u001a\u00020ZH\u0016J\u0010\u0010\\\u001a\u00020\u00142\u0008\u0010N\u001a\u0004\u0018\u00010\u001dJ\u0012\u0010]\u001a\u00020\u00142\u0008\u0010N\u001a\u0004\u0018\u00010\u001dH\u0016J\u0012\u0010^\u001a\u00020P2\u0008\u0010N\u001a\u0004\u0018\u00010\u001dH\u0016J \u0010_\u001a\u00020\u00142\u0006\u0010`\u001a\u00020a2\u0006\u0010b\u001a\u00020a2\u0008\u0008\u0002\u0010c\u001a\u00020\u0014J\u001a\u0010d\u001a\u00020\u00142\u0008\u0010N\u001a\u0004\u0018\u00010\u001d2\u0006\u0010e\u001a\u00020\u0014H\u0016J\u001e\u0010f\u001a\u00020\u00142\u0006\u0010N\u001a\u00020\u001d2\u0006\u0010`\u001a\u00020a2\u0006\u0010b\u001a\u00020aJ\u0016\u0010g\u001a\u00020\u00142\u0006\u0010`\u001a\u00020a2\u0006\u0010b\u001a\u00020aJ\u0006\u0010h\u001a\u00020PJ\u0012\u0010i\u001a\u00020\u00142\u0008\u0010N\u001a\u0004\u0018\u00010\u001dH\u0016J\u0012\u0010j\u001a\u00020P2\u0008\u0010N\u001a\u0004\u0018\u00010\u001dH\u0016J\u0008\u0010k\u001a\u00020PH\u0002J\u0008\u0010l\u001a\u00020PH\u0016J\u0006\u0010m\u001a\u00020PJ\u0006\u0010n\u001a\u00020PJ\u0008\u0010o\u001a\u00020PH\u0014J\u0008\u0010p\u001a\u00020PH\u0002J\u0010\u0010q\u001a\u00020\u001d2\u0006\u0010N\u001a\u00020\u001dH\u0016J\u0016\u0010r\u001a\u00020P2\u0006\u0010Q\u001a\u0002002\u0006\u0010R\u001a\u00020\u0014J\u0018\u0010s\u001a\u00020P2\u0006\u0010Q\u001a\u0002002\u0008\u0008\u0002\u0010R\u001a\u00020\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016\"\u0004\u0008\u001b\u0010\u0018R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\u0010\u001a\u00020\u0011X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001c\u0010&\u001a\u0004\u0018\u00010\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u001f\"\u0004\u0008(\u0010!R\u001a\u0010)\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0016\"\u0004\u0008+\u0010\u0018R\u001c\u0010,\u001a\u0004\u0018\u00010\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u001f\"\u0004\u0008.\u0010!R\u001a\u0010/\u001a\u000200X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001a\u00105\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010\u0016\"\u0004\u00087\u0010\u0018R\u001c\u00108\u001a\u0004\u0018\u00010\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010\u001f\"\u0004\u0008:\u0010!R\u001a\u0010;\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010\u0016\"\u0004\u0008=\u0010\u0018R\u001a\u0010>\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010\u0016\"\u0004\u0008@\u0010\u0018R\u001a\u0010A\u001a\u00020BX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\u001a\u0010G\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010\u0016\"\u0004\u0008I\u0010\u0018R\u001a\u0010J\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010\u0016\"\u0004\u0008L\u0010\u0018\u00a8\u0006u"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/LineTool;",
        "Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;",
        "brushToolOptionsView",
        "Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;",
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
        "(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V",
        "changeInitialCoordinateForHandleNormalLine",
        "",
        "getChangeInitialCoordinateForHandleNormalLine",
        "()Z",
        "setChangeInitialCoordinateForHandleNormalLine",
        "(Z)V",
        "connectedLines",
        "getConnectedLines",
        "setConnectedLines",
        "currentCoordinate",
        "Landroid/graphics/PointF;",
        "getCurrentCoordinate",
        "()Landroid/graphics/PointF;",
        "setCurrentCoordinate",
        "(Landroid/graphics/PointF;)V",
        "getDrawTime",
        "()J",
        "setDrawTime",
        "(J)V",
        "endPointToDraw",
        "getEndPointToDraw",
        "setEndPointToDraw",
        "endpointSet",
        "getEndpointSet",
        "setEndpointSet",
        "initialEventCoordinate",
        "getInitialEventCoordinate",
        "setInitialEventCoordinate",
        "lastSetStrokeWidth",
        "",
        "getLastSetStrokeWidth",
        "()I",
        "setLastSetStrokeWidth",
        "(I)V",
        "lineFinalized",
        "getLineFinalized",
        "setLineFinalized",
        "startPointToDraw",
        "getStartPointToDraw",
        "setStartPointToDraw",
        "startpointSet",
        "getStartpointSet",
        "setStartpointSet",
        "toolSwitched",
        "getToolSwitched",
        "setToolSwitched",
        "toolType",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "getToolType",
        "()Lorg/catrobat/paintroid/tools/ToolType;",
        "setToolType",
        "(Lorg/catrobat/paintroid/tools/ToolType;)V",
        "undoPreviousLineForConnectedLines",
        "getUndoPreviousLineForConnectedLines",
        "setUndoPreviousLineForConnectedLines",
        "undoRecentlyClicked",
        "getUndoRecentlyClicked",
        "setUndoRecentlyClicked",
        "addPointCommand",
        "coordinate",
        "changePaintColor",
        "",
        "color",
        "invalidate",
        "changePaintStrokeCap",
        "cap",
        "Landroid/graphics/Paint$Cap;",
        "changePaintStrokeWidth",
        "strokeWidth",
        "draw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "drawShape",
        "handleAddedLine",
        "handleDown",
        "handleDownAnimations",
        "handleEndPoint",
        "xDistance",
        "",
        "yDistance",
        "fromHandleLine",
        "handleMove",
        "shouldAnimate",
        "handleNormalLine",
        "handleStartPoint",
        "handleStateBeforeUndo",
        "handleUp",
        "handleUpAnimations",
        "hideToolOptions",
        "onClickOnButton",
        "onClickOnPlus",
        "redoLineTool",
        "resetInternalState",
        "showToolOptions",
        "toolPositionCoordinates",
        "undoChangePaintColor",
        "undoColorChangedCommand",
        "Companion",
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


# static fields
.field public static final Companion:Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;

.field private static topBarViewHolder:Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;


# instance fields
.field private final brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

.field private changeInitialCoordinateForHandleNormalLine:Z

.field private connectedLines:Z

.field private currentCoordinate:Landroid/graphics/PointF;

.field private drawTime:J

.field private endPointToDraw:Landroid/graphics/PointF;

.field private endpointSet:Z

.field private initialEventCoordinate:Landroid/graphics/PointF;

.field private lastSetStrokeWidth:I

.field private lineFinalized:Z

.field private startPointToDraw:Landroid/graphics/PointF;

.field private startpointSet:Z

.field private toolSwitched:Z

.field private toolType:Lorg/catrobat/paintroid/tools/ToolType;

.field private undoPreviousLineForConnectedLines:Z

.field private undoRecentlyClicked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->Companion:Lorg/catrobat/paintroid/tools/implementation/LineTool$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V
    .locals 10

    move-object v7, p0

    move-object v8, p1

    move-object v9, p4

    const-string v0, "brushToolOptionsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallback"

    move-object v1, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolOptionsViewController"

    move-object v2, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolPaint"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspace"

    move-object v4, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idlingResource"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandManager"

    move-object/from16 v6, p7

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v3, p4

    .line 48
    invoke-direct/range {v0 .. v6}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;)V

    .line 40
    iput-object v8, v7, Lorg/catrobat/paintroid/tools/implementation/LineTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    move-wide/from16 v0, p8

    .line 47
    iput-wide v0, v7, Lorg/catrobat/paintroid/tools/implementation/LineTool;->drawTime:J

    .line 56
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->LINE:Lorg/catrobat/paintroid/tools/ToolType;

    iput-object v0, v7, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolType:Lorg/catrobat/paintroid/tools/ToolType;

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, v7, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoPreviousLineForConnectedLines:Z

    .line 84
    new-instance v1, Lorg/catrobat/paintroid/tools/common/CommonBrushChangedListener;

    move-object v2, v7

    check-cast v2, Lorg/catrobat/paintroid/tools/Tool;

    invoke-direct {v1, v2}, Lorg/catrobat/paintroid/tools/common/CommonBrushChangedListener;-><init>(Lorg/catrobat/paintroid/tools/Tool;)V

    check-cast v1, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;

    invoke-interface {p1, v1}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->setBrushChangedListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;)V

    .line 86
    new-instance v1, Lorg/catrobat/paintroid/tools/common/CommonBrushPreviewListener;

    .line 88
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v2

    .line 86
    invoke-direct {v1, p4, v2}, Lorg/catrobat/paintroid/tools/common/CommonBrushPreviewListener;-><init>(Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/ToolType;)V

    check-cast v1, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;

    .line 85
    invoke-interface {p1, v1}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->setBrushPreviewListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;)V

    .line 91
    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->setCurrentPaint(Landroid/graphics/Paint;)V

    .line 92
    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/ToolPaint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->setStrokeCapButtonChecked(Landroid/graphics/Paint$Cap;)V

    .line 93
    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/LineTool;->topBarViewHolder:Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getPlusButton()Landroid/widget/ImageButton;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    if-eqz v0, :cond_4

    .line 94
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->topBarViewHolder:Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->hidePlusButton()V

    :cond_4
    :goto_2
    return-void
.end method

.method public static final synthetic access$getTopBarViewHolder$cp()Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;
    .locals 1

    .line 39
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->topBarViewHolder:Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    return-object v0
.end method

.method public static final synthetic access$setTopBarViewHolder$cp(Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;)V
    .locals 0

    .line 39
    sput-object p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->topBarViewHolder:Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    return-void
.end method

.method private final addPointCommand(Landroid/graphics/PointF;)Z
    .locals 2

    .line 510
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/catrobat/paintroid/command/CommandFactory;->createPointCommand(Landroid/graphics/Paint;Landroid/graphics/PointF;)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    .line 511
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic handleEndPoint$default(Lorg/catrobat/paintroid/tools/implementation/LineTool;FFZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 280
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->handleEndPoint(FFZ)Z

    move-result p0

    return p0
.end method

.method private final hideToolOptions()V
    .locals 4

    .line 193
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getTopToolOptions()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 196
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v3}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getTopToolOptions()Landroid/view/View;

    move-result-object v3

    .line 195
    invoke-interface {v0, v3, v2, v1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->slideUp(Landroid/view/View;ZZ)V

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getBottomToolOptions()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 204
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v3}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getBottomToolOptions()Landroid/view/View;

    move-result-object v3

    .line 203
    invoke-interface {v0, v3, v2, v1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->slideDown(Landroid/view/View;ZZ)V

    :cond_1
    return-void
.end method

.method private final showToolOptions()V
    .locals 5

    .line 213
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getBottomToolOptions()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 215
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 216
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v4}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getTopToolOptions()Landroid/view/View;

    move-result-object v4

    .line 215
    invoke-interface {v0, v4, v2, v1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->slideDown(Landroid/view/View;ZZ)V

    .line 222
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getBottomToolOptions()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 223
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    .line 224
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v3}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->getBottomToolOptions()Landroid/view/View;

    move-result-object v3

    .line 223
    invoke-interface {v0, v3, v2, v1}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->slideUp(Landroid/view/View;ZZ)V

    :cond_1
    return-void
.end method

.method public static synthetic undoColorChangedCommand$default(Lorg/catrobat/paintroid/tools/implementation/LineTool;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 446
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoColorChangedCommand(IZ)V

    return-void
.end method


# virtual methods
.method public changePaintColor(IZ)V
    .locals 4

    .line 399
    invoke-super {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->changePaintColor(IZ)V

    .line 400
    iget-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    if-eqz v0, :cond_5

    .line 401
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 402
    :goto_0
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 403
    :goto_1
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-nez v2, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 404
    :goto_2
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    iget v0, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 405
    :goto_3
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v3}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 406
    new-instance v3, Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-direct {v3}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;-><init>()V

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 408
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3, p1, v1}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->moveTo(FF)V

    .line 409
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, p1, v0}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->lineTo(FF)V

    .line 412
    :cond_4
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Lorg/catrobat/paintroid/command/CommandFactory;->createPathCommand(Landroid/graphics/Paint;Lorg/catrobat/paintroid/command/serialization/SerializablePath;)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    .line 413
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/command/CommandManager;->undoIgnoringColorChangesAndAddCommand(Lorg/catrobat/paintroid/command/Command;)V

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_7

    .line 415
    iget-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    if-nez p1, :cond_7

    .line 416
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {p1}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    if-nez p1, :cond_7

    .line 417
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-nez p1, :cond_6

    goto :goto_4

    .line 418
    :cond_6
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/catrobat/paintroid/command/CommandFactory;->createPointCommand(Landroid/graphics/Paint;Landroid/graphics/PointF;)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    .line 419
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/command/CommandManager;->undoIgnoringColorChangesAndAddCommand(Lorg/catrobat/paintroid/command/Command;)V

    :cond_7
    :goto_4
    if-eqz p2, :cond_8

    .line 423
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->invalidate()V

    :cond_8
    return-void
.end method

.method public changePaintStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 4

    const-string v0, "cap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->changePaintStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 483
    iget-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    if-eqz v0, :cond_5

    .line 484
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 485
    :goto_0
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 486
    :goto_1
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-nez v2, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 487
    :goto_2
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    iget v0, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 488
    :goto_3
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v3}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 489
    new-instance v3, Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-direct {v3}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;-><init>()V

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 491
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3, p1, v1}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->moveTo(FF)V

    .line 492
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, p1, v0}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->lineTo(FF)V

    .line 495
    :cond_4
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Lorg/catrobat/paintroid/command/CommandFactory;->createPathCommand(Landroid/graphics/Paint;Lorg/catrobat/paintroid/command/serialization/SerializablePath;)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    .line 496
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/command/CommandManager;->undoIgnoringColorChangesAndAddCommand(Lorg/catrobat/paintroid/command/Command;)V

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_7

    .line 498
    iget-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    if-nez p1, :cond_7

    .line 499
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {p1}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    if-nez p1, :cond_7

    .line 500
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-nez p1, :cond_6

    goto :goto_4

    .line 501
    :cond_6
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/catrobat/paintroid/command/CommandFactory;->createPointCommand(Landroid/graphics/Paint;Landroid/graphics/PointF;)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    .line 502
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/command/CommandManager;->undoIgnoringColorChangesAndAddCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 506
    :cond_7
    :goto_4
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->invalidate()V

    return-void
.end method

.method public changePaintStrokeWidth(I)V
    .locals 5

    .line 452
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->changePaintStrokeWidth(I)V

    .line 453
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lastSetStrokeWidth:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 454
    :goto_0
    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    if-eqz v1, :cond_6

    iget-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    if-eqz v2, :cond_6

    if-nez v0, :cond_6

    .line 455
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 456
    :goto_1
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-nez v2, :cond_2

    move-object v2, v1

    goto :goto_2

    :cond_2
    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 457
    :goto_2
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-nez v3, :cond_3

    move-object v3, v1

    goto :goto_3

    :cond_3
    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 458
    :goto_3
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    iget v1, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 459
    :goto_4
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v4}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 460
    new-instance v4, Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-direct {v4}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;-><init>()V

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    .line 462
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4, v0, v2}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->moveTo(FF)V

    .line 463
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->lineTo(FF)V

    .line 466
    :cond_5
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Lorg/catrobat/paintroid/command/CommandFactory;->createPathCommand(Landroid/graphics/Paint;Lorg/catrobat/paintroid/command/serialization/SerializablePath;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->undoIgnoringColorChangesAndAddCommand(Lorg/catrobat/paintroid/command/Command;)V

    goto :goto_5

    :cond_6
    if-eqz v1, :cond_8

    .line 469
    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    if-nez v1, :cond_8

    if-nez v0, :cond_8

    .line 470
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    if-nez v0, :cond_8

    .line 471
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-nez v0, :cond_7

    goto :goto_5

    .line 472
    :cond_7
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/catrobat/paintroid/command/CommandFactory;->createPointCommand(Landroid/graphics/Paint;Landroid/graphics/PointF;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 473
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->undoIgnoringColorChangesAndAddCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 477
    :cond_8
    :goto_5
    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lastSetStrokeWidth:I

    .line 478
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->invalidate()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->getCurrentCoordinate()Landroid/graphics/PointF;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 103
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v3}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 105
    iget v6, v0, Landroid/graphics/PointF;->x:F

    .line 106
    iget v7, v0, Landroid/graphics/PointF;->y:F

    iget v8, v1, Landroid/graphics/PointF;->x:F

    .line 107
    iget v9, v1, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v10

    move-object v5, p1

    .line 104
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    return-void
.end method

.method public drawShape(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getChangeInitialCoordinateForHandleNormalLine()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->changeInitialCoordinateForHandleNormalLine:Z

    return v0
.end method

.method public final getConnectedLines()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->connectedLines:Z

    return v0
.end method

.method public final getCurrentCoordinate()Landroid/graphics/PointF;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->currentCoordinate:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getDrawTime()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->drawTime:J

    return-wide v0
.end method

.method public final getEndPointToDraw()Landroid/graphics/PointF;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final getEndpointSet()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    return v0
.end method

.method public final getInitialEventCoordinate()Landroid/graphics/PointF;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final getLastSetStrokeWidth()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lastSetStrokeWidth:I

    return v0
.end method

.method public final getLineFinalized()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    return v0
.end method

.method public final getStartPointToDraw()Landroid/graphics/PointF;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final getStartpointSet()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    return v0
.end method

.method public final getToolSwitched()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolSwitched:Z

    return v0
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolType:Lorg/catrobat/paintroid/tools/ToolType;

    return-object v0
.end method

.method public final getUndoPreviousLineForConnectedLines()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoPreviousLineForConnectedLines:Z

    return v0
.end method

.method public final getUndoRecentlyClicked()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    return v0
.end method

.method public final handleAddedLine(Landroid/graphics/PointF;)Z
    .locals 6

    const/4 v0, 0x1

    .line 359
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoPreviousLineForConnectedLines:Z

    .line 360
    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->changeInitialCoordinateForHandleNormalLine:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    if-nez v1, :cond_1

    .line 361
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    iput-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    .line 363
    :cond_1
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    if-eqz v1, :cond_8

    if-nez p1, :cond_2

    goto :goto_3

    .line 367
    :cond_2
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_1

    :cond_3
    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 368
    :goto_1
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    iget v2, v4, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_2
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 370
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->changeInitialCoordinateForHandleNormalLine:Z

    if-eqz v0, :cond_5

    .line 371
    iput-boolean v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->changeInitialCoordinateForHandleNormalLine:Z

    .line 372
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->handleNormalLine(Landroid/graphics/PointF;FF)Z

    move-result p1

    return p1

    .line 373
    :cond_5
    iget-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    if-nez p1, :cond_6

    .line 374
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->handleStartPoint(FF)Z

    move-result p1

    return p1

    .line 376
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->handleEndPoint$default(Lorg/catrobat/paintroid/tools/implementation/LineTool;FFZILjava/lang/Object;)Z

    move-result p1

    return p1

    .line 379
    :cond_7
    iput-boolean v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->changeInitialCoordinateForHandleNormalLine:Z

    return v0

    .line 364
    :cond_8
    :goto_3
    iput-boolean v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->changeInitialCoordinateForHandleNormalLine:Z

    return v3
.end method

.method public handleDown(Landroid/graphics/PointF;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 234
    :cond_0
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->handleDown(Landroid/graphics/PointF;)Z

    .line 235
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    .line 236
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    const/4 p1, 0x1

    return p1
.end method

.method public handleDownAnimations(Landroid/graphics/PointF;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->handleDown(Landroid/graphics/PointF;)Z

    return-void
.end method

.method public final handleEndPoint(FFZ)Z
    .locals 6

    .line 281
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v3, v0}, Lorg/catrobat/paintroid/tools/Workspace;->contains(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    return v2

    .line 284
    :cond_2
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    const/4 v3, 0x0

    if-nez v0, :cond_3

    move-object v4, v3

    goto :goto_1

    :cond_3
    new-instance v4, Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v0}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_1
    iput-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    if-nez v4, :cond_5

    move-object p1, v3

    goto :goto_2

    .line 285
    :cond_5
    iget v0, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v4, Landroid/graphics/PointF;->x:F

    .line 286
    :goto_3
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    if-nez p1, :cond_7

    move-object p2, v3

    goto :goto_4

    :cond_7
    iget v0, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :goto_4
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 287
    :goto_5
    iput-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    .line 288
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-nez p1, :cond_8

    move-object p1, v3

    goto :goto_6

    :cond_8
    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 289
    :goto_6
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-nez p2, :cond_9

    move-object p2, v3

    goto :goto_7

    :cond_9
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 290
    :goto_7
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-nez v0, :cond_a

    move-object v0, v3

    goto :goto_8

    :cond_a
    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 291
    :goto_8
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-nez v4, :cond_b

    goto :goto_9

    :cond_b
    iget v3, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 293
    :goto_9
    new-instance v4, Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-direct {v4}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;-><init>()V

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    if-eqz v0, :cond_c

    if-eqz v3, :cond_c

    .line 295
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v4, p1, p2}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->moveTo(FF)V

    .line 296
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v4, p1, p2}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->lineTo(FF)V

    .line 299
    :cond_c
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {p2}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-interface {p1, p2, v4}, Lorg/catrobat/paintroid/command/CommandFactory;->createPathCommand(Landroid/graphics/Paint;Lorg/catrobat/paintroid/command/serialization/SerializablePath;)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    if-nez p3, :cond_d

    .line 301
    iget-boolean p2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    if-nez p2, :cond_d

    .line 302
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {p2}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result p2

    if-eqz p2, :cond_e

    iget-boolean p2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    if-nez p2, :cond_e

    .line 303
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {p2, p1}, Lorg/catrobat/paintroid/command/CommandManager;->undoIgnoringColorChangesAndAddCommand(Lorg/catrobat/paintroid/command/Command;)V

    goto :goto_a

    .line 306
    :cond_d
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {p2, p1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 308
    :cond_e
    :goto_a
    iput-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    .line 309
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->resetInternalState()V

    .line 310
    sget-object p1, Lorg/catrobat/paintroid/tools/implementation/LineTool;->topBarViewHolder:Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    if-eqz p1, :cond_13

    if-nez p1, :cond_f

    goto :goto_b

    :cond_f
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getPlusButton()Landroid/widget/ImageButton;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_b

    :cond_10
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    if-nez p1, :cond_11

    move v2, v1

    :cond_11
    :goto_b
    if-nez v2, :cond_13

    .line 311
    sget-object p1, Lorg/catrobat/paintroid/tools/implementation/LineTool;->topBarViewHolder:Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    if-nez p1, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->showPlusButton()V

    :cond_13
    :goto_c
    return v1
.end method

.method public handleMove(Landroid/graphics/PointF;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 242
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->handleMove(Landroid/graphics/PointF;Z)Z

    if-eqz p2, :cond_1

    .line 244
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->hideToolOptions()V

    :cond_1
    const/4 p2, 0x1

    .line 246
    iput-boolean p2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->changeInitialCoordinateForHandleNormalLine:Z

    .line 247
    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    if-eqz v1, :cond_5

    .line 248
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move-object v3, v2

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    iput-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    .line 249
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_1
    iput-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    .line 250
    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoPreviousLineForConnectedLines:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    if-nez v1, :cond_4

    .line 251
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    .line 252
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1}, Lorg/catrobat/paintroid/command/CommandManager;->undoIgnoringColorChanges()V

    .line 254
    :cond_4
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoPreviousLineForConnectedLines:Z

    .line 255
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    .line 257
    :cond_5
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->currentCoordinate:Landroid/graphics/PointF;

    return p2
.end method

.method public final handleNormalLine(Landroid/graphics/PointF;FF)Z
    .locals 7

    const-string v0, "coordinate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 318
    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 319
    invoke-virtual {p0, p2, p3, v2}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->handleEndPoint(FFZ)Z

    move-result p1

    return p1

    .line 321
    :cond_0
    new-instance v1, Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-direct {v1}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;-><init>()V

    .line 323
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->getInitialEventCoordinate()Landroid/graphics/PointF;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :goto_0
    const/4 v5, 0x0

    if-nez v3, :cond_2

    return v5

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 324
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->getInitialEventCoordinate()Landroid/graphics/PointF;

    move-result-object v6

    if-nez v6, :cond_3

    move-object v6, v4

    goto :goto_1

    :cond_3
    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    :goto_1
    if-nez v6, :cond_4

    return v5

    :cond_4
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 322
    invoke-virtual {v1, v3, v6}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->moveTo(FF)V

    .line 326
    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, p1}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->lineTo(FF)V

    .line 327
    invoke-virtual {v1, v0, v2}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 329
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/ToolPaint;->getStrokeWidth()F

    move-result p1

    neg-float p1, p1

    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v3}, Lorg/catrobat/paintroid/tools/ToolPaint;->getStrokeWidth()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v0, p1, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 331
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    if-nez v3, :cond_6

    move-object p2, v4

    goto :goto_2

    :cond_6
    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->x:F

    .line 332
    :goto_3
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    if-nez p2, :cond_8

    move-object p2, v4

    goto :goto_4

    :cond_8
    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :goto_4
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 333
    :goto_5
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    if-nez p1, :cond_9

    move-object p2, v4

    goto :goto_6

    :cond_9
    new-instance p2, Landroid/graphics/PointF;

    iget p3, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p2, p3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_6
    iput-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    .line 334
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    if-nez p1, :cond_a

    goto :goto_7

    :cond_a
    new-instance v4, Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_7
    iput-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    .line 336
    iput-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    .line 337
    iput-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    .line 338
    iput-boolean v5, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    .line 340
    sget-object p1, Lorg/catrobat/paintroid/tools/implementation/LineTool;->topBarViewHolder:Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    if-eqz p1, :cond_f

    if-nez p1, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getPlusButton()Landroid/widget/ImageButton;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    if-nez p1, :cond_d

    move v5, v2

    :cond_d
    :goto_8
    if-nez v5, :cond_f

    .line 341
    sget-object p1, Lorg/catrobat/paintroid/tools/implementation/LineTool;->topBarViewHolder:Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    if-nez p1, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->showPlusButton()V

    .line 344
    :cond_f
    :goto_9
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/Workspace;->intersectsWith(Landroid/graphics/RectF;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 345
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {p2}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Lorg/catrobat/paintroid/command/CommandFactory;->createPathCommand(Landroid/graphics/Paint;Lorg/catrobat/paintroid/command/serialization/SerializablePath;)Lorg/catrobat/paintroid/command/Command;

    move-result-object p1

    .line 346
    iget-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {p2, p1}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 348
    :cond_10
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->resetInternalState()V

    return v2
.end method

.method public final handleStartPoint(FF)Z
    .locals 4

    .line 262
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    iput-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    if-nez v2, :cond_2

    move-object p1, v1

    goto :goto_1

    .line 263
    :cond_2
    iget v0, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v2, Landroid/graphics/PointF;->x:F

    .line 264
    :goto_2
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-nez p1, :cond_3

    goto :goto_4

    :cond_3
    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    iget v0, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 266
    :goto_4
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_6

    :cond_5
    move p1, p2

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v1, p1}, Lorg/catrobat/paintroid/tools/Workspace;->contains(Landroid/graphics/PointF;)Z

    move-result p1

    if-ne p1, v0, :cond_5

    move p1, v0

    :goto_5
    if-eqz p1, :cond_8

    .line 267
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    .line 268
    iput-boolean p2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    .line 269
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->resetInternalState()V

    .line 270
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-nez p1, :cond_7

    goto :goto_6

    .line 271
    :cond_7
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->addPointCommand(Landroid/graphics/PointF;)Z

    move-result p1

    return p1

    .line 274
    :cond_8
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    .line 275
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->resetInternalState()V

    :goto_6
    return v0
.end method

.method public final handleStateBeforeUndo()V
    .locals 4

    .line 116
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->connectedLines:Z

    if-nez v0, :cond_0

    .line 117
    iput-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    .line 118
    iput-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    goto :goto_1

    .line 120
    :cond_0
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    if-nez v0, :cond_1

    .line 121
    iput-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    .line 122
    iput-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    goto :goto_0

    .line 124
    :cond_1
    iput-boolean v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoPreviousLineForConnectedLines:Z

    .line 125
    iput-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->changeInitialCoordinateForHandleNormalLine:Z

    .line 126
    iput-boolean v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    .line 127
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->resetInternalState()V

    .line 129
    :goto_0
    iput-boolean v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    .line 131
    :goto_1
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->topBarViewHolder:Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getPlusButton()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v2, v3

    :cond_2
    if-eqz v2, :cond_3

    .line 132
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->connectedLines:Z

    if-nez v0, :cond_3

    .line 133
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->topBarViewHolder:Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getPlusButton()Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public handleUp(Landroid/graphics/PointF;)Z
    .locals 0

    .line 353
    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->showToolOptions()V

    .line 354
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->handleUp(Landroid/graphics/PointF;)Z

    .line 355
    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->handleAddedLine(Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method public handleUpAnimations(Landroid/graphics/PointF;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->handleUp(Landroid/graphics/PointF;)Z

    return-void
.end method

.method public onClickOnButton()V
    .locals 7

    .line 158
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->topBarViewHolder:Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getPlusButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    .line 159
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->topBarViewHolder:Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->hidePlusButton()V

    .line 161
    :cond_4
    :goto_2
    iput-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    .line 162
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    if-eqz v0, :cond_b

    iget-boolean v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    if-eqz v3, :cond_b

    .line 163
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolSwitched:Z

    if-eqz v0, :cond_a

    .line 164
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    const/4 v3, 0x0

    if-nez v0, :cond_5

    move-object v0, v3

    goto :goto_3

    :cond_5
    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 165
    :goto_3
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-nez v4, :cond_6

    move-object v4, v3

    goto :goto_4

    :cond_6
    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 166
    :goto_4
    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-nez v5, :cond_7

    move-object v5, v3

    goto :goto_5

    :cond_7
    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 167
    :goto_5
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-nez v6, :cond_8

    goto :goto_6

    :cond_8
    iget v3, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 168
    :goto_6
    new-instance v6, Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-direct {v6}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;-><init>()V

    if-eqz v0, :cond_9

    if-eqz v4, :cond_9

    if-eqz v5, :cond_9

    if-eqz v3, :cond_9

    .line 170
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v6, v0, v4}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->moveTo(FF)V

    .line 171
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v6, v0, v3}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->lineTo(FF)V

    .line 174
    :cond_9
    iput-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    .line 175
    iput-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolSwitched:Z

    .line 176
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Lorg/catrobat/paintroid/command/CommandFactory;->createPathCommand(Landroid/graphics/Paint;Lorg/catrobat/paintroid/command/serialization/SerializablePath;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 177
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v2, v0}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 179
    :cond_a
    iput-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    .line 180
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->resetInternalState()V

    goto :goto_7

    :cond_b
    if-eqz v0, :cond_d

    .line 181
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    if-nez v0, :cond_d

    .line 182
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 183
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->undoIgnoringColorChanges()V

    .line 185
    :cond_c
    iput-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    .line 186
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->resetInternalState()V

    goto :goto_7

    .line 188
    :cond_d
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->resetInternalState()V

    :goto_7
    return-void
.end method

.method public final onClickOnPlus()V
    .locals 5

    .line 142
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 144
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-nez v0, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    new-instance v3, Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_1
    iput-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    .line 145
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-nez v0, :cond_2

    move-object v3, v1

    goto :goto_2

    :cond_2
    new-instance v3, Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_2
    iput-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    .line 146
    iput-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    .line 147
    iput-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    .line 149
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    .line 150
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    const/4 v1, 0x1

    .line 151
    iput-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->connectedLines:Z

    .line 152
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    .line 153
    invoke-virtual {p0, v2}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->handleAddedLine(Landroid/graphics/PointF;)Z

    :cond_3
    return-void
.end method

.method public final redoLineTool()V
    .locals 1

    const/4 v0, 0x0

    .line 438
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    .line 439
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->connectedLines:Z

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->redoInConnectedLinesMode()V

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->redo()V

    :goto_0
    return-void
.end method

.method protected resetInternalState()V
    .locals 2

    const/4 v0, 0x0

    .line 386
    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    .line 387
    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->currentCoordinate:Landroid/graphics/PointF;

    .line 388
    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 389
    iput-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->connectedLines:Z

    .line 390
    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    .line 391
    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    .line 392
    iput-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    .line 393
    iput-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    .line 394
    iput-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    :cond_0
    return-void
.end method

.method public final setChangeInitialCoordinateForHandleNormalLine(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->changeInitialCoordinateForHandleNormalLine:Z

    return-void
.end method

.method public final setConnectedLines(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->connectedLines:Z

    return-void
.end method

.method public final setCurrentCoordinate(Landroid/graphics/PointF;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->currentCoordinate:Landroid/graphics/PointF;

    return-void
.end method

.method public setDrawTime(J)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->drawTime:J

    return-void
.end method

.method public final setEndPointToDraw(Landroid/graphics/PointF;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    return-void
.end method

.method public final setEndpointSet(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    return-void
.end method

.method public final setInitialEventCoordinate(Landroid/graphics/PointF;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    return-void
.end method

.method public final setLastSetStrokeWidth(I)V
    .locals 0

    .line 73
    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lastSetStrokeWidth:I

    return-void
.end method

.method public final setLineFinalized(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    return-void
.end method

.method public final setStartPointToDraw(Landroid/graphics/PointF;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    return-void
.end method

.method public final setStartpointSet(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    return-void
.end method

.method public final setToolSwitched(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolSwitched:Z

    return-void
.end method

.method public setToolType(Lorg/catrobat/paintroid/tools/ToolType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolType:Lorg/catrobat/paintroid/tools/ToolType;

    return-void
.end method

.method public final setUndoPreviousLineForConnectedLines(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoPreviousLineForConnectedLines:Z

    return-void
.end method

.method public final setUndoRecentlyClicked(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    return-void
.end method

.method public toolPositionCoordinates(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    const-string v0, "coordinate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final undoChangePaintColor(IZ)V
    .locals 0

    .line 427
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->handleStateBeforeUndo()V

    .line 428
    invoke-super {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->changePaintColor(IZ)V

    if-eqz p2, :cond_0

    .line 429
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->invalidate()V

    .line 430
    :cond_0
    iget-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->connectedLines:Z

    if-eqz p1, :cond_1

    .line 431
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {p1}, Lorg/catrobat/paintroid/command/CommandManager;->undoInConnectedLinesMode()V

    goto :goto_0

    .line 433
    :cond_1
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {p1}, Lorg/catrobat/paintroid/command/CommandManager;->undo()V

    :goto_0
    return-void
.end method

.method public final undoColorChangedCommand(IZ)V
    .locals 0

    .line 447
    invoke-super {p0, p1, p2}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->changePaintColor(IZ)V

    if-eqz p2, :cond_0

    .line 448
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->invalidate()V

    :cond_0
    return-void
.end method
