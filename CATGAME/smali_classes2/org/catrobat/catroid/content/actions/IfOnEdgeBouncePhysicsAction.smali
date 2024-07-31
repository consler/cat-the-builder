.class public final Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "IfOnEdgeBouncePhysicsAction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;,
        Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0018\u0000 A2\u00020\u0001:\u0002ABB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0017\u001a\u00020\u0004H\u0002J\u0008\u0010\u0018\u001a\u00020\u0004H\u0002J\u0008\u0010\u0019\u001a\u00020\u0004H\u0002J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0008\u0010\u001e\u001a\u00020\u0004H\u0002J\u0008\u0010\u001f\u001a\u00020\u0004H\u0002J\u0008\u0010 \u001a\u00020\u0004H\u0002J\u0008\u0010!\u001a\u00020\u0004H\u0002J\u0008\u0010\"\u001a\u00020\u0004H\u0002J\u0008\u0010#\u001a\u00020\u0004H\u0002J\u0008\u0010$\u001a\u00020\u0004H\u0002J\u0008\u0010%\u001a\u00020\u0004H\u0002J\u0008\u0010&\u001a\u00020\u0004H\u0002J\u0010\u0010\'\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020)H\u0002J\u0010\u0010*\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020)H\u0002J*\u0010+\u001a\u00020\u001b2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020-2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010/\u001a\u000200H\u0002J\u0008\u00101\u001a\u00020-H\u0002J\u0010\u00102\u001a\u00020-2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0008\u00103\u001a\u00020-H\u0002J\u0008\u00104\u001a\u00020-H\u0002J\u0008\u00105\u001a\u00020-H\u0002J\u0008\u00106\u001a\u00020-H\u0002J\u0008\u00107\u001a\u00020-H\u0002J\u0010\u00108\u001a\u00020-2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0008\u00109\u001a\u00020-H\u0002J\u0010\u0010:\u001a\u00020-2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0008\u0010;\u001a\u00020-H\u0002J\u0010\u0010<\u001a\u00020-2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J(\u0010=\u001a\u00020\u001b2\u0006\u0010>\u001a\u00020\u00042\u0006\u0010.\u001a\u00020-2\u0006\u0010,\u001a\u00020-2\u0006\u0010(\u001a\u00020)H\u0002J\u0010\u0010?\u001a\u00020\u001b2\u0006\u0010@\u001a\u00020\u0004H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u00020\tX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006C"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;",
        "()V",
        "boundaryBoxCenterX",
        "",
        "boundaryBoxCenterY",
        "boundaryBoxHeight",
        "boundaryBoxWidth",
        "physicsWorld",
        "Lorg/catrobat/catroid/physics/PhysicsWorld;",
        "getPhysicsWorld",
        "()Lorg/catrobat/catroid/physics/PhysicsWorld;",
        "setPhysicsWorld",
        "(Lorg/catrobat/catroid/physics/PhysicsWorld;)V",
        "sprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "getSprite",
        "()Lorg/catrobat/catroid/content/Sprite;",
        "setSprite",
        "(Lorg/catrobat/catroid/content/Sprite;)V",
        "virtualScreenWidth",
        "",
        "vsHeight",
        "calculateBottomCollisionAreaInnerBorder",
        "calculateBottomCollisionAreaOuterBorder",
        "calculateBottomCollisionOffset",
        "calculateBoundaryBoxDimensions",
        "",
        "physicsObject",
        "Lorg/catrobat/catroid/physics/PhysicsObject;",
        "calculateLeftCollisionAreaInnerBorder",
        "calculateLeftCollisionAreaOuterBorder",
        "calculateLeftCollisionOffset",
        "calculateRightCollisionAreaInnerBorder",
        "calculateRightCollisionAreaOuterBorder",
        "calculateRightCollisionOffset",
        "calculateTopCollisionAreaInnerBorder",
        "calculateTopCollisionAreaOuterBorder",
        "calculateTopCollisionOffset",
        "changeDirectionOnStepsTaken",
        "side",
        "Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;",
        "changeDirectionOnVelocityOrGravity",
        "checkBounceActivation",
        "correctGravityPresent",
        "",
        "isVelocityHighEnoughToCollideAfterRepositioning",
        "boundaryBoxIdentifier",
        "Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;",
        "isBottomGravityPresent",
        "isBottomVelocityHighEnoughToCollideAfterRepositioning",
        "isBoundaryBoxCenterInBottomCollisionArea",
        "isBoundaryBoxCenterInLeftCollisionArea",
        "isBoundaryBoxCenterInRightCollisionArea",
        "isBoundaryBoxCenterInTopCollisionArea",
        "isLeftGravityPresent",
        "isLeftVelocityHighEnoughToCollideAfterRepositioning",
        "isRightGravityPresent",
        "isRightVelocityHighEnoughToCollideAfterRepositioning",
        "isTopGravityPresent",
        "isTopVelocityHighEnoughToCollideAfterRepositioning",
        "performRepositioning",
        "boundaryBoxLookOffset",
        "update",
        "percent",
        "Companion",
        "Side",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final COLLISION_OVERLAP_RANGE_FACTOR:F = 0.9f

.field public static final Companion:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Companion;

.field private static final OPPOSITE_DIRECTION:F = 180.0f

.field public static final THRESHOLD_VELOCITY_TO_ACTIVATE_BOUNCE:F = 10.0f


# instance fields
.field private boundaryBoxCenterX:F

.field private boundaryBoxCenterY:F

.field private boundaryBoxHeight:F

.field private boundaryBoxWidth:F

.field public physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

.field public sprite:Lorg/catrobat/catroid/content/Sprite;

.field private final virtualScreenWidth:I

.field private final vsHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->Companion:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 36
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 47
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    const-string v1, "ProjectManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    const-string v2, "ProjectManager.getInstance().currentProject"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v0

    iget v0, v0, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenWidth:I

    iput v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->virtualScreenWidth:I

    .line 48
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v0

    iget v0, v0, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenHeight:I

    iput v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->vsHeight:I

    return-void
.end method

.method private final calculateBottomCollisionAreaInnerBorder()F
    .locals 3

    .line 232
    iget v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->vsHeight:I

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxHeight:F

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    return v0
.end method

.method private final calculateBottomCollisionAreaOuterBorder()F
    .locals 3

    .line 235
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateBottomCollisionAreaInnerBorder()F

    move-result v0

    iget v1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxHeight:F

    neg-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private final calculateBottomCollisionOffset()F
    .locals 3

    .line 269
    iget v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxCenterY:F

    iget v1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->vsHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private final calculateBoundaryBoxDimensions(Lorg/catrobat/catroid/physics/PhysicsObject;)V
    .locals 5
    .param p1, "physicsObject"    # Lorg/catrobat/catroid/physics/PhysicsObject;

    .line 191
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 192
    .local v0, "boundaryBoxLowerEdge":Lcom/badlogic/gdx/math/Vector2;
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 193
    .local v1, "boundaryBoxUpperEdge":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {p1, v0, v1}, Lorg/catrobat/catroid/physics/PhysicsObject;->getBoundaryBox(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V

    .line 194
    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxWidth:F

    .line 195
    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxHeight:F

    .line 196
    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxWidth:F

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxCenterX:F

    .line 197
    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxHeight:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxCenterY:F

    .line 198
    return-void
.end method

.method private final calculateLeftCollisionAreaInnerBorder()F
    .locals 3

    .line 221
    iget v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->virtualScreenWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxWidth:F

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    return v0
.end method

.method private final calculateLeftCollisionAreaOuterBorder()F
    .locals 3

    .line 224
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateLeftCollisionAreaInnerBorder()F

    move-result v0

    iget v1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxWidth:F

    neg-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private final calculateLeftCollisionOffset()F
    .locals 3

    .line 263
    iget v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxCenterX:F

    iget v1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->virtualScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private final calculateRightCollisionAreaInnerBorder()F
    .locals 3

    .line 226
    iget v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->virtualScreenWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxWidth:F

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    return v0
.end method

.method private final calculateRightCollisionAreaOuterBorder()F
    .locals 3

    .line 229
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateRightCollisionAreaInnerBorder()F

    move-result v0

    iget v1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxWidth:F

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private final calculateRightCollisionOffset()F
    .locals 3

    .line 266
    iget v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxCenterX:F

    iget v1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->virtualScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private final calculateTopCollisionAreaInnerBorder()F
    .locals 3

    .line 237
    iget v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->vsHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxHeight:F

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    return v0
.end method

.method private final calculateTopCollisionAreaOuterBorder()F
    .locals 3

    .line 240
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateTopCollisionAreaInnerBorder()F

    move-result v0

    iget v1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxHeight:F

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private final calculateTopCollisionOffset()F
    .locals 3

    .line 272
    iget v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxCenterY:F

    iget v1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->vsHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private final changeDirectionOnStepsTaken(Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;)V
    .locals 6
    .param p1, "side"    # Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    .line 128
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    if-nez v0, :cond_0

    const-string v1, "physicsWorld"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    const-string v2, "sprite"

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/physics/PhysicsWorld;->getPhysicsObject(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/physics/PhysicsObject;

    move-result-object v0

    .line 129
    .local v0, "physicsObject":Lorg/catrobat/catroid/physics/PhysicsObject;
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    const-string v3, "sprite.look"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getMotionDirectionInUserInterfaceDimensionUnit()F

    move-result v1

    .line 131
    .local v1, "realRotation":F
    sget-object v4, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->LEFT:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    const-string v5, "physicsObject"

    if-eq p1, v4, :cond_6

    sget-object v4, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->RIGHT:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    if-ne p1, v4, :cond_3

    goto :goto_0

    .line 135
    :cond_3
    sget-object v4, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->TOP:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    if-eq p1, v4, :cond_4

    sget-object v4, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->BOTTOM:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    if-ne p1, v4, :cond_9

    .line 136
    :cond_4
    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v4, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object v4, v4, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x43340000    # 180.0f

    .line 137
    nop

    .line 136
    sub-float/2addr v3, v1

    invoke-virtual {v4, v3}, Lorg/catrobat/catroid/content/Look;->setMotionDirectionInUserInterfaceDimensionUnit(F)V

    .line 138
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateBoundaryBoxDimensions(Lorg/catrobat/catroid/physics/PhysicsObject;)V

    goto :goto_1

    .line 132
    :cond_6
    :goto_0
    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v4, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-object v4, v4, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    neg-float v3, v1

    invoke-virtual {v4, v3}, Lorg/catrobat/catroid/content/Look;->setMotionDirectionInUserInterfaceDimensionUnit(F)V

    .line 133
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateBoundaryBoxDimensions(Lorg/catrobat/catroid/physics/PhysicsObject;)V

    .line 134
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v3, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    iget-object v3, v3, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v3, :cond_13

    check-cast v3, Lorg/catrobat/catroid/physics/PhysicsLook;

    invoke-virtual {v3}, Lorg/catrobat/catroid/physics/PhysicsLook;->updateFlippedByAction()V

    .line 139
    :cond_9
    :goto_1
    nop

    .line 141
    sget-object v3, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_10

    const/4 v4, 0x2

    if-eq v3, v4, :cond_e

    const/4 v4, 0x3

    if-eq v3, v4, :cond_c

    const/4 v4, 0x4

    if-ne v3, v4, :cond_b

    .line 153
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v3, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    iget-object v3, v3, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 154
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateBottomCollisionOffset()F

    move-result v4

    .line 153
    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/content/Look;->changeYInUserInterfaceDimensionUnit(F)V

    goto :goto_2

    .line 156
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid side"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 149
    :cond_c
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v3, :cond_d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    iget-object v3, v3, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 150
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateTopCollisionOffset()F

    move-result v4

    neg-float v4, v4

    .line 149
    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/content/Look;->changeYInUserInterfaceDimensionUnit(F)V

    goto :goto_2

    .line 145
    :cond_e
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v3, :cond_f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    iget-object v3, v3, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 146
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateRightCollisionOffset()F

    move-result v4

    neg-float v4, v4

    .line 145
    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/content/Look;->changeXInUserInterfaceDimensionUnit(F)V

    goto :goto_2

    .line 143
    :cond_10
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v3, :cond_11

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    iget-object v3, v3, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateLeftCollisionOffset()F

    move-result v4

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/content/Look;->changeXInUserInterfaceDimensionUnit(F)V

    .line 157
    :goto_2
    nop

    .line 159
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v3, :cond_12

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    const/4 v2, 0x0

    invoke-static {v3, v2}, Lorg/catrobat/catroid/physics/PhysicalCollision;->fireBounceOffEvent(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)V

    .line 160
    return-void

    .line 134
    :cond_13
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type org.catrobat.catroid.physics.PhysicsLook"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final changeDirectionOnVelocityOrGravity(Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;)V
    .locals 7
    .param p1, "side"    # Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    .line 163
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    if-nez v0, :cond_0

    const-string v1, "physicsWorld"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    const-string v2, "sprite"

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/physics/PhysicsWorld;->getPhysicsObject(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/physics/PhysicsObject;

    move-result-object v0

    .line 164
    .local v0, "physicsObject":Lorg/catrobat/catroid/physics/PhysicsObject;
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    const-string v3, "sprite.look"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getMotionDirectionInUserInterfaceDimensionUnit()F

    move-result v1

    .line 166
    .local v1, "realRotation":F
    nop

    .line 167
    sget-object v4, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->LEFT:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    const-string v5, "physicsObject"

    const/4 v6, 0x1

    if-eq p1, v4, :cond_3

    sget-object v4, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->RIGHT:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    if-ne p1, v4, :cond_8

    :cond_3
    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v4, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v4, v4, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Look;->getRotationMode()I

    move-result v4

    if-eq v4, v6, :cond_8

    .line 168
    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v4, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object v4, v4, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    neg-float v3, v1

    invoke-virtual {v4, v3}, Lorg/catrobat/catroid/content/Look;->setMotionDirectionInUserInterfaceDimensionUnit(F)V

    .line 169
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateBoundaryBoxDimensions(Lorg/catrobat/catroid/physics/PhysicsObject;)V

    .line 170
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v3, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object v2, v3, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    if-eqz v2, :cond_7

    check-cast v2, Lorg/catrobat/catroid/physics/PhysicsLook;

    invoke-virtual {v2}, Lorg/catrobat/catroid/physics/PhysicsLook;->updateFlippedByAction()V

    goto :goto_0

    :cond_7
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type org.catrobat.catroid.physics.PhysicsLook"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_8
    nop

    .line 172
    sget-object v4, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->TOP:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    if-eq p1, v4, :cond_9

    sget-object v4, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->BOTTOM:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    if-ne p1, v4, :cond_c

    :cond_9
    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v4, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    iget-object v4, v4, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Look;->getRotationMode()I

    move-result v4

    if-eq v4, v6, :cond_c

    .line 173
    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v4, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    iget-object v2, v4, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x43340000    # 180.0f

    .line 174
    nop

    .line 173
    sub-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/Look;->setMotionDirectionInUserInterfaceDimensionUnit(F)V

    .line 175
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateBoundaryBoxDimensions(Lorg/catrobat/catroid/physics/PhysicsObject;)V

    .line 176
    :cond_c
    :goto_0
    nop

    .line 177
    return-void
.end method

.method private final checkBounceActivation(ZZLorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;)V
    .locals 2
    .param p1, "correctGravityPresent"    # Z
    .param p2, "isVelocityHighEnoughToCollideAfterRepositioning"    # Z
    .param p3, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p4, "boundaryBoxIdentifier"    # Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    .line 185
    if-nez p2, :cond_0

    if-eqz p1, :cond_2

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    if-nez v0, :cond_1

    const-string v1, "physicsWorld"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p3, p4}, Lorg/catrobat/catroid/physics/PhysicsWorld;->setBounceOnce(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;)V

    .line 188
    :cond_2
    return-void
.end method

.method private final isBottomGravityPresent()Z
    .locals 3

    .line 258
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    if-nez v0, :cond_0

    const-string v1, "physicsWorld"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/physics/PhysicsWorld;->getGravity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v1, 0x0

    int-to-float v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private final isBottomVelocityHighEnoughToCollideAfterRepositioning(Lorg/catrobat/catroid/physics/PhysicsObject;)Z
    .locals 2
    .param p1, "physicsObject"    # Lorg/catrobat/catroid/physics/PhysicsObject;

    .line 249
    invoke-virtual {p1}, Lorg/catrobat/catroid/physics/PhysicsObject;->getVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v1, -0x3ee00000    # -10.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isBoundaryBoxCenterInBottomCollisionArea()Z
    .locals 2

    .line 211
    nop

    .line 212
    nop

    .line 211
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateBottomCollisionAreaOuterBorder()F

    move-result v0

    iget v1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxCenterY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 212
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateBottomCollisionAreaInnerBorder()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 211
    :goto_0
    return v0
.end method

.method private final isBoundaryBoxCenterInLeftCollisionArea()Z
    .locals 2

    .line 201
    nop

    .line 202
    nop

    .line 201
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateLeftCollisionAreaOuterBorder()F

    move-result v0

    iget v1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxCenterX:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 202
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateLeftCollisionAreaInnerBorder()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 201
    :goto_0
    return v0
.end method

.method private final isBoundaryBoxCenterInRightCollisionArea()Z
    .locals 2

    .line 206
    nop

    .line 207
    nop

    .line 206
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateRightCollisionAreaOuterBorder()F

    move-result v0

    iget v1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxCenterX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 207
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateRightCollisionAreaInnerBorder()F

    move-result v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 206
    :goto_0
    return v0
.end method

.method private final isBoundaryBoxCenterInTopCollisionArea()Z
    .locals 2

    .line 216
    nop

    .line 217
    nop

    .line 216
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateTopCollisionAreaOuterBorder()F

    move-result v0

    iget v1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->boundaryBoxCenterY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 217
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateTopCollisionAreaInnerBorder()F

    move-result v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 216
    :goto_0
    return v0
.end method

.method private final isLeftGravityPresent()Z
    .locals 3

    .line 254
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    if-nez v0, :cond_0

    const-string v1, "physicsWorld"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/physics/PhysicsWorld;->getGravity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v1, 0x0

    int-to-float v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private final isLeftVelocityHighEnoughToCollideAfterRepositioning(Lorg/catrobat/catroid/physics/PhysicsObject;)Z
    .locals 2
    .param p1, "physicsObject"    # Lorg/catrobat/catroid/physics/PhysicsObject;

    .line 243
    invoke-virtual {p1}, Lorg/catrobat/catroid/physics/PhysicsObject;->getVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v1, -0x3ee00000    # -10.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isRightGravityPresent()Z
    .locals 3

    .line 256
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    if-nez v0, :cond_0

    const-string v1, "physicsWorld"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/physics/PhysicsWorld;->getGravity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v1, 0x0

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private final isRightVelocityHighEnoughToCollideAfterRepositioning(Lorg/catrobat/catroid/physics/PhysicsObject;)Z
    .locals 2
    .param p1, "physicsObject"    # Lorg/catrobat/catroid/physics/PhysicsObject;

    .line 246
    invoke-virtual {p1}, Lorg/catrobat/catroid/physics/PhysicsObject;->getVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isTopGravityPresent()Z
    .locals 3

    .line 260
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    if-nez v0, :cond_0

    const-string v1, "physicsWorld"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/physics/PhysicsWorld;->getGravity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v1, 0x0

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private final isTopVelocityHighEnoughToCollideAfterRepositioning(Lorg/catrobat/catroid/physics/PhysicsObject;)Z
    .locals 2
    .param p1, "physicsObject"    # Lorg/catrobat/catroid/physics/PhysicsObject;

    .line 252
    invoke-virtual {p1}, Lorg/catrobat/catroid/physics/PhysicsObject;->getVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final performRepositioning(FZZLorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;)V
    .locals 2
    .param p1, "boundaryBoxLookOffset"    # F
    .param p2, "isVelocityHighEnoughToCollideAfterRepositioning"    # Z
    .param p3, "correctGravityPresent"    # Z
    .param p4, "side"    # Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    .line 102
    sget-object v0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->LEFT:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    const-string v1, "sprite"

    if-eq p4, v0, :cond_5

    sget-object v0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->RIGHT:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    if-ne p4, v0, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/Look;->changeYInUserInterfaceDimensionUnit(F)V

    .line 116
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-boolean v0, v0, Lorg/catrobat/catroid/content/Sprite;->movedByStepsBrick:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p4}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->changeDirectionOnStepsTaken(Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p4}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->changeDirectionOnVelocityOrGravity(Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;)V

    .line 118
    :goto_0
    nop

    .line 119
    nop

    .line 120
    nop

    .line 121
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 122
    :cond_4
    sget-object v1, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;->BBI_HORIZONTAL:Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    .line 118
    invoke-direct {p0, p3, p2, v0, v1}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->checkBounceActivation(ZZLorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;)V

    goto :goto_3

    .line 103
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/Look;->changeXInUserInterfaceDimensionUnit(F)V

    .line 105
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-boolean v0, v0, Lorg/catrobat/catroid/content/Sprite;->movedByStepsBrick:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p4}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->changeDirectionOnStepsTaken(Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;)V

    goto :goto_2

    :cond_8
    invoke-direct {p0, p4}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->changeDirectionOnVelocityOrGravity(Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;)V

    .line 107
    :goto_2
    nop

    .line 108
    nop

    .line 109
    nop

    .line 110
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v0, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 111
    :cond_9
    sget-object v1, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;->BBI_VERTICAL:Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    .line 107
    invoke-direct {p0, p3, p2, v0, v1}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->checkBounceActivation(ZZLorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;)V

    .line 124
    :goto_3
    nop

    .line 125
    return-void
.end method


# virtual methods
.method public final getPhysicsWorld()Lorg/catrobat/catroid/physics/PhysicsWorld;
    .locals 2

    .line 51
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    if-nez v0, :cond_0

    const-string v1, "physicsWorld"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getSprite()Lorg/catrobat/catroid/content/Sprite;
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v0, :cond_0

    const-string v1, "sprite"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final setPhysicsWorld(Lorg/catrobat/catroid/physics/PhysicsWorld;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/physics/PhysicsWorld;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    return-void
.end method

.method public final setSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Sprite;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    return-void
.end method

.method protected update(F)V
    .locals 6
    .param p1, "percent"    # F

    .line 59
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    if-nez v0, :cond_0

    const-string v1, "physicsWorld"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    const-string v2, "sprite"

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/physics/PhysicsWorld;->getPhysicsObject(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/physics/PhysicsObject;

    move-result-object v0

    .line 60
    .local v0, "physicsObject":Lorg/catrobat/catroid/physics/PhysicsObject;
    const-string v1, "physicsObject"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateBoundaryBoxDimensions(Lorg/catrobat/catroid/physics/PhysicsObject;)V

    .line 62
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->isBoundaryBoxCenterInLeftCollisionArea()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    nop

    .line 64
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateLeftCollisionOffset()F

    move-result v1

    .line 65
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->isLeftVelocityHighEnoughToCollideAfterRepositioning(Lorg/catrobat/catroid/physics/PhysicsObject;)Z

    move-result v3

    .line 66
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->isLeftGravityPresent()Z

    move-result v4

    .line 67
    sget-object v5, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->LEFT:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    .line 63
    invoke-direct {p0, v1, v3, v4, v5}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->performRepositioning(FZZLorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;)V

    goto :goto_0

    .line 69
    :cond_2
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->isBoundaryBoxCenterInRightCollisionArea()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    nop

    .line 71
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateRightCollisionOffset()F

    move-result v1

    neg-float v1, v1

    .line 72
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->isRightVelocityHighEnoughToCollideAfterRepositioning(Lorg/catrobat/catroid/physics/PhysicsObject;)Z

    move-result v3

    .line 73
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->isRightGravityPresent()Z

    move-result v4

    .line 74
    sget-object v5, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->RIGHT:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    .line 70
    invoke-direct {p0, v1, v3, v4, v5}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->performRepositioning(FZZLorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;)V

    .line 76
    :cond_3
    :goto_0
    nop

    .line 78
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->isBoundaryBoxCenterInBottomCollisionArea()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 79
    nop

    .line 80
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateBottomCollisionOffset()F

    move-result v1

    .line 81
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->isBottomVelocityHighEnoughToCollideAfterRepositioning(Lorg/catrobat/catroid/physics/PhysicsObject;)Z

    move-result v3

    .line 82
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->isBottomGravityPresent()Z

    move-result v4

    .line 83
    sget-object v5, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->BOTTOM:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    .line 79
    invoke-direct {p0, v1, v3, v4, v5}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->performRepositioning(FZZLorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;)V

    goto :goto_1

    .line 85
    :cond_4
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->isBoundaryBoxCenterInTopCollisionArea()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 86
    nop

    .line 87
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->calculateTopCollisionOffset()F

    move-result v1

    neg-float v1, v1

    .line 88
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->isTopVelocityHighEnoughToCollideAfterRepositioning(Lorg/catrobat/catroid/physics/PhysicsObject;)Z

    move-result v3

    .line 89
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->isTopGravityPresent()Z

    move-result v4

    .line 90
    sget-object v5, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;->TOP:Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;

    .line 86
    invoke-direct {p0, v1, v3, v4, v5}, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->performRepositioning(FZZLorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction$Side;)V

    .line 92
    :cond_5
    :goto_1
    nop

    .line 93
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/IfOnEdgeBouncePhysicsAction;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-nez v1, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/catrobat/catroid/content/Sprite;->movedByStepsBrick:Z

    .line 94
    return-void
.end method
