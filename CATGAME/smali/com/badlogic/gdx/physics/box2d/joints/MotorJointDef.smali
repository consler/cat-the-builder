.class public Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;
.super Lcom/badlogic/gdx/physics/box2d/JointDef;
.source "MotorJointDef.java"


# instance fields
.field public angularOffset:F

.field public correctionFactor:F

.field public final linearOffset:Lcom/badlogic/gdx/math/Vector2;

.field public maxForce:F

.field public maxTorque:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/JointDef;-><init>()V

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->linearOffset:Lcom/badlogic/gdx/math/Vector2;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->angularOffset:F

    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->maxForce:F

    .line 47
    iput v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->maxTorque:F

    .line 50
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->correctionFactor:F

    .line 26
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MotorJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    .line 27
    return-void
.end method


# virtual methods
.method public initialize(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Body;)V
    .locals 3
    .param p1, "body1"    # Lcom/badlogic/gdx/physics/box2d/Body;
    .param p2, "body2"    # Lcom/badlogic/gdx/physics/box2d/Body;

    .line 31
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 32
    iput-object p2, p0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 33
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->linearOffset:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->getLocalPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 34
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->angularOffset:F

    .line 35
    return-void
.end method
