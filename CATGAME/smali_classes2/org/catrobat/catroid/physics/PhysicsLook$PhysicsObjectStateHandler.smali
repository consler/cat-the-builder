.class Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;
.super Ljava/lang/Object;
.source "PhysicsLook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/physics/PhysicsLook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhysicsObjectStateHandler"
.end annotation


# instance fields
.field private fixConditions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;",
            ">;"
        }
    .end annotation
.end field

.field private fixed:Z

.field private glideToCondition:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;

.field private glideToIsActive:Z

.field private hangedUp:Z

.field private hangupConditions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;",
            ">;"
        }
    .end annotation
.end field

.field private nonColliding:Z

.field private nonCollidingConditions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;",
            ">;"
        }
    .end annotation
.end field

.field private positionCondition:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;

.field final synthetic this$0:Lorg/catrobat/catroid/physics/PhysicsLook;

.field private transparencyCondition:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;

.field private visibleCondition:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/physics/PhysicsLook;)V
    .locals 1

    .line 309
    iput-object p1, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->this$0:Lorg/catrobat/catroid/physics/PhysicsLook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->hangupConditions:Ljava/util/LinkedList;

    .line 296
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->nonCollidingConditions:Ljava/util/LinkedList;

    .line 297
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->fixConditions:Ljava/util/LinkedList;

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->glideToIsActive:Z

    .line 305
    iput-boolean v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->hangedUp:Z

    .line 306
    iput-boolean v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->fixed:Z

    .line 307
    iput-boolean v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->nonColliding:Z

    .line 311
    new-instance v0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler$1;

    invoke-direct {v0, p0, p1}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler$1;-><init>(Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;Lorg/catrobat/catroid/physics/PhysicsLook;)V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->positionCondition:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;

    .line 332
    new-instance v0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler$2;

    invoke-direct {v0, p0, p1}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler$2;-><init>(Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;Lorg/catrobat/catroid/physics/PhysicsLook;)V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->visibleCondition:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;

    .line 339
    new-instance v0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler$3;

    invoke-direct {v0, p0, p1}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler$3;-><init>(Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;Lorg/catrobat/catroid/physics/PhysicsLook;)V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->transparencyCondition:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;

    .line 346
    new-instance v0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler$4;

    invoke-direct {v0, p0, p1}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler$4;-><init>(Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;Lorg/catrobat/catroid/physics/PhysicsLook;)V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->glideToCondition:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;

    .line 353
    iget-object p1, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->hangupConditions:Ljava/util/LinkedList;

    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->transparencyCondition:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object p1, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->hangupConditions:Ljava/util/LinkedList;

    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->positionCondition:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object p1, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->hangupConditions:Ljava/util/LinkedList;

    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->visibleCondition:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object p1, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->hangupConditions:Ljava/util/LinkedList;

    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->glideToCondition:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object p1, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->nonCollidingConditions:Ljava/util/LinkedList;

    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->transparencyCondition:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object p1, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->nonCollidingConditions:Ljava/util/LinkedList;

    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->positionCondition:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object p1, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->nonCollidingConditions:Ljava/util/LinkedList;

    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->visibleCondition:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object p1, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->fixConditions:Ljava/util/LinkedList;

    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->glideToCondition:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 363
    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;Z)Z
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;
    .param p1, "x1"    # Z

    .line 293
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->checkHangup(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;)Z
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;

    .line 293
    iget-boolean v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->glideToIsActive:Z

    return v0
.end method

.method private checkFixed(Z)Z
    .locals 5
    .param p1, "record"    # Z

    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, "shouldBeFixed":Z
    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->fixConditions:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;

    .line 406
    .local v2, "fixedCondition":Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;
    invoke-interface {v2}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;->isTrue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    const/4 v0, 0x1

    .line 408
    goto :goto_1

    .line 410
    .end local v2    # "fixedCondition":Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;
    :cond_0
    goto :goto_0

    .line 411
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->fixed:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    .line 412
    .local v1, "deactivateFix":Z
    :goto_2
    iget-boolean v4, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->fixed:Z

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    .line 413
    .local v2, "activateFix":Z
    :goto_3
    if-eqz v1, :cond_4

    .line 414
    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->this$0:Lorg/catrobat/catroid/physics/PhysicsLook;

    invoke-static {v3}, Lorg/catrobat/catroid/physics/PhysicsLook;->access$100(Lorg/catrobat/catroid/physics/PhysicsLook;)Lorg/catrobat/catroid/physics/PhysicsObject;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/catrobat/catroid/physics/PhysicsObject;->deactivateFixed(Z)V

    goto :goto_4

    .line 415
    :cond_4
    if-eqz v2, :cond_5

    .line 416
    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->this$0:Lorg/catrobat/catroid/physics/PhysicsLook;

    invoke-static {v3}, Lorg/catrobat/catroid/physics/PhysicsLook;->access$100(Lorg/catrobat/catroid/physics/PhysicsLook;)Lorg/catrobat/catroid/physics/PhysicsObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/physics/PhysicsObject;->activateFixed()V

    .line 418
    :cond_5
    :goto_4
    iput-boolean v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->fixed:Z

    .line 419
    return v0
.end method

.method private checkHangup(Z)Z
    .locals 5
    .param p1, "record"    # Z

    .line 366
    const/4 v0, 0x0

    .line 367
    .local v0, "shouldBeHangedUp":Z
    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->hangupConditions:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;

    .line 368
    .local v2, "hangupCondition":Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;
    invoke-interface {v2}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;->isTrue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    const/4 v0, 0x1

    .line 370
    goto :goto_1

    .line 372
    .end local v2    # "hangupCondition":Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;
    :cond_0
    goto :goto_0

    .line 373
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->hangedUp:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    .line 374
    .local v1, "deactivateHangup":Z
    :goto_2
    iget-boolean v4, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->hangedUp:Z

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    .line 375
    .local v2, "activateHangup":Z
    :goto_3
    if-eqz v1, :cond_4

    .line 376
    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->this$0:Lorg/catrobat/catroid/physics/PhysicsLook;

    invoke-static {v3}, Lorg/catrobat/catroid/physics/PhysicsLook;->access$100(Lorg/catrobat/catroid/physics/PhysicsLook;)Lorg/catrobat/catroid/physics/PhysicsObject;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/catrobat/catroid/physics/PhysicsObject;->deactivateHangup(Z)V

    goto :goto_4

    .line 377
    :cond_4
    if-eqz v2, :cond_5

    .line 378
    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->this$0:Lorg/catrobat/catroid/physics/PhysicsLook;

    invoke-static {v3}, Lorg/catrobat/catroid/physics/PhysicsLook;->access$100(Lorg/catrobat/catroid/physics/PhysicsLook;)Lorg/catrobat/catroid/physics/PhysicsObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/physics/PhysicsObject;->activateHangup()V

    .line 380
    :cond_5
    :goto_4
    iput-boolean v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->hangedUp:Z

    .line 381
    return v0
.end method

.method private checkNonColliding(Z)Z
    .locals 5
    .param p1, "record"    # Z

    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, "shouldBeNonColliding":Z
    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->nonCollidingConditions:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;

    .line 387
    .local v2, "nonCollideCondition":Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;
    invoke-interface {v2}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;->isTrue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 388
    const/4 v0, 0x1

    .line 389
    goto :goto_1

    .line 391
    .end local v2    # "nonCollideCondition":Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;
    :cond_0
    goto :goto_0

    .line 392
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->nonColliding:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    .line 393
    .local v1, "deactivateNonColliding":Z
    :goto_2
    iget-boolean v4, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->nonColliding:Z

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    .line 394
    .local v2, "activateNonColliding":Z
    :goto_3
    if-eqz v1, :cond_4

    .line 395
    iget-object v4, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->this$0:Lorg/catrobat/catroid/physics/PhysicsLook;

    invoke-static {v4}, Lorg/catrobat/catroid/physics/PhysicsLook;->access$100(Lorg/catrobat/catroid/physics/PhysicsLook;)Lorg/catrobat/catroid/physics/PhysicsObject;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lorg/catrobat/catroid/physics/PhysicsObject;->deactivateNonColliding(ZZ)V

    goto :goto_4

    .line 396
    :cond_4
    if-eqz v2, :cond_5

    .line 397
    iget-object v4, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->this$0:Lorg/catrobat/catroid/physics/PhysicsLook;

    invoke-static {v4}, Lorg/catrobat/catroid/physics/PhysicsLook;->access$100(Lorg/catrobat/catroid/physics/PhysicsLook;)Lorg/catrobat/catroid/physics/PhysicsObject;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/catrobat/catroid/physics/PhysicsObject;->activateNonColliding(Z)V

    .line 399
    :cond_5
    :goto_4
    iput-boolean v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->nonColliding:Z

    .line 400
    return v0
.end method


# virtual methods
.method public activateGlideTo()V
    .locals 2

    .line 437
    iget-boolean v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->glideToIsActive:Z

    if-nez v0, :cond_0

    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->glideToIsActive:Z

    .line 439
    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->this$0:Lorg/catrobat/catroid/physics/PhysicsLook;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/physics/PhysicsLook;->updatePhysicsObjectState(Z)V

    .line 441
    :cond_0
    return-void
.end method

.method public deactivateGlideTo()V
    .locals 2

    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->glideToIsActive:Z

    .line 445
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->this$0:Lorg/catrobat/catroid/physics/PhysicsLook;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/physics/PhysicsLook;->updatePhysicsObjectState(Z)V

    .line 446
    return-void
.end method

.method public isHangedUp()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->hangedUp:Z

    return v0
.end method

.method public setNonColliding(Z)V
    .locals 1
    .param p1, "nonColliding"    # Z

    .line 453
    iget-boolean v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->nonColliding:Z

    if-eq v0, p1, :cond_0

    .line 454
    iput-boolean p1, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->nonColliding:Z

    .line 455
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->update(Z)V

    .line 457
    :cond_0
    return-void
.end method

.method public update(Z)V
    .locals 0
    .param p1, "record"    # Z

    .line 423
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->checkHangup(Z)Z

    .line 424
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->checkNonColliding(Z)Z

    .line 425
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->checkFixed(Z)Z

    .line 426
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->updateRotation()V

    .line 427
    return-void
.end method

.method public updateRotation()V
    .locals 2

    .line 432
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->this$0:Lorg/catrobat/catroid/physics/PhysicsLook;

    invoke-virtual {v0}, Lorg/catrobat/catroid/physics/PhysicsLook;->getRotationMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 433
    .local v0, "rotationCondition":Z
    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->this$0:Lorg/catrobat/catroid/physics/PhysicsLook;

    invoke-static {v1}, Lorg/catrobat/catroid/physics/PhysicsLook;->access$100(Lorg/catrobat/catroid/physics/PhysicsLook;)Lorg/catrobat/catroid/physics/PhysicsObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->setFixedRotation(Z)V

    .line 434
    return-void
.end method
