.class Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler$4;
.super Ljava/lang/Object;
.source "PhysicsLook.java"

# interfaces
.implements Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;-><init>(Lorg/catrobat/catroid/physics/PhysicsLook;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;

.field final synthetic val$this$0:Lorg/catrobat/catroid/physics/PhysicsLook;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;Lorg/catrobat/catroid/physics/PhysicsLook;)V
    .locals 0
    .param p1, "this$1"    # Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;

    .line 346
    iput-object p1, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler$4;->this$1:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;

    iput-object p2, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler$4;->val$this$0:Lorg/catrobat/catroid/physics/PhysicsLook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTrue()Z
    .locals 1

    .line 349
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler$4;->this$1:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;

    invoke-static {v0}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->access$300(Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;)Z

    move-result v0

    return v0
.end method
