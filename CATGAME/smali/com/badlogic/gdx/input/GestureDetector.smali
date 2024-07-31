.class public Lcom/badlogic/gdx/input/GestureDetector;
.super Lcom/badlogic/gdx/InputAdapter;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;,
        Lcom/badlogic/gdx/input/GestureDetector$GestureAdapter;,
        Lcom/badlogic/gdx/input/GestureDetector$GestureListener;
    }
.end annotation


# instance fields
.field private gestureStartTime:J

.field private inTapRectangle:Z

.field private final initialPointer1:Lcom/badlogic/gdx/math/Vector2;

.field private final initialPointer2:Lcom/badlogic/gdx/math/Vector2;

.field private lastTapButton:I

.field private lastTapPointer:I

.field private lastTapTime:J

.field private lastTapX:F

.field private lastTapY:F

.field final listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

.field longPressFired:Z

.field private longPressSeconds:F

.field private final longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

.field private maxFlingDelay:J

.field private panning:Z

.field private pinching:Z

.field pointer1:Lcom/badlogic/gdx/math/Vector2;

.field private final pointer2:Lcom/badlogic/gdx/math/Vector2;

.field private tapCount:I

.field private tapCountInterval:J

.field private tapRectangleCenterX:F

.field private tapRectangleCenterY:F

.field private tapRectangleHeight:F

.field private tapRectangleWidth:F

.field private final tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;


# direct methods
.method public constructor <init>(FFFFFLcom/badlogic/gdx/input/GestureDetector$GestureListener;)V
    .locals 3
    .param p1, "halfTapRectangleWidth"    # F
    .param p2, "halfTapRectangleHeight"    # F
    .param p3, "tapCountInterval"    # F
    .param p4, "longPressDuration"    # F
    .param p5, "maxFlingDelay"    # F
    .param p6, "listener"    # Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    .line 90
    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    .line 47
    new-instance v0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-direct {v0}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    .line 53
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    .line 55
    new-instance v0, Lcom/badlogic/gdx/input/GestureDetector$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/input/GestureDetector$1;-><init>(Lcom/badlogic/gdx/input/GestureDetector;)V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    .line 91
    if-eqz p6, :cond_0

    .line 92
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleWidth:F

    .line 93
    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleHeight:F

    .line 94
    const v0, 0x4e6e6b28    # 1.0E9f

    mul-float v1, p3, v0

    float-to-long v1, v1

    iput-wide v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCountInterval:J

    .line 95
    iput p4, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressSeconds:F

    .line 96
    mul-float/2addr v0, p5

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->maxFlingDelay:J

    .line 97
    iput-object p6, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    .line 98
    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(FFFFLcom/badlogic/gdx/input/GestureDetector$GestureListener;)V
    .locals 7
    .param p1, "halfTapSquareSize"    # F
    .param p2, "tapCountInterval"    # F
    .param p3, "longPressDuration"    # F
    .param p4, "maxFlingDelay"    # F
    .param p5, "listener"    # Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    .line 77
    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/input/GestureDetector;-><init>(FFFFFLcom/badlogic/gdx/input/GestureDetector$GestureListener;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/input/GestureDetector$GestureListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    .line 65
    const/high16 v1, 0x41a00000    # 20.0f

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3f8ccccd    # 1.1f

    const v4, 0x3e19999a    # 0.15f

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/input/GestureDetector;-><init>(FFFFLcom/badlogic/gdx/input/GestureDetector$GestureListener;)V

    .line 66
    return-void
.end method

.method private isWithinTapRectangle(FFFF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .line 272
    sub-float v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleWidth:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sub-float v0, p2, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleHeight:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressFired:Z

    .line 246
    return-void
.end method

.method public invalidateTapSquare()V
    .locals 1

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapRectangle:Z

    .line 278
    return-void
.end method

.method public isLongPressed()Z
    .locals 1

    .line 250
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressSeconds:F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/input/GestureDetector;->isLongPressed(F)Z

    move-result v0

    return v0
.end method

.method public isLongPressed(F)Z
    .locals 6
    .param p1, "duration"    # F

    .line 256
    iget-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 257
    :cond_0
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    sub-long/2addr v2, v4

    const v0, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr v0, p1

    float-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isPanning()Z
    .locals 1

    .line 261
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    return v0
.end method

.method public reset()V
    .locals 3

    .line 265
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    .line 266
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    .line 267
    iput-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapRectangle:Z

    .line 268
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iput-wide v0, v2, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastTime:J

    .line 269
    return-void
.end method

.method public setLongPressSeconds(F)V
    .locals 0
    .param p1, "longPressSeconds"    # F

    .line 295
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressSeconds:F

    .line 296
    return-void
.end method

.method public setMaxFlingDelay(J)V
    .locals 0
    .param p1, "maxFlingDelay"    # J

    .line 299
    iput-wide p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->maxFlingDelay:J

    .line 300
    return-void
.end method

.method public setTapCountInterval(F)V
    .locals 2
    .param p1, "tapCountInterval"    # F

    .line 291
    const v0, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCountInterval:J

    .line 292
    return-void
.end method

.method public setTapRectangleSize(FF)V
    .locals 0
    .param p1, "halfTapRectangleWidth"    # F
    .param p2, "halfTapRectangleHeight"    # F

    .line 285
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleWidth:F

    .line 286
    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleHeight:F

    .line 287
    return-void
.end method

.method public setTapSquareSize(F)V
    .locals 0
    .param p1, "halfTapSquareSize"    # F

    .line 281
    invoke-virtual {p0, p1, p1}, Lcom/badlogic/gdx/input/GestureDetector;->setTapRectangleSize(FF)V

    .line 282
    return-void
.end method

.method public touchDown(FFII)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .line 106
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p3, v1, :cond_0

    return v0

    .line 108
    :cond_0
    if-nez p3, :cond_2

    .line 109
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 110
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    .line 111
    iget-object v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-virtual {v4, p1, p2, v2, v3}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->start(FFJ)V

    .line 112
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/Input;->isTouched(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapRectangle:Z

    .line 115
    iput-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    goto :goto_0

    .line 121
    :cond_1
    iput-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapRectangle:Z

    .line 122
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    .line 123
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressFired:Z

    .line 124
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleCenterX:F

    .line 125
    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleCenterY:F

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressSeconds:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    goto :goto_0

    .line 130
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 131
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapRectangle:Z

    .line 132
    iput-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 137
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->touchDown(FFII)Z

    move-result v0

    return v0
.end method

.method public touchDown(IIII)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .line 102
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/badlogic/gdx/input/GestureDetector;->touchDown(FFII)Z

    move-result v0

    return v0
.end method

.method public touchDragged(FFI)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .line 146
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p3, v0, :cond_0

    return v1

    .line 147
    :cond_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressFired:Z

    if-eqz v2, :cond_1

    return v1

    .line 149
    :cond_1
    if-nez p3, :cond_2

    .line 150
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0

    .line 152
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 155
    :goto_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    if-eqz v2, :cond_6

    .line 156
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    if-eqz v2, :cond_5

    .line 157
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->pinch(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v2

    .line 158
    .local v2, "result":Z
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v4

    iget-object v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->zoom(FF)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :cond_4
    :goto_1
    return v0

    .line 160
    .end local v2    # "result":Z
    :cond_5
    return v1

    .line 164
    :cond_6
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v3}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v3

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->update(FFJ)V

    .line 167
    iget-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapRectangle:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleCenterX:F

    iget v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleCenterY:F

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/badlogic/gdx/input/GestureDetector;->isWithinTapRectangle(FFFF)Z

    move-result v2

    if-nez v2, :cond_7

    .line 168
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 169
    iput-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapRectangle:Z

    .line 173
    :cond_7
    iget-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapRectangle:Z

    if-nez v2, :cond_8

    .line 174
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget v1, v1, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaX:F

    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget v2, v2, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaY:F

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->pan(FFFF)Z

    move-result v0

    return v0

    .line 178
    :cond_8
    return v1
.end method

.method public touchDragged(III)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pointer"    # I

    .line 142
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/badlogic/gdx/input/GestureDetector;->touchDragged(FFI)Z

    move-result v0

    return v0
.end method

.method public touchUp(FFII)Z
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .line 187
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p3, v0, :cond_0

    return v1

    .line 190
    :cond_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapRectangle:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleCenterX:F

    iget v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapRectangleCenterY:F

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/badlogic/gdx/input/GestureDetector;->isWithinTapRectangle(FFFF)Z

    move-result v2

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapRectangle:Z

    .line 192
    :cond_1
    iget-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    .line 193
    .local v2, "wasPanning":Z
    iput-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    .line 195
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 196
    iget-boolean v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressFired:Z

    if-eqz v3, :cond_2

    return v1

    .line 198
    :cond_2
    iget-boolean v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapRectangle:Z

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_5

    .line 200
    iget v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapButton:I

    if-ne v3, p4, :cond_3

    iget v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapPointer:I

    if-ne v3, p3, :cond_3

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapTime:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCountInterval:J

    cmp-long v3, v6, v8

    if-gtz v3, :cond_3

    iget v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapX:F

    iget v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapY:F

    .line 201
    invoke-direct {p0, p1, p2, v3, v6}, Lcom/badlogic/gdx/input/GestureDetector;->isWithinTapRectangle(FFFF)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iput v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCount:I

    .line 202
    :cond_4
    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCount:I

    .line 203
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapTime:J

    .line 204
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapX:F

    .line 205
    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapY:F

    .line 206
    iput p4, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapButton:I

    .line 207
    iput p3, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapPointer:I

    .line 208
    iput-wide v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCount:I

    invoke-interface {v0, p1, p2, v1, p4}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->tap(FFII)Z

    move-result v0

    return v0

    .line 212
    :cond_5
    iget-boolean v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    if-eqz v3, :cond_7

    .line 214
    iput-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    .line 215
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    invoke-interface {v3}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->pinchStop()V

    .line 216
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    .line 218
    if-nez p3, :cond_6

    .line 220
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v5, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v5}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v5

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->start(FFJ)V

    goto :goto_0

    .line 223
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v5, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v5}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v5

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->start(FFJ)V

    .line 225
    :goto_0
    return v1

    .line 229
    :cond_7
    const/4 v3, 0x0

    .line 230
    .local v3, "handled":Z
    if-eqz v2, :cond_8

    iget-boolean v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    invoke-interface {v6, p1, p2, p3, p4}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->panStop(FFII)Z

    move-result v3

    .line 233
    :cond_8
    iput-wide v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    .line 234
    sget-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v4}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v4

    .line 235
    .local v4, "time":J
    iget-object v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget-wide v6, v6, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastTime:J

    sub-long v6, v4, v6

    iget-wide v8, p0, Lcom/badlogic/gdx/input/GestureDetector;->maxFlingDelay:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_b

    .line 236
    iget-object v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-virtual {v6, p1, p2, v4, v5}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->update(FFJ)V

    .line 237
    iget-object v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object v7, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-virtual {v7}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getVelocityX()F

    move-result v7

    iget-object v8, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-virtual {v8}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getVelocityY()F

    move-result v8

    invoke-interface {v6, v7, v8, p4}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->fling(FFI)Z

    move-result v6

    if-nez v6, :cond_a

    if-eqz v3, :cond_9

    goto :goto_1

    :cond_9
    move v0, v1

    :cond_a
    :goto_1
    move v3, v0

    .line 239
    :cond_b
    return v3
.end method

.method public touchUp(IIII)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .line 183
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/badlogic/gdx/input/GestureDetector;->touchUp(FFII)Z

    move-result v0

    return v0
.end method
