.class public Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;
.super Ljava/lang/Object;
.source "TextureDescriptor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/graphics/GLTexture;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public texture:Lcom/badlogic/gdx/graphics/GLTexture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field public vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/GLTexture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    .local p1, "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;-><init>(Lcom/badlogic/gdx/graphics/GLTexture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/GLTexture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .locals 1
    .param p2, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p4, "uWrap"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p5, "vWrap"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureWrap;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureWrap;",
            ")V"
        }
    .end annotation

    .line 32
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    .local p1, "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    .line 33
    invoke-virtual/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->set(Lcom/badlogic/gdx/graphics/GLTexture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 34
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<",
            "TT;>;)I"
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    .local p1, "o":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    return v0

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v1, v1, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    .line 85
    .local v1, "t1":I
    :goto_0
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    iget v2, v2, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    .line 86
    .local v2, "t2":I
    :goto_1
    if-eq v1, v2, :cond_3

    sub-int v0, v1, v2

    return v0

    .line 87
    :cond_3
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    if-nez v3, :cond_4

    move v3, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/GLTexture;->getTextureObjectHandle()I

    move-result v3

    .line 88
    .local v3, "h1":I
    :goto_2
    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    if-nez v4, :cond_5

    move v4, v0

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/GLTexture;->getTextureObjectHandle()I

    move-result v4

    .line 89
    .local v4, "h2":I
    :goto_3
    if-eq v3, v4, :cond_6

    sub-int v0, v3, v4

    return v0

    .line 90
    :cond_6
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    if-eq v5, v6, :cond_9

    .line 91
    if-nez v5, :cond_7

    move v5, v0

    goto :goto_4

    :cond_7
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->getGLEnum()I

    move-result v5

    :goto_4
    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    if-nez v6, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->getGLEnum()I

    move-result v0

    :goto_5
    sub-int/2addr v5, v0

    return v5

    .line 92
    :cond_9
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    if-eq v5, v6, :cond_c

    .line 93
    if-nez v5, :cond_a

    move v5, v0

    goto :goto_6

    :cond_a
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->getGLEnum()I

    move-result v5

    :goto_6
    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    if-nez v6, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->getGLEnum()I

    move-result v0

    :goto_7
    sub-int/2addr v5, v0

    return v5

    .line 94
    :cond_c
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    if-eq v5, v6, :cond_f

    if-nez v5, :cond_d

    move v5, v0

    goto :goto_8

    :cond_d
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result v5

    :goto_8
    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    if-nez v6, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result v0

    :goto_9
    sub-int/2addr v5, v0

    return v5

    .line 95
    :cond_f
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    if-eq v5, v6, :cond_12

    if-nez v5, :cond_10

    move v5, v0

    goto :goto_a

    :cond_10
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result v5

    :goto_a
    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    if-nez v6, :cond_11

    goto :goto_b

    :cond_11
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result v0

    :goto_b
    sub-int/2addr v5, v0

    return v5

    .line 96
    :cond_12
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 22
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->compareTo(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 62
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 63
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 64
    :cond_1
    instance-of v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    if-nez v2, :cond_2

    return v0

    .line 65
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    .line 66
    .local v2, "other":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<*>;"
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    if-ne v3, v4, :cond_3

    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    if-ne v3, v4, :cond_3

    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    if-ne v3, v4, :cond_3

    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    if-ne v3, v4, :cond_3

    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    if-ne v3, v4, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 10

    .line 72
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    :goto_0
    int-to-long v2, v0

    .line 73
    .local v2, "result":J
    const-wide/16 v4, 0x32b

    mul-long v6, v2, v4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/GLTexture;->getTextureObjectHandle()I

    move-result v0

    :goto_1
    int-to-long v8, v0

    add-long/2addr v6, v8

    .line 74
    .end local v2    # "result":J
    .local v6, "result":J
    mul-long v2, v6, v4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->getGLEnum()I

    move-result v0

    :goto_2
    int-to-long v8, v0

    add-long/2addr v2, v8

    .line 75
    .end local v6    # "result":J
    .restart local v2    # "result":J
    mul-long v6, v2, v4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->getGLEnum()I

    move-result v0

    :goto_3
    int-to-long v8, v0

    add-long/2addr v6, v8

    .line 76
    .end local v2    # "result":J
    .restart local v6    # "result":J
    mul-long v2, v6, v4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result v0

    :goto_4
    int-to-long v8, v0

    add-long/2addr v2, v8

    .line 77
    .end local v6    # "result":J
    .restart local v2    # "result":J
    mul-long/2addr v4, v2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result v1

    :goto_5
    int-to-long v0, v1

    add-long/2addr v4, v0

    .line 78
    .end local v2    # "result":J
    .local v4, "result":J
    const/16 v0, 0x20

    shr-long v0, v4, v0

    xor-long/2addr v0, v4

    long-to-int v0, v0

    return v0
.end method

.method public set(Lcom/badlogic/gdx/graphics/GLTexture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .locals 0
    .param p2, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p4, "uWrap"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p5, "vWrap"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureWrap;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureWrap;",
            ")V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    .local p1, "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    .line 46
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 47
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 48
    iput-object p4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 49
    iput-object p5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 50
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:TT;>(",
            "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<",
            "TV;>;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    .local p1, "other":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TV;>;"
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    .line 54
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 55
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 56
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 57
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 58
    return-void
.end method
