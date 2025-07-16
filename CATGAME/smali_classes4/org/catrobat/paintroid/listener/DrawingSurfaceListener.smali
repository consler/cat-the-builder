.class public Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;
.super Ljava/lang/Object;
.source "DrawingSurfaceListener.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;,
        Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;,
        Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawingSurfaceListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawingSurfaceListener.kt\norg/catrobat/paintroid/listener/DrawingSurfaceListener\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,271:1\n1#2:272\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0016\u0018\u00002\u00020\u0001:\u0003567B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0002J\u0010\u0010\"\u001a\u00020\u00052\u0006\u0010 \u001a\u00020!H\u0002J\"\u0010#\u001a\u00020\u001f2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010 \u001a\u00020!2\u0006\u0010&\u001a\u00020\u0008H\u0002J\u0018\u0010\'\u001a\u00020\u001f2\u0006\u0010$\u001a\u00020%2\u0006\u0010 \u001a\u00020!H\u0002J\u001a\u0010(\u001a\u00020\u001f2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010 \u001a\u00020!H\u0002J\u0018\u0010)\u001a\u00020\u001f2\u0006\u0010*\u001a\u00020\u00052\u0006\u0010+\u001a\u00020\u0005H\u0002J\u0018\u0010,\u001a\u00020\u00082\u0006\u0010-\u001a\u00020.2\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010/\u001a\u00020\u001f2\u0006\u00100\u001a\u00020\u0017H\u0002J\u0010\u00101\u001a\u00020\u001f2\u0006\u00102\u001a\u00020\nH\u0002J\u0016\u00103\u001a\u00020\u001f2\u0006\u00104\u001a\u00020\u001d2\u0006\u0010\u0014\u001a\u00020\u0015R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u00068"
    }
    d2 = {
        "Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;",
        "Landroid/view/View$OnTouchListener;",
        "callback",
        "Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;",
        "displayDensity",
        "",
        "(Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;F)V",
        "callZoomWindow",
        "",
        "canvasTouchPoint",
        "Landroid/graphics/PointF;",
        "drawerEdgeSize",
        "",
        "eventTouchPoint",
        "eventX",
        "eventY",
        "pointerDistance",
        "recentTouchEventsData",
        "",
        "Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;",
        "sharedPreferences",
        "Lorg/catrobat/paintroid/UserPreferences;",
        "timerStartDraw",
        "",
        "touchMode",
        "Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;",
        "xMidPoint",
        "yMidPoint",
        "zoomController",
        "Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;",
        "calculateMidPoint",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "calculatePointerDistance",
        "handleActionMove",
        "currentTool",
        "Lorg/catrobat/paintroid/tools/Tool;",
        "shouldAnimate",
        "handleZoomWindowOnMove",
        "handleZoomWindowOnTouch",
        "newHandEvent",
        "x",
        "y",
        "onTouch",
        "view",
        "Landroid/view/View;",
        "removeObsoleteTouchEventsData",
        "timeStamp",
        "saveToolActionBeforeZoom",
        "point",
        "setZoomController",
        "zoomWindowController",
        "DrawingSurfaceListenerCallback",
        "TouchEventData",
        "TouchMode",
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
.field private callZoomWindow:Z

.field private final callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;

.field private final canvasTouchPoint:Landroid/graphics/PointF;

.field private final displayDensity:F

.field private final drawerEdgeSize:I

.field private final eventTouchPoint:Landroid/graphics/PointF;

.field private eventX:F

.field private eventY:F

.field private pointerDistance:F

.field private recentTouchEventsData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;",
            ">;"
        }
    .end annotation
.end field

.field private sharedPreferences:Lorg/catrobat/paintroid/UserPreferences;

.field private timerStartDraw:J

.field private touchMode:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

.field private xMidPoint:F

.field private yMidPoint:F

.field private zoomController:Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;F)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;

    .line 45
    iput p2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->displayDensity:F

    const/high16 p1, 0x41a00000    # 20.0f

    mul-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    .line 55
    iput p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->drawerEdgeSize:I

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->callZoomWindow:Z

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->recentTouchEventsData:Ljava/util/List;

    .line 70
    sget-object p1, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;->DRAW:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    iput-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->touchMode:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    .line 71
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    .line 72
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventTouchPoint:Landroid/graphics/PointF;

    return-void
.end method

.method private final calculateMidPoint(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iput v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->xMidPoint:F

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v0, p1

    div-float/2addr v0, v3

    iput v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->yMidPoint:F

    return-void
.end method

.method private final calculatePointerDistance(Landroid/view/MotionEvent;)F
    .locals 5

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    float-to-double v1, v1

    float-to-double v3, v0

    .line 83
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private final handleActionMove(Lorg/catrobat/paintroid/tools/Tool;Landroid/view/MotionEvent;Z)V
    .locals 9

    .line 102
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_8

    if-nez p1, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->recentTouchEventsData:Ljava/util/List;

    new-instance v4, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;-><init>(JFF)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->removeObsoleteTouchEventsData(J)V

    .line 106
    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/Tool;->handToolMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 107
    iget-object p3, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->touchMode:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    sget-object v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;->PINCH:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    if-ne p3, v0, :cond_1

    .line 110
    sget-object p3, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;->DRAW:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    iput-object p3, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->touchMode:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    move p3, v2

    move v0, p3

    goto :goto_0

    .line 112
    :cond_1
    iget p3, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventX:F

    .line 113
    iget v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventY:F

    .line 115
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->newHandEvent(FF)V

    cmpl-float v4, p3, v2

    if-lez v4, :cond_3

    .line 116
    iget v4, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventX:F

    cmpg-float v4, v4, p3

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eqz v4, :cond_5

    :cond_3
    cmpl-float v2, v0, v2

    if-lez v2, :cond_7

    iget v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventY:F

    cmpg-float v2, v2, v0

    if-nez v2, :cond_4

    move v1, v3

    :cond_4
    if-nez v1, :cond_7

    .line 117
    :cond_5
    iget-object v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;

    iget v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventX:F

    sub-float/2addr v2, p3

    iget p3, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventY:F

    sub-float/2addr p3, v0

    invoke-interface {v1, v2, p3}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;->translatePerspective(FF)V

    goto :goto_2

    .line 119
    :cond_6
    iget-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->touchMode:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    sget-object v1, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;->PINCH:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    if-eq v0, v1, :cond_7

    .line 120
    sget-object v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;->DRAW:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    iput-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->touchMode:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    .line 121
    iget-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    invoke-interface {p1, v0, p3}, Lorg/catrobat/paintroid/tools/Tool;->handleMove(Landroid/graphics/PointF;Z)Z

    .line 123
    :cond_7
    :goto_2
    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->handleZoomWindowOnMove(Lorg/catrobat/paintroid/tools/Tool;Landroid/view/MotionEvent;)V

    goto/16 :goto_6

    .line 125
    :cond_8
    iget-object p3, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->touchMode:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    sget-object v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;->DRAW:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    if-ne p3, v0, :cond_a

    .line 126
    new-instance p3, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p3, v0, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, p3}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->saveToolActionBeforeZoom(Landroid/graphics/PointF;)V

    if-nez p1, :cond_9

    goto :goto_3

    .line 127
    :cond_9
    sget-object p3, Lorg/catrobat/paintroid/tools/Tool$StateChange;->MOVE_CANCELED:Lorg/catrobat/paintroid/tools/Tool$StateChange;

    invoke-interface {p1, p3}, Lorg/catrobat/paintroid/tools/Tool;->resetInternalState(Lorg/catrobat/paintroid/tools/Tool$StateChange;)V

    .line 129
    :cond_a
    :goto_3
    sget-object p1, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;->PINCH:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    iput-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->touchMode:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    .line 130
    iget p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->pointerDistance:F

    .line 131
    invoke-direct {p0, p2}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->calculatePointerDistance(Landroid/view/MotionEvent;)F

    move-result p3

    iput p3, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->pointerDistance:F

    cmpl-float v0, p1, v2

    if-lez v0, :cond_c

    cmpg-float v0, p1, p3

    if-nez v0, :cond_b

    move v0, v3

    goto :goto_4

    :cond_b
    move v0, v1

    :goto_4
    if-nez v0, :cond_c

    div-float/2addr p3, p1

    .line 134
    iget-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;

    invoke-interface {p1, p3}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;->multiplyPerspectiveScale(F)V

    .line 136
    :cond_c
    iget p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->xMidPoint:F

    .line 137
    iget p3, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->yMidPoint:F

    .line 138
    invoke-direct {p0, p2}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->calculateMidPoint(Landroid/view/MotionEvent;)V

    cmpl-float p2, p1, v2

    if-lez p2, :cond_e

    .line 139
    iget p2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->xMidPoint:F

    cmpg-float p2, p2, p1

    if-nez p2, :cond_d

    move p2, v3

    goto :goto_5

    :cond_d
    move p2, v1

    :goto_5
    if-eqz p2, :cond_10

    :cond_e
    cmpl-float p2, p3, v2

    if-lez p2, :cond_11

    iget p2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->yMidPoint:F

    cmpg-float p2, p2, p3

    if-nez p2, :cond_f

    move v1, v3

    :cond_f
    if-nez v1, :cond_11

    .line 140
    :cond_10
    iget-object p2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;

    iget v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->xMidPoint:F

    sub-float/2addr v0, p1

    iget p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->yMidPoint:F

    sub-float/2addr p1, p3

    invoke-interface {p2, v0, p1}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;->translatePerspective(FF)V

    .line 142
    :cond_11
    iget-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->zoomController:Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;

    if-nez p1, :cond_12

    const-string p1, "zoomController"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_12
    invoke-interface {p1}, Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;->dismissOnPinch()V

    :goto_6
    return-void
.end method

.method private final handleZoomWindowOnMove(Lorg/catrobat/paintroid/tools/Tool;Landroid/view/MotionEvent;)V
    .locals 5

    .line 147
    iget-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->sharedPreferences:Lorg/catrobat/paintroid/UserPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "sharedPreferences"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/UserPreferences;->getPreferenceZoomWindowEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 148
    iget-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;

    invoke-interface {v0}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/ToolType;->name()Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget-object v2, Lorg/catrobat/paintroid/tools/ToolType;->CURSOR:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/tools/ToolType;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v1}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const-string v2, "zoomController"

    if-nez v0, :cond_4

    .line 149
    iget-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->zoomController:Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;

    if-nez p1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v1, p1

    :goto_2
    iget-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {v0, v2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v1, p1, v0}, Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;->onMove(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_4

    .line 151
    :cond_4
    iget-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->zoomController:Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v1, v0

    :goto_3
    iget-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/Tool;->toolPositionCoordinates(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {v0, v2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v1, p1, v0}, Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;->onMove(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    :cond_6
    :goto_4
    return-void
.end method

.method private final handleZoomWindowOnTouch(Lorg/catrobat/paintroid/tools/Tool;Landroid/view/MotionEvent;)V
    .locals 5

    .line 234
    iget-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->sharedPreferences:Lorg/catrobat/paintroid/UserPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "sharedPreferences"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/UserPreferences;->getPreferenceZoomWindowEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    if-nez p1, :cond_1

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 235
    :cond_1
    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/ToolType;->name()Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget-object v3, Lorg/catrobat/paintroid/tools/ToolType;->CURSOR:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v3}, Lorg/catrobat/paintroid/tools/ToolType;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v0, v3, v2, v4, v1}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const-string v2, "zoomController"

    if-nez v0, :cond_4

    .line 236
    iget-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->zoomController:Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;

    if-nez p1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v1, p1

    :goto_2
    iget-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {v0, v2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v1, p1, v0}, Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;->show(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_4

    :cond_4
    if-nez p1, :cond_5

    goto :goto_4

    .line 238
    :cond_5
    iget-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/Tool;->toolPositionCoordinates(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_4

    .line 239
    :cond_6
    iget-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->zoomController:Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move-object v1, v0

    :goto_3
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {v0, v2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v1, p1, v0}, Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;->show(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_4
    const/4 v2, 0x1

    .line 234
    :cond_8
    iput-boolean v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->callZoomWindow:Z

    return-void
.end method

.method private final newHandEvent(FF)V
    .locals 0

    .line 76
    iput p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventX:F

    .line 77
    iput p2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventY:F

    return-void
.end method

.method private final removeObsoleteTouchEventsData(J)V
    .locals 7

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 249
    iget-object v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->recentTouchEventsData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;

    .line 250
    invoke-virtual {v2}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->getTimeStamp()J

    move-result-wide v3

    sub-long v3, p1, v3

    const-wide/16 v5, 0x1e

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 251
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 256
    :cond_0
    iget-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->recentTouchEventsData:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final saveToolActionBeforeZoom(Landroid/graphics/PointF;)V
    .locals 6

    .line 157
    iget-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;

    invoke-interface {v0}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    move-object v2, v1

    goto :goto_1

    .line 158
    :cond_0
    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lorg/catrobat/paintroid/tools/ToolType;->name()Ljava/lang/String;

    move-result-object v2

    :goto_1
    sget-object v3, Lorg/catrobat/paintroid/tools/ToolType;->CURSOR:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v3}, Lorg/catrobat/paintroid/tools/ToolType;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5, v1}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v0, :cond_2

    :goto_2
    move-object v2, v1

    goto :goto_3

    .line 159
    :cond_2
    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lorg/catrobat/paintroid/tools/ToolType;->name()Ljava/lang/String;

    move-result-object v2

    :goto_3
    sget-object v3, Lorg/catrobat/paintroid/tools/ToolType;->LINE:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v3}, Lorg/catrobat/paintroid/tools/ToolType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4, v5, v1}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_4
    if-nez v0, :cond_5

    goto :goto_4

    .line 160
    :cond_5
    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/Tool;->handleUp(Landroid/graphics/PointF;)Z

    :goto_4
    if-nez v0, :cond_6

    goto :goto_5

    .line 161
    :cond_6
    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/Tool;->handleDown(Landroid/graphics/PointF;)Z

    :cond_7
    :goto_5
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    move-object v0, p1

    check-cast v0, Lorg/catrobat/paintroid/ui/DrawingSurface;

    .line 167
    iget-object v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;

    invoke-interface {v1}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v1

    .line 168
    iget-object v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 169
    iget-object v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 170
    iget-object v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventTouchPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 171
    iget-object v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventTouchPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 172
    iget-object v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;

    iget-object v3, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    invoke-interface {v2, v3}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;->convertToCanvasFromSurface(Landroid/graphics/PointF;)V

    .line 173
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_10

    if-eq v2, v4, :cond_6

    const/4 p1, 0x2

    if-eq v2, p1, :cond_3

    const/4 p1, 0x3

    if-eq v2, p1, :cond_6

    const/4 p1, 0x6

    if-eq v2, p1, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    .line 223
    :cond_1
    iget-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    invoke-interface {v1, p1}, Lorg/catrobat/paintroid/tools/Tool;->handleDownAnimations(Landroid/graphics/PointF;)V

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    .line 224
    :cond_2
    iget-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    invoke-interface {v1, p1}, Lorg/catrobat/paintroid/tools/Tool;->handleUpAnimations(Landroid/graphics/PointF;)V

    .line 225
    :goto_1
    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->refreshDrawingSurface()V

    return v3

    .line 184
    :cond_3
    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    .line 185
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v5, p1

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->getHeight()I

    move-result v5

    sub-int/2addr v5, p1

    int-to-float p1, v5

    cmpl-float p1, v2, p1

    if-lez p1, :cond_5

    :cond_4
    move v3, v4

    .line 186
    :cond_5
    invoke-direct {p0, v1, p2, v3}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->handleActionMove(Lorg/catrobat/paintroid/tools/Tool;Landroid/view/MotionEvent;Z)V

    goto/16 :goto_6

    .line 189
    :cond_6
    iget-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->touchMode:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    sget-object v2, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;->DRAW:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    const/4 v5, 0x0

    if-ne p1, v2, :cond_b

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->timerStartDraw:J

    sub-long/2addr v6, v8

    .line 191
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->removeObsoleteTouchEventsData(J)V

    .line 194
    iget-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->recentTouchEventsData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v4, :cond_8

    .line 195
    iget-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->recentTouchEventsData:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;

    .line 196
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->getXCoordinate()F

    move-result v8

    sub-float/2addr v2, v8

    .line 197
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->getYCoordinate()F

    move-result p1

    sub-float/2addr v8, p1

    mul-float p1, v2, v2

    mul-float v9, v8, v8

    add-float/2addr p1, v9

    const/high16 v9, 0x42480000    # 50.0f

    .line 199
    iget v10, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->displayDensity:F

    mul-float/2addr v10, v9

    cmpg-float v9, p1, v10

    if-gez v9, :cond_8

    cmpg-float p1, p1, v5

    if-nez p1, :cond_7

    move v3, v4

    :cond_7
    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    move v2, v5

    move v8, v2

    .line 204
    :goto_2
    iget-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v3, v2

    iput v3, p1, Landroid/graphics/PointF;->x:F

    .line 205
    iget-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p2, v8

    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 206
    iget-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;

    iget-object p2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    invoke-interface {p1, p2}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;->convertToCanvasFromSurface(Landroid/graphics/PointF;)V

    if-nez v1, :cond_9

    goto :goto_3

    .line 207
    :cond_9
    invoke-interface {v1, v6, v7}, Lorg/catrobat/paintroid/tools/Tool;->setDrawTime(J)V

    :goto_3
    if-nez v1, :cond_a

    goto :goto_4

    .line 208
    :cond_a
    iget-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    invoke-interface {v1, p1}, Lorg/catrobat/paintroid/tools/Tool;->handleUp(Landroid/graphics/PointF;)Z

    goto :goto_4

    :cond_b
    if-nez v1, :cond_c

    goto :goto_4

    .line 210
    :cond_c
    sget-object p1, Lorg/catrobat/paintroid/tools/Tool$StateChange;->MOVE_CANCELED:Lorg/catrobat/paintroid/tools/Tool$StateChange;

    invoke-interface {v1, p1}, Lorg/catrobat/paintroid/tools/Tool;->resetInternalState(Lorg/catrobat/paintroid/tools/Tool$StateChange;)V

    .line 212
    :goto_4
    iput v5, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->pointerDistance:F

    .line 213
    iput v5, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->xMidPoint:F

    .line 214
    iput v5, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->yMidPoint:F

    .line 215
    iput v5, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventX:F

    .line 216
    iput v5, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventY:F

    .line 217
    sget-object p1, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;->DRAW:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    iput-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->touchMode:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    .line 218
    iget-boolean p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->callZoomWindow:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->zoomController:Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;

    if-nez p1, :cond_d

    const-string p1, "zoomController"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_d
    invoke-interface {p1}, Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;->dismiss()V

    .line 219
    :cond_e
    iget-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;

    invoke-interface {p1}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object p1

    if-nez p1, :cond_f

    goto :goto_6

    :cond_f
    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/Tool;->handToolMode()Z

    goto :goto_6

    .line 175
    :cond_10
    iget-object v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventTouchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->drawerEdgeSize:I

    int-to-float v5, v5

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_13

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventTouchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v2

    iget v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->drawerEdgeSize:I

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_11

    goto :goto_7

    .line 178
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->timerStartDraw:J

    .line 179
    iget-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->recentTouchEventsData:Ljava/util/List;

    new-instance v2, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {v2, v5, v6, v3, v7}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;-><init>(JFF)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_12

    goto :goto_5

    .line 180
    :cond_12
    iget-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    invoke-interface {v1, p1}, Lorg/catrobat/paintroid/tools/Tool;->handleDown(Landroid/graphics/PointF;)Z

    .line 181
    :goto_5
    invoke-direct {p0, v1, p2}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->handleZoomWindowOnTouch(Lorg/catrobat/paintroid/tools/Tool;Landroid/view/MotionEvent;)V

    .line 229
    :goto_6
    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->refreshDrawingSurface()V

    return v4

    :cond_13
    :goto_7
    return v3
.end method

.method public final setZoomController(Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;Lorg/catrobat/paintroid/UserPreferences;)V
    .locals 1

    const-string v0, "zoomWindowController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->zoomController:Lorg/catrobat/paintroid/ui/zoomwindow/ZoomWindowController;

    .line 96
    iput-object p2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->sharedPreferences:Lorg/catrobat/paintroid/UserPreferences;

    return-void
.end method
