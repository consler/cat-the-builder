.class public Lorg/catrobat/catroid/content/actions/SetPhysicsObjectTypeAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SetPhysicsObjectTypeAction.java"


# instance fields
.field private physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

.field private type:Lorg/catrobat/catroid/physics/PhysicsObject$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 33
    sget-object v0, Lorg/catrobat/catroid/physics/PhysicsObject$Type;->NONE:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/SetPhysicsObjectTypeAction;->type:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    return-void
.end method


# virtual methods
.method public setPhysicsObject(Lorg/catrobat/catroid/physics/PhysicsObject;)V
    .locals 0
    .param p1, "physicsObject"    # Lorg/catrobat/catroid/physics/PhysicsObject;

    .line 41
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetPhysicsObjectTypeAction;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    .line 42
    return-void
.end method

.method public setType(Lorg/catrobat/catroid/physics/PhysicsObject$Type;)V
    .locals 0
    .param p1, "type"    # Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    .line 45
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetPhysicsObjectTypeAction;->type:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    .line 46
    return-void
.end method

.method protected update(F)V
    .locals 2
    .param p1, "percent"    # F

    .line 37
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetPhysicsObjectTypeAction;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SetPhysicsObjectTypeAction;->type:Lorg/catrobat/catroid/physics/PhysicsObject$Type;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/physics/PhysicsObject;->setType(Lorg/catrobat/catroid/physics/PhysicsObject$Type;)V

    .line 38
    return-void
.end method
