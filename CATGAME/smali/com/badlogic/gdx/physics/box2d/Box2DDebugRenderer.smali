.class public Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;
.super Ljava/lang/Object;
.source "Box2DDebugRenderer.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field private static axis:Lcom/badlogic/gdx/math/Vector2;

.field private static final bodies:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation
.end field

.field private static final joints:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/physics/box2d/Joint;",
            ">;"
        }
    .end annotation
.end field

.field private static final lower:Lcom/badlogic/gdx/math/Vector2;

.field private static t:Lcom/badlogic/gdx/math/Vector2;

.field private static final upper:Lcom/badlogic/gdx/math/Vector2;

.field private static final vertices:[Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public final AABB_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public final JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public final SHAPE_AWAKE:Lcom/badlogic/gdx/graphics/Color;

.field public final SHAPE_KINEMATIC:Lcom/badlogic/gdx/graphics/Color;

.field public final SHAPE_NOT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

.field public final SHAPE_NOT_AWAKE:Lcom/badlogic/gdx/graphics/Color;

.field public final SHAPE_STATIC:Lcom/badlogic/gdx/graphics/Color;

.field public final VELOCITY_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field private drawAABBs:Z

.field private drawBodies:Z

.field private drawContacts:Z

.field private drawInactiveBodies:Z

.field private drawJoints:Z

.field private drawVelocities:Z

.field private final f:Lcom/badlogic/gdx/math/Vector2;

.field private final lv:Lcom/badlogic/gdx/math/Vector2;

.field protected renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

.field private final v:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/16 v0, 0x3e8

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->bodies:Lcom/badlogic/gdx/utils/Array;

    .line 46
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->joints:Lcom/badlogic/gdx/utils/Array;

    .line 191
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->t:Lcom/badlogic/gdx/math/Vector2;

    .line 192
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->axis:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 56
    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;-><init>(ZZZZZZ)V

    .line 57
    return-void
.end method

.method public constructor <init>(ZZZZZZ)V
    .locals 5
    .param p1, "drawBodies"    # Z
    .param p2, "drawJoints"    # Z
    .param p3, "drawAABBs"    # Z
    .param p4, "drawInactiveBodies"    # Z
    .param p5, "drawVelocities"    # Z
    .param p6, "drawContacts"    # Z

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_NOT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    .line 83
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_STATIC:Lcom/badlogic/gdx/graphics/Color;

    .line 84
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_KINEMATIC:Lcom/badlogic/gdx/graphics/Color;

    .line 85
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {v0, v4, v4, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_NOT_AWAKE:Lcom/badlogic/gdx/graphics/Color;

    .line 86
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3f333333    # 0.7f

    invoke-direct {v0, v2, v4, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_AWAKE:Lcom/badlogic/gdx/graphics/Color;

    .line 87
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 88
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1, v3, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->AABB_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 89
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v3, v1, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->VELOCITY_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 235
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->f:Lcom/badlogic/gdx/math/Vector2;

    .line 236
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    .line 237
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 66
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "i":I
    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawBodies:Z

    .line 69
    iput-boolean p2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawJoints:Z

    .line 70
    iput-boolean p3, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawAABBs:Z

    .line 71
    iput-boolean p4, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawInactiveBodies:Z

    .line 72
    iput-boolean p5, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawVelocities:Z

    .line 73
    iput-boolean p6, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawContacts:Z

    .line 74
    return-void
.end method

.method private drawAABB(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Transform;)V
    .locals 11
    .param p1, "fixture"    # Lcom/badlogic/gdx/physics/box2d/Fixture;
    .param p2, "transform"    # Lcom/badlogic/gdx/physics/box2d/Transform;

    .line 149
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Circle:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v1, :cond_0

    .line 151
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getShape()Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    .line 152
    .local v0, "shape":Lcom/badlogic/gdx/physics/box2d/CircleShape;
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->getRadius()F

    move-result v1

    .line 153
    .local v1, "radius":F
    sget-object v7, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v7, v7, v6

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 154
    sget-object v7, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v7, v7, v6

    invoke-virtual {p2, v7}, Lcom/badlogic/gdx/physics/box2d/Transform;->mul(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 155
    sget-object v7, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    sget-object v8, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v8, v1

    sget-object v9, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v9, v1

    invoke-virtual {v7, v8, v9}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 156
    sget-object v7, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    sget-object v8, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v8, v1

    sget-object v9, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v9, v1

    invoke-virtual {v7, v8, v9}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 159
    sget-object v7, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v6, v7, v6

    sget-object v7, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v8, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 160
    sget-object v6, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v6, v6, v5

    sget-object v7, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v8, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 161
    sget-object v6, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v6, v4

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v7, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 162
    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v4, v3

    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v6}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 164
    sget-object v3, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->AABB_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSolidPolygon([Lcom/badlogic/gdx/math/Vector2;ILcom/badlogic/gdx/graphics/Color;Z)V

    .end local v0    # "shape":Lcom/badlogic/gdx/physics/box2d/CircleShape;
    .end local v1    # "radius":F
    goto/16 :goto_1

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Polygon:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    if-ne v0, v1, :cond_2

    .line 166
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getShape()Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    .line 167
    .local v0, "shape":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->getVertexCount()I

    move-result v1

    .line 169
    .local v1, "vertexCount":I
    sget-object v7, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v7, v7, v6

    invoke-virtual {v0, v6, v7}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->getVertex(ILcom/badlogic/gdx/math/Vector2;)V

    .line 170
    sget-object v7, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    sget-object v8, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v6

    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/physics/box2d/Transform;->mul(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 171
    sget-object v7, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    sget-object v8, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 172
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_1

    .line 173
    sget-object v8, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v7

    invoke-virtual {v0, v7, v8}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->getVertex(ILcom/badlogic/gdx/math/Vector2;)V

    .line 174
    sget-object v8, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v7

    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/physics/box2d/Transform;->mul(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 175
    sget-object v8, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v10, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v10, v10, v7

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 176
    sget-object v8, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v10, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v10, v10, v7

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 177
    sget-object v8, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v10, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v10, v10, v7

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 178
    sget-object v8, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v10, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v10, v10, v7

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 172
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 182
    .end local v7    # "i":I
    :cond_1
    sget-object v7, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v6, v7, v6

    sget-object v7, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v8, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 183
    sget-object v6, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v6, v6, v5

    sget-object v7, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v8, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 184
    sget-object v6, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v6, v4

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v7, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 185
    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v4, v3

    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v6}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 187
    sget-object v3, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->AABB_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSolidPolygon([Lcom/badlogic/gdx/math/Vector2;ILcom/badlogic/gdx/graphics/Color;Z)V

    goto :goto_2

    .line 165
    .end local v0    # "shape":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    .end local v1    # "vertexCount":I
    :cond_2
    :goto_1
    nop

    .line 189
    :goto_2
    return-void
.end method

.method private drawContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V
    .locals 6
    .param p1, "contact"    # Lcom/badlogic/gdx/physics/box2d/Contact;

    .line 304
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Contact;->getWorldManifold()Lcom/badlogic/gdx/physics/box2d/WorldManifold;

    move-result-object v0

    .line 305
    .local v0, "worldManifold":Lcom/badlogic/gdx/physics/box2d/WorldManifold;
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/WorldManifold;->getNumberOfContactPoints()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/WorldManifold;->getPoints()[Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 307
    .local v1, "point":Lcom/badlogic/gdx/math/Vector2;
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureA()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->getColorByBody(Lcom/badlogic/gdx/physics/box2d/Body;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 308
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->point(FFF)V

    .line 309
    return-void
.end method

.method private drawJoint(Lcom/badlogic/gdx/physics/box2d/Joint;)V
    .locals 12
    .param p1, "joint"    # Lcom/badlogic/gdx/physics/box2d/Joint;

    .line 270
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getBodyA()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    .line 271
    .local v0, "bodyA":Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getBodyB()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v1

    .line 272
    .local v1, "bodyB":Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getTransform()Lcom/badlogic/gdx/physics/box2d/Transform;

    move-result-object v2

    .line 273
    .local v2, "xf1":Lcom/badlogic/gdx/physics/box2d/Transform;
    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getTransform()Lcom/badlogic/gdx/physics/box2d/Transform;

    move-result-object v3

    .line 275
    .local v3, "xf2":Lcom/badlogic/gdx/physics/box2d/Transform;
    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/Transform;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    .line 276
    .local v4, "x1":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {v3}, Lcom/badlogic/gdx/physics/box2d/Transform;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    .line 277
    .local v5, "x2":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getAnchorA()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    .line 278
    .local v6, "p1":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getAnchorB()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    .line 280
    .local v7, "p2":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getType()Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->DistanceJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v8, v9, :cond_0

    .line 281
    iget-object v8, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v6, v7, v8}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getType()Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PulleyJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v8, v9, :cond_1

    .line 283
    move-object v8, p1

    check-cast v8, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJoint;

    .line 284
    .local v8, "pulley":Lcom/badlogic/gdx/physics/box2d/joints/PulleyJoint;
    invoke-virtual {v8}, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJoint;->getGroundAnchorA()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v9

    .line 285
    .local v9, "s1":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {v8}, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJoint;->getGroundAnchorB()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v10

    .line 286
    .local v10, "s2":Lcom/badlogic/gdx/math/Vector2;
    iget-object v11, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v9, v6, v11}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 287
    iget-object v11, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v10, v7, v11}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 288
    iget-object v11, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v9, v10, v11}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 289
    .end local v8    # "pulley":Lcom/badlogic/gdx/physics/box2d/joints/PulleyJoint;
    .end local v9    # "s1":Lcom/badlogic/gdx/math/Vector2;
    .end local v10    # "s2":Lcom/badlogic/gdx/math/Vector2;
    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getType()Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MouseJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v8, v9, :cond_2

    .line 290
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getAnchorA()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getAnchorB()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v9

    iget-object v10, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v8, v9, v10}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    .line 292
    :cond_2
    iget-object v8, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v4, v6, v8}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 293
    iget-object v8, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v6, v7, v8}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 294
    iget-object v8, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v5, v7, v8}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 296
    :goto_0
    return-void
.end method

.method private drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 5
    .param p1, "x1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "x2"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 299
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 300
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFF)V

    .line 301
    return-void
.end method

.method private drawShape(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Transform;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 7
    .param p1, "fixture"    # Lcom/badlogic/gdx/physics/box2d/Fixture;
    .param p2, "transform"    # Lcom/badlogic/gdx/physics/box2d/Transform;
    .param p3, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 195
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Circle:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getShape()Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    .line 197
    .local v0, "circle":Lcom/badlogic/gdx/physics/box2d/CircleShape;
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->t:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 198
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->t:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/physics/box2d/Transform;->mul(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 199
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->t:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->getRadius()F

    move-result v3

    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->axis:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p2, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    aget v2, v5, v2

    iget-object v5, p2, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-virtual {v4, v2, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-direct {p0, v1, v3, v2, p3}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSolidCircle(Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 200
    return-void

    .line 203
    .end local v0    # "circle":Lcom/badlogic/gdx/physics/box2d/CircleShape;
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Edge:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1

    .line 204
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getShape()Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;

    .line 205
    .local v0, "edge":Lcom/badlogic/gdx/physics/box2d/EdgeShape;
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->getVertex1(Lcom/badlogic/gdx/math/Vector2;)V

    .line 206
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->getVertex2(Lcom/badlogic/gdx/math/Vector2;)V

    .line 207
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v1, v1, v3

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/physics/box2d/Transform;->mul(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 208
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v1, v1, v4

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/physics/box2d/Transform;->mul(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 209
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p0, v1, v2, p3, v4}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSolidPolygon([Lcom/badlogic/gdx/math/Vector2;ILcom/badlogic/gdx/graphics/Color;Z)V

    .line 210
    return-void

    .line 213
    .end local v0    # "edge":Lcom/badlogic/gdx/physics/box2d/EdgeShape;
    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Polygon:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    if-ne v0, v1, :cond_3

    .line 214
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getShape()Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    .line 215
    .local v0, "chain":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->getVertexCount()I

    move-result v1

    .line 216
    .local v1, "vertexCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 217
    sget-object v3, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v3, v2

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->getVertex(ILcom/badlogic/gdx/math/Vector2;)V

    .line 218
    sget-object v3, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v3, v2

    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/physics/box2d/Transform;->mul(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .end local v2    # "i":I
    :cond_2
    sget-object v2, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p0, v2, v1, p3, v4}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSolidPolygon([Lcom/badlogic/gdx/math/Vector2;ILcom/badlogic/gdx/graphics/Color;Z)V

    .line 221
    return-void

    .line 224
    .end local v0    # "chain":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    .end local v1    # "vertexCount":I
    :cond_3
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Chain:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    if-ne v0, v1, :cond_5

    .line 225
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getShape()Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/ChainShape;

    .line 226
    .local v0, "chain":Lcom/badlogic/gdx/physics/box2d/ChainShape;
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->getVertexCount()I

    move-result v1

    .line 227
    .restart local v1    # "vertexCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 228
    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v2

    invoke-virtual {v0, v2, v4}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->getVertex(ILcom/badlogic/gdx/math/Vector2;)V

    .line 229
    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v2

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/physics/box2d/Transform;->mul(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 231
    .end local v2    # "i":I
    :cond_4
    sget-object v2, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p0, v2, v1, p3, v3}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSolidPolygon([Lcom/badlogic/gdx/math/Vector2;ILcom/badlogic/gdx/graphics/Color;Z)V

    .line 233
    .end local v0    # "chain":Lcom/badlogic/gdx/physics/box2d/ChainShape;
    .end local v1    # "vertexCount":I
    :cond_5
    return-void
.end method

.method private drawSolidCircle(Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 18
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "radius"    # F
    .param p3, "axis"    # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 240
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    .line 241
    .local v4, "angle":F
    const v5, 0x3ea0d97c

    .line 242
    .local v5, "angleInc":F
    iget-object v6, v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget v7, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v8, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v9, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v10, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(FFFF)V

    .line 243
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v7, 0x14

    if-ge v6, v7, :cond_1

    .line 244
    iget-object v7, v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v8, v8, p2

    iget v9, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v8, v9

    float-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float v9, v9, p2

    iget v10, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 245
    if-nez v6, :cond_0

    .line 246
    iget-object v7, v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 247
    iget-object v7, v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->f:Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 248
    goto :goto_1

    .line 250
    :cond_0
    iget-object v7, v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget-object v8, v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v10, v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v11, v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFF)V

    .line 251
    iget-object v7, v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 243
    :goto_1
    add-int/lit8 v6, v6, 0x1

    add-float/2addr v4, v5

    goto :goto_0

    .line 253
    .end local v6    # "i":I
    :cond_1
    iget-object v6, v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget-object v7, v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->f:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v8, v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->f:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v9, v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v10, v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFF)V

    .line 254
    iget-object v11, v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget v12, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v13, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v14, 0x0

    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v7, v7, p2

    add-float v15, v6, v7

    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v7, v7, p2

    add-float v16, v6, v7

    const/16 v17, 0x0

    invoke-virtual/range {v11 .. v17}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFFFF)V

    .line 255
    return-void
.end method

.method private drawSolidPolygon([Lcom/badlogic/gdx/math/Vector2;ILcom/badlogic/gdx/graphics/Color;Z)V
    .locals 7
    .param p1, "vertices"    # [Lcom/badlogic/gdx/math/Vector2;
    .param p2, "vertexCount"    # I
    .param p3, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p4, "closed"    # Z

    .line 258
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget v1, p3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p3, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(FFFF)V

    .line 259
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 260
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->f:Lcom/badlogic/gdx/math/Vector2;

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 261
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 262
    aget-object v1, p1, v0

    .line 263
    .local v1, "v":Lcom/badlogic/gdx/math/Vector2;
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFF)V

    .line 264
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 261
    .end local v1    # "v":Lcom/badlogic/gdx/math/Vector2;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    .end local v0    # "i":I
    :cond_0
    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->f:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->f:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFF)V

    .line 267
    :cond_1
    return-void
.end method

.method public static getAxis()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .line 360
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->axis:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method private getColorByBody(Lcom/badlogic/gdx/physics/box2d/Body;)Lcom/badlogic/gdx/graphics/Color;
    .locals 2
    .param p1, "body"    # Lcom/badlogic/gdx/physics/box2d/Body;

    .line 136
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_NOT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 138
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getType()Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    if-ne v0, v1, :cond_1

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_STATIC:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 140
    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getType()Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->KinematicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    if-ne v0, v1, :cond_2

    .line 141
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_KINEMATIC:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 142
    :cond_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->isAwake()Z

    move-result v0

    if-nez v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_NOT_AWAKE:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_AWAKE:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method private renderBodies(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 3
    .param p1, "world"    # Lcom/badlogic/gdx/physics/box2d/World;

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 94
    iget-boolean v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawBodies:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawAABBs:Z

    if-eqz v0, :cond_3

    .line 95
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->bodies:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/physics/box2d/World;->getBodies(Lcom/badlogic/gdx/utils/Array;)V

    .line 96
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->bodies:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/badlogic/gdx/physics/box2d/Body;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/physics/box2d/Body;

    .line 98
    .local v1, "body":Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawInactiveBodies:Z

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderBody(Lcom/badlogic/gdx/physics/box2d/Body;)V

    .line 99
    .end local v1    # "body":Lcom/badlogic/gdx/physics/box2d/Body;
    :cond_2
    goto :goto_0

    .line 102
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/badlogic/gdx/physics/box2d/Body;>;"
    :cond_3
    iget-boolean v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawJoints:Z

    if-eqz v0, :cond_4

    .line 103
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->joints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/physics/box2d/World;->getJoints(Lcom/badlogic/gdx/utils/Array;)V

    .line 104
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->joints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/badlogic/gdx/physics/box2d/Joint;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/physics/box2d/Joint;

    .line 106
    .local v1, "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawJoint(Lcom/badlogic/gdx/physics/box2d/Joint;)V

    .line 107
    .end local v1    # "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    goto :goto_1

    .line 109
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/badlogic/gdx/physics/box2d/Joint;>;"
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 110
    iget-boolean v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawContacts:Z

    if-eqz v0, :cond_6

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Point:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 112
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/World;->getContactList()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/physics/box2d/Contact;

    .line 113
    .local v1, "contact":Lcom/badlogic/gdx/physics/box2d/Contact;
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V

    .end local v1    # "contact":Lcom/badlogic/gdx/physics/box2d/Contact;
    goto :goto_2

    .line 114
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 116
    :cond_6
    return-void
.end method

.method public static setAxis(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 0
    .param p0, "axis"    # Lcom/badlogic/gdx/math/Vector2;

    .line 364
    sput-object p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->axis:Lcom/badlogic/gdx/math/Vector2;

    .line 365
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->dispose()V

    .line 369
    return-void
.end method

.method public isDrawAABBs()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawAABBs:Z

    return v0
.end method

.method public isDrawBodies()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawBodies:Z

    return v0
.end method

.method public isDrawContacts()Z
    .locals 1

    .line 352
    iget-boolean v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawContacts:Z

    return v0
.end method

.method public isDrawInactiveBodies()Z
    .locals 1

    .line 336
    iget-boolean v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawInactiveBodies:Z

    return v0
.end method

.method public isDrawJoints()Z
    .locals 1

    .line 320
    iget-boolean v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawJoints:Z

    return v0
.end method

.method public isDrawVelocities()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawVelocities:Z

    return v0
.end method

.method public render(Lcom/badlogic/gdx/physics/box2d/World;Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "world"    # Lcom/badlogic/gdx/physics/box2d/World;
    .param p2, "projMatrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderBodies(Lcom/badlogic/gdx/physics/box2d/World;)V

    .line 80
    return-void
.end method

.method protected renderBody(Lcom/badlogic/gdx/physics/box2d/Body;)V
    .locals 6
    .param p1, "body"    # Lcom/badlogic/gdx/physics/box2d/Body;

    .line 119
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getTransform()Lcom/badlogic/gdx/physics/box2d/Transform;

    move-result-object v0

    .line 120
    .local v0, "transform":Lcom/badlogic/gdx/physics/box2d/Transform;
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 121
    .local v2, "fixture":Lcom/badlogic/gdx/physics/box2d/Fixture;
    iget-boolean v3, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawBodies:Z

    if-eqz v3, :cond_0

    .line 122
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->getColorByBody(Lcom/badlogic/gdx/physics/box2d/Body;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawShape(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Transform;Lcom/badlogic/gdx/graphics/Color;)V

    .line 123
    iget-boolean v3, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawVelocities:Z

    if-eqz v3, :cond_0

    .line 124
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    .line 125
    .local v3, "position":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->VELOCITY_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v3, v4, v5}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 129
    .end local v3    # "position":Lcom/badlogic/gdx/math/Vector2;
    :cond_0
    iget-boolean v3, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawAABBs:Z

    if-eqz v3, :cond_1

    .line 130
    invoke-direct {p0, v2, v0}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawAABB(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Transform;)V

    .line 132
    .end local v2    # "fixture":Lcom/badlogic/gdx/physics/box2d/Fixture;
    :cond_1
    goto :goto_0

    .line 133
    :cond_2
    return-void
.end method

.method public setDrawAABBs(Z)V
    .locals 0
    .param p1, "drawAABBs"    # Z

    .line 332
    iput-boolean p1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawAABBs:Z

    .line 333
    return-void
.end method

.method public setDrawBodies(Z)V
    .locals 0
    .param p1, "drawBodies"    # Z

    .line 316
    iput-boolean p1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawBodies:Z

    .line 317
    return-void
.end method

.method public setDrawContacts(Z)V
    .locals 0
    .param p1, "drawContacts"    # Z

    .line 356
    iput-boolean p1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawContacts:Z

    .line 357
    return-void
.end method

.method public setDrawInactiveBodies(Z)V
    .locals 0
    .param p1, "drawInactiveBodies"    # Z

    .line 340
    iput-boolean p1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawInactiveBodies:Z

    .line 341
    return-void
.end method

.method public setDrawJoints(Z)V
    .locals 0
    .param p1, "drawJoints"    # Z

    .line 324
    iput-boolean p1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawJoints:Z

    .line 325
    return-void
.end method

.method public setDrawVelocities(Z)V
    .locals 0
    .param p1, "drawVelocities"    # Z

    .line 348
    iput-boolean p1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawVelocities:Z

    .line 349
    return-void
.end method
