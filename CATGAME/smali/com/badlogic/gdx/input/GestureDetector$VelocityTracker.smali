.class Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/input/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VelocityTracker"
.end annotation


# instance fields
.field deltaX:F

.field deltaY:F

.field lastTime:J

.field lastX:F

.field lastY:F

.field meanTime:[J

.field meanX:[F

.field meanY:[F

.field numSamples:I

.field sampleSize:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    const/16 v0, 0xa

    iput v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    .line 404
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanX:[F

    .line 405
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanY:[F

    .line 406
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanTime:[J

    return-void
.end method

.method private getAverage([FI)F
    .locals 3
    .param p1, "values"    # [F
    .param p2, "numSamples"    # I

    .line 451
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 452
    const/4 v0, 0x0

    .line 453
    .local v0, "sum":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 454
    aget v2, p1, v1

    add-float/2addr v0, v2

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    .end local v1    # "i":I
    :cond_0
    int-to-float v1, p2

    div-float v1, v0, v1

    return v1
.end method

.method private getAverage([JI)J
    .locals 5
    .param p1, "values"    # [J
    .param p2, "numSamples"    # I

    .line 460
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 461
    const-wide/16 v0, 0x0

    .line 462
    .local v0, "sum":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 463
    aget-wide v3, p1, v2

    add-long/2addr v0, v3

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 465
    .end local v2    # "i":I
    :cond_0
    if-nez p2, :cond_1

    const-wide/16 v2, 0x0

    return-wide v2

    .line 466
    :cond_1
    int-to-long v2, p2

    div-long v2, v0, v2

    return-wide v2
.end method

.method private getSum([FI)F
    .locals 3
    .param p1, "values"    # [F
    .param p2, "numSamples"    # I

    .line 470
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "sum":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 473
    aget v2, p1, v1

    add-float/2addr v0, v2

    .line 472
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 475
    .end local v1    # "i":I
    :cond_0
    if-nez p2, :cond_1

    const/4 v1, 0x0

    return v1

    .line 476
    :cond_1
    return v0
.end method


# virtual methods
.method public getVelocityX()F
    .locals 4

    .line 437
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanX:[F

    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getAverage([FI)F

    move-result v0

    .line 438
    .local v0, "meanX":F
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanTime:[J

    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getAverage([JI)J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v2

    .line 439
    .local v1, "meanTime":F
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    return v2

    .line 440
    :cond_0
    div-float v2, v0, v1

    return v2
.end method

.method public getVelocityY()F
    .locals 4

    .line 444
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanY:[F

    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getAverage([FI)F

    move-result v0

    .line 445
    .local v0, "meanY":F
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanTime:[J

    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getAverage([JI)J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v2

    .line 446
    .local v1, "meanTime":F
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    return v2

    .line 447
    :cond_0
    div-float v2, v0, v1

    return v2
.end method

.method public start(FFJ)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "timeStamp"    # J

    .line 409
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastX:F

    .line 410
    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastY:F

    .line 411
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaX:F

    .line 412
    iput v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaY:F

    .line 413
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    .line 414
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    if-ge v1, v2, :cond_0

    .line 415
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanX:[F

    aput v0, v2, v1

    .line 416
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanY:[F

    aput v0, v2, v1

    .line 417
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanTime:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    .end local v1    # "i":I
    :cond_0
    iput-wide p3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastTime:J

    .line 420
    return-void
.end method

.method public update(FFJ)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "currTime"    # J

    .line 423
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastX:F

    sub-float v0, p1, v0

    iput v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaX:F

    .line 424
    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastY:F

    sub-float v1, p2, v1

    iput v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaY:F

    .line 425
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastX:F

    .line 426
    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastY:F

    .line 427
    iget-wide v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastTime:J

    sub-long v2, p3, v2

    .line 428
    .local v2, "deltaTime":J
    iput-wide p3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastTime:J

    .line 429
    iget v4, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    iget v5, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    rem-int v5, v4, v5

    .line 430
    .local v5, "index":I
    iget-object v6, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanX:[F

    aput v0, v6, v5

    .line 431
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanY:[F

    aput v1, v0, v5

    .line 432
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanTime:[J

    aput-wide v2, v0, v5

    .line 433
    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    .line 434
    return-void
.end method
