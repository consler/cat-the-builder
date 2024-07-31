.class public final Lorg/catrobat/catroid/physics/PhysicsWorldConverter;
.super Ljava/lang/Object;
.source "PhysicsWorldConverter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static convertBox2dToNormalAngle(F)F
    .locals 2
    .param p0, "box2dAngle"    # F

    .line 33
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static convertBox2dToNormalCoordinate(F)F
    .locals 1
    .param p0, "box2dCoordinate"    # F

    .line 41
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v0, p0

    return v0
.end method

.method public static convertBox2dToNormalVector(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 3
    .param p0, "box2DVector"    # Lcom/badlogic/gdx/math/Vector2;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v1}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertBox2dToNormalCoordinate(F)F

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v2}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertBox2dToNormalCoordinate(F)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public static convertCatroidToBox2dVector(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 3
    .param p0, "catroidVector"    # Lcom/badlogic/gdx/math/Vector2;

    .line 53
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v1}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertNormalToBox2dCoordinate(F)F

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 54
    invoke-static {v2}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertNormalToBox2dCoordinate(F)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 53
    return-object v0
.end method

.method public static convertNormalToBox2dAngle(F)F
    .locals 2
    .param p0, "catroidAngle"    # F

    .line 37
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static convertNormalToBox2dCoordinate(F)F
    .locals 1
    .param p0, "catroidCoordinate"    # F

    .line 45
    const/high16 v0, 0x41200000    # 10.0f

    div-float v0, p0, v0

    return v0
.end method
