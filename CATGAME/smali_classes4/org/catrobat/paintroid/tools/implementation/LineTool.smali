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
    value = "SMAP\nLineTool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LineTool.kt\norg/catrobat/paintroid/tools/implementation/LineTool\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,420:1\n1#2:421\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u000b\u0018\u0000 n2\u00020\u0001:\u0001nB=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010S\u001a\u00020\u00122\u0006\u0010T\u001a\u00020\u001bH\u0002J\u0010\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u000203H\u0016J\u0010\u0010X\u001a\u00020V2\u0006\u0010Y\u001a\u00020ZH\u0016J\u0010\u0010[\u001a\u00020V2\u0006\u0010\\\u001a\u000203H\u0016J\u0010\u0010]\u001a\u00020V2\u0006\u0010^\u001a\u00020_H\u0016J\u0010\u0010`\u001a\u00020V2\u0006\u0010^\u001a\u00020_H\u0016J\u0012\u0010a\u001a\u00020\u00122\u0008\u0010T\u001a\u0004\u0018\u00010\u001bH\u0016J \u0010b\u001a\u00020\u00122\u0006\u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020d2\u0008\u0008\u0002\u0010f\u001a\u00020\u0012J\u0012\u0010g\u001a\u00020\u00122\u0008\u0010T\u001a\u0004\u0018\u00010\u001bH\u0016J\u001e\u0010h\u001a\u00020\u00122\u0006\u0010T\u001a\u00020\u001b2\u0006\u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020dJ\u0016\u0010i\u001a\u00020\u00122\u0006\u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020dJ\u0012\u0010j\u001a\u00020\u00122\u0008\u0010T\u001a\u0004\u0018\u00010\u001bH\u0016J\u0008\u0010k\u001a\u00020VH\u0016J\u0006\u0010l\u001a\u00020VJ\u0008\u0010m\u001a\u00020VH\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014\"\u0004\u0008\u0019\u0010\u0016R&\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\u000e\u001a\u00020\u000fX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R&\u0010&\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\'\u0010\u001d\u001a\u0004\u0008(\u0010\u001f\"\u0004\u0008)\u0010!R$\u0010*\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008+\u0010\u001d\u001a\u0004\u0008,\u0010\u0014\"\u0004\u0008-\u0010\u0016R&\u0010.\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008/\u0010\u001d\u001a\u0004\u00080\u0010\u001f\"\u0004\u00081\u0010!R\u001a\u00102\u001a\u000203X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R$\u00108\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00089\u0010\u001d\u001a\u0004\u0008:\u0010\u0014\"\u0004\u0008;\u0010\u0016R&\u0010<\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008=\u0010\u001d\u001a\u0004\u0008>\u0010\u001f\"\u0004\u0008?\u0010!R$\u0010@\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008A\u0010\u001d\u001a\u0004\u0008B\u0010\u0014\"\u0004\u0008C\u0010\u0016R\u001a\u0010D\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010\u0014\"\u0004\u0008F\u0010\u0016R\u001a\u0010G\u001a\u00020HX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR\u001a\u0010M\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010\u0014\"\u0004\u0008O\u0010\u0016R\u001a\u0010P\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010\u0014\"\u0004\u0008R\u0010\u0016\u00a8\u0006o"
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
        "commandManager",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "drawTime",
        "",
        "(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V",
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
        "getCurrentCoordinate$annotations",
        "()V",
        "getCurrentCoordinate",
        "()Landroid/graphics/PointF;",
        "setCurrentCoordinate",
        "(Landroid/graphics/PointF;)V",
        "getDrawTime",
        "()J",
        "setDrawTime",
        "(J)V",
        "endPointToDraw",
        "getEndPointToDraw$annotations",
        "getEndPointToDraw",
        "setEndPointToDraw",
        "endpointSet",
        "getEndpointSet$annotations",
        "getEndpointSet",
        "setEndpointSet",
        "initialEventCoordinate",
        "getInitialEventCoordinate$annotations",
        "getInitialEventCoordinate",
        "setInitialEventCoordinate",
        "lastSetStrokeWidth",
        "",
        "getLastSetStrokeWidth",
        "()I",
        "setLastSetStrokeWidth",
        "(I)V",
        "lineFinalized",
        "getLineFinalized$annotations",
        "getLineFinalized",
        "setLineFinalized",
        "startPointToDraw",
        "getStartPointToDraw$annotations",
        "getStartPointToDraw",
        "setStartPointToDraw",
        "startpointSet",
        "getStartpointSet$annotations",
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
        "changePaintStrokeCap",
        "cap",
        "Landroid/graphics/Paint$Cap;",
        "changePaintStrokeWidth",
        "strokeWidth",
        "draw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "drawShape",
        "handleDown",
        "handleEndPoint",
        "xDistance",
        "",
        "yDistance",
        "fromHandleLine",
        "handleMove",
        "handleNormalLine",
        "handleStartPoint",
        "handleUp",
        "onClickOnButton",
        "onClickOnPlus",
        "resetInternalState",
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

.method public constructor <init>(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V
    .locals 6
    .param p1, "brushToolOptionsView"    # Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;
    .param p2, "contextCallback"    # Lorg/catrobat/paintroid/tools/ContextCallback;
    .param p3, "toolOptionsViewController"    # Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;
    .param p4, "toolPaint"    # Lorg/catrobat/paintroid/tools/ToolPaint;
    .param p5, "workspace"    # Lorg/catrobat/paintroid/tools/Workspace;
    .param p6, "commandManager"    # Lorg/catrobat/paintroid/command/CommandManager;
    .param p7, "drawTime"    # J

    const-string v0, "brushToolOptionsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolOptionsViewController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolPaint"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspace"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    nop

    .line 48
    nop

    .line 49
    nop

    .line 50
    nop

    .line 51
    nop

    .line 52
    nop

    .line 47
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;)V

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    iput-wide p7, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->drawTime:J

    .line 75
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->LINE:Lorg/catrobat/paintroid/tools/ToolType;

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolType:Lorg/catrobat/paintroid/tools/ToolType;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoPreviousLineForConnectedLines:Z

    .line 93
    nop

    .line 94
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    new-instance v1, Lorg/catrobat/paintroid/tools/common/CommonBrushChangedListener;

    move-object v2, p0

    check-cast v2, Lorg/catrobat/paintroid/tools/Tool;

    invoke-direct {v1, v2}, Lorg/catrobat/paintroid/tools/common/CommonBrushChangedListener;-><init>(Lorg/catrobat/paintroid/tools/Tool;)V

    check-cast v1, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->setBrushChangedListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;)V

    .line 95
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    .line 96
    new-instance v1, Lorg/catrobat/paintroid/tools/common/CommonBrushPreviewListener;

    .line 97
    nop

    .line 98
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v2

    .line 96
    invoke-direct {v1, p4, v2}, Lorg/catrobat/paintroid/tools/common/CommonBrushPreviewListener;-><init>(Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/ToolType;)V

    check-cast v1, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;

    .line 95
    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->setBrushPreviewListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;)V

    .line 101
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {p4}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->setCurrentPaint(Landroid/graphics/Paint;)V

    .line 102
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->topBarViewHolder:Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getPlusButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->topBarViewHolder:Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->hidePlusButton()V

    .line 105
    :cond_0
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
    .param p0, "<set-?>"    # Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    .line 39
    sput-object p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->topBarViewHolder:Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    return-void
.end method

.method private final addPointCommand(Landroid/graphics/PointF;)Z
    .locals 2
    .param p1, "coordinate"    # Landroid/graphics/PointF;

    .line 415
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/catrobat/paintroid/command/CommandFactory;->createPointCommand(Landroid/graphics/Paint;Landroid/graphics/PointF;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 416
    .local v0, "command":Lorg/catrobat/paintroid/command/Command;
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 417
    const/4 v1, 0x1

    return v1
.end method

.method public static synthetic getCurrentCoordinate$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getEndPointToDraw$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getEndpointSet$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getInitialEventCoordinate$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineFinalized$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getStartPointToDraw$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getStartpointSet$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic handleEndPoint$default(Lorg/catrobat/paintroid/tools/implementation/LineTool;FFZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 222
    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->handleEndPoint(FFZ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public changePaintColor(I)V
    .locals 9
    .param p1, "color"    # I

    .line 332
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->changePaintColor(I)V

    .line 333
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    if-eqz v0, :cond_5

    .line 334
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 335
    .local v0, "startX":Ljava/lang/Float;
    :goto_0
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-eqz v2, :cond_1

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 336
    .local v2, "startY":Ljava/lang/Float;
    :goto_1
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-eqz v3, :cond_2

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    .line 337
    .local v3, "endX":Ljava/lang/Float;
    :goto_2
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-eqz v4, :cond_3

    iget v1, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 338
    .local v1, "endY":Ljava/lang/Float;
    :cond_3
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v4}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 339
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v4}, Lorg/catrobat/paintroid/command/CommandManager;->undo()V

    .line 340
    new-instance v4, Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-direct {v4}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;-><init>()V

    move-object v5, v4

    .local v5, "$this$apply":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    const/4 v6, 0x0

    .line 341
    .local v6, "$i$a$-apply-LineTool$changePaintColor$finalPath$1":I
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 342
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v5, v7, v8}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->moveTo(FF)V

    .line 343
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v5, v7, v8}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->lineTo(FF)V

    .line 345
    :cond_4
    nop

    .line 340
    .end local v5    # "$this$apply":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    .end local v6    # "$i$a$-apply-LineTool$changePaintColor$finalPath$1":I
    nop

    .line 346
    .local v4, "finalPath":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v6}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lorg/catrobat/paintroid/command/CommandFactory;->createPathCommand(Landroid/graphics/Paint;Lorg/catrobat/paintroid/command/serialization/SerializablePath;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v5

    .line 347
    .local v5, "command":Lorg/catrobat/paintroid/command/Command;
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v6, v5}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .end local v0    # "startX":Ljava/lang/Float;
    .end local v1    # "endY":Ljava/lang/Float;
    .end local v2    # "startY":Ljava/lang/Float;
    .end local v3    # "endX":Ljava/lang/Float;
    .end local v4    # "finalPath":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    .end local v5    # "command":Lorg/catrobat/paintroid/command/Command;
    goto :goto_3

    .line 349
    :cond_5
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    if-nez v0, :cond_6

    .line 350
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    if-nez v0, :cond_6

    .line 351
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->undo()V

    .line 352
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-eqz v0, :cond_6

    .line 421
    .local v0, "it":Landroid/graphics/PointF;
    const/4 v1, 0x0

    .line 352
    .local v1, "$i$a$-let-LineTool$changePaintColor$1":I
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->addPointCommand(Landroid/graphics/PointF;)Z

    .line 354
    .end local v0    # "it":Landroid/graphics/PointF;
    .end local v1    # "$i$a$-let-LineTool$changePaintColor$1":I
    :cond_6
    :goto_3
    nop

    .line 355
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->invalidate()V

    .line 356
    return-void
.end method

.method public changePaintStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 9
    .param p1, "cap"    # Landroid/graphics/Paint$Cap;

    const-string v0, "cap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->changePaintStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 389
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    if-eqz v0, :cond_5

    .line 390
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 391
    .local v0, "startX":Ljava/lang/Float;
    :goto_0
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-eqz v2, :cond_1

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 392
    .local v2, "startY":Ljava/lang/Float;
    :goto_1
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-eqz v3, :cond_2

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    .line 393
    .local v3, "endX":Ljava/lang/Float;
    :goto_2
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-eqz v4, :cond_3

    iget v1, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 394
    .local v1, "endY":Ljava/lang/Float;
    :cond_3
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v4}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 395
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v4}, Lorg/catrobat/paintroid/command/CommandManager;->undo()V

    .line 396
    new-instance v4, Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-direct {v4}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;-><init>()V

    move-object v5, v4

    .local v5, "$this$apply":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    const/4 v6, 0x0

    .line 397
    .local v6, "$i$a$-apply-LineTool$changePaintStrokeCap$finalPath$1":I
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 398
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v5, v7, v8}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->moveTo(FF)V

    .line 399
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v5, v7, v8}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->lineTo(FF)V

    .line 401
    :cond_4
    nop

    .line 396
    .end local v5    # "$this$apply":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    .end local v6    # "$i$a$-apply-LineTool$changePaintStrokeCap$finalPath$1":I
    nop

    .line 402
    .local v4, "finalPath":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v6}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lorg/catrobat/paintroid/command/CommandFactory;->createPathCommand(Landroid/graphics/Paint;Lorg/catrobat/paintroid/command/serialization/SerializablePath;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v5

    .line 403
    .local v5, "command":Lorg/catrobat/paintroid/command/Command;
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v6, v5}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .end local v0    # "startX":Ljava/lang/Float;
    .end local v1    # "endY":Ljava/lang/Float;
    .end local v2    # "startY":Ljava/lang/Float;
    .end local v3    # "endX":Ljava/lang/Float;
    .end local v4    # "finalPath":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    .end local v5    # "command":Lorg/catrobat/paintroid/command/Command;
    goto :goto_3

    .line 405
    :cond_5
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    if-nez v0, :cond_6

    .line 406
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    if-nez v0, :cond_6

    .line 407
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->undo()V

    .line 408
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-eqz v0, :cond_6

    .line 421
    .local v0, "it":Landroid/graphics/PointF;
    const/4 v1, 0x0

    .line 408
    .local v1, "$i$a$-let-LineTool$changePaintStrokeCap$1":I
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->addPointCommand(Landroid/graphics/PointF;)Z

    .line 410
    .end local v0    # "it":Landroid/graphics/PointF;
    .end local v1    # "$i$a$-let-LineTool$changePaintStrokeCap$1":I
    :cond_6
    :goto_3
    nop

    .line 411
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->invalidate()V

    .line 412
    return-void
.end method

.method public changePaintStrokeWidth(I)V
    .locals 10
    .param p1, "strokeWidth"    # I

    .line 359
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->changePaintStrokeWidth(I)V

    .line 360
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lastSetStrokeWidth:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 361
    .local v0, "noNewLine":Z
    :goto_0
    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    if-eqz v1, :cond_6

    if-nez v0, :cond_6

    .line 362
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 363
    .local v1, "startX":Ljava/lang/Float;
    :goto_1
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-eqz v3, :cond_2

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    .line 364
    .local v3, "startY":Ljava/lang/Float;
    :goto_2
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-eqz v4, :cond_3

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v2

    .line 365
    .local v4, "endX":Ljava/lang/Float;
    :goto_3
    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-eqz v5, :cond_4

    iget v2, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 366
    .local v2, "endY":Ljava/lang/Float;
    :cond_4
    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v5}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 367
    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v5}, Lorg/catrobat/paintroid/command/CommandManager;->undo()V

    .line 368
    new-instance v5, Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-direct {v5}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;-><init>()V

    move-object v6, v5

    .local v6, "$this$apply":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    const/4 v7, 0x0

    .line 369
    .local v7, "$i$a$-apply-LineTool$changePaintStrokeWidth$finalPath$1":I
    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    .line 370
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v6, v8, v9}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->moveTo(FF)V

    .line 371
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v6, v8, v9}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->lineTo(FF)V

    .line 373
    :cond_5
    nop

    .line 368
    .end local v6    # "$this$apply":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    .end local v7    # "$i$a$-apply-LineTool$changePaintStrokeWidth$finalPath$1":I
    nop

    .line 374
    .local v5, "finalPath":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    iget-object v7, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v7}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Lorg/catrobat/paintroid/command/CommandFactory;->createPathCommand(Landroid/graphics/Paint;Lorg/catrobat/paintroid/command/serialization/SerializablePath;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v6

    .line 375
    .local v6, "command":Lorg/catrobat/paintroid/command/Command;
    iget-object v7, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v7, v6}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .end local v1    # "startX":Ljava/lang/Float;
    .end local v2    # "endY":Ljava/lang/Float;
    .end local v3    # "startY":Ljava/lang/Float;
    .end local v4    # "endX":Ljava/lang/Float;
    .end local v5    # "finalPath":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    .end local v6    # "command":Lorg/catrobat/paintroid/command/Command;
    goto :goto_4

    .line 377
    :cond_6
    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    if-nez v1, :cond_7

    if-nez v0, :cond_7

    .line 378
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    if-nez v1, :cond_7

    .line 379
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v1}, Lorg/catrobat/paintroid/command/CommandManager;->undo()V

    .line 380
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-eqz v1, :cond_7

    .line 421
    .local v1, "it":Landroid/graphics/PointF;
    const/4 v2, 0x0

    .line 380
    .local v2, "$i$a$-let-LineTool$changePaintStrokeWidth$1":I
    invoke-direct {p0, v1}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->addPointCommand(Landroid/graphics/PointF;)Z

    .line 382
    .end local v1    # "it":Landroid/graphics/PointF;
    .end local v2    # "$i$a$-let-LineTool$changePaintStrokeWidth$1":I
    :cond_7
    :goto_4
    nop

    .line 383
    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lastSetStrokeWidth:I

    .line 384
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->brushToolOptionsView:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->invalidate()V

    .line 385
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    .local v0, "initialCoordinate":Landroid/graphics/PointF;
    const/4 v1, 0x0

    .line 109
    .local v1, "$i$a$-let-LineTool$draw$1":I
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->currentCoordinate:Landroid/graphics/PointF;

    if-eqz v2, :cond_0

    .local v2, "currentCoordinate":Landroid/graphics/PointF;
    const/4 v3, 0x0

    .line 110
    .local v3, "$i$a$-let-LineTool$draw$1$1":I
    move-object v10, p1

    .local v10, "$this$run":Landroid/graphics/Canvas;
    const/4 v11, 0x0

    .line 111
    .local v11, "$i$a$-run-LineTool$draw$1$1$1":I
    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    .line 112
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v4}, Lorg/catrobat/paintroid/tools/Workspace;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v5}, Lorg/catrobat/paintroid/tools/Workspace;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v10, v6, v6, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 113
    nop

    .line 114
    iget v5, v0, Landroid/graphics/PointF;->x:F

    .line 115
    iget v6, v0, Landroid/graphics/PointF;->y:F

    iget v7, v2, Landroid/graphics/PointF;->x:F

    .line 116
    iget v8, v2, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v4}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v9

    .line 113
    move-object v4, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 118
    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    .line 119
    nop

    .line 110
    .end local v10    # "$this$run":Landroid/graphics/Canvas;
    .end local v11    # "$i$a$-run-LineTool$draw$1$1$1":I
    nop

    .line 120
    nop

    .line 109
    .end local v2    # "currentCoordinate":Landroid/graphics/PointF;
    .end local v3    # "$i$a$-let-LineTool$draw$1$1":I
    nop

    .line 108
    .end local v0    # "initialCoordinate":Landroid/graphics/PointF;
    .end local v1    # "$i$a$-let-LineTool$draw$1":I
    :cond_0
    nop

    .line 122
    return-void
.end method

.method public drawShape(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public final getChangeInitialCoordinateForHandleNormalLine()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->changeInitialCoordinateForHandleNormalLine:Z

    return v0
.end method

.method public final getConnectedLines()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->connectedLines:Z

    return v0
.end method

.method public final getCurrentCoordinate()Landroid/graphics/PointF;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->currentCoordinate:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getDrawTime()J
    .locals 2

    .line 46
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

    .line 58
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    return v0
.end method

.method public final getInitialEventCoordinate()Landroid/graphics/PointF;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final getLastSetStrokeWidth()I
    .locals 1

    .line 79
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lastSetStrokeWidth:I

    return v0
.end method

.method public final getLineFinalized()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    return v0
.end method

.method public final getStartPointToDraw()Landroid/graphics/PointF;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final getStartpointSet()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    return v0
.end method

.method public final getToolSwitched()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolSwitched:Z

    return v0
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolType:Lorg/catrobat/paintroid/tools/ToolType;

    return-object v0
.end method

.method public final getUndoPreviousLineForConnectedLines()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoPreviousLineForConnectedLines:Z

    return v0
.end method

.method public final getUndoRecentlyClicked()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    return v0
.end method

.method public handleDown(Landroid/graphics/PointF;)Z
    .locals 3
    .param p1, "coordinate"    # Landroid/graphics/PointF;

    .line 180
    if-eqz p1, :cond_0

    .line 181
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    .line 182
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    .line 183
    const/4 v0, 0x1

    return v0

    .line 180
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final handleEndPoint(FFZ)Z
    .locals 10
    .param p1, "xDistance"    # F
    .param p2, "yDistance"    # F
    .param p3, "fromHandleLine"    # Z

    .line 223
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 421
    .local v0, "it":Landroid/graphics/PointF;
    const/4 v2, 0x0

    .line 223
    .local v2, "$i$a$-let-LineTool$handleEndPoint$1":I
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v3, v0}, Lorg/catrobat/paintroid/tools/Workspace;->contains(Landroid/graphics/PointF;)Z

    move-result v0

    .end local v0    # "it":Landroid/graphics/PointF;
    .end local v2    # "$i$a$-let-LineTool$handleEndPoint$1":I
    if-nez v0, :cond_0

    .line 224
    return v1

    .line 226
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 421
    nop

    .restart local v0    # "it":Landroid/graphics/PointF;
    const/4 v3, 0x0

    .line 226
    .local v3, "$i$a$-let-LineTool$handleEndPoint$2":I
    new-instance v4, Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .end local v0    # "it":Landroid/graphics/PointF;
    .end local v3    # "$i$a$-let-LineTool$handleEndPoint$2":I
    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    iput-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    .line 227
    if-eqz v4, :cond_3

    if-eqz v4, :cond_2

    iget v0, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v4, Landroid/graphics/PointF;->x:F

    .line 228
    :cond_3
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-eqz v0, :cond_5

    if-eqz v0, :cond_4

    iget v3, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v2

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 229
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    .line 230
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-eqz v3, :cond_6

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_3

    :cond_6
    move-object v3, v2

    .line 231
    .local v3, "startX":Ljava/lang/Float;
    :goto_3
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-eqz v4, :cond_7

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_4

    :cond_7
    move-object v4, v2

    .line 232
    .local v4, "startY":Ljava/lang/Float;
    :goto_4
    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-eqz v5, :cond_8

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_5

    :cond_8
    move-object v5, v2

    .line 233
    .local v5, "endX":Ljava/lang/Float;
    :goto_5
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-eqz v6, :cond_9

    iget v2, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 234
    .local v2, "endY":Ljava/lang/Float;
    :cond_9
    if-nez p3, :cond_b

    .line 235
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v6}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-boolean v6, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    if-nez v6, :cond_a

    .line 236
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v6}, Lorg/catrobat/paintroid/command/CommandManager;->undo()V

    .line 238
    :cond_a
    iget-boolean v6, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    if-eqz v6, :cond_b

    .line 239
    iput-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    .line 243
    :cond_b
    new-instance v1, Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-direct {v1}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;-><init>()V

    move-object v6, v1

    .local v6, "$this$apply":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    const/4 v7, 0x0

    .line 244
    .local v7, "$i$a$-apply-LineTool$handleEndPoint$finalPath$1":I
    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    if-eqz v5, :cond_c

    if-eqz v2, :cond_c

    .line 245
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v6, v8, v9}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->moveTo(FF)V

    .line 246
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v6, v8, v9}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->lineTo(FF)V

    .line 248
    :cond_c
    nop

    .line 243
    .end local v6    # "$this$apply":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    .end local v7    # "$i$a$-apply-LineTool$handleEndPoint$finalPath$1":I
    nop

    .line 249
    .local v1, "finalPath":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    iget-object v7, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v7}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Lorg/catrobat/paintroid/command/CommandFactory;->createPathCommand(Landroid/graphics/Paint;Lorg/catrobat/paintroid/command/serialization/SerializablePath;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v6

    .line 250
    .local v6, "command":Lorg/catrobat/paintroid/command/Command;
    iget-object v7, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v7, v6}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 251
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->resetInternalState()V

    .line 252
    sget-object v7, Lorg/catrobat/paintroid/tools/implementation/LineTool;->topBarViewHolder:Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    if-eqz v7, :cond_e

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getPlusButton()Landroid/widget/ImageButton;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_e

    .line 253
    :cond_d
    sget-object v7, Lorg/catrobat/paintroid/tools/implementation/LineTool;->topBarViewHolder:Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->showPlusButton()V

    .line 255
    :cond_e
    return v0
.end method

.method public handleMove(Landroid/graphics/PointF;)Z
    .locals 8
    .param p1, "coordinate"    # Landroid/graphics/PointF;

    .line 187
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 188
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->changeInitialCoordinateForHandleNormalLine:Z

    .line 189
    iget-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    if-eqz v2, :cond_3

    .line 190
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 421
    nop

    .local v2, "it":Landroid/graphics/PointF;
    const/4 v4, 0x0

    .line 190
    .local v4, "$i$a$-let-LineTool$handleMove$1":I
    new-instance v5, Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .end local v2    # "it":Landroid/graphics/PointF;
    .end local v4    # "$i$a$-let-LineTool$handleMove$1":I
    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    iput-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    .line 191
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-eqz v2, :cond_1

    .line 421
    nop

    .restart local v2    # "it":Landroid/graphics/PointF;
    const/4 v3, 0x0

    .line 191
    .local v3, "$i$a$-let-LineTool$handleMove$2":I
    new-instance v4, Landroid/graphics/PointF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v3, v4

    .end local v2    # "it":Landroid/graphics/PointF;
    .end local v3    # "$i$a$-let-LineTool$handleMove$2":I
    :cond_1
    iput-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    .line 192
    iget-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoPreviousLineForConnectedLines:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v2}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    if-nez v2, :cond_2

    .line 193
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    .line 194
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v2}, Lorg/catrobat/paintroid/command/CommandManager;->undo()V

    .line 196
    :cond_2
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoPreviousLineForConnectedLines:Z

    .line 197
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    .line 199
    :cond_3
    new-instance v0, Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->currentCoordinate:Landroid/graphics/PointF;

    .line 200
    return v1

    .line 187
    :cond_4
    return v0
.end method

.method public final handleNormalLine(Landroid/graphics/PointF;FF)Z
    .locals 9
    .param p1, "coordinate"    # Landroid/graphics/PointF;
    .param p2, "xDistance"    # F
    .param p3, "yDistance"    # F

    const-string v0, "coordinate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 260
    .local v0, "bounds":Landroid/graphics/RectF;
    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {p0, p2, p3, v2}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->handleEndPoint(FFZ)Z

    move-result v1

    return v1

    .line 263
    :cond_0
    new-instance v1, Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-direct {v1}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;-><init>()V

    move-object v3, v1

    .local v3, "$this$apply":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    const/4 v4, 0x0

    .line 264
    .local v4, "$i$a$-apply-LineTool$handleNormalLine$finalPath$1":I
    nop

    .line 265
    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    const/4 v6, 0x0

    if-eqz v5, :cond_b

    iget v5, v5, Landroid/graphics/PointF;->x:F

    .line 266
    iget-object v7, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    if-eqz v7, :cond_a

    iget v6, v7, Landroid/graphics/PointF;->y:F

    .line 264
    invoke-virtual {v3, v5, v6}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->moveTo(FF)V

    .line 268
    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget v6, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v5, v6}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->lineTo(FF)V

    .line 269
    invoke-virtual {v3, v0, v2}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 270
    nop

    .line 263
    .end local v3    # "$this$apply":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    .end local v4    # "$i$a$-apply-LineTool$handleNormalLine$finalPath$1":I
    nop

    .line 271
    .local v1, "finalPath":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v3}, Lorg/catrobat/paintroid/tools/ToolPaint;->getStrokeWidth()F

    move-result v3

    neg-float v3, v3

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v4}, Lorg/catrobat/paintroid/tools/ToolPaint;->getStrokeWidth()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 273
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    if-eqz v5, :cond_1

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_0
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v3, Landroid/graphics/PointF;->x:F

    .line 274
    :cond_2
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    if-eqz v3, :cond_4

    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    if-eqz v5, :cond_3

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, p3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v4

    :goto_1
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v3, Landroid/graphics/PointF;->y:F

    .line 275
    :cond_4
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    if-eqz v3, :cond_5

    .line 421
    nop

    .local v3, "it":Landroid/graphics/PointF;
    const/4 v5, 0x0

    .line 275
    .local v5, "$i$a$-let-LineTool$handleNormalLine$1":I
    new-instance v6, Landroid/graphics/PointF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .end local v3    # "it":Landroid/graphics/PointF;
    .end local v5    # "$i$a$-let-LineTool$handleNormalLine$1":I
    goto :goto_2

    :cond_5
    move-object v6, v4

    :goto_2
    iput-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    .line 276
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    if-eqz v3, :cond_6

    .line 421
    nop

    .restart local v3    # "it":Landroid/graphics/PointF;
    const/4 v4, 0x0

    .line 276
    .local v4, "$i$a$-let-LineTool$handleNormalLine$2":I
    new-instance v5, Landroid/graphics/PointF;

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v7, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v4, v5

    .end local v3    # "it":Landroid/graphics/PointF;
    .end local v4    # "$i$a$-let-LineTool$handleNormalLine$2":I
    :cond_6
    iput-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    .line 278
    iput-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    .line 279
    iput-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    .line 281
    sget-object v3, Lorg/catrobat/paintroid/tools/implementation/LineTool;->topBarViewHolder:Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    if-eqz v3, :cond_8

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getPlusButton()Landroid/widget/ImageButton;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_8

    .line 282
    :cond_7
    sget-object v3, Lorg/catrobat/paintroid/tools/implementation/LineTool;->topBarViewHolder:Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->showPlusButton()V

    .line 285
    :cond_8
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v3, v0}, Lorg/catrobat/paintroid/tools/Workspace;->intersectsWith(Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 286
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v4}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lorg/catrobat/paintroid/command/CommandFactory;->createPathCommand(Landroid/graphics/Paint;Lorg/catrobat/paintroid/command/serialization/SerializablePath;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v3

    .line 287
    .local v3, "command":Lorg/catrobat/paintroid/command/Command;
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v4, v3}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 289
    .end local v3    # "command":Lorg/catrobat/paintroid/command/Command;
    :cond_9
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->resetInternalState()V

    .line 290
    return v2

    .line 266
    .end local v1    # "finalPath":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    .local v3, "$this$apply":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    .local v4, "$i$a$-apply-LineTool$handleNormalLine$finalPath$1":I
    :cond_a
    return v6

    .line 265
    :cond_b
    return v6
.end method

.method public final handleStartPoint(FF)Z
    .locals 6
    .param p1, "xDistance"    # F
    .param p2, "yDistance"    # F

    .line 204
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 421
    nop

    .local v0, "it":Landroid/graphics/PointF;
    const/4 v2, 0x0

    .line 204
    .local v2, "$i$a$-let-LineTool$handleStartPoint$1":I
    new-instance v3, Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .end local v0    # "it":Landroid/graphics/PointF;
    .end local v2    # "$i$a$-let-LineTool$handleStartPoint$1":I
    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    iput-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    .line 205
    if-eqz v3, :cond_2

    if-eqz v3, :cond_1

    iget v0, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v3, Landroid/graphics/PointF;->x:F

    .line 206
    :cond_2
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-eqz v0, :cond_4

    if-eqz v0, :cond_3

    iget v1, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 208
    :cond_4
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 421
    .restart local v0    # "it":Landroid/graphics/PointF;
    const/4 v2, 0x0

    .line 208
    .local v2, "$i$a$-let-LineTool$handleStartPoint$2":I
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v3, v0}, Lorg/catrobat/paintroid/tools/Workspace;->contains(Landroid/graphics/PointF;)Z

    move-result v0

    .end local v0    # "it":Landroid/graphics/PointF;
    .end local v2    # "$i$a$-let-LineTool$handleStartPoint$2":I
    if-ne v0, v1, :cond_5

    .line 209
    iput-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    .line 211
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->resetInternalState()V

    .line 212
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-eqz v0, :cond_6

    .restart local v0    # "it":Landroid/graphics/PointF;
    const/4 v1, 0x0

    .line 213
    .local v1, "$i$a$-let-LineTool$handleStartPoint$3":I
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->addPointCommand(Landroid/graphics/PointF;)Z

    move-result v2

    return v2

    .line 216
    .end local v0    # "it":Landroid/graphics/PointF;
    .end local v1    # "$i$a$-let-LineTool$handleStartPoint$3":I
    :cond_5
    iput-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    .line 217
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->resetInternalState()V

    .line 218
    :cond_6
    nop

    .line 219
    return v1
.end method

.method public handleUp(Landroid/graphics/PointF;)Z
    .locals 9
    .param p1, "coordinate"    # Landroid/graphics/PointF;

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoPreviousLineForConnectedLines:Z

    .line 295
    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->changeInitialCoordinateForHandleNormalLine:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    if-nez v1, :cond_1

    .line 296
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-eqz v1, :cond_0

    .line 421
    nop

    .local v1, "it":Landroid/graphics/PointF;
    const/4 v3, 0x0

    .line 296
    .local v3, "$i$a$-let-LineTool$handleUp$1":I
    new-instance v4, Landroid/graphics/PointF;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .end local v1    # "it":Landroid/graphics/PointF;
    .end local v3    # "$i$a$-let-LineTool$handleUp$1":I
    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    iput-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    .line 298
    :cond_1
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    if-eqz v1, :cond_8

    if-nez p1, :cond_2

    goto :goto_2

    .line 302
    :cond_2
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    if-eqz v1, :cond_3

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 303
    .local v1, "xDistance":Ljava/lang/Float;
    :goto_1
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    if-eqz v4, :cond_4

    iget v2, v4, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 304
    .local v2, "yDistance":Ljava/lang/Float;
    :cond_4
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 305
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->changeInitialCoordinateForHandleNormalLine:Z

    if-eqz v0, :cond_5

    .line 306
    iput-boolean v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->changeInitialCoordinateForHandleNormalLine:Z

    .line 307
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0, p1, v0, v3}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->handleNormalLine(Landroid/graphics/PointF;FF)Z

    move-result v0

    return v0

    .line 308
    :cond_5
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    if-nez v0, :cond_6

    .line 309
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->handleStartPoint(FF)Z

    move-result v0

    return v0

    .line 311
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->handleEndPoint$default(Lorg/catrobat/paintroid/tools/implementation/LineTool;FFZILjava/lang/Object;)Z

    move-result v0

    return v0

    .line 312
    :cond_7
    nop

    .line 314
    iput-boolean v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->changeInitialCoordinateForHandleNormalLine:Z

    .line 315
    return v0

    .line 299
    .end local v1    # "xDistance":Ljava/lang/Float;
    .end local v2    # "yDistance":Ljava/lang/Float;
    :cond_8
    :goto_2
    iput-boolean v3, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->changeInitialCoordinateForHandleNormalLine:Z

    .line 300
    return v3
.end method

.method public onClickOnButton()V
    .locals 11

    .line 145
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->topBarViewHolder:Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->getPlusButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 146
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->topBarViewHolder:Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;->hidePlusButton()V

    .line 148
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    .line 149
    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    if-eqz v1, :cond_7

    .line 150
    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolSwitched:Z

    if-eqz v1, :cond_6

    .line 151
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 152
    .local v1, "startX":Ljava/lang/Float;
    :goto_0
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    if-eqz v4, :cond_2

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v3

    .line 153
    .local v4, "startY":Ljava/lang/Float;
    :goto_1
    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-eqz v5, :cond_3

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v3

    .line 154
    .local v5, "endX":Ljava/lang/Float;
    :goto_2
    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-eqz v6, :cond_4

    iget v3, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 155
    .local v3, "endY":Ljava/lang/Float;
    :cond_4
    new-instance v6, Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    invoke-direct {v6}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;-><init>()V

    move-object v7, v6

    .local v7, "$this$apply":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    const/4 v8, 0x0

    .line 156
    .local v8, "$i$a$-apply-LineTool$onClickOnButton$finalPath$1":I
    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    .line 157
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v7, v9, v10}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->moveTo(FF)V

    .line 158
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v7, v9, v10}, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->lineTo(FF)V

    .line 160
    :cond_5
    nop

    .line 155
    .end local v7    # "$this$apply":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    .end local v8    # "$i$a$-apply-LineTool$onClickOnButton$finalPath$1":I
    nop

    .line 161
    .local v6, "finalPath":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    iput-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    .line 162
    iput-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolSwitched:Z

    .line 163
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandFactory:Lorg/catrobat/paintroid/command/CommandFactory;

    iget-object v7, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v7}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-interface {v0, v7, v6}, Lorg/catrobat/paintroid/command/CommandFactory;->createPathCommand(Landroid/graphics/Paint;Lorg/catrobat/paintroid/command/serialization/SerializablePath;)Lorg/catrobat/paintroid/command/Command;

    move-result-object v0

    .line 164
    .local v0, "command":Lorg/catrobat/paintroid/command/Command;
    iget-object v7, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v7, v0}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .line 166
    .end local v0    # "command":Lorg/catrobat/paintroid/command/Command;
    .end local v1    # "startX":Ljava/lang/Float;
    .end local v3    # "endY":Ljava/lang/Float;
    .end local v4    # "startY":Ljava/lang/Float;
    .end local v5    # "endX":Ljava/lang/Float;
    .end local v6    # "finalPath":Lorg/catrobat/paintroid/command/serialization/SerializablePath;
    :cond_6
    iput-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    .line 167
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->resetInternalState()V

    goto :goto_3

    .line 168
    :cond_7
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    if-nez v0, :cond_9

    .line 169
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->isUndoAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 170
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v0}, Lorg/catrobat/paintroid/command/CommandManager;->undo()V

    .line 172
    :cond_8
    iput-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    .line 173
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->resetInternalState()V

    goto :goto_3

    .line 175
    :cond_9
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->resetInternalState()V

    .line 176
    :goto_3
    nop

    .line 177
    return-void
.end method

.method public final onClickOnPlus()V
    .locals 7

    .line 129
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 421
    .local v0, "it":Landroid/graphics/PointF;
    const/4 v2, 0x0

    .line 130
    .local v2, "$i$a$-let-LineTool$onClickOnPlus$newStartCoordinate$1":I
    new-instance v3, Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .end local v0    # "it":Landroid/graphics/PointF;
    .end local v2    # "$i$a$-let-LineTool$onClickOnPlus$newStartCoordinate$1":I
    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    move-object v0, v3

    .line 131
    .local v0, "newStartCoordinate":Landroid/graphics/PointF;
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-eqz v2, :cond_1

    .line 421
    nop

    .local v2, "it":Landroid/graphics/PointF;
    const/4 v3, 0x0

    .line 131
    .local v3, "$i$a$-let-LineTool$onClickOnPlus$1":I
    new-instance v4, Landroid/graphics/PointF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .end local v2    # "it":Landroid/graphics/PointF;
    .end local v3    # "$i$a$-let-LineTool$onClickOnPlus$1":I
    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    iput-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    .line 132
    iget-object v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    if-eqz v2, :cond_2

    .line 421
    nop

    .restart local v2    # "it":Landroid/graphics/PointF;
    const/4 v3, 0x0

    .line 132
    .local v3, "$i$a$-let-LineTool$onClickOnPlus$2":I
    new-instance v4, Landroid/graphics/PointF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .end local v2    # "it":Landroid/graphics/PointF;
    .end local v3    # "$i$a$-let-LineTool$onClickOnPlus$2":I
    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    iput-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->previousEventCoordinate:Landroid/graphics/PointF;

    .line 133
    check-cast v1, Landroid/graphics/PointF;

    iput-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    .line 134
    iput-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    .line 135
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    .line 136
    iput-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    .line 137
    iput-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    .line 138
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->connectedLines:Z

    .line 139
    iput-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    .line 140
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/tools/implementation/LineTool;->handleUp(Landroid/graphics/PointF;)Z

    .line 142
    .end local v0    # "newStartCoordinate":Landroid/graphics/PointF;
    :cond_3
    return-void
.end method

.method protected resetInternalState()V
    .locals 2

    .line 319
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/PointF;

    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    .line 320
    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->currentCoordinate:Landroid/graphics/PointF;

    .line 321
    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    if-eqz v1, :cond_0

    .line 322
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->connectedLines:Z

    .line 323
    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    .line 324
    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    .line 325
    iput-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    .line 326
    iput-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    .line 327
    iput-boolean v1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    .line 329
    :cond_0
    return-void
.end method

.method public final setChangeInitialCoordinateForHandleNormalLine(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 87
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->changeInitialCoordinateForHandleNormalLine:Z

    return-void
.end method

.method public final setConnectedLines(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 81
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->connectedLines:Z

    return-void
.end method

.method public final setCurrentCoordinate(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/graphics/PointF;

    .line 73
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->currentCoordinate:Landroid/graphics/PointF;

    return-void
.end method

.method public setDrawTime(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 46
    iput-wide p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->drawTime:J

    return-void
.end method

.method public final setEndPointToDraw(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/graphics/PointF;

    .line 70
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endPointToDraw:Landroid/graphics/PointF;

    return-void
.end method

.method public final setEndpointSet(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 58
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->endpointSet:Z

    return-void
.end method

.method public final setInitialEventCoordinate(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/graphics/PointF;

    .line 64
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->initialEventCoordinate:Landroid/graphics/PointF;

    return-void
.end method

.method public final setLastSetStrokeWidth(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 79
    iput p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lastSetStrokeWidth:I

    return-void
.end method

.method public final setLineFinalized(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 55
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->lineFinalized:Z

    return-void
.end method

.method public final setStartPointToDraw(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/graphics/PointF;

    .line 67
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startPointToDraw:Landroid/graphics/PointF;

    return-void
.end method

.method public final setStartpointSet(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 61
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->startpointSet:Z

    return-void
.end method

.method public final setToolSwitched(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 77
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolSwitched:Z

    return-void
.end method

.method public setToolType(Lorg/catrobat/paintroid/tools/ToolType;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/tools/ToolType;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->toolType:Lorg/catrobat/paintroid/tools/ToolType;

    return-void
.end method

.method public final setUndoPreviousLineForConnectedLines(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 85
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoPreviousLineForConnectedLines:Z

    return-void
.end method

.method public final setUndoRecentlyClicked(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 83
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/implementation/LineTool;->undoRecentlyClicked:Z

    return-void
.end method
