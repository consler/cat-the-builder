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
        Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;,
        Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTaskCallback;,
        Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0016\u0018\u00002\u00020\u0001:\u0005/0123B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0010\u0010 \u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0006\u0010!\u001a\u00020\u001dJ\u0006\u0010\"\u001a\u00020\u001dJ\"\u0010#\u001a\u00020\u001d2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0018\u0010(\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0007H\u0002J\u0018\u0010+\u001a\u00020\n2\u0006\u0010&\u001a\u00020\'2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010,\u001a\u00020\u001d2\u0006\u0010-\u001a\u00020\u0017H\u0002J\u0010\u0010.\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020\'H\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;",
        "Landroid/view/View$OnTouchListener;",
        "autoScrollTask",
        "Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;",
        "callback",
        "Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;",
        "displayDensity",
        "",
        "(Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;F)V",
        "autoScroll",
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
        "timerStartDraw",
        "",
        "touchMode",
        "Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;",
        "xMidPoint",
        "yMidPoint",
        "calculateMidPoint",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "calculatePointerDistance",
        "disableAutoScroll",
        "enableAutoScroll",
        "handleActionMove",
        "currentTool",
        "Lorg/catrobat/paintroid/tools/Tool;",
        "view",
        "Landroid/view/View;",
        "newHandEvent",
        "x",
        "y",
        "onTouch",
        "removeObsoleteTouchEventsData",
        "timeStamp",
        "setEvenPointAndViewDimensionsForAutoScrollTask",
        "AutoScrollTask",
        "AutoScrollTaskCallback",
        "DrawingSurfaceListenerCallback",
        "TouchEventData",
        "TouchMode",
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
.field private autoScroll:Z

.field private final autoScrollTask:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;

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

.field private timerStartDraw:J

.field private touchMode:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

.field private xMidPoint:F

.field private yMidPoint:F


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;F)V
    .locals 2
    .param p1, "autoScrollTask"    # Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;
    .param p2, "callback"    # Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;
    .param p3, "displayDensity"    # F

    const-string v0, "autoScrollTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->autoScrollTask:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;

    iput-object p2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;

    iput p3, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->displayDensity:F

    .line 56
    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr v0, p3

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->drawerEdgeSize:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->autoScroll:Z

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->recentTouchEventsData:Ljava/util/List;

    .line 68
    nop

    .line 69
    sget-object v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;->DRAW:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    iput-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->touchMode:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    .line 70
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    .line 71
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventTouchPoint:Landroid/graphics/PointF;

    .line 72
    return-void
.end method

.method private final calculateMidPoint(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iput v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->xMidPoint:F

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->yMidPoint:F

    .line 88
    return-void
.end method

.method private final calculatePointerDistance(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 81
    .local v1, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v0, v2

    .line 82
    .local v0, "y":F
    float-to-double v2, v1

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private final handleActionMove(Lorg/catrobat/paintroid/tools/Tool;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "currentTool"    # Lorg/catrobat/paintroid/tools/Tool;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "xOld":F
    const/4 v1, 0x0

    .line 109
    .local v1, "yOld":F
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    .line 110
    if-eqz p1, :cond_6

    .line 111
    iget-object v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->recentTouchEventsData:Ljava/util/List;

    new-instance v4, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;-><init>(JFF)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->removeObsoleteTouchEventsData(J)V

    .line 113
    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/Tool;->handToolMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    invoke-virtual {p0}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->disableAutoScroll()V

    .line 115
    iget-object v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->touchMode:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    sget-object v4, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;->PINCH:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    if-ne v2, v4, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 117
    const/4 v1, 0x0

    .line 118
    sget-object v2, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;->DRAW:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    iput-object v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->touchMode:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    goto :goto_0

    .line 120
    :cond_0
    iget v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventX:F

    .line 121
    iget v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventY:F

    .line 122
    :goto_0
    nop

    .line 123
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v2, v4}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->newHandEvent(FF)V

    .line 124
    int-to-float v2, v3

    cmpl-float v3, v0, v2

    if-lez v3, :cond_1

    iget v3, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventX:F

    cmpg-float v3, v3, v0

    if-nez v3, :cond_2

    :cond_1
    cmpl-float v2, v1, v2

    if-lez v2, :cond_c

    iget v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventY:F

    cmpg-float v2, v2, v1

    if-eqz v2, :cond_c

    .line 125
    :cond_2
    iget-object v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;

    iget v3, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventX:F

    sub-float/2addr v3, v0

    iget v4, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventY:F

    sub-float/2addr v4, v1

    invoke-interface {v2, v3, v4}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;->translatePerspective(FF)V

    goto :goto_1

    .line 127
    :cond_3
    iget-object v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->touchMode:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    sget-object v3, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;->PINCH:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    if-eq v2, v3, :cond_5

    .line 128
    sget-object v2, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;->DRAW:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    iput-object v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->touchMode:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    .line 129
    iget-boolean v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->autoScroll:Z

    if-eqz v2, :cond_4

    .line 130
    invoke-direct {p0, p2}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->setEvenPointAndViewDimensionsForAutoScrollTask(Landroid/view/View;)V

    .line 132
    :cond_4
    iget-object v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    invoke-interface {p1, v2}, Lorg/catrobat/paintroid/tools/Tool;->handleMove(Landroid/graphics/PointF;)Z

    .line 133
    :cond_5
    goto :goto_1

    .line 110
    :cond_6
    return-void

    .line 135
    :cond_7
    invoke-virtual {p0}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->disableAutoScroll()V

    .line 136
    iget-object v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->touchMode:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    sget-object v4, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;->DRAW:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    if-ne v2, v4, :cond_8

    .line 137
    if-eqz p1, :cond_8

    sget-object v2, Lorg/catrobat/paintroid/tools/Tool$StateChange;->MOVE_CANCELED:Lorg/catrobat/paintroid/tools/Tool$StateChange;

    invoke-interface {p1, v2}, Lorg/catrobat/paintroid/tools/Tool;->resetInternalState(Lorg/catrobat/paintroid/tools/Tool$StateChange;)V

    .line 139
    :cond_8
    sget-object v2, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;->PINCH:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    iput-object v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->touchMode:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    .line 140
    iget v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->pointerDistance:F

    .line 141
    .local v2, "pointerDistanceOld":F
    invoke-direct {p0, p3}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->calculatePointerDistance(Landroid/view/MotionEvent;)F

    move-result v4

    iput v4, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->pointerDistance:F

    .line 142
    int-to-float v3, v3

    cmpl-float v5, v2, v3

    if-lez v5, :cond_9

    cmpg-float v5, v2, v4

    if-eqz v5, :cond_9

    .line 143
    div-float/2addr v4, v2

    .line 144
    .local v4, "scale":F
    iget-object v5, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;

    invoke-interface {v5, v4}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;->multiplyPerspectiveScale(F)V

    .line 146
    .end local v4    # "scale":F
    :cond_9
    iget v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->xMidPoint:F

    .line 147
    iget v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->yMidPoint:F

    .line 148
    invoke-direct {p0, p3}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->calculateMidPoint(Landroid/view/MotionEvent;)V

    .line 149
    cmpl-float v4, v0, v3

    if-lez v4, :cond_a

    iget v4, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->xMidPoint:F

    cmpg-float v4, v4, v0

    if-nez v4, :cond_b

    :cond_a
    cmpl-float v3, v1, v3

    if-lez v3, :cond_c

    iget v3, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->yMidPoint:F

    cmpg-float v3, v3, v1

    if-eqz v3, :cond_c

    .line 150
    :cond_b
    iget-object v3, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;

    iget v4, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->xMidPoint:F

    sub-float/2addr v4, v0

    iget v5, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->yMidPoint:F

    sub-float/2addr v5, v1

    invoke-interface {v3, v4, v5}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;->translatePerspective(FF)V

    .line 152
    .end local v2    # "pointerDistanceOld":F
    :cond_c
    :goto_1
    nop

    .line 153
    return-void
.end method

.method private final newHandEvent(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 75
    iput p1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventX:F

    .line 76
    iput p2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventY:F

    .line 77
    return-void
.end method

.method private final removeObsoleteTouchEventsData(J)V
    .locals 7
    .param p1, "timeStamp"    # J

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 218
    .local v0, "obsoleteTouchEventsData":Ljava/util/List;
    iget-object v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->recentTouchEventsData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;

    .line 219
    .local v2, "touchEventData":Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;
    invoke-virtual {v2}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->getTimeStamp()J

    move-result-wide v3

    sub-long v3, p1, v3

    const-wide/16 v5, 0x1e

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 220
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v2    # "touchEventData":Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;
    nop

    .line 218
    goto :goto_0

    .line 222
    .restart local v2    # "touchEventData":Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;
    :cond_0
    nop

    .line 225
    .end local v2    # "touchEventData":Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;
    :cond_1
    iget-object v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->recentTouchEventsData:Ljava/util/List;

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 226
    return-void
.end method

.method private final setEvenPointAndViewDimensionsForAutoScrollTask(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 102
    iget-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->autoScrollTask:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;

    iget-object v1, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventTouchPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventTouchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->setEventPoint(FF)V

    .line 103
    iget-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->autoScrollTask:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->setViewDimensions(II)V

    .line 104
    return-void
.end method


# virtual methods
.method public final disableAutoScroll()V
    .locals 1

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->autoScroll:Z

    .line 96
    iget-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->autoScrollTask:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->autoScrollTask:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->stop()V

    .line 99
    :cond_0
    return-void
.end method

.method public final enableAutoScroll()V
    .locals 1

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->autoScroll:Z

    .line 92
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "view"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "event"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    move-object v3, v1

    check-cast v3, Lorg/catrobat/paintroid/ui/DrawingSurface;

    .line 157
    .local v3, "drawingSurface":Lorg/catrobat/paintroid/ui/DrawingSurface;
    iget-object v4, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;

    invoke-interface {v4}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;->getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v4

    .line 158
    .local v4, "currentTool":Lorg/catrobat/paintroid/tools/Tool;
    iget-object v5, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 159
    iget-object v5, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, v5, Landroid/graphics/PointF;->y:F

    .line 160
    iget-object v5, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventTouchPoint:Landroid/graphics/PointF;

    iget-object v6, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 161
    iget-object v5, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventTouchPoint:Landroid/graphics/PointF;

    iget-object v6, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iput v6, v5, Landroid/graphics/PointF;->y:F

    .line 162
    iget-object v5, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;

    iget-object v6, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    invoke-interface {v5, v6}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;->convertToCanvasFromSurface(Landroid/graphics/PointF;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_7

    if-eq v5, v7, :cond_1

    const/4 v8, 0x2

    if-eq v5, v8, :cond_0

    const/4 v8, 0x3

    if-eq v5, v8, :cond_1

    goto/16 :goto_1

    .line 176
    :cond_0
    invoke-direct {v0, v4, v1, v2}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->handleActionMove(Lorg/catrobat/paintroid/tools/Tool;Landroid/view/View;Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 178
    :cond_1
    iget-object v5, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->autoScrollTask:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;

    invoke-virtual {v5}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 179
    iget-object v5, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->autoScrollTask:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;

    invoke-virtual {v5}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->stop()V

    .line 181
    :cond_2
    iget-object v5, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->touchMode:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    sget-object v8, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;->DRAW:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    const/4 v9, 0x0

    if-ne v5, v8, :cond_5

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->timerStartDraw:J

    sub-long/2addr v10, v12

    .line 183
    .local v10, "drawingTime":J
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-direct {v0, v12, v13}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->removeObsoleteTouchEventsData(J)V

    .line 184
    const/4 v5, 0x0

    .line 185
    .local v5, "dX":F
    const/4 v8, 0x0

    .line 186
    .local v8, "dY":F
    iget-object v12, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->recentTouchEventsData:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-le v12, v7, :cond_3

    .line 187
    iget-object v12, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->recentTouchEventsData:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;

    .line 188
    .local v6, "oldestEntry":Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-virtual {v6}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->getXCoordinate()F

    move-result v13

    sub-float/2addr v12, v13

    .line 189
    .local v12, "distanceCorrectionX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    invoke-virtual {v6}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;->getYCoordinate()F

    move-result v14

    sub-float/2addr v13, v14

    .line 190
    .local v13, "distanceCorrectionY":F
    mul-float v14, v12, v12

    mul-float v15, v13, v13

    add-float/2addr v14, v15

    .line 191
    .local v14, "distance":F
    const/high16 v15, 0x42480000    # 50.0f

    iget v7, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->displayDensity:F

    mul-float/2addr v7, v15

    cmpg-float v7, v14, v7

    if-gez v7, :cond_3

    cmpg-float v7, v14, v9

    if-eqz v7, :cond_3

    .line 192
    move v5, v12

    .line 193
    move v8, v13

    .line 196
    .end local v6    # "oldestEntry":Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;
    .end local v12    # "distanceCorrectionX":F
    .end local v13    # "distanceCorrectionY":F
    .end local v14    # "distance":F
    :cond_3
    iget-object v6, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v7, v5

    iput v7, v6, Landroid/graphics/PointF;->x:F

    .line 197
    iget-object v6, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->y:F

    .line 198
    iget-object v6, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->callback:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;

    iget-object v7, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    invoke-interface {v6, v7}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$DrawingSurfaceListenerCallback;->convertToCanvasFromSurface(Landroid/graphics/PointF;)V

    .line 199
    if-eqz v4, :cond_4

    invoke-interface {v4, v10, v11}, Lorg/catrobat/paintroid/tools/Tool;->setDrawTime(J)V

    .line 200
    :cond_4
    if-eqz v4, :cond_6

    iget-object v6, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    invoke-interface {v4, v6}, Lorg/catrobat/paintroid/tools/Tool;->handleUp(Landroid/graphics/PointF;)Z

    goto :goto_0

    .line 202
    .end local v5    # "dX":F
    .end local v8    # "dY":F
    .end local v10    # "drawingTime":J
    :cond_5
    if-eqz v4, :cond_6

    sget-object v5, Lorg/catrobat/paintroid/tools/Tool$StateChange;->MOVE_CANCELED:Lorg/catrobat/paintroid/tools/Tool$StateChange;

    invoke-interface {v4, v5}, Lorg/catrobat/paintroid/tools/Tool;->resetInternalState(Lorg/catrobat/paintroid/tools/Tool$StateChange;)V

    .line 203
    :cond_6
    :goto_0
    nop

    .line 204
    iput v9, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->pointerDistance:F

    .line 205
    iput v9, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->xMidPoint:F

    .line 206
    iput v9, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->yMidPoint:F

    .line 207
    iput v9, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventX:F

    .line 208
    iput v9, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventY:F

    .line 209
    sget-object v5, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;->DRAW:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    iput-object v5, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->touchMode:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchMode;

    goto :goto_1

    .line 165
    :cond_7
    iget-object v5, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventTouchPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v7, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->drawerEdgeSize:I

    int-to-float v7, v7

    cmpg-float v5, v5, v7

    if-ltz v5, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v7, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->eventTouchPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v7

    iget v7, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->drawerEdgeSize:I

    int-to-float v7, v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_8

    goto :goto_2

    .line 168
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->timerStartDraw:J

    .line 169
    iget-object v5, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->recentTouchEventsData:Ljava/util/List;

    new-instance v6, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$TouchEventData;-><init>(JFF)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    if-eqz v4, :cond_9

    iget-object v5, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->canvasTouchPoint:Landroid/graphics/PointF;

    invoke-interface {v4, v5}, Lorg/catrobat/paintroid/tools/Tool;->handleDown(Landroid/graphics/PointF;)Z

    .line 171
    :cond_9
    iget-boolean v5, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->autoScroll:Z

    if-eqz v5, :cond_a

    .line 172
    invoke-direct/range {p0 .. p1}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->setEvenPointAndViewDimensionsForAutoScrollTask(Landroid/view/View;)V

    .line 173
    iget-object v5, v0, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener;->autoScrollTask:Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;

    invoke-virtual {v5}, Lorg/catrobat/paintroid/listener/DrawingSurfaceListener$AutoScrollTask;->start()V

    .line 211
    :cond_a
    :goto_1
    nop

    .line 212
    invoke-virtual {v3}, Lorg/catrobat/paintroid/ui/DrawingSurface;->refreshDrawingSurface()V

    .line 213
    const/4 v5, 0x1

    return v5

    .line 166
    :cond_b
    :goto_2
    return v6
.end method
