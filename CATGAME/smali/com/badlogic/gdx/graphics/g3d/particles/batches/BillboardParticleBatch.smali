.class public Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;
.super Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;
.source "BillboardParticleBatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;,
        Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;",
        ">;"
    }
.end annotation


# static fields
.field private static final CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field private static final CPU_COLOR_OFFSET:I

.field private static final CPU_POSITION_OFFSET:I

.field private static final CPU_UV_OFFSET:I

.field private static final CPU_VERTEX_SIZE:I

.field private static final GPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field private static final GPU_COLOR_OFFSET:I

.field private static final GPU_POSITION_OFFSET:I

.field private static final GPU_SIZE_ROTATION_OFFSET:I

.field private static final GPU_UV_OFFSET:I

.field private static final GPU_VERTEX_SIZE:I

.field private static final MAX_PARTICLES_PER_MESH:I = 0x1fff

.field private static final MAX_VERTICES_PER_MESH:I = 0x7ffc

.field protected static final TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

.field protected static final TMP_V1:Lcom/badlogic/gdx/math/Vector3;

.field protected static final TMP_V2:Lcom/badlogic/gdx/math/Vector3;

.field protected static final TMP_V3:Lcom/badlogic/gdx/math/Vector3;

.field protected static final TMP_V4:Lcom/badlogic/gdx/math/Vector3;

.field protected static final TMP_V5:Lcom/badlogic/gdx/math/Vector3;

.field protected static final TMP_V6:Lcom/badlogic/gdx/math/Vector3;

.field protected static final directionUsage:I = 0x400

.field protected static final sizeAndRotationUsage:I = 0x200


# instance fields
.field protected blendingAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

.field private currentAttributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field private currentVertexSize:I

.field protected depthTestAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

.field private indices:[S

.field protected mode:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

.field private renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

.field private renderables:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;"
        }
    .end annotation
.end field

.field shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

.field protected texture:Lcom/badlogic/gdx/graphics/Texture;

.field protected useGPU:Z

.field private vertices:[F


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 50
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V4:Lcom/badlogic/gdx/math/Vector3;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V5:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    .line 55
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    const/4 v1, 0x4

    new-array v2, v1, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v4, 0x1

    const/4 v5, 0x3

    const-string v6, "a_position"

    invoke-direct {v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    const/4 v7, 0x0

    aput-object v3, v2, v7

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v8, 0x10

    const/4 v9, 0x2

    const-string v10, "a_texCoord0"

    invoke-direct {v3, v8, v9, v10}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v2, v4

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v11, "a_color"

    invoke-direct {v3, v9, v1, v11}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v2, v9

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v12, 0x200

    const-string v13, "a_sizeAndRotation"

    invoke-direct {v3, v12, v1, v13}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v2, v5

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 66
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    new-array v2, v5, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v2, v7

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v3, v8, v9, v10}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v2, v4

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v3, v9, v1, v11}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v2, v9

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 71
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v0, v1

    int-to-short v0, v0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_POSITION_OFFSET:I

    .line 72
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v0, v1

    int-to-short v0, v0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_UV_OFFSET:I

    .line 73
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v0, v1

    int-to-short v0, v0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_SIZE_ROTATION_OFFSET:I

    .line 74
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v0, v1

    int-to-short v0, v0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_COLOR_OFFSET:I

    .line 75
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_VERTEX_SIZE:I

    .line 87
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v0, v1

    int-to-short v0, v0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_POSITION_OFFSET:I

    .line 88
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v0, v1

    int-to-short v0, v0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_UV_OFFSET:I

    .line 89
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v0, v1

    int-to-short v0, v0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_COLOR_OFFSET:I

    .line 90
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_VERTEX_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 159
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->Screen:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;ZI)V

    .line 160
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 163
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->Screen:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;ZI)V

    .line 164
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;ZI)V
    .locals 6
    .param p1, "mode"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;
    .param p2, "useGPU"    # Z
    .param p3, "capacity"    # I

    .line 155
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;ZILcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;ZILcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;)V
    .locals 5
    .param p1, "mode"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;
    .param p2, "useGPU"    # Z
    .param p3, "capacity"    # I
    .param p4, "blendingAttribute"    # Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;
    .param p5, "depthTestAttribute"    # Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    .line 137
    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;-><init>(Ljava/lang/Class;)V

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    .line 122
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->useGPU:Z

    .line 123
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->Screen:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->mode:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    .line 138
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    .line 139
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    .line 140
    iput-object p4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->blendingAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    .line 141
    iput-object p5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->depthTestAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    .line 143
    if-nez p4, :cond_0

    .line 144
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    const/4 v2, 0x1

    const/16 v3, 0x303

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;-><init>(IIF)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->blendingAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->depthTestAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    if-nez v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    const/16 v2, 0x203

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;-><init>(IZ)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->depthTestAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    .line 147
    :cond_1
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->allocIndices()V

    .line 148
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->initRenderData()V

    .line 149
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->ensureCapacity(I)V

    .line 150
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->setUseGpu(Z)V

    .line 151
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->setAlignMode(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;)V

    .line 152
    return-void
.end method

.method private allocIndices()V
    .locals 6

    .line 184
    const v0, 0xbffa

    .line 185
    .local v0, "indicesCount":I
    new-array v1, v0, [S

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->indices:[S

    .line 186
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "vertex":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 187
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->indices:[S

    int-to-short v4, v2

    aput-short v4, v3, v1

    .line 188
    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, v2, 0x1

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 189
    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v2, 0x2

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 190
    add-int/lit8 v4, v1, 0x3

    add-int/lit8 v5, v2, 0x2

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 191
    add-int/lit8 v4, v1, 0x4

    add-int/lit8 v5, v2, 0x3

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 192
    add-int/lit8 v4, v1, 0x5

    int-to-short v5, v2

    aput-short v5, v3, v4

    .line 186
    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 194
    .end local v1    # "i":I
    .end local v2    # "vertex":I
    :cond_0
    return-void
.end method

.method private allocRenderables(I)V
    .locals 6
    .param p1, "capacity"    # I

    .line 198
    div-int/lit16 v0, p1, 0x1fff

    int-to-float v0, v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v0

    .local v0, "meshCount":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->getFree()I

    move-result v1

    .line 199
    .local v1, "free":I
    if-ge v1, v0, :cond_0

    .line 200
    const/4 v2, 0x0

    .local v2, "i":I
    sub-int v3, v0, v1

    .local v3, "left":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 201
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->newObject()Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->free(Ljava/lang/Object;)V

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    .end local v2    # "i":I
    .end local v3    # "left":I
    :cond_0
    return-void
.end method

.method private allocShader()V
    .locals 2

    .line 212
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->allocRenderable()Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v0

    .line 213
    .local v0, "newRenderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->getShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 214
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->free(Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method private clearRenderablesPool()V
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 219
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->getFree()I

    move-result v1

    .local v1, "free":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 220
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 221
    .local v2, "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .line 219
    .end local v2    # "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    .end local v0    # "i":I
    .end local v1    # "free":I
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 224
    return-void
.end method

.method private fillVerticesGPU([I)V
    .locals 63
    .param p1, "particlesOffset"    # [I

    .line 353
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 354
    .local v1, "tp":I
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderData:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;

    .line 355
    .local v3, "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 356
    .local v4, "scaleChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v5, v3, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 357
    .local v5, "regionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 358
    .local v6, "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v7, v3, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 359
    .local v7, "colorChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v8, v3, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 360
    .local v8, "rotationChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    const/4 v9, 0x0

    .local v9, "p":I
    iget-object v10, v3, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v10, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .local v10, "c":I
    :goto_1
    if-ge v9, v10, :cond_0

    .line 361
    aget v11, p1, v1

    iget v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    mul-int/2addr v11, v12

    mul-int/lit8 v11, v11, 0x4

    .line 362
    .local v11, "baseOffset":I
    iget-object v12, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iget v13, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v13, v9

    aget v27, v12, v13

    .line 363
    .local v27, "scale":F
    iget v12, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v28, v9, v12

    .line 364
    .local v28, "regionOffset":I
    iget v12, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v29, v9, v12

    .line 365
    .local v29, "positionOffset":I
    iget v12, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v30, v9, v12

    .line 366
    .local v30, "colorOffset":I
    iget v12, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v31, v9, v12

    .line 367
    .local v31, "rotationOffset":I
    iget-object v12, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v29, 0x0

    aget v47, v12, v13

    .local v47, "px":F
    iget-object v12, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v29, 0x1

    aget v48, v12, v13

    .line 368
    .local v48, "py":F
    iget-object v12, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v29, 0x2

    aget v49, v12, v13

    .line 369
    .local v49, "pz":F
    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v28, 0x0

    aget v50, v12, v13

    .line 370
    .local v50, "u":F
    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v28, 0x1

    aget v51, v12, v13

    .line 371
    .local v51, "v":F
    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v28, 0x2

    aget v52, v12, v13

    .line 372
    .local v52, "u2":F
    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v28, 0x3

    aget v53, v12, v13

    .line 373
    .local v53, "v2":F
    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v28, 0x4

    aget v12, v12, v13

    mul-float v15, v12, v27

    .local v15, "sx":F
    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v28, 0x5

    aget v12, v12, v13

    mul-float v14, v12, v27

    .line 376
    .local v14, "sy":F
    iget-object v12, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v30, 0x0

    aget v54, v12, v13

    .line 377
    .local v54, "r":F
    iget-object v12, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v30, 0x1

    aget v55, v12, v13

    .line 378
    .local v55, "g":F
    iget-object v12, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v30, 0x2

    aget v56, v12, v13

    .line 379
    .local v56, "b":F
    iget-object v12, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v30, 0x3

    aget v57, v12, v13

    .line 380
    .local v57, "a":F
    iget-object v12, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v31, 0x0

    aget v58, v12, v13

    .line 381
    .local v58, "cosRotation":F
    iget-object v12, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v31, 0x1

    aget v59, v12, v13

    .line 384
    .local v59, "sinRotation":F
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    neg-float v13, v15

    move-object/from16 v60, v2

    neg-float v2, v14

    move/from16 v19, v13

    move v13, v11

    move-object/from16 v61, v3

    move v3, v14

    .end local v14    # "sy":F
    .local v3, "sy":F
    .local v61, "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;
    move/from16 v14, v47

    move/from16 v62, v15

    .end local v15    # "sx":F
    .local v62, "sx":F
    move/from16 v15, v48

    move/from16 v16, v49

    move/from16 v17, v50

    move/from16 v18, v53

    move/from16 v20, v2

    move/from16 v21, v58

    move/from16 v22, v59

    move/from16 v23, v54

    move/from16 v24, v55

    move/from16 v25, v56

    move/from16 v26, v57

    invoke-static/range {v12 .. v26}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FIFFFFFFFFFFFFF)V

    .line 385
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v11, v2

    .line 386
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    neg-float v12, v3

    move-object/from16 v32, v2

    move/from16 v33, v11

    move/from16 v34, v47

    move/from16 v35, v48

    move/from16 v36, v49

    move/from16 v37, v52

    move/from16 v38, v53

    move/from16 v39, v62

    move/from16 v40, v12

    move/from16 v41, v58

    move/from16 v42, v59

    move/from16 v43, v54

    move/from16 v44, v55

    move/from16 v45, v56

    move/from16 v46, v57

    invoke-static/range {v32 .. v46}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FIFFFFFFFFFFFFF)V

    .line 387
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v11, v2

    .line 388
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    move-object/from16 v32, v2

    move/from16 v33, v11

    move/from16 v38, v51

    move/from16 v40, v3

    invoke-static/range {v32 .. v46}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FIFFFFFFFFFFFFF)V

    .line 389
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v11, v2

    .line 390
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    move/from16 v12, v62

    .end local v62    # "sx":F
    .local v12, "sx":F
    neg-float v13, v12

    move-object/from16 v32, v2

    move/from16 v33, v11

    move/from16 v37, v50

    move/from16 v39, v13

    invoke-static/range {v32 .. v46}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FIFFFFFFFFFFFFF)V

    .line 391
    nop

    .line 360
    .end local v3    # "sy":F
    .end local v11    # "baseOffset":I
    .end local v12    # "sx":F
    .end local v27    # "scale":F
    .end local v28    # "regionOffset":I
    .end local v29    # "positionOffset":I
    .end local v30    # "colorOffset":I
    .end local v31    # "rotationOffset":I
    .end local v47    # "px":F
    .end local v48    # "py":F
    .end local v49    # "pz":F
    .end local v50    # "u":F
    .end local v51    # "v":F
    .end local v52    # "u2":F
    .end local v53    # "v2":F
    .end local v54    # "r":F
    .end local v55    # "g":F
    .end local v56    # "b":F
    .end local v57    # "a":F
    .end local v58    # "cosRotation":F
    .end local v59    # "sinRotation":F
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v60

    move-object/from16 v3, v61

    goto/16 :goto_1

    .end local v61    # "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;
    .local v3, "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;
    :cond_0
    move-object/from16 v60, v2

    move-object/from16 v61, v3

    .line 393
    .end local v3    # "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;
    .end local v4    # "scaleChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v5    # "regionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v6    # "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v7    # "colorChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v8    # "rotationChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v9    # "p":I
    .end local v10    # "c":I
    goto/16 :goto_0

    .line 394
    :cond_1
    return-void
.end method

.method private fillVerticesToScreenCPU([I)V
    .locals 58
    .param p1, "particlesOffset"    # [I

    .line 540
    move-object/from16 v0, p0

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    .line 541
    .local v1, "look":Lcom/badlogic/gdx/math/Vector3;
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V4:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    .line 542
    .local v2, "right":Lcom/badlogic/gdx/math/Vector3;
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    .line 544
    .local v3, "up":Lcom/badlogic/gdx/math/Vector3;
    const/4 v4, 0x0

    .line 545
    .local v4, "tp":I
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderData:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;

    .line 546
    .local v6, "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;
    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 547
    .local v7, "scaleChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v8, v6, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 548
    .local v8, "regionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v9, v6, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 549
    .local v9, "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v10, v6, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 550
    .local v10, "colorChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v11, v6, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 552
    .local v11, "rotationChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    const/4 v12, 0x0

    .local v12, "p":I
    iget-object v13, v6, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v13, v13, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v13, v13, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .local v13, "c":I
    :goto_1
    if-ge v12, v13, :cond_1

    .line 553
    aget v14, p1, v4

    iget v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    mul-int/2addr v14, v15

    mul-int/lit8 v14, v14, 0x4

    .line 554
    .local v14, "baseOffset":I
    iget-object v15, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v24, v5

    iget v5, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v5, v12

    aget v5, v15, v5

    .line 555
    .local v5, "scale":F
    iget v15, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v25, v12, v15

    .line 556
    .local v25, "regionOffset":I
    iget v15, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v26, v12, v15

    .line 557
    .local v26, "positionOffset":I
    iget v15, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v27, v12, v15

    .line 558
    .local v27, "colorOffset":I
    iget v15, v11, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v28, v12, v15

    .line 559
    .local v28, "rotationOffset":I
    iget-object v15, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v26, 0x0

    aget v15, v15, v16

    move-object/from16 v29, v6

    .end local v6    # "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;
    .local v15, "px":F
    .local v29, "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;
    iget-object v6, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v26, 0x1

    aget v6, v6, v16

    .line 560
    .local v6, "py":F
    move-object/from16 v30, v7

    .end local v7    # "scaleChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .local v30, "scaleChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v7, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v26, 0x2

    aget v7, v7, v16

    .line 561
    .local v7, "pz":F
    move-object/from16 v31, v9

    .end local v9    # "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .local v31, "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v9, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v25, 0x0

    aget v9, v9, v16

    .line 562
    .local v9, "u":F
    move/from16 v41, v13

    .end local v13    # "c":I
    .local v41, "c":I
    iget-object v13, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v25, 0x1

    aget v13, v13, v16

    .line 563
    .local v13, "v":F
    move/from16 v42, v4

    .end local v4    # "tp":I
    .local v42, "tp":I
    iget-object v4, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v25, 0x2

    aget v4, v4, v16

    .line 564
    .local v4, "u2":F
    move/from16 v43, v12

    .end local v12    # "p":I
    .local v43, "p":I
    iget-object v12, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v25, 0x3

    aget v12, v12, v16

    .line 565
    .local v12, "v2":F
    move/from16 v44, v13

    .end local v13    # "v":F
    .local v44, "v":F
    iget-object v13, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v25, 0x4

    aget v13, v13, v16

    mul-float/2addr v13, v5

    move/from16 v45, v4

    .end local v4    # "u2":F
    .local v13, "sx":F
    .local v45, "u2":F
    iget-object v4, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v25, 0x5

    aget v4, v4, v16

    mul-float/2addr v4, v5

    .line 568
    .local v4, "sy":F
    move/from16 v46, v5

    .end local v5    # "scale":F
    .local v46, "scale":F
    iget-object v5, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v27, 0x0

    aget v5, v5, v16

    .line 569
    .local v5, "r":F
    move-object/from16 v47, v8

    .end local v8    # "regionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .local v47, "regionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v8, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v27, 0x1

    aget v8, v8, v16

    .line 570
    .local v8, "g":F
    move/from16 v48, v8

    .end local v8    # "g":F
    .local v48, "g":F
    iget-object v8, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v27, 0x2

    aget v8, v8, v16

    .line 571
    .local v8, "b":F
    move/from16 v49, v8

    .end local v8    # "b":F
    .local v49, "b":F
    iget-object v8, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v27, 0x3

    aget v8, v8, v16

    .line 572
    .local v8, "a":F
    move-object/from16 v50, v10

    .end local v10    # "colorChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .local v50, "colorChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v10, v11, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v28, 0x0

    aget v10, v10, v16

    .line 573
    .local v10, "cosRotation":F
    move/from16 v51, v8

    .end local v8    # "a":F
    .local v51, "a":F
    iget-object v8, v11, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v28, 0x1

    aget v8, v8, v16

    .line 574
    .local v8, "sinRotation":F
    move-object/from16 v52, v11

    .end local v11    # "rotationChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .local v52, "rotationChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v11, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v11

    invoke-virtual {v11, v13}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 575
    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 577
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v10, v11

    if-eqz v11, :cond_0

    .line 578
    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v11, v1, v10, v8}, Lcom/badlogic/gdx/math/Matrix3;->setToRotation(Lcom/badlogic/gdx/math/Vector3;FF)Lcom/badlogic/gdx/math/Matrix3;

    .line 579
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    move-object/from16 v53, v1

    .end local v1    # "look":Lcom/badlogic/gdx/math/Vector3;
    .local v53, "look":Lcom/badlogic/gdx/math/Vector3;
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v54, v2

    .end local v2    # "right":Lcom/badlogic/gdx/math/Vector3;
    .local v54, "right":Lcom/badlogic/gdx/math/Vector3;
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v2, v2

    move-object/from16 v55, v3

    .end local v3    # "up":Lcom/badlogic/gdx/math/Vector3;
    .local v55, "up":Lcom/badlogic/gdx/math/Vector3;
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v2, v3

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v3, v3

    move/from16 v56, v4

    .end local v4    # "sy":F
    .local v56, "sy":F
    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v3, v4

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v4, v4

    move/from16 v57, v8

    .end local v8    # "sinRotation":F
    .local v57, "sinRotation":F
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v4, v8

    .line 580
    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v15, v6, v7}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v17

    .line 579
    move v1, v15

    .end local v15    # "px":F
    .local v1, "px":F
    move-object v15, v11

    move/from16 v16, v14

    move/from16 v18, v9

    move/from16 v19, v12

    move/from16 v20, v5

    move/from16 v21, v48

    move/from16 v22, v49

    move/from16 v23, v51

    invoke-static/range {v15 .. v23}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 582
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v14, v2

    .line 583
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v4, v8

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v8, v11

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v11, v15

    .line 584
    invoke-virtual {v3, v4, v8, v11}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v7}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v34

    .line 583
    move-object/from16 v32, v2

    move/from16 v33, v14

    move/from16 v35, v45

    move/from16 v36, v12

    move/from16 v37, v5

    move/from16 v38, v48

    move/from16 v39, v49

    move/from16 v40, v51

    invoke-static/range {v32 .. v40}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 586
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v14, v2

    .line 587
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v4, v8

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v8, v11

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v11, v15

    .line 588
    invoke-virtual {v3, v4, v8, v11}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v7}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v34

    .line 587
    move-object/from16 v32, v2

    move/from16 v33, v14

    move/from16 v36, v44

    invoke-static/range {v32 .. v40}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 590
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v14, v2

    .line 591
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v4, v4

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v4, v8

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v8, v8

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v8, v11

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v11, v11

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v11, v15

    .line 592
    invoke-virtual {v3, v4, v8, v11}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v7}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v34

    .line 591
    move-object/from16 v32, v2

    move/from16 v33, v14

    move/from16 v35, v9

    invoke-static/range {v32 .. v40}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    goto/16 :goto_2

    .line 595
    .end local v53    # "look":Lcom/badlogic/gdx/math/Vector3;
    .end local v54    # "right":Lcom/badlogic/gdx/math/Vector3;
    .end local v55    # "up":Lcom/badlogic/gdx/math/Vector3;
    .end local v56    # "sy":F
    .end local v57    # "sinRotation":F
    .local v1, "look":Lcom/badlogic/gdx/math/Vector3;
    .restart local v2    # "right":Lcom/badlogic/gdx/math/Vector3;
    .restart local v3    # "up":Lcom/badlogic/gdx/math/Vector3;
    .restart local v4    # "sy":F
    .restart local v8    # "sinRotation":F
    .restart local v15    # "px":F
    :cond_0
    move-object/from16 v53, v1

    move-object/from16 v54, v2

    move-object/from16 v55, v3

    move/from16 v56, v4

    move/from16 v57, v8

    move v1, v15

    .end local v2    # "right":Lcom/badlogic/gdx/math/Vector3;
    .end local v3    # "up":Lcom/badlogic/gdx/math/Vector3;
    .end local v4    # "sy":F
    .end local v8    # "sinRotation":F
    .end local v15    # "px":F
    .local v1, "px":F
    .restart local v53    # "look":Lcom/badlogic/gdx/math/Vector3;
    .restart local v54    # "right":Lcom/badlogic/gdx/math/Vector3;
    .restart local v55    # "up":Lcom/badlogic/gdx/math/Vector3;
    .restart local v56    # "sy":F
    .restart local v57    # "sinRotation":F
    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v3, v3

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v3, v4

    add-float/2addr v3, v1

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v4, v4

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v4, v8

    add-float/2addr v4, v6

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v8, v8

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v8, v11

    add-float/2addr v8, v7

    .line 596
    invoke-virtual {v2, v3, v4, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v17

    .line 595
    move/from16 v16, v14

    move/from16 v18, v9

    move/from16 v19, v12

    move/from16 v20, v5

    move/from16 v21, v48

    move/from16 v22, v49

    move/from16 v23, v51

    invoke-static/range {v15 .. v23}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 597
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v14, v2

    .line 598
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v4, v8

    add-float/2addr v4, v1

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v8, v11

    add-float/2addr v8, v6

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v11, v15

    add-float/2addr v11, v7

    .line 599
    invoke-virtual {v3, v4, v8, v11}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v34

    .line 598
    move-object/from16 v32, v2

    move/from16 v33, v14

    move/from16 v35, v45

    move/from16 v36, v12

    move/from16 v37, v5

    move/from16 v38, v48

    move/from16 v39, v49

    move/from16 v40, v51

    invoke-static/range {v32 .. v40}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 600
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v14, v2

    .line 601
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v4, v8

    add-float/2addr v4, v1

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v8, v11

    add-float/2addr v8, v6

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v11, v15

    add-float/2addr v11, v7

    .line 602
    invoke-virtual {v3, v4, v8, v11}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v34

    .line 601
    move-object/from16 v32, v2

    move/from16 v33, v14

    move/from16 v36, v44

    invoke-static/range {v32 .. v40}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 603
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v14, v2

    .line 604
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v4, v4

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v4, v8

    add-float/2addr v4, v1

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v8, v8

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v8, v11

    add-float/2addr v8, v6

    sget-object v11, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v11, v11

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v11, v15

    add-float/2addr v11, v7

    .line 605
    invoke-virtual {v3, v4, v8, v11}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v34

    .line 604
    move-object/from16 v32, v2

    move/from16 v33, v14

    move/from16 v35, v9

    invoke-static/range {v32 .. v40}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 552
    .end local v1    # "px":F
    .end local v5    # "r":F
    .end local v6    # "py":F
    .end local v7    # "pz":F
    .end local v9    # "u":F
    .end local v10    # "cosRotation":F
    .end local v12    # "v2":F
    .end local v13    # "sx":F
    .end local v14    # "baseOffset":I
    .end local v25    # "regionOffset":I
    .end local v26    # "positionOffset":I
    .end local v27    # "colorOffset":I
    .end local v28    # "rotationOffset":I
    .end local v44    # "v":F
    .end local v45    # "u2":F
    .end local v46    # "scale":F
    .end local v48    # "g":F
    .end local v49    # "b":F
    .end local v51    # "a":F
    .end local v56    # "sy":F
    .end local v57    # "sinRotation":F
    :goto_2
    add-int/lit8 v12, v43, 0x1

    .end local v43    # "p":I
    .local v12, "p":I
    add-int/lit8 v4, v42, 0x1

    move-object/from16 v5, v24

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move-object/from16 v9, v31

    move/from16 v13, v41

    move-object/from16 v8, v47

    move-object/from16 v10, v50

    move-object/from16 v11, v52

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    move-object/from16 v3, v55

    .end local v42    # "tp":I
    .local v4, "tp":I
    goto/16 :goto_1

    .end local v29    # "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;
    .end local v30    # "scaleChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v31    # "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v41    # "c":I
    .end local v47    # "regionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v50    # "colorChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v52    # "rotationChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v53    # "look":Lcom/badlogic/gdx/math/Vector3;
    .end local v54    # "right":Lcom/badlogic/gdx/math/Vector3;
    .end local v55    # "up":Lcom/badlogic/gdx/math/Vector3;
    .local v1, "look":Lcom/badlogic/gdx/math/Vector3;
    .restart local v2    # "right":Lcom/badlogic/gdx/math/Vector3;
    .restart local v3    # "up":Lcom/badlogic/gdx/math/Vector3;
    .local v6, "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;
    .local v7, "scaleChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .local v8, "regionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .local v9, "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .local v10, "colorChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .restart local v11    # "rotationChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .local v13, "c":I
    :cond_1
    move-object/from16 v53, v1

    move-object/from16 v54, v2

    move-object/from16 v55, v3

    move/from16 v42, v4

    move-object/from16 v24, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v47, v8

    move-object/from16 v31, v9

    move-object/from16 v50, v10

    move-object/from16 v52, v11

    move/from16 v43, v12

    move/from16 v41, v13

    .line 608
    .end local v1    # "look":Lcom/badlogic/gdx/math/Vector3;
    .end local v2    # "right":Lcom/badlogic/gdx/math/Vector3;
    .end local v3    # "up":Lcom/badlogic/gdx/math/Vector3;
    .end local v4    # "tp":I
    .end local v6    # "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;
    .end local v7    # "scaleChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v8    # "regionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v9    # "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v10    # "colorChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v11    # "rotationChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v12    # "p":I
    .end local v13    # "c":I
    .restart local v42    # "tp":I
    .restart local v53    # "look":Lcom/badlogic/gdx/math/Vector3;
    .restart local v54    # "right":Lcom/badlogic/gdx/math/Vector3;
    .restart local v55    # "up":Lcom/badlogic/gdx/math/Vector3;
    goto/16 :goto_0

    .line 609
    .end local v42    # "tp":I
    .end local v53    # "look":Lcom/badlogic/gdx/math/Vector3;
    .end local v54    # "right":Lcom/badlogic/gdx/math/Vector3;
    .end local v55    # "up":Lcom/badlogic/gdx/math/Vector3;
    .restart local v1    # "look":Lcom/badlogic/gdx/math/Vector3;
    .restart local v2    # "right":Lcom/badlogic/gdx/math/Vector3;
    .restart local v3    # "up":Lcom/badlogic/gdx/math/Vector3;
    .restart local v4    # "tp":I
    :cond_2
    return-void
.end method

.method private fillVerticesToViewPointCPU([I)V
    .locals 55
    .param p1, "particlesOffset"    # [I

    .line 469
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 470
    .local v1, "tp":I
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderData:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;

    .line 471
    .local v3, "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 472
    .local v4, "scaleChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v5, v3, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 473
    .local v5, "regionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 474
    .local v6, "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v7, v3, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 475
    .local v7, "colorChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v8, v3, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 477
    .local v8, "rotationChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    const/4 v9, 0x0

    .local v9, "p":I
    iget-object v10, v3, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v10, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .local v10, "c":I
    :goto_1
    if-ge v9, v10, :cond_1

    .line 478
    aget v11, p1, v1

    iget v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    mul-int/2addr v11, v12

    mul-int/lit8 v11, v11, 0x4

    .line 479
    .local v11, "baseOffset":I
    iget-object v12, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iget v13, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v13, v9

    aget v21, v12, v13

    .line 480
    .local v21, "scale":F
    iget v12, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v22, v9, v12

    .line 481
    .local v22, "regionOffset":I
    iget v12, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v23, v9, v12

    .line 482
    .local v23, "positionOffset":I
    iget v12, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v24, v9, v12

    .line 483
    .local v24, "colorOffset":I
    iget v12, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v25, v9, v12

    .line 484
    .local v25, "rotationOffset":I
    iget-object v12, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v23, 0x0

    aget v15, v12, v13

    .local v15, "px":F
    iget-object v12, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v23, 0x1

    aget v14, v12, v13

    .line 485
    .local v14, "py":F
    iget-object v12, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v23, 0x2

    aget v13, v12, v13

    .line 486
    .local v13, "pz":F
    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v22, 0x0

    aget v35, v12, v16

    .line 487
    .local v35, "u":F
    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v22, 0x1

    aget v36, v12, v16

    .line 488
    .local v36, "v":F
    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v22, 0x2

    aget v37, v12, v16

    .line 489
    .local v37, "u2":F
    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v22, 0x3

    aget v38, v12, v16

    .line 490
    .local v38, "v2":F
    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v22, 0x4

    aget v12, v12, v16

    mul-float v12, v12, v21

    move-object/from16 v39, v2

    .local v12, "sx":F
    iget-object v2, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v22, 0x5

    aget v2, v2, v16

    mul-float v2, v2, v21

    .line 493
    .local v2, "sy":F
    move-object/from16 v40, v3

    .end local v3    # "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;
    .local v40, "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;
    iget-object v3, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v24, 0x0

    aget v3, v3, v16

    .line 494
    .local v3, "r":F
    move-object/from16 v41, v4

    .end local v4    # "scaleChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .local v41, "scaleChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v4, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v24, 0x1

    aget v4, v4, v16

    .line 495
    .local v4, "g":F
    move-object/from16 v42, v5

    .end local v5    # "regionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .local v42, "regionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v5, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v24, 0x2

    aget v5, v5, v16

    .line 496
    .local v5, "b":F
    move-object/from16 v43, v6

    .end local v6    # "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .local v43, "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v6, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v24, 0x3

    aget v6, v6, v16

    .line 497
    .local v6, "a":F
    move-object/from16 v44, v7

    .end local v7    # "colorChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .local v44, "colorChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    iget-object v7, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v25, 0x0

    aget v7, v7, v16

    .line 498
    .local v7, "cosRotation":F
    move/from16 v45, v10

    .end local v10    # "c":I
    .local v45, "c":I
    iget-object v10, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v25, 0x1

    aget v10, v10, v16

    .line 499
    .local v10, "sinRotation":F
    move-object/from16 v46, v8

    .end local v8    # "rotationChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .local v46, "rotationChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    move/from16 v47, v1

    .end local v1    # "tp":I
    .local v47, "tp":I
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v15, v14, v13}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    .line 500
    .local v1, "look":Lcom/badlogic/gdx/math/Vector3;
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    move/from16 v48, v9

    .end local v9    # "p":I
    .local v48, "p":I
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    .line 501
    .local v8, "right":Lcom/badlogic/gdx/math/Vector3;
    sget-object v9, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    .line 502
    .local v9, "up":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {v8, v12}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 503
    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 505
    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v16, v7, v16

    if-eqz v16, :cond_0

    .line 506
    move/from16 v49, v2

    .end local v2    # "sy":F
    .local v49, "sy":F
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v2, v1, v7, v10}, Lcom/badlogic/gdx/math/Matrix3;->setToRotation(Lcom/badlogic/gdx/math/Vector3;FF)Lcom/badlogic/gdx/math/Matrix3;

    .line 507
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    move-object/from16 v50, v1

    .end local v1    # "look":Lcom/badlogic/gdx/math/Vector3;
    .local v50, "look":Lcom/badlogic/gdx/math/Vector3;
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    move/from16 v51, v7

    .end local v7    # "cosRotation":F
    .local v51, "cosRotation":F
    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v7, v7

    move-object/from16 v52, v8

    .end local v8    # "right":Lcom/badlogic/gdx/math/Vector3;
    .local v52, "right":Lcom/badlogic/gdx/math/Vector3;
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v7, v8

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v8, v8

    move-object/from16 v53, v9

    .end local v9    # "up":Lcom/badlogic/gdx/math/Vector3;
    .local v53, "up":Lcom/badlogic/gdx/math/Vector3;
    sget-object v9, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v8, v9

    sget-object v9, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v9, v9

    move/from16 v54, v10

    .end local v10    # "sinRotation":F
    .local v54, "sinRotation":F
    sget-object v10, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v9, v10

    .line 508
    invoke-virtual {v1, v7, v8, v9}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v15, v14, v13}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    .line 507
    move v7, v12

    .end local v12    # "sx":F
    .local v7, "sx":F
    move-object v12, v2

    move v2, v13

    .end local v13    # "pz":F
    .local v2, "pz":F
    move v13, v11

    move v8, v14

    .end local v14    # "py":F
    .local v8, "py":F
    move-object v14, v1

    move v1, v15

    .end local v15    # "px":F
    .local v1, "px":F
    move/from16 v15, v35

    move/from16 v16, v38

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    invoke-static/range {v12 .. v20}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 510
    iget v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v11, v9

    .line 511
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v10, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v12, v13

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v13, v14

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v14, v15

    .line 512
    invoke-virtual {v10, v12, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    invoke-virtual {v10, v1, v8, v2}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v28

    .line 511
    move-object/from16 v26, v9

    move/from16 v27, v11

    move/from16 v29, v37

    move/from16 v30, v38

    move/from16 v31, v3

    move/from16 v32, v4

    move/from16 v33, v5

    move/from16 v34, v6

    invoke-static/range {v26 .. v34}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 514
    iget v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v11, v9

    .line 515
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v10, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v12, v13

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v13, v14

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v14, v15

    .line 516
    invoke-virtual {v10, v12, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    invoke-virtual {v10, v1, v8, v2}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v28

    .line 515
    move-object/from16 v26, v9

    move/from16 v27, v11

    move/from16 v30, v36

    invoke-static/range {v26 .. v34}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 518
    iget v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v11, v9

    .line 519
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v10, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v12, v12

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v12, v13

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v13, v13

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v13, v14

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v14, v14

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v14, v15

    .line 520
    invoke-virtual {v10, v12, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_M3:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    invoke-virtual {v10, v1, v8, v2}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v28

    .line 519
    move-object/from16 v26, v9

    move/from16 v27, v11

    move/from16 v29, v35

    invoke-static/range {v26 .. v34}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    goto/16 :goto_2

    .line 523
    .end local v49    # "sy":F
    .end local v50    # "look":Lcom/badlogic/gdx/math/Vector3;
    .end local v51    # "cosRotation":F
    .end local v52    # "right":Lcom/badlogic/gdx/math/Vector3;
    .end local v53    # "up":Lcom/badlogic/gdx/math/Vector3;
    .end local v54    # "sinRotation":F
    .local v1, "look":Lcom/badlogic/gdx/math/Vector3;
    .local v2, "sy":F
    .local v7, "cosRotation":F
    .local v8, "right":Lcom/badlogic/gdx/math/Vector3;
    .restart local v9    # "up":Lcom/badlogic/gdx/math/Vector3;
    .restart local v10    # "sinRotation":F
    .restart local v12    # "sx":F
    .restart local v13    # "pz":F
    .restart local v14    # "py":F
    .restart local v15    # "px":F
    :cond_0
    move-object/from16 v50, v1

    move/from16 v49, v2

    move/from16 v51, v7

    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move/from16 v54, v10

    move v7, v12

    move v2, v13

    move v8, v14

    move v1, v15

    .end local v9    # "up":Lcom/badlogic/gdx/math/Vector3;
    .end local v10    # "sinRotation":F
    .end local v12    # "sx":F
    .end local v13    # "pz":F
    .end local v14    # "py":F
    .end local v15    # "px":F
    .local v1, "px":F
    .local v2, "pz":F
    .local v7, "sx":F
    .local v8, "py":F
    .restart local v49    # "sy":F
    .restart local v50    # "look":Lcom/badlogic/gdx/math/Vector3;
    .restart local v51    # "cosRotation":F
    .restart local v52    # "right":Lcom/badlogic/gdx/math/Vector3;
    .restart local v53    # "up":Lcom/badlogic/gdx/math/Vector3;
    .restart local v54    # "sinRotation":F
    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v9, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v10, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v10, v10

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v10, v13

    add-float/2addr v10, v1

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v13, v13

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v13, v14

    add-float/2addr v13, v8

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v14, v14

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v14, v15

    add-float/2addr v14, v2

    .line 524
    invoke-virtual {v9, v10, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    .line 523
    move v13, v11

    move/from16 v15, v35

    move/from16 v16, v38

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    invoke-static/range {v12 .. v20}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 525
    iget v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v11, v9

    .line 526
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v10, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v12, v13

    add-float/2addr v12, v1

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v13, v14

    add-float/2addr v13, v8

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v14, v15

    add-float/2addr v14, v2

    .line 527
    invoke-virtual {v10, v12, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v28

    .line 526
    move-object/from16 v26, v9

    move/from16 v27, v11

    move/from16 v29, v37

    move/from16 v30, v38

    move/from16 v31, v3

    move/from16 v32, v4

    move/from16 v33, v5

    move/from16 v34, v6

    invoke-static/range {v26 .. v34}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 528
    iget v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v11, v9

    .line 529
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v10, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v12, v13

    add-float/2addr v12, v1

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v13, v14

    add-float/2addr v13, v8

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v14, v15

    add-float/2addr v14, v2

    .line 530
    invoke-virtual {v10, v12, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v28

    .line 529
    move-object/from16 v26, v9

    move/from16 v27, v11

    move/from16 v30, v36

    invoke-static/range {v26 .. v34}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 531
    iget v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    add-int/2addr v11, v9

    .line 532
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    sget-object v10, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V6:Lcom/badlogic/gdx/math/Vector3;

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v12, v12

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v12, v13

    add-float/2addr v12, v1

    sget-object v13, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v13, v13

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v13, v14

    add-float/2addr v13, v8

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v14, v14

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v14, v15

    add-float/2addr v14, v2

    .line 533
    invoke-virtual {v10, v12, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v28

    .line 532
    move-object/from16 v26, v9

    move/from16 v27, v11

    move/from16 v29, v35

    invoke-static/range {v26 .. v34}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V

    .line 477
    .end local v1    # "px":F
    .end local v2    # "pz":F
    .end local v3    # "r":F
    .end local v4    # "g":F
    .end local v5    # "b":F
    .end local v6    # "a":F
    .end local v7    # "sx":F
    .end local v8    # "py":F
    .end local v11    # "baseOffset":I
    .end local v21    # "scale":F
    .end local v22    # "regionOffset":I
    .end local v23    # "positionOffset":I
    .end local v24    # "colorOffset":I
    .end local v25    # "rotationOffset":I
    .end local v35    # "u":F
    .end local v36    # "v":F
    .end local v37    # "u2":F
    .end local v38    # "v2":F
    .end local v49    # "sy":F
    .end local v50    # "look":Lcom/badlogic/gdx/math/Vector3;
    .end local v51    # "cosRotation":F
    .end local v52    # "right":Lcom/badlogic/gdx/math/Vector3;
    .end local v53    # "up":Lcom/badlogic/gdx/math/Vector3;
    .end local v54    # "sinRotation":F
    :goto_2
    add-int/lit8 v9, v48, 0x1

    .end local v48    # "p":I
    .local v9, "p":I
    add-int/lit8 v1, v47, 0x1

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    move-object/from16 v4, v41

    move-object/from16 v5, v42

    move-object/from16 v6, v43

    move-object/from16 v7, v44

    move/from16 v10, v45

    move-object/from16 v8, v46

    .end local v47    # "tp":I
    .local v1, "tp":I
    goto/16 :goto_1

    .end local v40    # "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;
    .end local v41    # "scaleChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v42    # "regionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v43    # "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v44    # "colorChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v45    # "c":I
    .end local v46    # "rotationChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .local v3, "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;
    .local v4, "scaleChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .local v5, "regionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .local v6, "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .local v7, "colorChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .local v8, "rotationChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .local v10, "c":I
    :cond_1
    move/from16 v47, v1

    move-object/from16 v39, v2

    move-object/from16 v40, v3

    move-object/from16 v41, v4

    move-object/from16 v42, v5

    move-object/from16 v43, v6

    move-object/from16 v44, v7

    move-object/from16 v46, v8

    move/from16 v48, v9

    move/from16 v45, v10

    .line 536
    .end local v1    # "tp":I
    .end local v3    # "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;
    .end local v4    # "scaleChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v5    # "regionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v6    # "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v7    # "colorChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v8    # "rotationChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    .end local v9    # "p":I
    .end local v10    # "c":I
    .restart local v47    # "tp":I
    goto/16 :goto_0

    .line 537
    .end local v47    # "tp":I
    .restart local v1    # "tp":I
    :cond_2
    return-void
.end method

.method private initRenderData()V
    .locals 0

    .line 243
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->setVertexData()V

    .line 244
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->clearRenderablesPool()V

    .line 245
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->allocShader()V

    .line 246
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->resetCapacity()V

    .line 247
    return-void
.end method

.method private static putVertex([FIFFFFFFFFFFFFF)V
    .locals 2
    .param p0, "vertices"    # [F
    .param p1, "offset"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F
    .param p5, "u"    # F
    .param p6, "v"    # F
    .param p7, "scaleX"    # F
    .param p8, "scaleY"    # F
    .param p9, "cosRotation"    # F
    .param p10, "sinRotation"    # F
    .param p11, "r"    # F
    .param p12, "g"    # F
    .param p13, "b"    # F
    .param p14, "a"    # F

    .line 304
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_POSITION_OFFSET:I

    add-int v1, p1, v0

    aput p2, p0, v1

    .line 305
    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput p3, p0, v1

    .line 306
    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x2

    aput p4, p0, v0

    .line 308
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_UV_OFFSET:I

    add-int v1, p1, v0

    aput p5, p0, v1

    .line 309
    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    aput p6, p0, v0

    .line 311
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_SIZE_ROTATION_OFFSET:I

    add-int v1, p1, v0

    aput p7, p0, v1

    .line 312
    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput p8, p0, v1

    .line 313
    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x2

    aput p9, p0, v1

    .line 314
    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x3

    aput p10, p0, v0

    .line 316
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_COLOR_OFFSET:I

    add-int v1, p1, v0

    aput p11, p0, v1

    .line 317
    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput p12, p0, v1

    .line 318
    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x2

    aput p13, p0, v1

    .line 319
    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x3

    aput p14, p0, v0

    .line 320
    return-void
.end method

.method private static putVertex([FILcom/badlogic/gdx/math/Vector3;FFFFFF)V
    .locals 2
    .param p0, "vertices"    # [F
    .param p1, "offset"    # I
    .param p2, "p"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "u"    # F
    .param p4, "v"    # F
    .param p5, "r"    # F
    .param p6, "g"    # F
    .param p7, "b"    # F
    .param p8, "a"    # F

    .line 339
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_POSITION_OFFSET:I

    add-int/2addr v0, p1

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v1, p0, v0

    .line 340
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_POSITION_OFFSET:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v1, p0, v0

    .line 341
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_POSITION_OFFSET:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x2

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v1, p0, v0

    .line 343
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_UV_OFFSET:I

    add-int v1, p1, v0

    aput p3, p0, v1

    .line 344
    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    aput p4, p0, v0

    .line 346
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_COLOR_OFFSET:I

    add-int v1, p1, v0

    aput p5, p0, v1

    .line 347
    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput p6, p0, v1

    .line 348
    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x2

    aput p7, p0, v1

    .line 349
    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x3

    aput p8, p0, v0

    .line 350
    return-void
.end method


# virtual methods
.method public allocParticlesData(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 168
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    mul-int/lit8 v0, v0, 0x4

    mul-int/2addr v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    .line 169
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->allocRenderables(I)V

    .line 170
    return-void
.end method

.method protected allocRenderable()Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .locals 7

    .line 173
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/Renderable;-><init>()V

    .line 174
    .local v0, "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    const/4 v2, 0x4

    iput v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    .line 175
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    const/4 v2, 0x0

    iput v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    .line 176
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/Material;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/badlogic/gdx/graphics/g3d/Attribute;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->blendingAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->depthTestAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v4}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->createDiffuse(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>([Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 177
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    new-instance v3, Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentAttributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    const/16 v5, 0x7ffc

    const v6, 0xbffa

    invoke-direct {v3, v2, v5, v6, v4}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    iput-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 178
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->indices:[S

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)Lcom/badlogic/gdx/graphics/Mesh;

    .line 179
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 180
    return-object v0
.end method

.method public begin()V
    .locals 2

    .line 294
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;->begin()V

    .line 295
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 296
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 297
    return-void
.end method

.method protected flush([I)V
    .locals 8
    .param p1, "offsets"    # [I

    .line 615
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->useGPU:Z

    if-eqz v0, :cond_0

    .line 617
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->fillVerticesGPU([I)V

    goto :goto_0

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->mode:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->Screen:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    if-ne v0, v1, :cond_1

    .line 622
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->fillVerticesToScreenCPU([I)V

    goto :goto_0

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->mode:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->ViewPoint:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->fillVerticesToViewPointCPU([I)V

    .line 629
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 630
    .local v0, "addedVertexCount":I
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->bufferedParticlesCount:I

    mul-int/lit8 v1, v1, 0x4

    .line 631
    .local v1, "vCount":I
    const/4 v2, 0x0

    .local v2, "v":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 632
    sub-int v3, v1, v2

    const/16 v4, 0x7ffc

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 633
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->obtain()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 634
    .local v3, "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    div-int/lit8 v5, v0, 0x4

    mul-int/lit8 v5, v5, 0x6

    iput v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    .line 635
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->vertices:[F

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    mul-int v7, v6, v2

    mul-int/2addr v6, v0

    invoke-virtual {v4, v5, v7, v6}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    .line 636
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->update()V

    .line 637
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 631
    .end local v3    # "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    add-int/2addr v2, v0

    goto :goto_1

    .line 639
    .end local v2    # "v":I
    :cond_3
    return-void
.end method

.method public getAlignMode()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->mode:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    return-object v0
.end method

.method public getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;)V"
        }
    .end annotation

    .line 643
    .local p1, "renderables":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    .local p2, "pool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 644
    .local v1, "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/g3d/Renderable;->set(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .end local v1    # "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    goto :goto_0

    .line 645
    :cond_0
    return-void
.end method

.method protected getShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;
    .locals 3
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 206
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->useGPU:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->mode:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;)V

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V

    .line 207
    .local v0, "shader":Lcom/badlogic/gdx/graphics/g3d/Shader;
    :goto_0
    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/Shader;->init()V

    .line 208
    return-object v0
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public isUseGPU()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->useGPU:Z

    return v0
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 3
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "resources"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .line 656
    const-string v0, "billboardBatch"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->getSaveData(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    move-result-object v0

    .line 657
    .local v0, "data":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->loadAsset()Lcom/badlogic/gdx/assets/AssetDescriptor;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/assets/AssetManager;->get(Lcom/badlogic/gdx/assets/AssetDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->setTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 659
    const-string v1, "cfg"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;

    .line 660
    .local v1, "cfg":Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;
    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;->useGPU:Z

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->setUseGpu(Z)V

    .line 661
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;->mode:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->setAlignMode(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;)V

    .line 663
    .end local v1    # "cfg":Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;
    :cond_0
    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 4
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "resources"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .line 649
    const-string v0, "billboardBatch"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->createSaveData(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    move-result-object v0

    .line 650
    .local v0, "data":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;

    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->useGPU:Z

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->mode:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;-><init>(ZLcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;)V

    const-string v2, "cfg"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 651
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/assets/AssetManager;->getAssetFileName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->saveAsset(Ljava/lang/String;Ljava/lang/Class;)V

    .line 652
    return-void
.end method

.method public setAlignMode(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    .line 251
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->mode:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    if-eq p1, v0, :cond_0

    .line 252
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->mode:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    .line 253
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->useGPU:Z

    if-eqz v0, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->initRenderData()V

    .line 255
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->bufferedParticlesCount:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->allocRenderables(I)V

    .line 258
    :cond_0
    return-void
.end method

.method public setTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 6
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .line 278
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 279
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->getFree()I

    move-result v1

    .local v1, "free":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 281
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->renderablePool:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 282
    .local v2, "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/Material;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    .line 283
    .local v3, "attribute":Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    iput-object p1, v4, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    .line 280
    .end local v2    # "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .end local v3    # "attribute":Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "i":I
    .end local v1    # "free":I
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 286
    return-void
.end method

.method public setUseGpu(Z)V
    .locals 1
    .param p1, "useGPU"    # Z

    .line 266
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->useGPU:Z

    if-eq v0, p1, :cond_0

    .line 267
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->useGPU:Z

    .line 268
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->initRenderData()V

    .line 269
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->bufferedParticlesCount:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->allocRenderables(I)V

    .line 271
    :cond_0
    return-void
.end method

.method public setVertexData()V
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->useGPU:Z

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentAttributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 230
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->GPU_VERTEX_SIZE:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    goto :goto_0

    .line 236
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentAttributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 237
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->CPU_VERTEX_SIZE:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->currentVertexSize:I

    .line 239
    :goto_0
    return-void
.end method
