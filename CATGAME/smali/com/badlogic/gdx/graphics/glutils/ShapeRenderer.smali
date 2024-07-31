.class public Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;
.super Ljava/lang/Object;
.source "ShapeRenderer.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;
    }
.end annotation


# instance fields
.field private autoShapeType:Z

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private final combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private defaultRectLineWidth:F

.field private matrixDirty:Z

.field private final projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private final renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

.field private shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

.field private final tmp:Lcom/badlogic/gdx/math/Vector2;

.field private final transformMatrix:Lcom/badlogic/gdx/math/Matrix4;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 107
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;-><init>(I)V

    .line 108
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxVertices"    # I

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 112
    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 9
    .param p1, "maxVertices"    # I
    .param p2, "defaultShader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 97
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 98
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 99
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 100
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->tmp:Lcom/badlogic/gdx/math/Vector2;

    .line 101
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 104
    const/high16 v1, 0x3f400000    # 0.75f

    iput v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->defaultRectLineWidth:F

    .line 115
    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 116
    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;

    invoke-direct {v2, p1, v0, v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;-><init>(IZZI)V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    goto :goto_0

    .line 118
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, v0

    move v4, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;-><init>(IZZILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 121
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 122
    return-void
.end method

.method private check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V
    .locals 4
    .param p1, "preferred"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;
    .param p2, "other"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;
    .param p3, "newVertices"    # I

    .line 1170
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eqz v0, :cond_5

    .line 1172
    if-eq v0, p1, :cond_2

    if-eq v0, p2, :cond_2

    .line 1174
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->autoShapeType:Z

    if-nez v0, :cond_1

    .line 1175
    const-string v0, ")."

    const-string v1, "Must call begin(ShapeType."

    if-nez p2, :cond_0

    .line 1176
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1178
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") or begin(ShapeType."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1180
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 1181
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    goto :goto_1

    .line 1182
    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    if-eqz v0, :cond_3

    .line 1184
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 1185
    .local v0, "type":Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 1186
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .end local v0    # "type":Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;
    goto :goto_0

    .line 1187
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->getMaxVertices()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->getNumVertices()I

    move-result v1

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_4

    .line 1189
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 1190
    .restart local v0    # "type":Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 1191
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    goto :goto_1

    .line 1187
    .end local v0    # "type":Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;
    :cond_4
    :goto_0
    nop

    .line 1193
    :goto_1
    return-void

    .line 1170
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "begin must be called first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public arc(FFFFF)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F
    .param p4, "start"    # F
    .param p5, "degrees"    # F

    .line 830
    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float v1, p5, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->arc(FFFFFI)V

    .line 831
    return-void
.end method

.method public arc(FFFFFI)V
    .locals 16
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F
    .param p4, "start"    # F
    .param p5, "degrees"    # F
    .param p6, "segments"    # I

    .line 835
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p6

    if-lez v3, :cond_3

    .line 836
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v4

    .line 837
    .local v4, "colorBits":F
    const v5, 0x40c90fdb

    const/high16 v6, 0x43b40000    # 360.0f

    div-float v6, p5, v6

    mul-float/2addr v6, v5

    int-to-float v5, v3

    div-float/2addr v6, v5

    .line 838
    .local v6, "theta":F
    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v5

    .line 839
    .local v5, "cos":F
    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v7

    .line 840
    .local v7, "sin":F
    const v8, 0x3c8efa35

    mul-float v9, p4, v8

    invoke-static {v9}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v9

    mul-float v9, v9, p3

    .line 841
    .local v9, "cx":F
    mul-float v8, v8, p4

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v8

    mul-float v8, v8, p3

    .line 843
    .local v8, "cy":F
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v11, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v12, 0x0

    if-ne v10, v11, :cond_1

    .line 844
    sget-object v10, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v11, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    mul-int/lit8 v13, v3, 0x2

    add-int/lit8 v13, v13, 0x2

    invoke-direct {v0, v10, v11, v13}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 846
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 847
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v1, v2, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 848
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 849
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v11, v1, v9

    add-float v13, v2, v8

    invoke-interface {v10, v11, v13, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 850
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v3, :cond_0

    .line 851
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v11, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 852
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v13, v1, v9

    add-float v14, v2, v8

    invoke-interface {v11, v13, v14, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 853
    move v11, v9

    .line 854
    .local v11, "temp":F
    mul-float v13, v5, v9

    mul-float v14, v7, v8

    sub-float v9, v13, v14

    .line 855
    mul-float v13, v7, v11

    mul-float v14, v5, v8

    add-float v8, v13, v14

    .line 856
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v13, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 857
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v14, v1, v9

    add-float v15, v2, v8

    invoke-interface {v13, v14, v15, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 850
    .end local v11    # "temp":F
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 859
    .end local v10    # "i":I
    :cond_0
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 860
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v11, v1, v9

    add-float v13, v2, v8

    invoke-interface {v10, v11, v13, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_2

    .line 862
    :cond_1
    sget-object v10, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v11, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    mul-int/lit8 v13, v3, 0x3

    add-int/lit8 v13, v13, 0x3

    invoke-direct {v0, v10, v11, v13}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 864
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1
    if-ge v10, v3, :cond_2

    .line 865
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v11, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 866
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v11, v1, v2, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 867
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v11, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 868
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v13, v1, v9

    add-float v14, v2, v8

    invoke-interface {v11, v13, v14, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 869
    move v11, v9

    .line 870
    .restart local v11    # "temp":F
    mul-float v13, v5, v9

    mul-float v14, v7, v8

    sub-float v9, v13, v14

    .line 871
    mul-float v13, v7, v11

    mul-float v14, v5, v8

    add-float v8, v13, v14

    .line 872
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v13, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 873
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v14, v1, v9

    add-float v15, v2, v8

    invoke-interface {v13, v14, v15, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 864
    .end local v11    # "temp":F
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 875
    .end local v10    # "i":I
    :cond_2
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 876
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v1, v2, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 877
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 878
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v11, v1, v9

    add-float v13, v2, v8

    invoke-interface {v10, v11, v13, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 881
    :goto_2
    move v10, v9

    .line 882
    .local v10, "temp":F
    const/4 v9, 0x0

    .line 883
    const/4 v8, 0x0

    .line 884
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v11, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 885
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v13, v1, v9

    add-float v14, v2, v8

    invoke-interface {v11, v13, v14, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 886
    return-void

    .line 835
    .end local v4    # "colorBits":F
    .end local v5    # "cos":F
    .end local v6    # "theta":F
    .end local v7    # "sin":F
    .end local v8    # "cy":F
    .end local v9    # "cx":F
    .end local v10    # "temp":F
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "segments must be > 0."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public begin()V
    .locals 2

    .line 198
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->autoShapeType:Z

    if-eqz v0, :cond_0

    .line 199
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 200
    return-void

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "autoShapeType must be true to use this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V
    .locals 3
    .param p1, "type"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 206
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-nez v0, :cond_1

    .line 207
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 208
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, v1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->getGlType()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->begin(Lcom/badlogic/gdx/math/Matrix4;I)V

    .line 214
    return-void

    .line 206
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call end() before beginning a new shape batch."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public box(FFFFFF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "depth"    # F

    .line 657
    neg-float p6, p6

    .line 658
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 659
    .local v0, "colorBits":F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v1, v2, :cond_0

    .line 660
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/16 v3, 0x18

    invoke-direct {p0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 662
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 663
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 664
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 665
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    invoke-interface {v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 667
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 668
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    invoke-interface {v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 669
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 670
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p3, p6

    invoke-interface {v1, v2, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 672
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 673
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p3, p6

    invoke-interface {v1, v2, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 674
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 675
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p3, p6

    invoke-interface {v1, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 677
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 678
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p3, p6

    invoke-interface {v1, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 679
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 680
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 682
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 683
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 684
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 685
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    invoke-interface {v1, p1, v2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 687
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 688
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    invoke-interface {v1, p1, v2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 689
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 690
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    invoke-interface {v1, v2, v3, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 692
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 693
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    invoke-interface {v1, v2, v3, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 694
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 695
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    add-float v4, p3, p6

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 697
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 698
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    add-float v4, p3, p6

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 699
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 700
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    add-float v3, p3, p6

    invoke-interface {v1, p1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 702
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 703
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    add-float v3, p3, p6

    invoke-interface {v1, p1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 704
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 705
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    invoke-interface {v1, p1, v2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 707
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 708
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    invoke-interface {v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 709
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 710
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    invoke-interface {v1, v2, v3, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 712
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 713
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p3, p6

    invoke-interface {v1, v2, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 714
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 715
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    add-float v4, p3, p6

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 717
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 718
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p3, p6

    invoke-interface {v1, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 719
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 720
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    add-float v3, p3, p6

    invoke-interface {v1, p1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto/16 :goto_0

    .line 722
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/16 v3, 0x24

    invoke-direct {p0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 725
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 726
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 727
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 728
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    invoke-interface {v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 729
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 730
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    invoke-interface {v1, v2, v3, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 732
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 733
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 734
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 735
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    invoke-interface {v1, v2, v3, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 736
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 737
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    invoke-interface {v1, p1, v2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 740
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 741
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p3, p6

    invoke-interface {v1, v2, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 742
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 743
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p3, p6

    invoke-interface {v1, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 744
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 745
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    add-float v4, p3, p6

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 747
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 748
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    add-float v4, p3, p6

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 749
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 750
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p3, p6

    invoke-interface {v1, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 751
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 752
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    add-float v3, p3, p6

    invoke-interface {v1, p1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 755
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 756
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p3, p6

    invoke-interface {v1, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 757
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 758
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 759
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 760
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    invoke-interface {v1, p1, v2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 762
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 763
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p3, p6

    invoke-interface {v1, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 764
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 765
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    invoke-interface {v1, p1, v2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 766
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 767
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    add-float v3, p3, p6

    invoke-interface {v1, p1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 770
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 771
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    invoke-interface {v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 772
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 773
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p3, p6

    invoke-interface {v1, v2, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 774
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 775
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    add-float v4, p3, p6

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 777
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 778
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    invoke-interface {v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 779
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 780
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    add-float v4, p3, p6

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 781
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 782
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    invoke-interface {v1, v2, v3, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 785
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 786
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    invoke-interface {v1, p1, v2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 787
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 788
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    invoke-interface {v1, v2, v3, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 789
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 790
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    add-float v4, p3, p6

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 792
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 793
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    invoke-interface {v1, p1, v2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 794
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 795
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    add-float v4, p3, p6

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 796
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 797
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    add-float v3, p3, p6

    invoke-interface {v1, p1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 800
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 801
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p3, p6

    invoke-interface {v1, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 802
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 803
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p3, p6

    invoke-interface {v1, v2, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 804
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 805
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    invoke-interface {v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 807
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 808
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p3, p6

    invoke-interface {v1, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 809
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 810
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    invoke-interface {v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 811
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 812
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 815
    :goto_0
    return-void
.end method

.method public circle(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F

    .line 890
    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->circle(FFFI)V

    .line 891
    return-void
.end method

.method public circle(FFFI)V
    .locals 16
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F
    .param p4, "segments"    # I

    .line 895
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    if-lez v3, :cond_3

    .line 896
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v4

    .line 897
    .local v4, "colorBits":F
    const v5, 0x40c90fdb

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 898
    .local v5, "angle":F
    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v6

    .line 899
    .local v6, "cos":F
    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v7

    .line 900
    .local v7, "sin":F
    move/from16 v8, p3

    .local v8, "cx":F
    const/4 v9, 0x0

    .line 901
    .local v9, "cy":F
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v11, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v12, 0x0

    if-ne v10, v11, :cond_1

    .line 902
    sget-object v10, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v11, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    mul-int/lit8 v13, v3, 0x2

    add-int/lit8 v13, v13, 0x2

    invoke-direct {v0, v10, v11, v13}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 903
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v3, :cond_0

    .line 904
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v11, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 905
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v13, v1, v8

    add-float v14, v2, v9

    invoke-interface {v11, v13, v14, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 906
    move v11, v8

    .line 907
    .local v11, "temp":F
    mul-float v13, v6, v8

    mul-float v14, v7, v9

    sub-float v8, v13, v14

    .line 908
    mul-float v13, v7, v11

    mul-float v14, v6, v9

    add-float v9, v13, v14

    .line 909
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v13, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 910
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v14, v1, v8

    add-float v15, v2, v9

    invoke-interface {v13, v14, v15, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 903
    .end local v11    # "temp":F
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 913
    .end local v10    # "i":I
    :cond_0
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 914
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v11, v1, v8

    add-float v13, v2, v9

    invoke-interface {v10, v11, v13, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_2

    .line 916
    :cond_1
    sget-object v10, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v11, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    mul-int/lit8 v13, v3, 0x3

    add-int/lit8 v13, v13, 0x3

    invoke-direct {v0, v10, v11, v13}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 917
    add-int/lit8 v3, v3, -0x1

    .line 918
    .end local p4    # "segments":I
    .local v3, "segments":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1
    if-ge v10, v3, :cond_2

    .line 919
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v11, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 920
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v11, v1, v2, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 921
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v11, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 922
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v13, v1, v8

    add-float v14, v2, v9

    invoke-interface {v11, v13, v14, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 923
    move v11, v8

    .line 924
    .restart local v11    # "temp":F
    mul-float v13, v6, v8

    mul-float v14, v7, v9

    sub-float v8, v13, v14

    .line 925
    mul-float v13, v7, v11

    mul-float v14, v6, v9

    add-float v9, v13, v14

    .line 926
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v13, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 927
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v14, v1, v8

    add-float v15, v2, v9

    invoke-interface {v13, v14, v15, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 918
    .end local v11    # "temp":F
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 930
    .end local v10    # "i":I
    :cond_2
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 931
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v1, v2, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 932
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 933
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v11, v1, v8

    add-float v13, v2, v9

    invoke-interface {v10, v11, v13, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 936
    :goto_2
    move v10, v8

    .line 937
    .local v10, "temp":F
    move/from16 v8, p3

    .line 938
    const/4 v9, 0x0

    .line 939
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v11, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 940
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v13, v1, v8

    add-float v14, v2, v9

    invoke-interface {v11, v13, v14, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 941
    return-void

    .line 895
    .end local v3    # "segments":I
    .end local v4    # "colorBits":F
    .end local v5    # "angle":F
    .end local v6    # "cos":F
    .end local v7    # "sin":F
    .end local v8    # "cx":F
    .end local v9    # "cy":F
    .end local v10    # "temp":F
    .restart local p4    # "segments":I
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "segments must be > 0."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public cone(FFFFF)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "radius"    # F
    .param p5, "height"    # F

    .line 1030
    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->cone(FFFFFI)V

    .line 1031
    return-void
.end method

.method public cone(FFFFFI)V
    .locals 16
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "radius"    # F
    .param p5, "height"    # F
    .param p6, "segments"    # I

    .line 1035
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p6

    if-lez v4, :cond_4

    .line 1036
    sget-object v5, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v6, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    mul-int/lit8 v7, v4, 0x4

    add-int/lit8 v7, v7, 0x2

    invoke-direct {v0, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 1037
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v5

    .line 1038
    .local v5, "colorBits":F
    const v6, 0x40c90fdb

    int-to-float v7, v4

    div-float/2addr v6, v7

    .line 1039
    .local v6, "angle":F
    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v7

    .line 1040
    .local v7, "cos":F
    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v8

    .line 1041
    .local v8, "sin":F
    move/from16 v9, p4

    .local v9, "cx":F
    const/4 v10, 0x0

    .line 1042
    .local v10, "cy":F
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v12, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v11, v12, :cond_1

    .line 1043
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v4, :cond_0

    .line 1044
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v12, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1045
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v13, v1, v9

    add-float v14, v2, v10

    invoke-interface {v12, v13, v14, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1046
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v12, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1047
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v13, v3, p5

    invoke-interface {v12, v1, v2, v13}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1048
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v12, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1049
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v13, v1, v9

    add-float v14, v2, v10

    invoke-interface {v12, v13, v14, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1050
    move v12, v9

    .line 1051
    .local v12, "temp":F
    mul-float v13, v7, v9

    mul-float v14, v8, v10

    sub-float v9, v13, v14

    .line 1052
    mul-float v13, v8, v12

    mul-float v14, v7, v10

    add-float v10, v13, v14

    .line 1053
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v13, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1054
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v14, v1, v9

    add-float v15, v2, v10

    invoke-interface {v13, v14, v15, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1043
    .end local v12    # "temp":F
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1057
    .end local v11    # "i":I
    :cond_0
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v11, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1058
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v12, v1, v9

    add-float v13, v2, v10

    invoke-interface {v11, v12, v13, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto/16 :goto_2

    .line 1060
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 1061
    .end local p6    # "segments":I
    .local v4, "segments":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_1
    if-ge v11, v4, :cond_2

    .line 1062
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v12, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1063
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v12, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1064
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v12, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1065
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v13, v1, v9

    add-float v14, v2, v10

    invoke-interface {v12, v13, v14, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1066
    move v12, v9

    .line 1067
    .restart local v12    # "temp":F
    move v13, v10

    .line 1068
    .local v13, "temp2":F
    mul-float v14, v7, v9

    mul-float v15, v8, v10

    sub-float v9, v14, v15

    .line 1069
    mul-float v14, v8, v12

    mul-float v15, v7, v10

    add-float v10, v14, v15

    .line 1070
    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v14, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1071
    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v15, v1, v9

    move/from16 p6, v4

    .end local v4    # "segments":I
    .restart local p6    # "segments":I
    add-float v4, v2, v10

    invoke-interface {v14, v15, v4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1073
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1074
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v14, v1, v12

    add-float v15, v2, v13

    invoke-interface {v4, v14, v15, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1075
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1076
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v14, v1, v9

    add-float v15, v2, v10

    invoke-interface {v4, v14, v15, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1077
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1078
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v14, v3, p5

    invoke-interface {v4, v1, v2, v14}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1061
    .end local v12    # "temp":F
    .end local v13    # "temp2":F
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, p6

    goto :goto_1

    .end local p6    # "segments":I
    .restart local v4    # "segments":I
    :cond_2
    move/from16 p6, v4

    .line 1081
    .end local v4    # "segments":I
    .end local v11    # "i":I
    .restart local p6    # "segments":I
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1082
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1083
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1084
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v11, v1, v9

    add-float v12, v2, v10

    invoke-interface {v4, v11, v12, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    move/from16 v4, p6

    .line 1086
    .end local p6    # "segments":I
    .restart local v4    # "segments":I
    :goto_2
    move v11, v9

    .line 1087
    .local v11, "temp":F
    move v12, v10

    .line 1088
    .local v12, "temp2":F
    move/from16 v9, p4

    .line 1089
    const/4 v10, 0x0

    .line 1090
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v13, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1091
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v14, v1, v9

    add-float v15, v2, v10

    invoke-interface {v13, v14, v15, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1092
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v14, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eq v13, v14, :cond_3

    .line 1093
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v13, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1094
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v14, v1, v11

    add-float v15, v2, v12

    invoke-interface {v13, v14, v15, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1095
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v13, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1096
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v14, v1, v9

    add-float v15, v2, v10

    invoke-interface {v13, v14, v15, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1097
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v13, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1098
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v14, v3, p5

    invoke-interface {v13, v1, v2, v14}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1100
    :cond_3
    return-void

    .line 1035
    .end local v4    # "segments":I
    .end local v5    # "colorBits":F
    .end local v6    # "angle":F
    .end local v7    # "cos":F
    .end local v8    # "sin":F
    .end local v9    # "cx":F
    .end local v10    # "cy":F
    .end local v11    # "temp":F
    .end local v12    # "temp2":F
    .restart local p6    # "segments":I
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "segments must be > 0."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public curve(FFFFFFFFI)V
    .locals 27
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "cx1"    # F
    .param p4, "cy1"    # F
    .param p5, "cx2"    # F
    .param p6, "cy2"    # F
    .param p7, "x2"    # F
    .param p8, "y2"    # F
    .param p9, "segments"    # I

    .line 281
    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    sget-object v4, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v0, v4, v6, v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 282
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v4

    .line 285
    .local v4, "colorBits":F
    int-to-float v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, v5

    .line 286
    .local v6, "subdiv_step":F
    mul-float v5, v6, v6

    .line 287
    .local v5, "subdiv_step2":F
    mul-float v7, v6, v6

    mul-float/2addr v7, v6

    .line 289
    .local v7, "subdiv_step3":F
    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    .line 290
    .local v9, "pre1":F
    mul-float v10, v5, v8

    .line 291
    .local v10, "pre2":F
    const/high16 v11, 0x40c00000    # 6.0f

    mul-float v12, v5, v11

    .line 292
    .local v12, "pre4":F
    mul-float/2addr v11, v7

    .line 294
    .local v11, "pre5":F
    const/high16 v13, 0x40000000    # 2.0f

    mul-float v14, p3, v13

    sub-float v14, p1, v14

    add-float v14, v14, p5

    .line 295
    .local v14, "tmp1x":F
    mul-float v13, v13, p4

    sub-float v13, p2, v13

    add-float v13, v13, p6

    .line 297
    .local v13, "tmp1y":F
    sub-float v15, p3, p5

    mul-float/2addr v15, v8

    sub-float v15, v15, p1

    add-float/2addr v15, v1

    .line 298
    .local v15, "tmp2x":F
    sub-float v16, p4, p6

    mul-float v16, v16, v8

    sub-float v16, v16, p2

    add-float v16, v16, v2

    .line 300
    .local v16, "tmp2y":F
    move/from16 v8, p1

    .line 301
    .local v8, "fx":F
    move/from16 v17, p2

    .line 303
    .local v17, "fy":F
    sub-float v18, p3, p1

    mul-float v18, v18, v9

    mul-float v19, v14, v10

    add-float v18, v18, v19

    mul-float v19, v15, v7

    add-float v18, v18, v19

    .line 304
    .local v18, "dfx":F
    sub-float v19, p4, p2

    mul-float v19, v19, v9

    mul-float v20, v13, v10

    add-float v19, v19, v20

    mul-float v20, v16, v7

    add-float v19, v19, v20

    .line 306
    .local v19, "dfy":F
    mul-float v20, v14, v12

    mul-float v21, v15, v11

    add-float v20, v20, v21

    .line 307
    .local v20, "ddfx":F
    mul-float v21, v13, v12

    mul-float v22, v16, v11

    add-float v21, v21, v22

    .line 309
    .local v21, "ddfy":F
    mul-float v22, v15, v11

    .line 310
    .local v22, "dddfx":F
    mul-float v23, v16, v11

    move/from16 v26, v17

    move/from16 v17, v5

    move/from16 v5, v26

    .line 312
    .end local p9    # "segments":I
    .local v3, "segments":I
    .local v5, "fy":F
    .local v17, "subdiv_step2":F
    .local v23, "dddfy":F
    :goto_0
    add-int/lit8 v24, v3, -0x1

    move/from16 v25, v6

    .end local v3    # "segments":I
    .end local v6    # "subdiv_step":F
    .local v24, "segments":I
    .local v25, "subdiv_step":F
    const/4 v6, 0x0

    if-lez v3, :cond_0

    .line 313
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 314
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v3, v8, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 315
    add-float v8, v8, v18

    .line 316
    add-float v5, v5, v19

    .line 317
    add-float v18, v18, v20

    .line 318
    add-float v19, v19, v21

    .line 319
    add-float v20, v20, v22

    .line 320
    add-float v21, v21, v23

    .line 321
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 322
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v3, v8, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    move/from16 v3, v24

    move/from16 v6, v25

    goto :goto_0

    .line 324
    :cond_0
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 325
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v3, v8, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 326
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 327
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v3, v1, v2, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 328
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1223
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->dispose()V

    .line 1224
    return-void
.end method

.method public ellipse(FFFF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 945
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v1, p3, v0

    mul-float/2addr v0, p4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->ellipse(FFFFI)V

    .line 946
    return-void
.end method

.method public ellipse(FFFFF)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "rotation"    # F

    .line 982
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v1, p3, v0

    mul-float/2addr v0, p4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->ellipse(FFFFFI)V

    .line 983
    return-void
.end method

.method public ellipse(FFFFFI)V
    .locals 18
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "rotation"    # F
    .param p6, "segments"    # I

    .line 987
    move-object/from16 v0, p0

    move/from16 v1, p6

    if-lez v1, :cond_3

    .line 988
    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v3, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    mul-int/lit8 v4, v1, 0x3

    invoke-direct {v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 989
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v2

    .line 990
    .local v2, "colorBits":F
    const v3, 0x40c90fdb

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 992
    .local v3, "angle":F
    const v4, 0x40490fdb    # (float)Math.PI

    mul-float v4, v4, p5

    const/high16 v5, 0x43340000    # 180.0f

    div-float/2addr v4, v5

    .line 993
    .end local p5    # "rotation":F
    .local v4, "rotation":F
    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v5

    .line 994
    .local v5, "sin":F
    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v6

    .line 996
    .local v6, "cos":F
    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, p3, v7

    add-float v8, p1, v8

    .local v8, "cx":F
    div-float v7, p4, v7

    add-float v7, p2, v7

    .line 997
    .local v7, "cy":F
    const/high16 v9, 0x3f000000    # 0.5f

    mul-float v10, p3, v9

    .line 998
    .local v10, "x1":F
    const/4 v11, 0x0

    .line 999
    .local v11, "y1":F
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v13, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v14, 0x0

    if-ne v12, v13, :cond_1

    .line 1000
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v1, :cond_0

    .line 1001
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v13, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1002
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    mul-float v15, v6, v10

    add-float/2addr v15, v8

    mul-float v16, v5, v11

    sub-float v15, v15, v16

    mul-float v16, v5, v10

    add-float v16, v7, v16

    mul-float v17, v6, v11

    add-float v9, v16, v17

    invoke-interface {v13, v15, v9, v14}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1004
    const/high16 v9, 0x3f000000    # 0.5f

    mul-float v13, p3, v9

    add-int/lit8 v15, v12, 0x1

    int-to-float v15, v15

    mul-float/2addr v15, v3

    invoke-static {v15}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v15

    mul-float v10, v13, v15

    .line 1005
    mul-float v13, p4, v9

    add-int/lit8 v9, v12, 0x1

    int-to-float v9, v9

    mul-float/2addr v9, v3

    invoke-static {v9}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v9

    mul-float v11, v13, v9

    .line 1007
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1008
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    mul-float v13, v6, v10

    add-float/2addr v13, v8

    mul-float v15, v5, v11

    sub-float/2addr v13, v15

    mul-float v15, v5, v10

    add-float/2addr v15, v7

    mul-float v16, v6, v11

    add-float v15, v15, v16

    invoke-interface {v9, v13, v15, v14}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1000
    add-int/lit8 v12, v12, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    goto :goto_0

    .end local v12    # "i":I
    :cond_0
    goto :goto_2

    .line 1011
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v1, :cond_2

    .line 1012
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v12, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1013
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    mul-float v13, v6, v10

    add-float/2addr v13, v8

    mul-float v15, v5, v11

    sub-float/2addr v13, v15

    mul-float v15, v5, v10

    add-float/2addr v15, v7

    mul-float v16, v6, v11

    add-float v15, v15, v16

    invoke-interface {v12, v13, v15, v14}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1015
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v12, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1016
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v12, v8, v7, v14}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1018
    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v13, p3, v12

    add-int/lit8 v15, v9, 0x1

    int-to-float v15, v15

    mul-float/2addr v15, v3

    invoke-static {v15}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v15

    mul-float v10, v13, v15

    .line 1019
    mul-float v13, p4, v12

    add-int/lit8 v15, v9, 0x1

    int-to-float v15, v15

    mul-float/2addr v15, v3

    invoke-static {v15}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v15

    mul-float v11, v13, v15

    .line 1021
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v13, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1022
    iget-object v13, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    mul-float v15, v6, v10

    add-float/2addr v15, v8

    mul-float v16, v5, v11

    sub-float v15, v15, v16

    mul-float v16, v5, v10

    add-float v16, v7, v16

    mul-float v17, v6, v11

    add-float v12, v16, v17

    invoke-interface {v13, v15, v12, v14}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1011
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1025
    .end local v9    # "i":I
    :cond_2
    :goto_2
    return-void

    .line 987
    .end local v2    # "colorBits":F
    .end local v3    # "angle":F
    .end local v4    # "rotation":F
    .end local v5    # "sin":F
    .end local v6    # "cos":F
    .end local v7    # "cy":F
    .end local v8    # "cx":F
    .end local v10    # "x1":F
    .end local v11    # "y1":F
    .restart local p5    # "rotation":F
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "segments must be > 0."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public ellipse(FFFFI)V
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "segments"    # I

    .line 950
    move-object v0, p0

    move/from16 v1, p5

    if-lez v1, :cond_3

    .line 951
    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v3, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    mul-int/lit8 v4, v1, 0x3

    invoke-direct {p0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 952
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v2

    .line 953
    .local v2, "colorBits":F
    const v3, 0x40c90fdb

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 955
    .local v3, "angle":F
    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, p3, v4

    add-float/2addr v5, p1

    .local v5, "cx":F
    div-float v4, p4, v4

    add-float/2addr v4, p2

    .line 956
    .local v4, "cy":F
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v7, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    if-ne v6, v7, :cond_1

    .line 957
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_0

    .line 958
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 959
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    mul-float v10, p3, v9

    int-to-float v11, v6

    mul-float/2addr v11, v3

    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v10, v5

    mul-float v11, p4, v9

    int-to-float v12, v6

    mul-float/2addr v12, v3

    invoke-static {v12}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v12

    mul-float/2addr v11, v12

    add-float/2addr v11, v4

    invoke-interface {v7, v10, v11, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 961
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 962
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    mul-float v10, p3, v9

    add-int/lit8 v11, v6, 0x1

    int-to-float v11, v11

    mul-float/2addr v11, v3

    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v10, v5

    mul-float v11, p4, v9

    add-int/lit8 v12, v6, 0x1

    int-to-float v12, v12

    mul-float/2addr v12, v3

    .line 963
    invoke-static {v12}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v12

    mul-float/2addr v11, v12

    add-float/2addr v11, v4

    .line 962
    invoke-interface {v7, v10, v11, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 957
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v6    # "i":I
    :cond_0
    goto :goto_2

    .line 966
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    if-ge v6, v1, :cond_2

    .line 967
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 968
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    mul-float v10, p3, v9

    int-to-float v11, v6

    mul-float/2addr v11, v3

    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v10, v5

    mul-float v11, p4, v9

    int-to-float v12, v6

    mul-float/2addr v12, v3

    invoke-static {v12}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v12

    mul-float/2addr v11, v12

    add-float/2addr v11, v4

    invoke-interface {v7, v10, v11, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 970
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 971
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v5, v4, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 973
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 974
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    mul-float v10, p3, v9

    add-int/lit8 v11, v6, 0x1

    int-to-float v11, v11

    mul-float/2addr v11, v3

    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v10, v5

    mul-float v11, p4, v9

    add-int/lit8 v12, v6, 0x1

    int-to-float v12, v12

    mul-float/2addr v12, v3

    .line 975
    invoke-static {v12}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v12

    mul-float/2addr v11, v12

    add-float/2addr v11, v4

    .line 974
    invoke-interface {v7, v10, v11, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 966
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 978
    .end local v6    # "i":I
    :cond_2
    :goto_2
    return-void

    .line 950
    .end local v2    # "colorBits":F
    .end local v3    # "angle":F
    .end local v4    # "cy":F
    .end local v5    # "cx":F
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "segments must be > 0."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public end()V
    .locals 1

    .line 1197
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->end()V

    .line 1198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 1199
    return-void
.end method

.method public flush()V
    .locals 1

    .line 1202
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 1203
    .local v0, "type":Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;
    if-nez v0, :cond_0

    return-void

    .line 1204
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 1205
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 1206
    return-void
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getCurrentType()Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;
    .locals 1

    .line 1210
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    return-object v0
.end method

.method public getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public getRenderer()Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;
    .locals 1

    .line 1214
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    return-object v0
.end method

.method public getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public identity()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 168
    return-void
.end method

.method public isDrawing()Z
    .locals 1

    .line 1219
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final line(FFFF)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 252
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move-object v7, v8

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 253
    return-void
.end method

.method public final line(FFFFFF)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "z2"    # F

    .line 242
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, v8

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 243
    return-void
.end method

.method public line(FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "z2"    # F
    .param p7, "c1"    # Lcom/badlogic/gdx/graphics/Color;
    .param p8, "c2"    # Lcom/badlogic/gdx/graphics/Color;

    .line 268
    move-object v8, p0

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    iget-object v0, v8, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v0, v1, :cond_0

    .line 269
    iget v5, v8, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->defaultRectLineWidth:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p4

    move/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rectLine(FFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 270
    return-void

    .line 272
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 273
    iget-object v0, v8, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, v9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v9, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 274
    iget-object v0, v8, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 275
    iget-object v0, v8, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v4, v10, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v5, v10, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v6, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v7, v10, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 276
    iget-object v0, v8, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-interface {v0, p4, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 277
    return-void
.end method

.method public final line(FFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "c1"    # Lcom/badlogic/gdx/graphics/Color;
    .param p6, "c2"    # Lcom/badlogic/gdx/graphics/Color;

    .line 262
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 263
    return-void
.end method

.method public final line(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 9
    .param p1, "v0"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "v1"    # Lcom/badlogic/gdx/math/Vector2;

    .line 257
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v7, v8

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 258
    return-void
.end method

.method public final line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 9
    .param p1, "v0"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "v1"    # Lcom/badlogic/gdx/math/Vector3;

    .line 247
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    move-object v7, v8

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 248
    return-void
.end method

.method public point(FFF)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/high16 v2, 0x3f000000    # 0.5f

    if-ne v0, v1, :cond_0

    .line 227
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->defaultRectLineWidth:F

    mul-float/2addr v0, v2

    .line 228
    .local v0, "size":F
    sub-float v2, p1, v0

    sub-float v3, p2, v0

    add-float v5, p1, v0

    add-float v6, p2, v0

    move-object v1, p0

    move v4, p3

    move v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFFFF)V

    .line 229
    return-void

    .line 230
    .end local v0    # "size":F
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v0, v1, :cond_1

    .line 231
    iget v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->defaultRectLineWidth:F

    mul-float/2addr v2, v9

    .line 232
    .local v2, "size":F
    sub-float v4, p1, v2

    sub-float v5, p2, v2

    sub-float v6, p3, v2

    move-object v3, p0

    move v7, v9

    move v8, v9

    invoke-virtual/range {v3 .. v9}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->box(FFFFFF)V

    .line 233
    return-void

    .line 235
    .end local v2    # "size":F
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Point:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 236
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(Lcom/badlogic/gdx/graphics/Color;)V

    .line 237
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 238
    return-void
.end method

.method public polygon([F)V
    .locals 2
    .param p1, "vertices"    # [F

    .line 1136
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->polygon([FII)V

    .line 1137
    return-void
.end method

.method public polygon([FII)V
    .locals 11
    .param p1, "vertices"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 1104
    const/4 v0, 0x6

    if-lt p3, v0, :cond_3

    .line 1105
    rem-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_2

    .line 1107
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 1108
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 1109
    .local v0, "colorBits":F
    const/4 v1, 0x0

    aget v1, p1, v1

    .line 1110
    .local v1, "firstX":F
    const/4 v2, 0x1

    aget v2, p1, v2

    .line 1112
    .local v2, "firstY":F
    move v3, p2

    .local v3, "i":I
    add-int v4, p2, p3

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 1113
    aget v5, p1, v3

    .line 1114
    .local v5, "x1":F
    add-int/lit8 v6, v3, 0x1

    aget v6, p1, v6

    .line 1119
    .local v6, "y1":F
    add-int/lit8 v7, v3, 0x2

    if-lt v7, p3, :cond_0

    .line 1120
    move v7, v1

    .line 1121
    .local v7, "x2":F
    move v8, v2

    .local v8, "y2":F
    goto :goto_1

    .line 1123
    .end local v7    # "x2":F
    .end local v8    # "y2":F
    :cond_0
    add-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 1124
    .restart local v7    # "x2":F
    add-int/lit8 v8, v3, 0x3

    aget v8, p1, v8

    .line 1127
    .restart local v8    # "y2":F
    :goto_1
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1128
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v10, 0x0

    invoke-interface {v9, v5, v6, v10}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1129
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1130
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v7, v8, v10}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1112
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    .end local v7    # "x2":F
    .end local v8    # "y2":F
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 1132
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_1
    return-void

    .line 1105
    .end local v0    # "colorBits":F
    .end local v1    # "firstX":F
    .end local v2    # "firstY":F
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Polygons must have an even number of vertices."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1104
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Polygons must contain at least 3 points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public polyline([F)V
    .locals 2
    .param p1, "vertices"    # [F

    .line 1165
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->polyline([FII)V

    .line 1166
    return-void
.end method

.method public polyline([FII)V
    .locals 9
    .param p1, "vertices"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 1141
    const/4 v0, 0x4

    if-lt p3, v0, :cond_2

    .line 1142
    rem-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_1

    .line 1144
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 1145
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 1146
    .local v0, "colorBits":F
    move v1, p2

    .local v1, "i":I
    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1147
    aget v3, p1, v1

    .line 1148
    .local v3, "x1":F
    add-int/lit8 v4, v1, 0x1

    aget v4, p1, v4

    .line 1153
    .local v4, "y1":F
    add-int/lit8 v5, v1, 0x2

    aget v5, p1, v5

    .line 1154
    .local v5, "x2":F
    add-int/lit8 v6, v1, 0x3

    aget v6, p1, v6

    .line 1156
    .local v6, "y2":F
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1157
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v8, 0x0

    invoke-interface {v7, v3, v4, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1158
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1159
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v5, v6, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1146
    .end local v3    # "x1":F
    .end local v4    # "y1":F
    .end local v5    # "x2":F
    .end local v6    # "y2":F
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1161
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_0
    return-void

    .line 1142
    .end local v0    # "colorBits":F
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Polylines must have an even number of vertices."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1141
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Polylines must contain at least 2 points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rect(FFFF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 389
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 390
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 391
    .local v0, "colorBits":F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 392
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 393
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 394
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 395
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p3

    invoke-interface {v1, v2, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 397
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 398
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p3

    invoke-interface {v1, v2, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 399
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 400
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p3

    add-float v4, p2, p4

    invoke-interface {v1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 402
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 403
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p3

    add-float v4, p2, p4

    invoke-interface {v1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 404
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 405
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p4

    invoke-interface {v1, p1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 407
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 408
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p4

    invoke-interface {v1, p1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 409
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 410
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_0

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 413
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 414
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 415
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p3

    invoke-interface {v1, v2, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 416
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 417
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p3

    add-float v4, p2, p4

    invoke-interface {v1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 419
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 420
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p3

    add-float v4, p2, p4

    invoke-interface {v1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 421
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 422
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p4

    invoke-interface {v1, p1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 423
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 424
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 426
    :goto_0
    return-void
.end method

.method public rect(FFFFFFFFF)V
    .locals 15
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "originX"    # F
    .param p4, "originY"    # F
    .param p5, "width"    # F
    .param p6, "height"    # F
    .param p7, "scaleX"    # F
    .param p8, "scaleY"    # F
    .param p9, "degrees"    # F

    .line 478
    move-object v14, p0

    iget-object v13, v14, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object v10, v13

    move-object v11, v13

    move-object v12, v13

    invoke-virtual/range {v0 .. v13}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFFFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 479
    return-void
.end method

.method public rect(FFFFFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 26
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "originX"    # F
    .param p4, "originY"    # F
    .param p5, "width"    # F
    .param p6, "height"    # F
    .param p7, "scaleX"    # F
    .param p8, "scaleY"    # F
    .param p9, "degrees"    # F
    .param p10, "col1"    # Lcom/badlogic/gdx/graphics/Color;
    .param p11, "col2"    # Lcom/badlogic/gdx/graphics/Color;
    .param p12, "col3"    # Lcom/badlogic/gdx/graphics/Color;
    .param p13, "col4"    # Lcom/badlogic/gdx/graphics/Color;

    .line 489
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p10

    move-object/from16 v4, p11

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    sget-object v7, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v8, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/16 v9, 0x8

    invoke-direct {v0, v7, v8, v9}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 491
    invoke-static/range {p9 .. p9}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v7

    .line 492
    .local v7, "cos":F
    invoke-static/range {p9 .. p9}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v8

    .line 493
    .local v8, "sin":F
    neg-float v9, v1

    .line 494
    .local v9, "fx":F
    neg-float v10, v2

    .line 495
    .local v10, "fy":F
    sub-float v11, p5, v1

    .line 496
    .local v11, "fx2":F
    sub-float v12, p6, v2

    .line 498
    .local v12, "fy2":F
    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v14, p7, v13

    if-nez v14, :cond_0

    cmpl-float v13, p8, v13

    if-eqz v13, :cond_1

    .line 499
    :cond_0
    mul-float v9, v9, p7

    .line 500
    mul-float v10, v10, p8

    .line 501
    mul-float v11, v11, p7

    .line 502
    mul-float v12, v12, p8

    .line 505
    :cond_1
    add-float v13, p1, v1

    .line 506
    .local v13, "worldOriginX":F
    add-float v14, p2, v2

    .line 508
    .local v14, "worldOriginY":F
    mul-float v15, v7, v9

    mul-float v16, v8, v10

    sub-float v15, v15, v16

    add-float/2addr v15, v13

    .line 509
    .local v15, "x1":F
    mul-float v16, v8, v9

    mul-float v17, v7, v10

    add-float v16, v16, v17

    add-float v1, v16, v14

    .line 511
    .local v1, "y1":F
    mul-float v16, v7, v11

    mul-float v17, v8, v10

    sub-float v16, v16, v17

    add-float v2, v16, v13

    .line 512
    .local v2, "x2":F
    mul-float v16, v8, v11

    mul-float v17, v7, v10

    add-float v16, v16, v17

    move/from16 v17, v9

    .end local v9    # "fx":F
    .local v17, "fx":F
    add-float v9, v16, v14

    .line 514
    .local v9, "y2":F
    mul-float v16, v7, v11

    mul-float v18, v8, v12

    sub-float v16, v16, v18

    move/from16 v18, v10

    .end local v10    # "fy":F
    .local v18, "fy":F
    add-float v10, v16, v13

    .line 515
    .local v10, "x3":F
    mul-float v16, v8, v11

    mul-float v19, v7, v12

    add-float v16, v16, v19

    move/from16 v19, v7

    .end local v7    # "cos":F
    .local v19, "cos":F
    add-float v7, v16, v14

    .line 517
    .local v7, "y3":F
    sub-float v16, v10, v2

    move/from16 v20, v8

    .end local v8    # "sin":F
    .local v20, "sin":F
    add-float v8, v15, v16

    .line 518
    .local v8, "x4":F
    sub-float v16, v9, v1

    move/from16 v21, v11

    .end local v11    # "fx2":F
    .local v21, "fx2":F
    sub-float v11, v7, v16

    .line 520
    .local v11, "y4":F
    move/from16 v16, v12

    .end local v12    # "fy2":F
    .local v16, "fy2":F
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    move/from16 v22, v13

    .end local v13    # "worldOriginX":F
    .local v22, "worldOriginX":F
    sget-object v13, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    move/from16 v23, v14

    .end local v14    # "worldOriginY":F
    .local v23, "worldOriginY":F
    if-ne v12, v13, :cond_2

    .line 521
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v13, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v14, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v24, v8

    .end local v8    # "x4":F
    .local v24, "x4":F
    iget v8, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v25, v11

    .end local v11    # "y4":F
    .local v25, "y4":F
    iget v11, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v12, v13, v14, v8, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 522
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v11, 0x0

    invoke-interface {v8, v15, v1, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 523
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v12, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v13, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v14, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v11, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v8, v12, v13, v14, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 524
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v11, 0x0

    invoke-interface {v8, v2, v9, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 526
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v12, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v13, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v14, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v11, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v8, v12, v13, v14, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 527
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v11, 0x0

    invoke-interface {v8, v2, v9, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 528
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v12, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v13, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v14, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v11, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v8, v12, v13, v14, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 529
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v11, 0x0

    invoke-interface {v8, v10, v7, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 531
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v12, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v13, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v14, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v11, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v8, v12, v13, v14, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 532
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v11, 0x0

    invoke-interface {v8, v10, v7, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 533
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v12, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v13, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v14, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v11, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v8, v12, v13, v14, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 534
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move/from16 v11, v24

    move/from16 v12, v25

    const/4 v13, 0x0

    .end local v24    # "x4":F
    .end local v25    # "y4":F
    .local v11, "x4":F
    .local v12, "y4":F
    invoke-interface {v8, v11, v12, v13}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 536
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v14, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v13, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v24, v7

    .end local v7    # "y3":F
    .local v24, "y3":F
    iget v7, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v25, v10

    .end local v10    # "x3":F
    .local v25, "x3":F
    iget v10, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v8, v14, v13, v7, v10}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 537
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v8, 0x0

    invoke-interface {v7, v11, v12, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 538
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v10, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v13, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v14, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v8, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v7, v10, v13, v14, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 539
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v8, 0x0

    invoke-interface {v7, v15, v1, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    move/from16 v10, v24

    move/from16 v8, v25

    move/from16 v24, v2

    goto/16 :goto_0

    .line 541
    .end local v12    # "y4":F
    .end local v24    # "y3":F
    .end local v25    # "x3":F
    .restart local v7    # "y3":F
    .restart local v8    # "x4":F
    .restart local v10    # "x3":F
    .local v11, "y4":F
    :cond_2
    move/from16 v24, v7

    move/from16 v25, v10

    move v12, v11

    move v11, v8

    const/4 v8, 0x0

    .end local v7    # "y3":F
    .end local v8    # "x4":F
    .end local v10    # "x3":F
    .local v11, "x4":F
    .restart local v12    # "y4":F
    .restart local v24    # "y3":F
    .restart local v25    # "x3":F
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v10, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v13, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v14, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v8, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v7, v10, v13, v14, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 542
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v8, 0x0

    invoke-interface {v7, v15, v1, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 543
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v10, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v13, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v14, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v8, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v7, v10, v13, v14, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 544
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v8, 0x0

    invoke-interface {v7, v2, v9, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 545
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v10, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v13, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v14, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v8, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v7, v10, v13, v14, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 546
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move/from16 v10, v24

    move/from16 v8, v25

    const/4 v13, 0x0

    .end local v24    # "y3":F
    .end local v25    # "x3":F
    .local v8, "x3":F
    .local v10, "y3":F
    invoke-interface {v7, v8, v10, v13}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 548
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v14, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v13, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v24, v2

    .end local v2    # "x2":F
    .local v24, "x2":F
    iget v2, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v7, v14, v13, v2, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 549
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v4, 0x0

    invoke-interface {v2, v8, v10, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 550
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v7, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v13, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v14, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v2, v7, v13, v14, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 551
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v4, 0x0

    invoke-interface {v2, v11, v12, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 552
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v7, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v13, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v14, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v2, v7, v13, v14, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 553
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v4, 0x0

    invoke-interface {v2, v15, v1, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 556
    :goto_0
    return-void
.end method

.method public rect(FFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "col1"    # Lcom/badlogic/gdx/graphics/Color;
    .param p6, "col2"    # Lcom/badlogic/gdx/graphics/Color;
    .param p7, "col3"    # Lcom/badlogic/gdx/graphics/Color;
    .param p8, "col4"    # Lcom/badlogic/gdx/graphics/Color;

    .line 435
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 437
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 439
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 440
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 441
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    invoke-interface {v0, v1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 443
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 444
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    invoke-interface {v0, v1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 445
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 446
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    add-float v3, p2, p4

    invoke-interface {v0, v1, v3, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 448
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 449
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    add-float v3, p2, p4

    invoke-interface {v0, v1, v3, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 450
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 451
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p2, p4

    invoke-interface {v0, p1, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 453
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 454
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p2, p4

    invoke-interface {v0, p1, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 455
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 456
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 459
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 460
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 461
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    invoke-interface {v0, v1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 462
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 463
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    add-float v3, p2, p4

    invoke-interface {v0, v1, v3, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 465
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 466
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    add-float v3, p2, p4

    invoke-interface {v0, v1, v3, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 467
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 468
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p2, p4

    invoke-interface {v0, p1, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 469
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 470
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 472
    :goto_0
    return-void
.end method

.method public rectLine(FFFFF)V
    .locals 8
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "width"    # F

    .line 560
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 561
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 562
    .local v0, "colorBits":F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->tmp:Lcom/badlogic/gdx/math/Vector2;

    sub-float v2, p4, p2

    sub-float v3, p1, p3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    .line 563
    .local v1, "t":Lcom/badlogic/gdx/math/Vector2;
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p5, v2

    .line 564
    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, p5

    .line 565
    .local v2, "tx":F
    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v3, p5

    .line 566
    .local v3, "ty":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v5, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    .line 567
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 568
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v5, p1, v2

    add-float v7, p2, v3

    invoke-interface {v4, v5, v7, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 569
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 570
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float v5, p1, v2

    sub-float v7, p2, v3

    invoke-interface {v4, v5, v7, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 572
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 573
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v5, p3, v2

    add-float v7, p4, v3

    invoke-interface {v4, v5, v7, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 574
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 575
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float v5, p3, v2

    sub-float v7, p4, v3

    invoke-interface {v4, v5, v7, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 577
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 578
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v5, p3, v2

    add-float v7, p4, v3

    invoke-interface {v4, v5, v7, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 579
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 580
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v5, p1, v2

    add-float v7, p2, v3

    invoke-interface {v4, v5, v7, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 582
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 583
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float v5, p3, v2

    sub-float v7, p4, v3

    invoke-interface {v4, v5, v7, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 584
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 585
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float v5, p1, v2

    sub-float v7, p2, v3

    invoke-interface {v4, v5, v7, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_0

    .line 587
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 588
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v5, p1, v2

    add-float v7, p2, v3

    invoke-interface {v4, v5, v7, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 589
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 590
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float v5, p1, v2

    sub-float v7, p2, v3

    invoke-interface {v4, v5, v7, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 591
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 592
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v5, p3, v2

    add-float v7, p4, v3

    invoke-interface {v4, v5, v7, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 594
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 595
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float v5, p3, v2

    sub-float v7, p4, v3

    invoke-interface {v4, v5, v7, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 596
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 597
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v5, p3, v2

    add-float v7, p4, v3

    invoke-interface {v4, v5, v7, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 598
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 599
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float v5, p1, v2

    sub-float v7, p2, v3

    invoke-interface {v4, v5, v7, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 601
    :goto_0
    return-void
.end method

.method public rectLine(FFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 11
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "width"    # F
    .param p6, "c1"    # Lcom/badlogic/gdx/graphics/Color;
    .param p7, "c2"    # Lcom/badlogic/gdx/graphics/Color;

    .line 605
    move-object v0, p0

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/16 v3, 0x8

    invoke-direct {p0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 606
    invoke-virtual/range {p6 .. p6}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v1

    .line 607
    .local v1, "col1Bits":F
    invoke-virtual/range {p7 .. p7}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v2

    .line 608
    .local v2, "col2Bits":F
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->tmp:Lcom/badlogic/gdx/math/Vector2;

    sub-float v4, p4, p2

    sub-float v5, p1, p3

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    .line 609
    .local v3, "t":Lcom/badlogic/gdx/math/Vector2;
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v4, v4, p5

    .line 610
    .end local p5    # "width":F
    .local v4, "width":F
    iget v5, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v5, v4

    .line 611
    .local v5, "tx":F
    iget v6, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v6, v4

    .line 612
    .local v6, "ty":F
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v8, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v9, 0x0

    if-ne v7, v8, :cond_0

    .line 613
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 614
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v8, p1, v5

    add-float v10, p2, v6

    invoke-interface {v7, v8, v10, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 615
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 616
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float v8, p1, v5

    sub-float v10, p2, v6

    invoke-interface {v7, v8, v10, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 618
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 619
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v8, p3, v5

    add-float v10, p4, v6

    invoke-interface {v7, v8, v10, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 620
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 621
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float v8, p3, v5

    sub-float v10, p4, v6

    invoke-interface {v7, v8, v10, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 623
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 624
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v8, p3, v5

    add-float v10, p4, v6

    invoke-interface {v7, v8, v10, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 625
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 626
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v8, p1, v5

    add-float v10, p2, v6

    invoke-interface {v7, v8, v10, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 628
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 629
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float v8, p3, v5

    sub-float v10, p4, v6

    invoke-interface {v7, v8, v10, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 630
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 631
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float v8, p1, v5

    sub-float v10, p2, v6

    invoke-interface {v7, v8, v10, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_0

    .line 633
    :cond_0
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 634
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v8, p1, v5

    add-float v10, p2, v6

    invoke-interface {v7, v8, v10, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 635
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 636
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float v8, p1, v5

    sub-float v10, p2, v6

    invoke-interface {v7, v8, v10, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 637
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 638
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v8, p3, v5

    add-float v10, p4, v6

    invoke-interface {v7, v8, v10, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 640
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 641
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float v8, p3, v5

    sub-float v10, p4, v6

    invoke-interface {v7, v8, v10, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 642
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 643
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v8, p3, v5

    add-float v10, p4, v6

    invoke-interface {v7, v8, v10, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 644
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 645
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float v8, p1, v5

    sub-float v10, p2, v6

    invoke-interface {v7, v8, v10, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 647
    :goto_0
    return-void
.end method

.method public rectLine(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 6
    .param p1, "p1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "p2"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "width"    # F

    .line 651
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rectLine(FFFFF)V

    .line 652
    return-void
.end method

.method public rotate(FFFF)V
    .locals 1
    .param p1, "axisX"    # F
    .param p2, "axisY"    # F
    .param p3, "axisZ"    # F
    .param p4, "degrees"    # F

    .line 178
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 180
    return-void
.end method

.method public scale(FFF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "scaleZ"    # F

    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 186
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V
    .locals 2
    .param p1, "type"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 217
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v0, p1, :cond_0

    return-void

    .line 218
    :cond_0
    if-eqz v0, :cond_2

    .line 219
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->autoShapeType:Z

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 221
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 222
    return-void

    .line 219
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "autoShapeType must be enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "begin must be called first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAutoShapeType(Z)V
    .locals 0
    .param p1, "autoShapeType"    # Z

    .line 192
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->autoShapeType:Z

    .line 193
    return-void
.end method

.method public setColor(FFFF)V
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 132
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 127
    return-void
.end method

.method public setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 145
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 147
    return-void
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 157
    return-void
.end method

.method public translate(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 174
    return-void
.end method

.method public triangle(FFFFFF)V
    .locals 4
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .line 332
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 333
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 334
    .local v0, "colorBits":F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 335
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 336
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 337
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 338
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p3, p4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 340
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 341
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p3, p4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 342
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 343
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p5, p6, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 345
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 346
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p5, p6, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 347
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 348
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_0

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 351
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 352
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 353
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p3, p4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 354
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 355
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p5, p6, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 357
    :goto_0
    return-void
.end method

.method public triangle(FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 6
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F
    .param p7, "col1"    # Lcom/badlogic/gdx/graphics/Color;
    .param p8, "col2"    # Lcom/badlogic/gdx/graphics/Color;
    .param p9, "col3"    # Lcom/badlogic/gdx/graphics/Color;

    .line 361
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 362
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 364
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 365
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 366
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p3, p4, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 368
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 369
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p3, p4, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 370
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p9, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p9, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 371
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p5, p6, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 373
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p9, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p9, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 374
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p5, p6, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 375
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 376
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 379
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 380
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 381
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p3, p4, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 382
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p9, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p9, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 383
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p5, p6, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 385
    :goto_0
    return-void
.end method

.method public updateMatrices()V
    .locals 1

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 140
    return-void
.end method

.method public x(FFF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "size"    # F

    .line 819
    sub-float v0, p1, p3

    sub-float v1, p2, p3

    add-float v2, p1, p3

    add-float v3, p2, p3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFF)V

    .line 820
    sub-float v0, p1, p3

    add-float v1, p2, p3

    add-float v2, p1, p3

    sub-float v3, p2, p3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFF)V

    .line 821
    return-void
.end method

.method public x(Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 2
    .param p1, "p"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "size"    # F

    .line 825
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1, p2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->x(FFF)V

    .line 826
    return-void
.end method
