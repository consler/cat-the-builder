.class public Lorg/catrobat/catroid/physics/PhysicsLook;
.super Lorg/catrobat/catroid/content/Look;
.source "PhysicsLook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;,
        Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;
    }
.end annotation


# static fields
.field public static final SCALE_FACTOR_ACCURACY:F = 10000.0f


# instance fields
.field private isFlippedByAction:Z

.field private final physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

.field private final physicsObjectStateHandler:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/physics/PhysicsWorld;)V
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "physicsWorld"    # Lorg/catrobat/catroid/physics/PhysicsWorld;

    .line 45
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/Look;-><init>(Lorg/catrobat/catroid/content/Sprite;)V

    .line 40
    new-instance v0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;-><init>(Lorg/catrobat/catroid/physics/PhysicsLook;)V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObjectStateHandler:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->isFlippedByAction:Z

    .line 46
    invoke-virtual {p2, p1}, Lorg/catrobat/catroid/physics/PhysicsWorld;->getPhysicsObject(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/physics/PhysicsObject;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    .line 47
    return-void
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/physics/PhysicsLook;)Lorg/catrobat/catroid/physics/PhysicsObject;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/physics/PhysicsLook;

    .line 35
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    return-object v0
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/physics/PhysicsLook;)F
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/physics/PhysicsLook;

    .line 35
    iget v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->alpha:F

    return v0
.end method

.method private flipLookDataIfNeeded(F)V
    .locals 6
    .param p1, "realRotation"    # F

    .line 229
    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v1, :cond_1

    cmpl-float v1, p1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    .line 230
    .local v1, "orientedRight":Z
    :goto_1
    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    cmpl-float v0, p1, v2

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v3

    .line 231
    .local v0, "orientedLeft":Z
    :goto_2
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsLook;->isFlipped()Z

    move-result v2

    .line 232
    .local v2, "isLookDataFlipped":Z
    iget-boolean v5, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->isFlippedByAction:Z

    if-eqz v5, :cond_3

    .line 233
    xor-int/lit8 v5, v2, 0x1

    move v2, v5

    .line 235
    :cond_3
    iget-object v5, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->lookData:Lorg/catrobat/catroid/common/LookData;

    if-eqz v5, :cond_6

    if-eqz v2, :cond_4

    if-nez v1, :cond_5

    :cond_4
    if-nez v2, :cond_6

    if-eqz v0, :cond_6

    .line 236
    :cond_5
    iget-object v5, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->lookData:Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v5}, Lorg/catrobat/catroid/common/LookData;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    .line 238
    :cond_6
    return-void
.end method

.method private isLookMoving()Z
    .locals 4

    .line 133
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    invoke-virtual {v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    invoke-virtual {v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public copyTo(Lorg/catrobat/catroid/content/Look;)V
    .locals 2
    .param p1, "destination"    # Lorg/catrobat/catroid/content/Look;

    .line 51
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/Look;->copyTo(Lorg/catrobat/catroid/content/Look;)V

    .line 52
    instance-of v0, p1, Lorg/catrobat/catroid/physics/PhysicsLook;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/physics/PhysicsLook;

    iget-object v1, v1, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/physics/PhysicsObject;->copyTo(Lorg/catrobat/catroid/physics/PhysicsObject;)V

    .line 55
    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 2
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .line 289
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObjectStateHandler:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->access$000(Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;Z)Z

    .line 290
    invoke-super {p0, p1, p2}, Lorg/catrobat/catroid/content/Look;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 291
    return-void
.end method

.method public getAngularVelocityInUserInterfaceDimensionUnit()F
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    invoke-virtual {v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getRotationSpeed()F

    move-result v0

    return v0
.end method

.method public getLookDirectionInUserInterfaceDimensionUnit()F
    .locals 3

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "direction":F
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsLook;->getRotationMode()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 140
    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    .line 141
    goto :goto_1

    .line 142
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsLook;->getRotation()F

    move-result v1

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/physics/PhysicsLook;->convertStageAngleToCatroidAngle(F)F

    move-result v0

    .line 143
    goto :goto_1

    .line 144
    :cond_2
    nop

    .line 145
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsLook;->isFlipped()Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, -0x3d4c0000    # -90.0f

    goto :goto_0

    :cond_3
    const/high16 v1, 0x42b40000    # 90.0f

    :goto_0
    move v0, v1

    .line 147
    :goto_1
    return v0
.end method

.method public getMotionDirectionInUserInterfaceDimensionUnit()F
    .locals 5

    .line 124
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/catrobat/catroid/physics/PhysicsLook;->isLookMoving()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    .line 128
    invoke-virtual {v1}, Lorg/catrobat/catroid/physics/PhysicsObject;->getVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-double v1, v1

    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    invoke-virtual {v3}, Lorg/catrobat/catroid/physics/PhysicsObject;->getVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 127
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    .line 129
    .local v0, "motionDirection":F
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/physics/PhysicsLook;->breakDownCatroidAngle(F)F

    move-result v1

    return v1

    .line 125
    .end local v0    # "motionDirection":F
    :cond_1
    :goto_0
    invoke-super {p0}, Lorg/catrobat/catroid/content/Look;->getMotionDirectionInUserInterfaceDimensionUnit()F

    move-result v0

    return v0
.end method

.method public getRotation()F
    .locals 5

    .line 166
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    invoke-virtual {v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getDirection()F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    invoke-super {p0, v0}, Lorg/catrobat/catroid/content/Look;->setRotation(F)V

    .line 167
    invoke-super {p0}, Lorg/catrobat/catroid/content/Look;->getRotation()F

    move-result v0

    .line 168
    .local v0, "rotation":F
    iget-object v2, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    invoke-virtual {v2}, Lorg/catrobat/catroid/physics/PhysicsObject;->getDirection()F

    move-result v2

    rem-float/2addr v2, v1

    .line 169
    .local v2, "realRotation":F
    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    .line 170
    add-float/2addr v2, v1

    .line 172
    :cond_0
    invoke-super {p0}, Lorg/catrobat/catroid/content/Look;->getRotationMode()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 181
    :cond_1
    invoke-super {p0, v3}, Lorg/catrobat/catroid/content/Look;->setRotation(F)V

    goto :goto_0

    .line 178
    :cond_2
    invoke-super {p0, v0}, Lorg/catrobat/catroid/content/Look;->setRotation(F)V

    .line 179
    goto :goto_0

    .line 174
    :cond_3
    invoke-super {p0, v3}, Lorg/catrobat/catroid/content/Look;->setRotation(F)V

    .line 175
    invoke-direct {p0, v2}, Lorg/catrobat/catroid/physics/PhysicsLook;->flipLookDataIfNeeded(F)V

    .line 176
    nop

    .line 184
    :goto_0
    invoke-super {p0}, Lorg/catrobat/catroid/content/Look;->getRotation()F

    move-result v1

    return v1
.end method

.method public getX()F
    .locals 3

    .line 152
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    invoke-virtual {v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getX()F

    move-result v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsLook;->getWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 153
    .local v0, "x":F
    invoke-super {p0, v0}, Lorg/catrobat/catroid/content/Look;->setX(F)V

    .line 154
    return v0
.end method

.method public getXVelocityInUserInterfaceDimensionUnit()F
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->isGliding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getGlidingVelocityX()F

    move-result v0

    return v0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    invoke-virtual {v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    return v0
.end method

.method public getY()F
    .locals 3

    .line 159
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    invoke-virtual {v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getY()F

    move-result v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsLook;->getHeight()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 160
    .local v0, "y":F
    invoke-super {p0, v0}, Lorg/catrobat/catroid/content/Look;->setY(F)V

    .line 161
    return v0
.end method

.method public getYVelocityInUserInterfaceDimensionUnit()F
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->isGliding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getGlidingVelocityY()F

    move-result v0

    return v0

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    invoke-virtual {v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return v0
.end method

.method public isHangedUp()Z
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObjectStateHandler:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;

    invoke-virtual {v0}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->isHangedUp()Z

    move-result v0

    return v0
.end method

.method public setFlippedByDegree(F)V
    .locals 3
    .param p1, "degree"    # F

    .line 245
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsLook;->getMotionDirectionInUserInterfaceDimensionUnit()F

    move-result v0

    .line 246
    .local v0, "direction":F
    add-float v1, p1, v0

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v1, v2

    .line 247
    .local v1, "newDirection":F
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/physics/PhysicsLook;->setFlippedByDirection(F)V

    .line 248
    return-void
.end method

.method public setFlippedByDirection(F)V
    .locals 6
    .param p1, "newDirection"    # F

    .line 251
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    .line 252
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    .line 253
    add-float/2addr p1, v0

    .line 255
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsLook;->getMotionDirectionInUserInterfaceDimensionUnit()F

    move-result v0

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float/2addr v0, v2

    .line 256
    .local v0, "direction":F
    cmpl-float v2, v0, v1

    const/4 v3, 0x1

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x0

    if-ltz v2, :cond_1

    cmpg-float v2, v0, v4

    if-gtz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    cmpg-float v1, p1, v4

    if-gtz v1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    if-eq v2, v3, :cond_3

    .line 257
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsLook;->updateFlippedByAction()V

    .line 259
    :cond_3
    return-void
.end method

.method public setLookData(Lorg/catrobat/catroid/common/LookData;)V
    .locals 2
    .param p1, "lookData"    # Lorg/catrobat/catroid/common/LookData;

    .line 65
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/Look;->setLookData(Lorg/catrobat/catroid/common/LookData;)V

    .line 66
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyPlayingScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scene;->getPhysicsWorld()Lorg/catrobat/catroid/physics/PhysicsWorld;

    move-result-object v0

    .line 67
    .local v0, "physicsWorld":Lorg/catrobat/catroid/physics/PhysicsWorld;
    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    invoke-virtual {v0, v1, p0}, Lorg/catrobat/catroid/physics/PhysicsWorld;->changeLook(Lorg/catrobat/catroid/physics/PhysicsObject;Lorg/catrobat/catroid/content/Look;)V

    .line 68
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/physics/PhysicsLook;->updatePhysicsObjectState(Z)V

    .line 69
    return-void
.end method

.method public setLookVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 263
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/Look;->setLookVisible(Z)V

    .line 264
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObjectStateHandler:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->update(Z)V

    .line 265
    return-void
.end method

.method public setNonColliding(Z)V
    .locals 1
    .param p1, "nonColliding"    # Z

    .line 272
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObjectStateHandler:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->setNonColliding(Z)V

    .line 273
    return-void
.end method

.method public setPosition(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 78
    invoke-super {p0, p1, p2}, Lorg/catrobat/catroid/content/Look;->setPosition(FF)V

    .line 79
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsLook;->getWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/physics/PhysicsObject;->setX(F)V

    .line 81
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsLook;->getHeight()F

    move-result v1

    div-float/2addr v1, v2

    add-float/2addr v1, p2

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/physics/PhysicsObject;->setY(F)V

    .line 83
    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 3
    .param p1, "degrees"    # F

    .line 189
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/Look;->setRotation(F)V

    .line 190
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    if-eqz v0, :cond_0

    .line 191
    invoke-super {p0}, Lorg/catrobat/catroid/content/Look;->getRotation()F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/physics/PhysicsObject;->setDirection(F)V

    .line 193
    :cond_0
    return-void
.end method

.method public setRotationMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 197
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/Look;->setRotationMode(I)V

    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/physics/PhysicsLook;->updatePhysicsObjectState(Z)V

    .line 199
    return-void
.end method

.method public setScale(FF)V
    .locals 5
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .line 203
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsLook;->getScaleX()F

    move-result v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsLook;->getScaleY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 204
    .local v0, "oldScales":Lcom/badlogic/gdx/math/Vector2;
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 205
    :cond_0
    const/4 p1, 0x0

    .line 206
    const/4 p2, 0x0

    .line 209
    :cond_1
    const v1, 0x461c4000    # 10000.0f

    mul-float v2, p1, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 210
    .local v2, "scaleXComp":I
    mul-float v3, p2, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 211
    .local v3, "scaleYComp":I
    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-ne v2, v4, :cond_2

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-ne v3, v1, :cond_2

    .line 212
    return-void

    .line 215
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/catrobat/catroid/content/Look;->setScale(FF)V

    .line 217
    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    if-eqz v1, :cond_3

    .line 218
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyPlayingScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getPhysicsWorld()Lorg/catrobat/catroid/physics/PhysicsWorld;

    move-result-object v1

    .line 219
    .local v1, "physicsWorld":Lorg/catrobat/catroid/physics/PhysicsWorld;
    iget-object v4, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    invoke-virtual {v1, v4, p0}, Lorg/catrobat/catroid/physics/PhysicsWorld;->changeLook(Lorg/catrobat/catroid/physics/PhysicsObject;Lorg/catrobat/catroid/content/Look;)V

    .line 220
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lorg/catrobat/catroid/physics/PhysicsLook;->updatePhysicsObjectState(Z)V

    .line 222
    .end local v1    # "physicsWorld":Lorg/catrobat/catroid/physics/PhysicsWorld;
    :cond_3
    return-void
.end method

.method public setTransparencyInUserInterfaceDimensionUnit(F)V
    .locals 1
    .param p1, "percent"    # F

    .line 59
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/Look;->setTransparencyInUserInterfaceDimensionUnit(F)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/physics/PhysicsLook;->updatePhysicsObjectState(Z)V

    .line 61
    return-void
.end method

.method public setX(F)V
    .locals 3
    .param p1, "x"    # F

    .line 87
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/Look;->setX(F)V

    .line 88
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsLook;->getWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/physics/PhysicsObject;->setX(F)V

    .line 91
    :cond_0
    return-void
.end method

.method public setXInUserInterfaceDimensionUnit(F)V
    .locals 2
    .param p1, "x"    # F

    .line 73
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsLook;->getWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/physics/PhysicsLook;->setX(F)V

    .line 74
    return-void
.end method

.method public setY(F)V
    .locals 3
    .param p1, "y"    # F

    .line 95
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/Look;->setY(F)V

    .line 96
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lorg/catrobat/catroid/physics/PhysicsLook;->getHeight()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/physics/PhysicsObject;->setY(F)V

    .line 99
    :cond_0
    return-void
.end method

.method public startGlide()V
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObjectStateHandler:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;

    invoke-virtual {v0}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->activateGlideTo()V

    .line 277
    return-void
.end method

.method public stopGlide()V
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObjectStateHandler:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;

    invoke-virtual {v0}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->deactivateGlideTo()V

    .line 281
    return-void
.end method

.method public updateFlippedByAction()V
    .locals 1

    .line 241
    iget-boolean v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->isFlippedByAction:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->isFlippedByAction:Z

    .line 242
    return-void
.end method

.method public updatePhysicsObjectState(Z)V
    .locals 1
    .param p1, "record"    # Z

    .line 225
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook;->physicsObjectStateHandler:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->update(Z)V

    .line 226
    return-void
.end method
