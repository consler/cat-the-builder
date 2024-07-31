.class public Lorg/catrobat/catroid/physics/PhysicsBoundaryBox;
.super Ljava/lang/Object;
.source "PhysicsBoundaryBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;
    }
.end annotation


# static fields
.field public static final FRAME_SIZE:I = 0x5


# instance fields
.field private final world:Lcom/badlogic/gdx/physics/box2d/World;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 0
    .param p1, "world"    # Lcom/badlogic/gdx/physics/box2d/World;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox;->world:Lcom/badlogic/gdx/physics/box2d/World;

    .line 43
    return-void
.end method

.method private createSide(Lcom/badlogic/gdx/math/Vector2;FFLorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;)V
    .locals 5
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "identifier"    # Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    .line 68
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    .line 69
    .local v0, "bodyDef":Lcom/badlogic/gdx/physics/box2d/BodyDef;
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    iput-object v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->allowSleep:Z

    .line 72
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v1}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 73
    .local v1, "shape":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, p2, v2

    div-float v2, p3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, p1, v4}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->setAsBox(FFLcom/badlogic/gdx/math/Vector2;F)V

    .line 75
    new-instance v2, Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    invoke-direct {v2}, Lcom/badlogic/gdx/physics/box2d/FixtureDef;-><init>()V

    .line 76
    .local v2, "fixtureDef":Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    iput-object v1, v2, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 77
    iget-object v3, v2, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    const/4 v4, 0x4

    iput-short v4, v3, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    .line 78
    iget-object v3, v2, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    const/4 v4, 0x2

    iput-short v4, v3, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    .line 80
    iget-object v3, p0, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/physics/box2d/World;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v3

    .line 81
    .local v3, "body":Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->createFixture(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 82
    invoke-virtual {v3, p4}, Lcom/badlogic/gdx/physics/box2d/Body;->setUserData(Ljava/lang/Object;)V

    .line 83
    return-void
.end method


# virtual methods
.method public create(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 52
    int-to-float v0, p1

    invoke-static {v0}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertNormalToBox2dCoordinate(F)F

    move-result v0

    .line 53
    .local v0, "boxWidth":F
    int-to-float v1, p2

    invoke-static {v1}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertNormalToBox2dCoordinate(F)F

    move-result v1

    .line 54
    .local v1, "boxHeight":F
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertNormalToBox2dCoordinate(F)F

    move-result v2

    .line 55
    .local v2, "boxElementSize":F
    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    .line 58
    .local v4, "halfBoxElementSize":F
    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    div-float v6, v1, v3

    add-float/2addr v6, v4

    const/4 v7, 0x0

    invoke-direct {v5, v7, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    sget-object v6, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;->BBI_HORIZONTAL:Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    invoke-direct {p0, v5, v0, v2, v6}, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox;->createSide(Lcom/badlogic/gdx/math/Vector2;FFLorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;)V

    .line 60
    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    div-float v6, v1, v3

    neg-float v6, v6

    sub-float/2addr v6, v4

    invoke-direct {v5, v7, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    sget-object v6, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;->BBI_HORIZONTAL:Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    invoke-direct {p0, v5, v0, v2, v6}, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox;->createSide(Lcom/badlogic/gdx/math/Vector2;FFLorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;)V

    .line 62
    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    div-float v6, v0, v3

    neg-float v6, v6

    sub-float/2addr v6, v4

    invoke-direct {v5, v6, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    sget-object v6, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;->BBI_VERTICAL:Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    invoke-direct {p0, v5, v2, v1, v6}, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox;->createSide(Lcom/badlogic/gdx/math/Vector2;FFLorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;)V

    .line 64
    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    div-float v3, v0, v3

    add-float/2addr v3, v4

    invoke-direct {v5, v3, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    sget-object v3, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;->BBI_VERTICAL:Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    invoke-direct {p0, v5, v2, v1, v3}, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox;->createSide(Lcom/badlogic/gdx/math/Vector2;FFLorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;)V

    .line 65
    return-void
.end method
