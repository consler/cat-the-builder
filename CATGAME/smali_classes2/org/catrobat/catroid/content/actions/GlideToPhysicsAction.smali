.class public Lorg/catrobat/catroid/content/actions/GlideToPhysicsAction;
.super Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;
.source "GlideToPhysicsAction.java"


# instance fields
.field private physicsLook:Lorg/catrobat/catroid/physics/PhysicsLook;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected begin()V
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/GlideToPhysicsAction;->physicsLook:Lorg/catrobat/catroid/physics/PhysicsLook;

    invoke-virtual {v0}, Lorg/catrobat/catroid/physics/PhysicsLook;->startGlide()V

    .line 35
    invoke-super {p0}, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->begin()V

    .line 36
    return-void
.end method

.method protected end()V
    .locals 1

    .line 40
    invoke-super {p0}, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->end()V

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/GlideToPhysicsAction;->physicsLook:Lorg/catrobat/catroid/physics/PhysicsLook;

    invoke-virtual {v0}, Lorg/catrobat/catroid/physics/PhysicsLook;->stopGlide()V

    .line 42
    return-void
.end method

.method public setPhysicsLook(Lorg/catrobat/catroid/physics/PhysicsLook;)V
    .locals 0
    .param p1, "physicsLook"    # Lorg/catrobat/catroid/physics/PhysicsLook;

    .line 45
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/GlideToPhysicsAction;->physicsLook:Lorg/catrobat/catroid/physics/PhysicsLook;

    .line 46
    return-void
.end method
