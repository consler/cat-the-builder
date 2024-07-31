.class public Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;
.super Ljava/lang/Object;
.source "VertexBufferObjectWithVAO.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/VertexData;


# static fields
.field static final tmpHandle:Ljava/nio/IntBuffer;


# instance fields
.field final attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field final buffer:Ljava/nio/FloatBuffer;

.field bufferHandle:I

.field final byteBuffer:Ljava/nio/ByteBuffer;

.field cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

.field isBound:Z

.field isDirty:Z

.field final isStatic:Z

.field final ownsBuffer:Z

.field final usage:I

.field vaoHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->tmpHandle:Ljava/nio/IntBuffer;

    return-void
.end method

.method public constructor <init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 2
    .param p1, "isStatic"    # Z
    .param p2, "numVertices"    # I
    .param p3, "attributes"    # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isDirty:Z

    .line 46
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isBound:Z

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->vaoHandle:I

    .line 48
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    .line 70
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isStatic:Z

    .line 71
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 73
    iget v0, p3, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    mul-int/2addr v0, p2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->buffer:Ljava/nio/FloatBuffer;

    .line 75
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->ownsBuffer:Z

    .line 76
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 78
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bufferHandle:I

    .line 79
    if-eqz p1, :cond_0

    const v0, 0x88e4

    goto :goto_0

    :cond_0
    const v0, 0x88e8

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->usage:I

    .line 80
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->createVAO()V

    .line 81
    return-void
.end method

.method public varargs constructor <init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 1
    .param p1, "isStatic"    # Z
    .param p2, "numVertices"    # I
    .param p3, "attributes"    # [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 59
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 60
    return-void
.end method

.method public constructor <init>(ZLjava/nio/ByteBuffer;Lcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 2
    .param p1, "isStatic"    # Z
    .param p2, "unmanagedBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "attributes"    # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isDirty:Z

    .line 46
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isBound:Z

    .line 47
    const/4 v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->vaoHandle:I

    .line 48
    new-instance v1, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    .line 84
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isStatic:Z

    .line 85
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 87
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 88
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->ownsBuffer:Z

    .line 89
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->buffer:Ljava/nio/FloatBuffer;

    .line 90
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 92
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bufferHandle:I

    .line 93
    if-eqz p1, :cond_0

    const v0, 0x88e4

    goto :goto_0

    :cond_0
    const v0, 0x88e8

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->usage:I

    .line 94
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->createVAO()V

    .line 95
    return-void
.end method

.method private bindAttributes(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 12
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"    # [I

    .line 170
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 171
    .local v0, "stillValid":Z
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v3

    .line 173
    .local v3, "numAttributes":I
    if-eqz v0, :cond_5

    .line 174
    if-nez p2, :cond_2

    .line 175
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-eqz v0, :cond_5

    if-ge v4, v3, :cond_5

    .line 176
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v5

    .line 177
    .local v5, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v6

    .line 178
    .local v6, "location":I
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_1

    move v7, v2

    goto :goto_2

    :cond_1
    move v7, v1

    :goto_2
    move v0, v7

    .line 175
    .end local v5    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v6    # "location":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 181
    .end local v4    # "i":I
    :cond_2
    array-length v4, p2

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    iget v5, v5, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ne v4, v5, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    move v0, v4

    .line 182
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    if-eqz v0, :cond_5

    if-ge v4, v3, :cond_5

    .line 183
    aget v5, p2, v4

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_4

    move v5, v2

    goto :goto_5

    :cond_4
    move v5, v1

    :goto_5
    move v0, v5

    .line 182
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 188
    .end local v4    # "i":I
    :cond_5
    if-nez v0, :cond_8

    .line 189
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x8892

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bufferHandle:I

    invoke-interface {v1, v2, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 190
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->unbindAttributes(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 191
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 193
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v3, :cond_8

    .line 194
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    .line 195
    .local v2, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    if-nez p2, :cond_6

    .line 196
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v5, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_7

    .line 198
    :cond_6
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    aget v5, p2, v1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 201
    :goto_7
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v4

    .line 202
    .local v4, "location":I
    if-gez v4, :cond_7

    .line 203
    goto :goto_8

    .line 206
    :cond_7
    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(I)V

    .line 207
    iget v7, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v8, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v9, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v10, v5, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v11, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    move-object v5, p1

    move v6, v4

    invoke-virtual/range {v5 .. v11}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZII)V

    .line 193
    .end local v2    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v4    # "location":I
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 210
    .end local v1    # "i":I
    :cond_8
    return-void
.end method

.method private bindData(Lcom/badlogic/gdx/graphics/GL20;)V
    .locals 4
    .param p1, "gl"    # Lcom/badlogic/gdx/graphics/GL20;

    .line 227
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isDirty:Z

    if-eqz v0, :cond_0

    .line 228
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bufferHandle:I

    const v1, 0x8892

    invoke-interface {p1, v1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 229
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->limit()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 230
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->usage:I

    invoke-interface {p1, v1, v0, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isDirty:Z

    .line 233
    :cond_0
    return-void
.end method

.method private bufferChanged()V
    .locals 5

    .line 119
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isBound:Z

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8892

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->usage:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isDirty:Z

    .line 123
    :cond_0
    return-void
.end method

.method private createVAO()V
    .locals 3

    .line 279
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 280
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->tmpHandle:Ljava/nio/IntBuffer;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL30;->glGenVertexArrays(ILjava/nio/IntBuffer;)V

    .line 281
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->vaoHandle:I

    .line 282
    return-void
.end method

.method private deleteVAO()V
    .locals 4

    .line 285
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->vaoHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 286
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 287
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->tmpHandle:Ljava/nio/IntBuffer;

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->vaoHandle:I

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 288
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 289
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    const/4 v2, 0x1

    sget-object v3, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v2, v3}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteVertexArrays(ILjava/nio/IntBuffer;)V

    .line 290
    iput v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->vaoHandle:I

    .line 292
    :cond_0
    return-void
.end method

.method private unbindAttributes(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 3
    .param p1, "shaderProgram"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 213
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-nez v0, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v0

    .line 217
    .local v0, "numAttributes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 218
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->cachedLocations:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v2

    .line 219
    .local v2, "location":I
    if-gez v2, :cond_1

    .line 220
    goto :goto_1

    .line 222
    :cond_1
    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->disableVertexAttribute(I)V

    .line 217
    .end local v2    # "location":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 153
    return-void
.end method

.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 2
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"    # [I

    .line 157
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    .line 159
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL30;
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->vaoHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL30;->glBindVertexArray(I)V

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bindAttributes(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 164
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bindData(Lcom/badlogic/gdx/graphics/GL20;)V

    .line 166
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isBound:Z

    .line 167
    return-void
.end method

.method public dispose()V
    .locals 3

    .line 267
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    .line 269
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL30;
    const v1, 0x8892

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL30;->glBindBuffer(II)V

    .line 270
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteBuffer(I)V

    .line 271
    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bufferHandle:I

    .line 272
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->ownsBuffer:Z

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->deleteVAO()V

    .line 276
    return-void
.end method

.method public getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method public getBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isDirty:Z

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->buffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getNumMaxVertices()I
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getNumVertices()I
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 257
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glGenBuffer()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bufferHandle:I

    .line 258
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->createVAO()V

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isDirty:Z

    .line 260
    return-void
.end method

.method public setVertices([FII)V
    .locals 2
    .param p1, "vertices"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isDirty:Z

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, p3, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->buffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 131
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bufferChanged()V

    .line 132
    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 243
    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 2
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"    # [I

    .line 247
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    .line 248
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL30;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL30;->glBindVertexArray(I)V

    .line 249
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isBound:Z

    .line 250
    return-void
.end method

.method public updateVertices(I[FII)V
    .locals 3
    .param p1, "targetOffset"    # I
    .param p2, "vertices"    # [F
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->isDirty:Z

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 138
    .local v0, "pos":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v2, p1, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 139
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p2, p3, p4, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FIILjava/nio/Buffer;)V

    .line 140
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 141
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->buffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 142
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bufferChanged()V

    .line 143
    return-void
.end method
