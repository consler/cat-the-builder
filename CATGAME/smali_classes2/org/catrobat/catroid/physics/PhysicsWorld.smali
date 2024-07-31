.class public Lorg/catrobat/catroid/physics/PhysicsWorld;
.super Ljava/lang/Object;
.source "PhysicsWorld.java"


# static fields
.field public static final ACTIVE_AREA_HEIGHT_FACTOR:F = 2.0f

.field public static final ACTIVE_AREA_WIDTH_FACTOR:F = 3.0f

.field public static final CATEGORY_BOUNDARYBOX:S = 0x2s

.field public static final CATEGORY_NO_COLLISION:S = 0x0s

.field public static final CATEGORY_PHYSICSOBJECT:S = 0x4s

.field public static final DEFAULT_GRAVITY:Lcom/badlogic/gdx/math/Vector2;

.field public static final IGNORE_SLEEPING_OBJECTS:Z = false

.field public static final MASK_BOUNDARYBOX:S = 0x4s

.field public static final MASK_NO_COLLISION:S = 0x0s

.field public static final MASK_PHYSICSOBJECT:S = -0x3s

.field public static final MASK_TO_BOUNCE:S = -0x1s

.field public static final POSITION_ITERATIONS:I = 0x3

.field public static final RATIO:F = 10.0f

.field public static final STABILIZING_STEPS:I = 0x6

.field private static final TAG:Ljava/lang/String;

.field public static final VELOCITY_ITERATIONS:I = 0x3

.field public static activeArea:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field private final activeHorizontalBounces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private final activeVerticalBounces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private boundaryBox:Lorg/catrobat/catroid/physics/PhysicsBoundaryBox;

.field private final physicsObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/catrobat/catroid/content/Sprite;",
            "Lorg/catrobat/catroid/physics/PhysicsObject;",
            ">;"
        }
    .end annotation
.end field

.field private physicsShapeBuilder:Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;

.field private renderer:Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;

.field private stabilizingSteCounter:I

.field private final world:Lcom/badlogic/gdx/physics/box2d/World;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    invoke-static {}, Lcom/badlogic/gdx/utils/GdxNativesLoader;->load()V

    .line 49
    const-class v0, Lorg/catrobat/catroid/physics/PhysicsWorld;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/physics/PhysicsWorld;->TAG:Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    const/4 v1, 0x0

    const/high16 v2, -0x3ee00000    # -10.0f

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    sput-object v0, Lorg/catrobat/catroid/physics/PhysicsWorld;->DEFAULT_GRAVITY:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 85
    sget v0, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    sget v1, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/physics/PhysicsWorld;-><init>(II)V

    .line 86
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/World;

    sget-object v1, Lorg/catrobat/catroid/physics/PhysicsWorld;->DEFAULT_GRAVITY:Lcom/badlogic/gdx/math/Vector2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/World;-><init>(Lcom/badlogic/gdx/math/Vector2;Z)V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->world:Lcom/badlogic/gdx/physics/box2d/World;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->physicsObjects:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->activeVerticalBounces:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->activeHorizontalBounces:Ljava/util/ArrayList;

    .line 79
    iput v2, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->stabilizingSteCounter:I

    .line 82
    invoke-static {}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->getInstance()Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->physicsShapeBuilder:Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;

    .line 89
    new-instance v0, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox;

    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox;-><init>(Lcom/badlogic/gdx/physics/box2d/World;)V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->boundaryBox:Lorg/catrobat/catroid/physics/PhysicsBoundaryBox;

    .line 90
    invoke-virtual {v0, p1, p2}, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox;->create(II)V

    .line 91
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v1, p1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    int-to-float v2, p2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    sput-object v0, Lorg/catrobat/catroid/physics/PhysicsWorld;->activeArea:Lcom/badlogic/gdx/math/Vector2;

    .line 92
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->world:Lcom/badlogic/gdx/physics/box2d/World;

    new-instance v1, Lorg/catrobat/catroid/physics/PhysicsCollisionListener;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/physics/PhysicsCollisionListener;-><init>(Lorg/catrobat/catroid/physics/PhysicsWorld;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->setContactListener(Lcom/badlogic/gdx/physics/box2d/ContactListener;)V

    .line 93
    return-void
.end method

.method private createPhysicsObject(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/physics/PhysicsObject;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 165
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    .line 166
    .local v0, "bodyDef":Lcom/badlogic/gdx/physics/box2d/BodyDef;
    new-instance v1, Lorg/catrobat/catroid/physics/PhysicsObject;

    iget-object v2, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/physics/box2d/World;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/catrobat/catroid/physics/PhysicsObject;-><init>(Lcom/badlogic/gdx/physics/box2d/Body;Lorg/catrobat/catroid/content/Sprite;)V

    return-object v1
.end method


# virtual methods
.method public bouncedOnEdge(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;)V
    .locals 5
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "boundaryBoxIdentifier"    # Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    .line 170
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->physicsObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->physicsObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/physics/PhysicsObject;

    .line 172
    .local v0, "physicsObject":Lorg/catrobat/catroid/physics/PhysicsObject;
    sget-object v1, Lorg/catrobat/catroid/physics/PhysicsWorld$1;->$SwitchMap$org$catrobat$catroid$physics$PhysicsBoundaryBox$BoundaryBoxIdentifier:[I

    invoke-virtual {p2}, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->activeVerticalBounces:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->activeHorizontalBounces:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 181
    invoke-virtual {v0, v4, p1}, Lorg/catrobat/catroid/physics/PhysicsObject;->setIfOnEdgeBounce(ZLorg/catrobat/catroid/content/Sprite;)V

    .line 182
    invoke-static {p1, v3}, Lorg/catrobat/catroid/physics/PhysicalCollision;->fireBounceOffEvent(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->activeHorizontalBounces:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->activeVerticalBounces:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 175
    invoke-virtual {v0, v4, p1}, Lorg/catrobat/catroid/physics/PhysicsObject;->setIfOnEdgeBounce(ZLorg/catrobat/catroid/content/Sprite;)V

    .line 176
    invoke-static {p1, v3}, Lorg/catrobat/catroid/physics/PhysicalCollision;->fireBounceOffEvent(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Sprite;)V

    .line 187
    .end local v0    # "physicsObject":Lorg/catrobat/catroid/physics/PhysicsObject;
    :cond_2
    :goto_0
    return-void
.end method

.method public changeLook(Lorg/catrobat/catroid/physics/PhysicsObject;Lorg/catrobat/catroid/content/Look;)V
    .locals 5
    .param p1, "physicsObject"    # Lorg/catrobat/catroid/physics/PhysicsObject;
    .param p2, "look"    # Lorg/catrobat/catroid/content/Look;

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "shapes":[Lcom/badlogic/gdx/physics/box2d/Shape;
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->physicsShapeBuilder:Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;

    invoke-virtual {p2}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v2

    .line 144
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/Look;->getSizeInUserInterfaceDimensionUnit()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    .line 143
    invoke-virtual {v1, v2, v3}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilder;->getScaledShapes(Lorg/catrobat/catroid/common/LookData;F)[Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v0

    .line 146
    :cond_0
    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/physics/PhysicsObject;->setShape([Lcom/badlogic/gdx/physics/box2d/Shape;)V

    .line 147
    return-void
.end method

.method public getGravity()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/World;->getGravity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public getPhysicsObject(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/physics/PhysicsObject;
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 150
    if-eqz p1, :cond_1

    .line 154
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->physicsObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->physicsObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/physics/PhysicsObject;

    return-object v0

    .line 158
    :cond_0
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/physics/PhysicsWorld;->createPhysicsObject(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/physics/PhysicsObject;

    move-result-object v0

    .line 159
    .local v0, "physicsObject":Lorg/catrobat/catroid/physics/PhysicsObject;
    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->physicsObjects:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-object v0

    .line 151
    .end local v0    # "physicsObject":Lorg/catrobat/catroid/physics/PhysicsObject;
    :cond_1
    const/4 v0, 0x0

    throw v0
.end method

.method public render(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 8
    .param p1, "perspectiveMatrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 123
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->renderer:Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;-><init>(ZZZZZZ)V

    iput-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->renderer:Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->renderer:Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;

    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->world:Lcom/badlogic/gdx/physics/box2d/World;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/math/Matrix4;->scl(F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->render(Lcom/badlogic/gdx/physics/box2d/World;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 130
    return-void
.end method

.method public setBounceOnce(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;)V
    .locals 4
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "boundaryBoxIdentifier"    # Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;

    .line 96
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->physicsObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->physicsObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/physics/PhysicsObject;

    .line 98
    .local v0, "physicsObject":Lorg/catrobat/catroid/physics/PhysicsObject;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/catrobat/catroid/physics/PhysicsObject;->setIfOnEdgeBounce(ZLorg/catrobat/catroid/content/Sprite;)V

    .line 99
    sget-object v2, Lorg/catrobat/catroid/physics/PhysicsWorld$1;->$SwitchMap$org$catrobat$catroid$physics$PhysicsBoundaryBox$BoundaryBoxIdentifier:[I

    invoke-virtual {p2}, Lorg/catrobat/catroid/physics/PhysicsBoundaryBox$BoundaryBoxIdentifier;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->activeVerticalBounces:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->activeHorizontalBounces:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v0    # "physicsObject":Lorg/catrobat/catroid/physics/PhysicsObject;
    :cond_2
    :goto_0
    return-void
.end method

.method public setGravity(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 133
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->world:Lcom/badlogic/gdx/physics/box2d/World;

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->setGravity(Lcom/badlogic/gdx/math/Vector2;)V

    .line 134
    return-void
.end method

.method public step(F)V
    .locals 3
    .param p1, "deltaTime"    # F

    .line 111
    iget v0, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->stabilizingSteCounter:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 112
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->stabilizingSteCounter:I

    goto :goto_0

    .line 115
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/physics/PhysicsWorld;->world:Lcom/badlogic/gdx/physics/box2d/World;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1, v1}, Lcom/badlogic/gdx/physics/box2d/World;->step(FII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "exception":Ljava/lang/Exception;
    sget-object v1, Lorg/catrobat/catroid/physics/PhysicsWorld;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
