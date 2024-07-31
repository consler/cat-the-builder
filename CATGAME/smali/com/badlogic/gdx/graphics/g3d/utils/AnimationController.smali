.class public Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;
.super Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;
.source "AnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;,
        Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    }
.end annotation


# instance fields
.field public allowSameAnimation:Z

.field protected final animationPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;",
            ">;"
        }
    .end annotation
.end field

.field public current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

.field public inAction:Z

.field private justChangedAnimation:Z

.field public paused:Z

.field public previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

.field public queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

.field public queuedTransitionTime:F

.field public transitionCurrentTime:F

.field public transitionTargetTime:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;)V
    .locals 1
    .param p1, "target"    # Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    .line 137
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;-><init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;)V

    .line 106
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$1;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->justChangedAnimation:Z

    .line 138
    return-void
.end method

.method private obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 3
    .param p1, "anim"    # Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .param p2, "offset"    # F
    .param p3, "duration"    # F
    .param p4, "loopCount"    # I
    .param p5, "speed"    # F
    .param p6, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .line 142
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 144
    .local v0, "result":Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    .line 145
    iput-object p6, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->listener:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .line 146
    iput p4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    .line 147
    iput p5, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->speed:F

    .line 148
    iput p2, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    .line 149
    const/4 v1, 0x0

    cmpg-float v2, p3, v1

    if-gez v2, :cond_1

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    sub-float/2addr v2, p2

    goto :goto_0

    :cond_1
    move v2, p3

    :goto_0
    iput v2, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    .line 150
    cmpg-float v2, p5, v1

    if-gez v2, :cond_2

    iget v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    :cond_2
    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    .line 151
    return-object v0
.end method

.method private obtain(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 7
    .param p1, "anim"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 163
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    iget v4, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    iget v5, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->speed:F

    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->listener:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method private obtain(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "offset"    # F
    .param p3, "duration"    # F
    .param p4, "loopCount"    # I
    .param p5, "speed"    # F
    .param p6, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .line 156
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->target:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getAnimation(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    move-result-object v0

    .line 158
    .local v0, "anim":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    if-eqz v0, :cond_1

    .line 159
    move-object v1, p0

    move-object v2, v0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v1

    return-object v1

    .line 158
    :cond_1
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown animation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected action(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 1
    .param p1, "anim"    # Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .param p2, "offset"    # F
    .param p3, "duration"    # F
    .param p4, "loopCount"    # I
    .param p5, "speed"    # F
    .param p6, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p7, "transitionTime"    # F

    .line 472
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->action(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method protected action(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 2
    .param p1, "anim"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .param p2, "transitionTime"    # F

    .line 477
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-ltz v0, :cond_4

    .line 478
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 481
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    .line 482
    .local v0, "toQueue":Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    .line 483
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 484
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    .line 485
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queue(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    goto :goto_2

    .line 479
    .end local v0    # "toQueue":Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 487
    :cond_3
    :goto_2
    return-object p1

    .line 477
    :cond_4
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "An action cannot be continuous"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public action(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "offset"    # F
    .param p3, "duration"    # F
    .param p4, "loopCount"    # I
    .param p5, "speed"    # F
    .param p6, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p7, "transitionTime"    # F

    .line 466
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->action(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public action(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "loopCount"    # I
    .param p3, "speed"    # F
    .param p4, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p5, "transitionTime"    # F

    .line 448
    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->action(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method protected animate(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 1
    .param p1, "anim"    # Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .param p2, "offset"    # F
    .param p3, "duration"    # F
    .param p4, "loopCount"    # I
    .param p5, "speed"    # F
    .param p6, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p7, "transitionTime"    # F

    .line 355
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method protected animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 2
    .param p1, "anim"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .param p2, "transitionTime"    # F

    .line 360
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-nez v0, :cond_0

    .line 361
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    goto :goto_0

    .line 362
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    if-eqz v1, :cond_1

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queue(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    goto :goto_0

    .line 364
    :cond_1
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->allowSameAnimation:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    if-ne v0, v1, :cond_2

    .line 365
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    iput v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    .line 366
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 367
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    goto :goto_0

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_3

    .line 370
    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->removeAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;)V

    .line 371
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 373
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 374
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 375
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionCurrentTime:F

    .line 376
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionTargetTime:F

    .line 378
    :goto_0
    return-object p1
.end method

.method public animate(Ljava/lang/String;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "transitionTime"    # F

    .line 293
    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public animate(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "offset"    # F
    .param p3, "duration"    # F
    .param p4, "loopCount"    # I
    .param p5, "speed"    # F
    .param p6, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p7, "transitionTime"    # F

    .line 349
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public animate(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "loopCount"    # I
    .param p3, "speed"    # F
    .param p4, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p5, "transitionTime"    # F

    .line 331
    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public animate(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "loopCount"    # I
    .param p3, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p4, "transitionTime"    # F

    .line 315
    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public animate(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p3, "transitionTime"    # F

    .line 303
    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method protected queue(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 1
    .param p1, "anim"    # Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .param p2, "offset"    # F
    .param p3, "duration"    # F
    .param p4, "loopCount"    # I
    .param p5, "speed"    # F
    .param p6, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p7, "transitionTime"    # F

    .line 419
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queue(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method protected queue(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 2
    .param p1, "anim"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .param p2, "transitionTime"    # F

    .line 424
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 428
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 429
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queuedTransitionTime:F

    .line 430
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    const/4 v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    goto :goto_1

    .line 425
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 432
    :cond_3
    :goto_1
    return-object p1
.end method

.method public queue(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "offset"    # F
    .param p3, "duration"    # F
    .param p4, "loopCount"    # I
    .param p5, "speed"    # F
    .param p6, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p7, "transitionTime"    # F

    .line 413
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queue(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public queue(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "loopCount"    # I
    .param p3, "speed"    # F
    .param p4, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p5, "transitionTime"    # F

    .line 394
    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queue(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method protected setAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 1
    .param p1, "anim"    # Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .param p2, "offset"    # F
    .param p3, "duration"    # F
    .param p4, "loopCount"    # I
    .param p5, "speed"    # F
    .param p6, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .line 268
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method protected setAnimation(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 2
    .param p1, "anim"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 273
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-nez v0, :cond_0

    .line 274
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    goto :goto_1

    .line 276
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->allowSameAnimation:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    if-ne v0, v1, :cond_1

    .line 277
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    iput v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->removeAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;)V

    .line 280
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 281
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 283
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->justChangedAnimation:Z

    .line 284
    return-object p1
.end method

.method public setAnimation(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 201
    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public setAnimation(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "offset"    # F
    .param p3, "duration"    # F
    .param p4, "loopCount"    # I
    .param p5, "speed"    # F
    .param p6, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .line 262
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public setAnimation(Ljava/lang/String;I)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "loopCount"    # I

    .line 211
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "loopCount"    # I
    .param p3, "speed"    # F
    .param p4, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .line 245
    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public setAnimation(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "loopCount"    # I
    .param p3, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .line 231
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public setAnimation(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .line 220
    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public update(F)V
    .locals 8
    .param p1, "delta"    # F

    .line 169
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->paused:Z

    if-eqz v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionCurrentTime:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionCurrentTime:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionTargetTime:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 171
    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->removeAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;)V

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->justChangedAnimation:Z

    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 174
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 176
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->justChangedAnimation:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->target:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    .line 178
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->justChangedAnimation:Z

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_6

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    if-nez v0, :cond_3

    goto :goto_1

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->update(F)F

    move-result v0

    .line 182
    .local v0, "remain":F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v3, :cond_4

    .line 183
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    .line 184
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queuedTransitionTime:F

    invoke-virtual {p0, v3, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 185
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 186
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->update(F)V

    .line 187
    return-void

    .line 189
    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v1, :cond_5

    .line 190
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    add-float v4, v1, v2

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    add-float v6, v1, v2

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionCurrentTime:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionTargetTime:F

    div-float v7, v1, v2

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->applyAnimations(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FLcom/badlogic/gdx/graphics/g3d/model/Animation;FF)V

    goto :goto_0

    .line 193
    :cond_5
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    add-float/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->applyAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;F)V

    .line 194
    :goto_0
    return-void

    .line 180
    .end local v0    # "remain":F
    :cond_6
    :goto_1
    return-void
.end method
