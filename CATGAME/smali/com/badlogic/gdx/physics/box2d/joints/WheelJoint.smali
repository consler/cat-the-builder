.class public Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;
.super Lcom/badlogic/gdx/physics/box2d/Joint;
.source "WheelJoint.java"


# instance fields
.field private final localAnchorA:Lcom/badlogic/gdx/math/Vector2;

.field private final localAnchorB:Lcom/badlogic/gdx/math/Vector2;

.field private final localAxisA:Lcom/badlogic/gdx/math/Vector2;

.field private final tmp:[F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;J)V
    .locals 1
    .param p1, "world"    # Lcom/badlogic/gdx/physics/box2d/World;
    .param p2, "addr"    # J

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/physics/box2d/Joint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->tmp:[F

    .line 34
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->localAxisA:Lcom/badlogic/gdx/math/Vector2;

    .line 40
    return-void
.end method

.method private native jniEnableMotor(JZ)V
.end method

.method private native jniGetJointSpeed(J)F
.end method

.method private native jniGetJointTranslation(J)F
.end method

.method private native jniGetLocalAnchorA(J[F)V
.end method

.method private native jniGetLocalAnchorB(J[F)V
.end method

.method private native jniGetLocalAxisA(J[F)V
.end method

.method private native jniGetMaxMotorTorque(J)F
.end method

.method private native jniGetMotorSpeed(J)F
.end method

.method private native jniGetMotorTorque(JF)F
.end method

.method private native jniGetSpringDampingRatio(J)F
.end method

.method private native jniGetSpringFrequencyHz(J)F
.end method

.method private native jniIsMotorEnabled(J)Z
.end method

.method private native jniSetMaxMotorTorque(JF)V
.end method

.method private native jniSetMotorSpeed(JF)V
.end method

.method private native jniSetSpringDampingRatio(JF)V
.end method

.method private native jniSetSpringFrequencyHz(JF)V
.end method


# virtual methods
.method public enableMotor(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 110
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniEnableMotor(JZ)V

    .line 111
    return-void
.end method

.method public getJointSpeed()F
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniGetJointSpeed(J)F

    move-result v0

    return v0
.end method

.method public getJointTranslation()F
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniGetJointTranslation(J)F

    move-result v0

    return v0
.end method

.method public getLocalAnchorA()Lcom/badlogic/gdx/math/Vector2;
    .locals 4

    .line 43
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->tmp:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniGetLocalAnchorA(J[F)V

    .line 44
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->tmp:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 45
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getLocalAnchorB()Lcom/badlogic/gdx/math/Vector2;
    .locals 4

    .line 55
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->tmp:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniGetLocalAnchorB(J[F)V

    .line 56
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->tmp:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getLocalAxisA()Lcom/badlogic/gdx/math/Vector2;
    .locals 4

    .line 67
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->tmp:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniGetLocalAxisA(J[F)V

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->localAxisA:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->tmp:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->localAxisA:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getMaxMotorTorque()F
    .locals 2

    .line 149
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniGetMaxMotorTorque(J)F

    move-result v0

    return v0
.end method

.method public getMotorSpeed()F
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniGetMotorSpeed(J)F

    move-result v0

    return v0
.end method

.method public getMotorTorque(F)F
    .locals 2
    .param p1, "invDt"    # F

    .line 159
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniGetMotorTorque(JF)F

    move-result v0

    return v0
.end method

.method public getSpringDampingRatio()F
    .locals 2

    .line 197
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniGetSpringDampingRatio(J)F

    move-result v0

    return v0
.end method

.method public getSpringFrequencyHz()F
    .locals 2

    .line 178
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniGetSpringFrequencyHz(J)F

    move-result v0

    return v0
.end method

.method public isMotorEnabled()Z
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniIsMotorEnabled(J)Z

    move-result v0

    return v0
.end method

.method public setMaxMotorTorque(F)V
    .locals 2
    .param p1, "torque"    # F

    .line 140
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniSetMaxMotorTorque(JF)V

    .line 141
    return-void
.end method

.method public setMotorSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .line 120
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniSetMotorSpeed(JF)V

    .line 121
    return-void
.end method

.method public setSpringDampingRatio(F)V
    .locals 2
    .param p1, "ratio"    # F

    .line 188
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniSetSpringDampingRatio(JF)V

    .line 189
    return-void
.end method

.method public setSpringFrequencyHz(F)V
    .locals 2
    .param p1, "hz"    # F

    .line 169
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniSetSpringFrequencyHz(JF)V

    .line 170
    return-void
.end method
