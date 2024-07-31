.class public Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;
.super Ljava/lang/Object;
.source "InstanceBufferObjectSubData.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/InstanceData;


# instance fields
.field final attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field final buffer:Ljava/nio/FloatBuffer;

.field bufferHandle:I

.field final byteBuffer:Ljava/nio/ByteBuffer;

.field isBound:Z

.field final isDirect:Z

.field isDirty:Z

.field final isStatic:Z

.field final usage:I


# direct methods
.method public constructor <init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 1
    .param p1, "isStatic"    # Z
    .param p2, "numInstances"    # I
    .param p3, "instanceAttributes"    # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->isDirty:Z

    .line 46
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->isBound:Z

    .line 67
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->isStatic:Z

    .line 68
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 69
    iget v0, p3, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    mul-int/2addr v0, p2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->isDirect:Z

    .line 72
    if-eqz p1, :cond_0

    const v0, 0x88e4

    goto :goto_0

    :cond_0
    const v0, 0x88e8

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->usage:I

    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    .line 74
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->bufferHandle:I

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 77
    return-void
.end method

.method public varargs constructor <init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 1
    .param p1, "isStatic"    # Z
    .param p2, "numInstances"    # I
    .param p3, "instanceAttributes"    # [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 56
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 57
    return-void
.end method

.method private bufferChanged()V
    .locals 5

    .line 119
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->isBound:Z

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->usage:I

    const v4, 0x8892

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 121
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-interface {v0, v4, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 122
    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->isDirty:Z

    .line 124
    :cond_0
    return-void
.end method

.method private createBufferObject()I
    .locals 6

    .line 80
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v0

    .line 81
    .local v0, "result":I
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x8892

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 82
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->usage:I

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v5, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 83
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 84
    return v0
.end method


# virtual methods
.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 199
    return-void
.end method

.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 16
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"    # [I

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    sget-object v9, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 205
    .local v9, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->bufferHandle:I

    const v2, 0x8892

    invoke-interface {v9, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 206
    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->isDirty:Z

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->limit()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 208
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v4, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->usage:I

    invoke-interface {v9, v2, v1, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 209
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->isDirty:Z

    .line 212
    :cond_0
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v10

    .line 213
    .local v10, "numAttributes":I
    const/4 v11, 0x1

    if-nez p2, :cond_3

    .line 214
    const/4 v1, 0x0

    move v12, v1

    .local v12, "i":I
    :goto_0
    if-ge v12, v10, :cond_2

    .line 215
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v13

    .line 216
    .local v13, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget-object v1, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v14

    .line 217
    .local v14, "location":I
    if-gez v14, :cond_1

    .line 218
    goto :goto_1

    .line 219
    :cond_1
    iget v15, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    .line 220
    .local v15, "unitOffset":I
    add-int v1, v14, v15

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(I)V

    .line 222
    add-int v2, v14, v15

    iget v3, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v4, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v5, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v6, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v7, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZII)V

    .line 223
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    add-int v2, v14, v15

    invoke-interface {v1, v2, v11}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttribDivisor(II)V

    .line 214
    .end local v13    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v14    # "location":I
    .end local v15    # "unitOffset":I
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .end local v12    # "i":I
    :cond_2
    goto :goto_4

    .line 226
    :cond_3
    const/4 v1, 0x0

    move v12, v1

    .restart local v12    # "i":I
    :goto_2
    if-ge v12, v10, :cond_5

    .line 227
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v13

    .line 228
    .restart local v13    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    aget v14, p2, v12

    .line 229
    .restart local v14    # "location":I
    if-gez v14, :cond_4

    .line 230
    goto :goto_3

    .line 231
    :cond_4
    iget v15, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    .line 232
    .restart local v15    # "unitOffset":I
    add-int v1, v14, v15

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(I)V

    .line 234
    add-int v2, v14, v15

    iget v3, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v4, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v5, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v6, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v7, v13, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZII)V

    .line 235
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    add-int v2, v14, v15

    invoke-interface {v1, v2, v11}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttribDivisor(II)V

    .line 226
    .end local v13    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v14    # "location":I
    .end local v15    # "unitOffset":I
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 238
    .end local v12    # "i":I
    :cond_5
    :goto_4
    iput-boolean v11, v0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->isBound:Z

    .line 239
    return-void
.end method

.method public dispose()V
    .locals 3

    .line 291
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 292
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    const v1, 0x8892

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 293
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->bufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffer(I)V

    .line 294
    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->bufferHandle:I

    .line 295
    return-void
.end method

.method public getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method public getBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->isDirty:Z

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getBufferHandle()I
    .locals 1

    .line 303
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->bufferHandle:I

    return v0
.end method

.method public getNumInstances()I
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getNumMaxInstances()I
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 282
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->bufferHandle:I

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->isDirty:Z

    .line 284
    return-void
.end method

.method public setInstanceData(Ljava/nio/FloatBuffer;I)V
    .locals 2
    .param p1, "data"    # Ljava/nio/FloatBuffer;
    .param p2, "count"    # I

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->isDirty:Z

    .line 147
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->isDirect:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 153
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    shl-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 159
    :goto_0
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->bufferChanged()V

    .line 160
    return-void
.end method

.method public setInstanceData([FII)V
    .locals 2
    .param p1, "data"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->isDirty:Z

    .line 129
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->isDirect:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, p3, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    shl-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 141
    :goto_0
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->bufferChanged()V

    .line 142
    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 249
    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 7
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"    # [I

    .line 253
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 254
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v1

    .line 255
    .local v1, "numAttributes":I
    if-nez p2, :cond_2

    .line 256
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 257
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    .line 258
    .local v3, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v4

    .line 259
    .local v4, "location":I
    if-gez v4, :cond_0

    .line 260
    goto :goto_1

    .line 261
    :cond_0
    iget v5, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    .line 262
    .local v5, "unitOffset":I
    add-int v6, v4, v5

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->disableVertexAttribute(I)V

    .line 256
    .end local v3    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v4    # "location":I
    .end local v5    # "unitOffset":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_1
    goto :goto_4

    .line 265
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 266
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    .line 267
    .restart local v3    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    aget v4, p2, v2

    .line 268
    .restart local v4    # "location":I
    if-gez v4, :cond_3

    .line 269
    goto :goto_3

    .line 270
    :cond_3
    iget v5, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    .line 271
    .restart local v5    # "unitOffset":I
    add-int v6, v4, v5

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(I)V

    .line 265
    .end local v3    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v4    # "location":I
    .end local v5    # "unitOffset":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 274
    .end local v2    # "i":I
    :cond_4
    :goto_4
    const v2, 0x8892

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 275
    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->isBound:Z

    .line 276
    return-void
.end method

.method public updateInstanceData(ILjava/nio/FloatBuffer;II)V
    .locals 3
    .param p1, "targetOffset"    # I
    .param p2, "data"    # Ljava/nio/FloatBuffer;
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->isDirty:Z

    .line 179
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->isDirect:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 181
    .local v0, "pos":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v2, p1, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 182
    mul-int/lit8 v1, p3, 0x4

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 183
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p2, v1, p4}, Lcom/badlogic/gdx/utils/BufferUtils;->copy(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V

    .line 184
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 185
    .end local v0    # "pos":I
    nop

    .line 188
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->bufferChanged()V

    .line 189
    return-void

    .line 186
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Buffer must be allocated direct."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateInstanceData(I[FII)V
    .locals 3
    .param p1, "targetOffset"    # I
    .param p2, "data"    # [F
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->isDirty:Z

    .line 165
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->isDirect:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 167
    .local v0, "pos":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v2, p1, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 168
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p2, p3, p4, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FIILjava/nio/Buffer;)V

    .line 169
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 170
    .end local v0    # "pos":I
    nop

    .line 173
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/InstanceBufferObjectSubData;->bufferChanged()V

    .line 174
    return-void

    .line 171
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Buffer must be allocated direct."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
