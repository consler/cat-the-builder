.class public Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;
.super Ljava/lang/Object;
.source "AndroidMouseHandler.java"


# instance fields
.field private deltaX:I

.field private deltaY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaX:I

    .line 33
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaY:I

    return-void
.end method

.method private logAction(I)V
    .locals 4
    .param p1, "action"    # I

    .line 67
    const-string v0, ""

    .line 68
    .local v0, "actionStr":Ljava/lang/String;
    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    .line 69
    const-string v0, "HOVER_ENTER"

    goto :goto_0

    .line 70
    :cond_0
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 71
    const-string v0, "HOVER_MOVE"

    goto :goto_0

    .line 72
    :cond_1
    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    .line 73
    const-string v0, "HOVER_EXIT"

    goto :goto_0

    .line 74
    :cond_2
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    .line 75
    const-string v0, "SCROLL"

    goto :goto_0

    .line 77
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AndroidMouseHandler"

    invoke-interface {v1, v3, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIJ)V
    .locals 2
    .param p1, "input"    # Lcom/badlogic/gdx/backends/android/AndroidInput;
    .param p2, "type"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "scrollAmount"    # I
    .param p6, "timeStamp"    # J

    .line 82
    iget-object v0, p1, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;

    .line 83
    .local v0, "event":Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;
    iput-wide p6, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->timeStamp:J

    .line 84
    iput p3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->x:I

    .line 85
    iput p4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->y:I

    .line 86
    iput p2, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->type:I

    .line 87
    iput p5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->scrollAmount:I

    .line 88
    iget-object v1, p1, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/AndroidInput;)Z
    .locals 16
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "input"    # Lcom/badlogic/gdx/backends/android/AndroidInput;

    .line 36
    move-object/from16 v9, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 38
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v10, v0, 0xff

    .line 40
    .local v10, "action":I
    const/4 v11, 0x0

    .local v11, "x":I
    const/4 v12, 0x0

    .line 41
    .local v12, "y":I
    const/4 v13, 0x0

    .line 43
    .local v13, "scrollAmount":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 44
    .local v14, "timeStamp":J
    monitor-enter p2

    .line 45
    const/4 v0, 0x7

    if-eq v10, v0, :cond_2

    const/16 v0, 0x8

    if-eq v10, v0, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    const/16 v0, 0x9

    move-object/from16 v7, p1

    :try_start_0
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    neg-float v0, v0

    float-to-int v13, v0

    .line 58
    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v6, v13

    move-wide v7, v14

    invoke-direct/range {v1 .. v8}, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIJ)V

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v11, v0

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v12, v0

    .line 49
    iget v0, v9, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaX:I

    if-ne v11, v0, :cond_3

    iget v0, v9, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaY:I

    if-eq v12, v0, :cond_4

    .line 50
    :cond_3
    const/4 v3, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v4, v11

    move v5, v12

    move-wide v7, v14

    invoke-direct/range {v1 .. v8}, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIJ)V

    .line 51
    iput v11, v9, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaX:I

    .line 52
    iput v12, v9, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaY:I

    .line 61
    :cond_4
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 63
    const/4 v0, 0x1

    return v0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
