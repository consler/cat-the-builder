.class public Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;
.super Lcom/badlogic/gdx/graphics/g3d/Attribute;
.source "CubemapAttribute.java"


# static fields
.field public static final EnvironmentMap:J

.field public static final EnvironmentMapAlias:Ljava/lang/String; = "environmentCubemap"

.field protected static Mask:J


# instance fields
.field public final textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<",
            "Lcom/badlogic/gdx/graphics/Cubemap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const-string v0, "environmentCubemap"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->EnvironmentMap:J

    .line 28
    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->Mask:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .param p1, "type"    # J

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attribute;-><init>(J)V

    .line 38
    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->is(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    .line 40
    return-void

    .line 38
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Invalid type specified"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(JLcom/badlogic/gdx/graphics/Cubemap;)V
    .locals 1
    .param p1, "type"    # J
    .param p3, "texture"    # Lcom/badlogic/gdx/graphics/Cubemap;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;-><init>(J)V

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    iput-object p3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    .line 50
    return-void
.end method

.method public constructor <init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)V
    .locals 1
    .param p1, "type"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/Cubemap;",
            ">(J",
            "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    .local p3, "textureDescription":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;-><init>(J)V

    .line 44
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->set(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;)V
    .locals 3
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;

    .line 53
    iget-wide v0, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->type:J

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)V

    .line 54
    return-void
.end method

.method public static final is(J)Z
    .locals 4
    .param p0, "mask"    # J

    .line 31
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->Mask:J

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public compareTo(Lcom/badlogic/gdx/graphics/g3d/Attribute;)I
    .locals 4
    .param p1, "o"    # Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .line 70
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->type:J

    iget-wide v2, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->type:J

    iget-wide v2, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->compareTo(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 24
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->compareTo(Lcom/badlogic/gdx/graphics/g3d/Attribute;)I

    move-result p1

    return p1
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .locals 1

    .line 58
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;-><init>(Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 63
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->hashCode()I

    move-result v0

    .line 64
    .local v0, "result":I
    mul-int/lit16 v1, v0, 0x3c7

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 65
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
