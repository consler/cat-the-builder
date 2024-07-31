.class public Lcom/badlogic/gdx/math/Frustum;
.super Ljava/lang/Object;
.source "Frustum.java"


# static fields
.field protected static final clipSpacePlanePoints:[Lcom/badlogic/gdx/math/Vector3;

.field protected static final clipSpacePlanePointsArray:[F

.field private static final tmpV:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field public final planePoints:[Lcom/badlogic/gdx/math/Vector3;

.field protected final planePointsArray:[F

.field public final planes:[Lcom/badlogic/gdx/math/Plane;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector3;

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {v1, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    const/4 v5, 0x1

    aput-object v1, v0, v5

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1, v4, v4, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    const/4 v5, 0x2

    aput-object v1, v0, v5

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1, v2, v4, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1, v2, v2, v4}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    const/4 v5, 0x4

    aput-object v1, v0, v5

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1, v4, v2, v4}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    const/4 v5, 0x5

    aput-object v1, v0, v5

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1, v4, v4, v4}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    const/4 v5, 0x6

    aput-object v1, v0, v5

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1, v2, v4, v4}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/badlogic/gdx/math/Frustum;->clipSpacePlanePoints:[Lcom/badlogic/gdx/math/Vector3;

    .line 31
    const/16 v1, 0x18

    new-array v1, v1, [F

    sput-object v1, Lcom/badlogic/gdx/math/Frustum;->clipSpacePlanePointsArray:[F

    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, "j":I
    array-length v2, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 36
    .local v4, "v":Lcom/badlogic/gdx/math/Vector3;
    sget-object v5, Lcom/badlogic/gdx/math/Frustum;->clipSpacePlanePointsArray:[F

    add-int/lit8 v6, v1, 0x1

    .end local v1    # "j":I
    .local v6, "j":I
    iget v7, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v7, v5, v1

    .line 37
    sget-object v1, Lcom/badlogic/gdx/math/Frustum;->clipSpacePlanePointsArray:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .local v5, "j":I
    iget v7, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v7, v1, v6

    .line 38
    sget-object v1, Lcom/badlogic/gdx/math/Frustum;->clipSpacePlanePointsArray:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "j":I
    .restart local v6    # "j":I
    iget v7, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v7, v1, v5

    .line 35
    .end local v4    # "v":Lcom/badlogic/gdx/math/Vector3;
    add-int/lit8 v3, v3, 0x1

    move v1, v6

    goto :goto_0

    .line 42
    .end local v6    # "j":I
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Frustum;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x6

    new-array v1, v0, [Lcom/badlogic/gdx/math/Plane;

    iput-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    .line 48
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/badlogic/gdx/math/Vector3;

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v2, v1, v0

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    .line 50
    const/16 v1, 0x18

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planePointsArray:[F

    .line 53
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 54
    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    new-instance v3, Lcom/badlogic/gdx/math/Plane;

    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v4}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/math/Plane;-><init>(Lcom/badlogic/gdx/math/Vector3;F)V

    aput-object v3, v2, v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public boundsInFrustum(FFFFFF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "halfWidth"    # F
    .param p5, "halfHeight"    # F
    .param p6, "halfDepth"    # F

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    array-length v1, v1

    .local v1, "len2":I
    :goto_0
    if-ge v0, v1, :cond_8

    .line 185
    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    add-float v3, p1, p4

    add-float v4, p2, p5

    add-float v5, p3, p6

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-eq v2, v3, :cond_0

    goto/16 :goto_1

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    add-float v3, p1, p4

    add-float v4, p2, p5

    sub-float v5, p3, p6

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    add-float v3, p1, p4

    sub-float v4, p2, p5

    add-float v5, p3, p6

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-eq v2, v3, :cond_2

    goto :goto_1

    .line 188
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    add-float v3, p1, p4

    sub-float v4, p2, p5

    sub-float v5, p3, p6

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-eq v2, v3, :cond_3

    goto :goto_1

    .line 189
    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    sub-float v3, p1, p4

    add-float v4, p2, p5

    add-float v5, p3, p6

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-eq v2, v3, :cond_4

    goto :goto_1

    .line 190
    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    sub-float v3, p1, p4

    add-float v4, p2, p5

    sub-float v5, p3, p6

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-eq v2, v3, :cond_5

    goto :goto_1

    .line 191
    :cond_5
    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    sub-float v3, p1, p4

    sub-float v4, p2, p5

    add-float v5, p3, p6

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-eq v2, v3, :cond_6

    goto :goto_1

    .line 192
    :cond_6
    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    sub-float v3, p1, p4

    sub-float v4, p2, p5

    sub-float v5, p3, p6

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-eq v2, v3, :cond_7

    .line 184
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 193
    :cond_7
    const/4 v2, 0x0

    return v2

    .line 196
    .end local v0    # "i":I
    .end local v1    # "len2":I
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public boundsInFrustum(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 8
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "dimensions"    # Lcom/badlogic/gdx/math/Vector3;

    .line 178
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v0, v4

    iget v0, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v6, v0, v4

    iget v0, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float v7, v0, v4

    move-object v0, p0

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/math/Frustum;->boundsInFrustum(FFFFFF)Z

    move-result v0

    return v0
.end method

.method public boundsInFrustum(Lcom/badlogic/gdx/math/collision/BoundingBox;)Z
    .locals 4
    .param p1, "bounds"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    array-length v1, v1

    .local v1, "len2":I
    :goto_0
    if-ge v0, v1, :cond_8

    .line 161
    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    sget-object v3, Lcom/badlogic/gdx/math/Frustum;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner000(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-eq v2, v3, :cond_0

    goto/16 :goto_1

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    sget-object v3, Lcom/badlogic/gdx/math/Frustum;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner001(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    sget-object v3, Lcom/badlogic/gdx/math/Frustum;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner010(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-eq v2, v3, :cond_2

    goto :goto_1

    .line 164
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    sget-object v3, Lcom/badlogic/gdx/math/Frustum;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner011(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-eq v2, v3, :cond_3

    goto :goto_1

    .line 165
    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    sget-object v3, Lcom/badlogic/gdx/math/Frustum;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner100(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-eq v2, v3, :cond_4

    goto :goto_1

    .line 166
    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    sget-object v3, Lcom/badlogic/gdx/math/Frustum;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner101(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-eq v2, v3, :cond_5

    goto :goto_1

    .line 167
    :cond_5
    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    sget-object v3, Lcom/badlogic/gdx/math/Frustum;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner110(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-eq v2, v3, :cond_6

    goto :goto_1

    .line 168
    :cond_6
    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    sget-object v3, Lcom/badlogic/gdx/math/Frustum;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner111(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-eq v2, v3, :cond_7

    .line 160
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 169
    :cond_7
    const/4 v2, 0x0

    return v2

    .line 172
    .end local v0    # "i":I
    .end local v1    # "len2":I
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public pointInFrustum(FFF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 99
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v1

    .line 100
    .local v1, "result":Lcom/badlogic/gdx/math/Plane$PlaneSide;
    sget-object v2, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    return v2

    .line 98
    .end local v1    # "result":Lcom/badlogic/gdx/math/Plane$PlaneSide;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public pointInFrustum(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 3
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector3;

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 85
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v1

    .line 86
    .local v1, "result":Lcom/badlogic/gdx/math/Plane$PlaneSide;
    sget-object v2, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    return v2

    .line 84
    .end local v1    # "result":Lcom/badlogic/gdx/math/Plane$PlaneSide;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public sphereInFrustum(FFFF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "radius"    # F

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    neg-float v2, p4

    iget-object v3, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/badlogic/gdx/math/Plane;->d:F

    sub-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public sphereInFrustum(Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 4
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "radius"    # F

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    neg-float v2, p2

    iget-object v3, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/badlogic/gdx/math/Plane;->d:F

    sub-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 113
    const/4 v1, 0x0

    return v1

    .line 111
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public sphereInFrustumWithoutNearFar(FFFF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "radius"    # F

    .line 150
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    neg-float v2, p4

    iget-object v3, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/badlogic/gdx/math/Plane;->d:F

    sub-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 150
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public sphereInFrustumWithoutNearFar(Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 4
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "radius"    # F

    .line 136
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    neg-float v2, p2

    iget-object v3, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/badlogic/gdx/math/Plane;->d:F

    sub-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 138
    const/4 v1, 0x0

    return v1

    .line 136
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public update(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 11
    .param p1, "inverseProjectionView"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 62
    sget-object v0, Lcom/badlogic/gdx/math/Frustum;->clipSpacePlanePointsArray:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planePointsArray:[F

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planePointsArray:[F

    const/16 v2, 0x8

    const/4 v4, 0x3

    invoke-static {v0, v1, v3, v2, v4}, Lcom/badlogic/gdx/math/Matrix4;->prj([F[FIII)V

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 65
    iget-object v5, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v5, v5, v0

    .line 66
    .local v5, "v":Lcom/badlogic/gdx/math/Vector3;
    iget-object v6, p0, Lcom/badlogic/gdx/math/Frustum;->planePointsArray:[F

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "j":I
    .local v7, "j":I
    aget v1, v6, v1

    iput v1, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 67
    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planePointsArray:[F

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .local v6, "j":I
    aget v1, v1, v7

    iput v1, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 68
    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planePointsArray:[F

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    aget v1, v1, v6

    iput v1, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 64
    .end local v5    # "v":Lcom/badlogic/gdx/math/Vector3;
    add-int/lit8 v0, v0, 0x1

    move v1, v7

    goto :goto_0

    .line 71
    .end local v0    # "i":I
    .end local v7    # "j":I
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v2, 0x1

    aget-object v5, v1, v2

    aget-object v6, v1, v3

    const/4 v7, 0x2

    aget-object v1, v1, v7

    invoke-virtual {v0, v5, v6, v1}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x4

    aget-object v6, v1, v5

    const/4 v8, 0x5

    aget-object v9, v1, v8

    const/4 v10, 0x7

    aget-object v1, v1, v10

    invoke-virtual {v0, v6, v9, v1}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v6, v1, v3

    aget-object v9, v1, v5

    aget-object v1, v1, v4

    invoke-virtual {v0, v6, v9, v1}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v6, v1, v8

    aget-object v9, v1, v2

    const/4 v10, 0x6

    aget-object v1, v1, v10

    invoke-virtual {v0, v6, v9, v1}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v6, v1, v7

    aget-object v4, v1, v4

    aget-object v1, v1, v10

    invoke-virtual {v0, v6, v4, v1}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v0, v0, v8

    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v4, v1, v5

    aget-object v3, v1, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v4, v3, v1}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 77
    return-void
.end method
