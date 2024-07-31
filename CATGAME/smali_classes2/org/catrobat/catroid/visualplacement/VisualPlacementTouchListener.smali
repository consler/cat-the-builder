.class public Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;
.super Ljava/lang/Object;
.source "VisualPlacementTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;,
        Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;
    }
.end annotation


# static fields
.field private static final JITTER_DELAY_THRESHOLD:J = 0x1eL

.field private static final JITTER_DISTANCE_THRESHOLD:F = 100.0f

.field private static final TAP_DELAY_THRESHOLD:J = 0x64L


# instance fields
.field private mode:Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;

.field private previousX:F

.field private previousY:F

.field private recentTouchEventsData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;->recentTouchEventsData:Ljava/util/List;

    return-void
.end method

.method private removeObsoleteTouchEventsData(J)V
    .locals 7
    .param p1, "timeStamp"    # J

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, "obsoleteTouchEventsData":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;->recentTouchEventsData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;

    .line 120
    .local v2, "touchEventData":Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;
    if-eqz v2, :cond_0

    .line 121
    invoke-static {v2}, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;->access$300(Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;)J

    move-result-wide v3

    sub-long v3, p1, v3

    const-wide/16 v5, 0x1e

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 122
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v2    # "touchEventData":Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;
    :cond_0
    goto :goto_0

    .line 128
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;->recentTouchEventsData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 129
    return-void
.end method

.method private setMode(Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;)V
    .locals 0
    .param p1, "mode"    # Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;

    .line 55
    iput-object p1, p0, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;->mode:Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;

    .line 56
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/widget/ImageView;Landroid/view/MotionEvent;Lorg/catrobat/catroid/visualplacement/CoordinateInterface;)Z
    .locals 21
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "coordinateInterface"    # Lorg/catrobat/catroid/visualplacement/CoordinateInterface;

    .line 59
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    const/4 v0, 0x0

    move-object/from16 v10, p2

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-nez v1, :cond_6

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    .line 61
    .local v11, "currentX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    .line 62
    .local v12, "currentY":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    .line 64
    .local v13, "motionEventTime":J
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v15, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v15, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto/16 :goto_0

    .line 95
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    sub-long v16, v13, v0

    .line 96
    .local v16, "delayTime":J
    const-wide/16 v0, 0x64

    cmp-long v0, v16, v0

    if-lez v0, :cond_5

    .line 97
    sget-object v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;->MOVE:Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;

    invoke-direct {v7, v0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;->setMode(Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;)V

    .line 98
    iget v0, v7, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;->previousX:F

    sub-float v18, v11, v0

    .line 99
    .local v18, "dX":F
    iget v0, v7, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;->previousY:F

    sub-float v19, v12, v0

    .line 100
    .local v19, "dY":F
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getX()F

    move-result v0

    add-float v0, v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getY()F

    move-result v0

    add-float v0, v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setY(F)V

    .line 102
    iget-object v6, v7, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;->recentTouchEventsData:Ljava/util/List;

    new-instance v5, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;

    const/16 v20, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-wide v2, v13

    move v4, v11

    move-object v15, v5

    move v5, v12

    move-object v10, v6

    move-object/from16 v6, v20

    invoke-direct/range {v0 .. v6}, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;-><init>(Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;JFFLorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$1;)V

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iput v11, v7, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;->previousX:F

    .line 104
    iput v12, v7, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;->previousY:F

    .line 105
    invoke-direct {v7, v13, v14}, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;->removeObsoleteTouchEventsData(J)V

    goto/16 :goto_0

    .line 73
    .end local v16    # "delayTime":J
    .end local v18    # "dX":F
    .end local v19    # "dY":F
    :cond_1
    iget-object v1, v7, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;->mode:Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;

    sget-object v2, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;->TAP:Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;

    if-ne v1, v2, :cond_2

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setY(F)V

    goto/16 :goto_0

    .line 77
    :cond_2
    invoke-direct {v7, v13, v14}, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;->removeObsoleteTouchEventsData(J)V

    .line 78
    iget v1, v7, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;->previousX:F

    sub-float v1, v11, v1

    .line 79
    .local v1, "dX":F
    iget v2, v7, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;->previousY:F

    sub-float v2, v12, v2

    .line 80
    .local v2, "dY":F
    iget-object v3, v7, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;->recentTouchEventsData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v7, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;->recentTouchEventsData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 81
    iget-object v3, v7, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;->recentTouchEventsData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;

    .line 82
    .local v0, "oldestEntry":Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;
    invoke-static {v0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;->access$100(Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;)F

    move-result v3

    sub-float v3, v11, v3

    .line 83
    .local v3, "distanceCorrectionX":F
    invoke-static {v0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;->access$200(Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;)F

    move-result v4

    sub-float v4, v12, v4

    .line 84
    .local v4, "distanceCorrectionY":F
    mul-float v5, v3, v3

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    float-to-double v5, v5

    .line 85
    .local v5, "distance":D
    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    cmpg-double v10, v5, v15

    if-gez v10, :cond_3

    const-wide/16 v15, 0x0

    cmpl-double v10, v5, v15

    if-eqz v10, :cond_3

    .line 86
    sub-float/2addr v1, v3

    .line 87
    sub-float/2addr v2, v4

    .line 90
    .end local v0    # "oldestEntry":Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;
    .end local v3    # "distanceCorrectionX":F
    .end local v4    # "distanceCorrectionY":F
    .end local v5    # "distance":D
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getX()F

    move-result v0

    add-float/2addr v0, v1

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getY()F

    move-result v0

    add-float/2addr v0, v2

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setY(F)V

    .line 93
    .end local v1    # "dX":F
    .end local v2    # "dY":F
    goto :goto_0

    .line 66
    :cond_4
    sget-object v0, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;->TAP:Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;

    invoke-direct {v7, v0}, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;->setMode(Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$Mode;)V

    .line 67
    iput v11, v7, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;->previousX:F

    .line 68
    iput v12, v7, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;->previousY:F

    .line 69
    iget-object v10, v7, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;->recentTouchEventsData:Ljava/util/List;

    new-instance v15, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;

    const/4 v6, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-wide v2, v13

    move v4, v11

    move v5, v12

    invoke-direct/range {v0 .. v6}, Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$TouchEventData;-><init>(Lorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener;JFFLorg/catrobat/catroid/visualplacement/VisualPlacementTouchListener$1;)V

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    nop

    .line 109
    :cond_5
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getX()F

    move-result v0

    invoke-interface {v9, v0}, Lorg/catrobat/catroid/visualplacement/CoordinateInterface;->setXCoordinate(F)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getY()F

    move-result v0

    neg-float v0, v0

    invoke-interface {v9, v0}, Lorg/catrobat/catroid/visualplacement/CoordinateInterface;->setYCoordinate(F)V

    .line 111
    const/4 v0, 0x1

    return v0

    .line 113
    .end local v11    # "currentX":F
    .end local v12    # "currentY":F
    .end local v13    # "motionEventTime":J
    :cond_6
    return v0
.end method
