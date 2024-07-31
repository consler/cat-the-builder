.class Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler$1;
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

    .line 311
    iput-object p1, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler$1;->this$1:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;

    iput-object p2, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler$1;->val$this$0:Lorg/catrobat/catroid/physics/PhysicsLook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isOutsideActiveArea()Z
    .locals 1

    .line 318
    invoke-direct {p0}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler$1;->isXOutsideActiveArea()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler$1;->isYOutsideActiveArea()Z

    move-result v0

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

.method private isXOutsideActiveArea()Z
    .locals 3

    .line 322
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler$1;->this$1:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;

    iget-object v0, v0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->this$0:Lorg/catrobat/catroid/physics/PhysicsLook;

    invoke-static {v0}, Lorg/catrobat/catroid/physics/PhysicsLook;->access$100(Lorg/catrobat/catroid/physics/PhysicsLook;)Lorg/catrobat/catroid/physics/PhysicsObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getMassCenter()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v0}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertBox2dToNormalCoordinate(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler$1;->this$1:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;

    iget-object v1, v1, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->this$0:Lorg/catrobat/catroid/physics/PhysicsLook;

    .line 323
    invoke-static {v1}, Lorg/catrobat/catroid/physics/PhysicsLook;->access$100(Lorg/catrobat/catroid/physics/PhysicsLook;)Lorg/catrobat/catroid/physics/PhysicsObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/physics/PhysicsObject;->getCircumference()F

    move-result v1

    sub-float/2addr v0, v1

    sget-object v1, Lorg/catrobat/catroid/physics/PhysicsWorld;->activeArea:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 322
    :goto_0
    return v0
.end method

.method private isYOutsideActiveArea()Z
    .locals 3

    .line 327
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler$1;->this$1:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;

    iget-object v0, v0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->this$0:Lorg/catrobat/catroid/physics/PhysicsLook;

    invoke-static {v0}, Lorg/catrobat/catroid/physics/PhysicsLook;->access$100(Lorg/catrobat/catroid/physics/PhysicsLook;)Lorg/catrobat/catroid/physics/PhysicsObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->getMassCenter()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v0}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertBox2dToNormalCoordinate(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler$1;->this$1:Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;

    iget-object v1, v1, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler;->this$0:Lorg/catrobat/catroid/physics/PhysicsLook;

    .line 328
    invoke-static {v1}, Lorg/catrobat/catroid/physics/PhysicsLook;->access$100(Lorg/catrobat/catroid/physics/PhysicsLook;)Lorg/catrobat/catroid/physics/PhysicsObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/physics/PhysicsObject;->getCircumference()F

    move-result v1

    sub-float/2addr v0, v1

    sget-object v1, Lorg/catrobat/catroid/physics/PhysicsWorld;->activeArea:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 327
    :goto_0
    return v0
.end method


# virtual methods
.method public isTrue()Z
    .locals 1

    .line 314
    invoke-direct {p0}, Lorg/catrobat/catroid/physics/PhysicsLook$PhysicsObjectStateHandler$1;->isOutsideActiveArea()Z

    move-result v0

    return v0
.end method
