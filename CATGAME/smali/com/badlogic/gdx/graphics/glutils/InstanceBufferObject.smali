.class public Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;
.super Ljava/lang/Object;
.source "InstanceBufferObject.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/InstanceData;


# instance fields
.field private attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field private buffer:Ljava/nio/FloatBuffer;

.field private bufferHandle:I

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field isBound:Z

.field isDirty:Z

.field private ownsBuffer:Z

.field private usage:I


# direct methods
.method public constructor <init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 2
    .param p1, "isStatic"    # Z
    .param p2, "numVertices"    # I
    .param p3, "instanceAttributes"    # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isDirty:Z

    .line 45
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isBound:Z

    .line 52
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v1, :cond_1

    .line 55
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->bufferHandle:I

    .line 57
    iget v1, p3, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    mul-int/2addr v1, p2

    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 58
    .local v1, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, p3}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->setBuffer(Ljava/nio/Buffer;ZLcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 60
    if-eqz p1, :cond_0

    const v0, 0x88e4

    goto :goto_0

    :cond_0
    const v0, 0x88e8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->setUsage(I)V

    .line 61
    return-void

    .line 53
    .end local v1    # "data":Ljava/nio/ByteBuffer;
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "InstanceBufferObject requires a device running with GLES 3.0 compatibilty"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs constructor <init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 1
    .param p1, "isStatic"    # Z
    .param p2, "numVertices"    # I
    .param p3, "attributes"    # [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 49
    return-void
.end method

.method private bufferChanged()V
    .locals 5

    .line 111
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isBound:Z

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->usage:I

    const v4, 0x8892

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 113
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->usage:I

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isDirty:Z

    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 185
    return-void
.end method

.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 16
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"    # [I

    .line 189
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    sget-object v9, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 191
    .local v9, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->bufferHandle:I

    const v2, 0x8892

    invoke-interface {v9, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 192
    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isDirty:Z

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->limit()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 194
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v4, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->usage:I

    invoke-interface {v9, v2, v1, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 195
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isDirty:Z

    .line 198
    :cond_0
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v10

    .line 199
    .local v10, "numAttributes":I
    const/4 v11, 0x1

    if-nez p2, :cond_3

    .line 200
    const/4 v1, 0x0

    move v12, v1

    .local v12, "i":I
    :goto_0
    if-ge v12, v10, :cond_2

    .line 201
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v13

    .line 202
    .local v13, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget-object v1, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v14

    .line 203
    .local v14, "location":I
    if-gez v14, :cond_1

    .line 204
    goto :goto_1

    .line 205
    :cond_1
    iget v15, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    .line 206
    .local v15, "unitOffset":I
    add-int v1, v14, v15

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(I)V

    .line 208
    add-int v2, v14, v15

    iget v3, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v4, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v5, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v6, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v7, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZII)V

    .line 209
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    add-int v2, v14, v15

    invoke-interface {v1, v2, v11}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttribDivisor(II)V

    .line 200
    .end local v13    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v14    # "location":I
    .end local v15    # "unitOffset":I
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .end local v12    # "i":I
    :cond_2
    goto :goto_4

    .line 213
    :cond_3
    const/4 v1, 0x0

    move v12, v1

    .restart local v12    # "i":I
    :goto_2
    if-ge v12, v10, :cond_5

    .line 214
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v13

    .line 215
    .restart local v13    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    aget v14, p2, v12

    .line 216
    .restart local v14    # "location":I
    if-gez v14, :cond_4

    .line 217
    goto :goto_3

    .line 218
    :cond_4
    iget v15, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    .line 219
    .restart local v15    # "unitOffset":I
    add-int v1, v14, v15

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(I)V

    .line 221
    add-int v2, v14, v15

    iget v3, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v4, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v5, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v6, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v7, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZII)V

    .line 222
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    add-int v2, v14, v15

    invoke-interface {v1, v2, v11}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttribDivisor(II)V

    .line 213
    .end local v13    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v14    # "location":I
    .end local v15    # "unitOffset":I
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 225
    .end local v12    # "i":I
    :cond_5
    :goto_4
    iput-boolean v11, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isBound:Z

    .line 226
    return-void
.end method

.method public dispose()V
    .locals 3

    .line 279
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 280
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    const v1, 0x8892

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 281
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->bufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffer(I)V

    .line 282
    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->bufferHandle:I

    .line 283
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->ownsBuffer:Z

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 285
    :cond_0
    return-void
.end method

.method public getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method public getBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isDirty:Z

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->buffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getNumInstances()I
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getNumMaxInstances()I
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method protected getUsage()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->usage:I

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 270
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->bufferHandle:I

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isDirty:Z

    .line 272
    return-void
.end method

.method protected setBuffer(Ljava/nio/Buffer;ZLcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 3
    .param p1, "data"    # Ljava/nio/Buffer;
    .param p2, "ownsBuffer"    # Z
    .param p3, "value"    # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 92
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isBound:Z

    if-nez v0, :cond_2

    .line 94
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->ownsBuffer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 95
    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 96
    :cond_0
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 97
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 98
    move-object v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 101
    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->ownsBuffer:Z

    .line 103
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 104
    .local v0, "l":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 105
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->buffer:Ljava/nio/FloatBuffer;

    .line 106
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 107
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->buffer:Ljava/nio/FloatBuffer;

    div-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 108
    return-void

    .line 100
    .end local v0    # "l":I
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Only ByteBuffer is currently supported"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Cannot change attributes while VBO is bound"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInstanceData(Ljava/nio/FloatBuffer;I)V
    .locals 2
    .param p1, "data"    # Ljava/nio/FloatBuffer;
    .param p2, "count"    # I

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isDirty:Z

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->buffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 133
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->bufferChanged()V

    .line 134
    return-void
.end method

.method public setInstanceData([FII)V
    .locals 2
    .param p1, "data"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isDirty:Z

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, p3, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->buffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 124
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->bufferChanged()V

    .line 125
    return-void
.end method

.method protected setUsage(I)V
    .locals 2
    .param p1, "value"    # I

    .line 172
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isBound:Z

    if-nez v0, :cond_0

    .line 174
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->usage:I

    .line 175
    return-void

    .line 173
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Cannot change usage while VBO is bound"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 236
    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 7
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"    # [I

    .line 240
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 241
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v1

    .line 242
    .local v1, "numAttributes":I
    if-nez p2, :cond_2

    .line 243
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 244
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    .line 245
    .local v3, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v4

    .line 246
    .local v4, "location":I
    if-gez v4, :cond_0

    .line 247
    goto :goto_1

    .line 248
    :cond_0
    iget v5, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    .line 249
    .local v5, "unitOffset":I
    add-int v6, v4, v5

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->disableVertexAttribute(I)V

    .line 243
    .end local v3    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v4    # "location":I
    .end local v5    # "unitOffset":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_1
    goto :goto_4

    .line 252
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 253
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    .line 254
    .restart local v3    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    aget v4, p2, v2

    .line 255
    .restart local v4    # "location":I
    if-gez v4, :cond_3

    .line 256
    goto :goto_3

    .line 257
    :cond_3
    iget v5, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    .line 258
    .restart local v5    # "unitOffset":I
    add-int v6, v4, v5

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(I)V

    .line 252
    .end local v3    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v4    # "location":I
    .end local v5    # "unitOffset":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 261
    .end local v2    # "i":I
    :cond_4
    :goto_4
    const v2, 0x8892

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 262
    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isBound:Z

    .line 263
    return-void
.end method

.method public updateInstanceData(ILjava/nio/FloatBuffer;II)V
    .locals 3
    .param p1, "targetOffset"    # I
    .param p2, "data"    # Ljava/nio/FloatBuffer;
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isDirty:Z

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 151
    .local v0, "pos":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v2, p1, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 152
    mul-int/lit8 v1, p3, 0x4

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 153
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p2, v1, p4}, Lcom/badlogic/gdx/utils/BufferUtils;->copy(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V

    .line 154
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 155
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->buffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 156
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->bufferChanged()V

    .line 157
    return-void
.end method

.method public updateInstanceData(I[FII)V
    .locals 3
    .param p1, "targetOffset"    # I
    .param p2, "data"    # [F
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->isDirty:Z

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 140
    .local v0, "pos":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v2, p1, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 141
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p2, p3, p4, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FIILjava/nio/Buffer;)V

    .line 142
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 143
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->buffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 144
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObject;->bufferChanged()V

    .line 145
    return-void
.end method
