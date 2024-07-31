.class public Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
.super Lcom/badlogic/gdx/graphics/g3d/Attribute;
.source "TextureAttribute.java"


# static fields
.field public static final Ambient:J

.field public static final AmbientAlias:Ljava/lang/String; = "ambientTexture"

.field public static final Bump:J

.field public static final BumpAlias:Ljava/lang/String; = "bumpTexture"

.field public static final Diffuse:J

.field public static final DiffuseAlias:Ljava/lang/String; = "diffuseTexture"

.field public static final Emissive:J

.field public static final EmissiveAlias:Ljava/lang/String; = "emissiveTexture"

.field protected static Mask:J = 0x0L

.field public static final Normal:J

.field public static final NormalAlias:Ljava/lang/String; = "normalTexture"

.field public static final Reflection:J

.field public static final ReflectionAlias:Ljava/lang/String; = "reflectionTexture"

.field public static final Specular:J

.field public static final SpecularAlias:Ljava/lang/String; = "specularTexture"


# instance fields
.field public offsetU:F

.field public offsetV:F

.field public scaleU:F

.field public scaleV:F

.field public final textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;"
        }
    .end annotation
.end field

.field public uvIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 29
    const-string v0, "diffuseTexture"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    .line 31
    const-string v0, "specularTexture"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Specular:J

    .line 33
    const-string v0, "bumpTexture"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Bump:J

    .line 35
    const-string v0, "normalTexture"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Normal:J

    .line 37
    const-string v0, "ambientTexture"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Ambient:J

    .line 39
    const-string v0, "emissiveTexture"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Emissive:J

    .line 41
    const-string v0, "reflectionTexture"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Reflection:J

    .line 43
    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Specular:J

    or-long/2addr v2, v4

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Bump:J

    or-long/2addr v2, v4

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Normal:J

    or-long/2addr v2, v4

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Ambient:J

    or-long/2addr v2, v4

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Emissive:J

    or-long/2addr v2, v4

    or-long/2addr v0, v2

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Mask:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .param p1, "type"    # J

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attribute;-><init>(J)V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    .line 107
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    .line 108
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    .line 109
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->uvIndex:I

    .line 117
    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->is(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    .line 119
    return-void

    .line 117
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Invalid type specified"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(JLcom/badlogic/gdx/graphics/Texture;)V
    .locals 1
    .param p1, "type"    # J
    .param p3, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(J)V

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    iput-object p3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    .line 144
    return-void
.end method

.method public constructor <init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0
    .param p1, "type"    # J
    .param p3, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(J)V

    .line 148
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->set(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 149
    return-void
.end method

.method public constructor <init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)V
    .locals 1
    .param p1, "type"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">(J",
            "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<",
            "TT;>;)V"
        }
    .end annotation

    .line 122
    .local p3, "textureDescription":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(J)V

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->set(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)V

    .line 124
    return-void
.end method

.method public constructor <init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V
    .locals 9
    .param p1, "type"    # J
    .param p4, "offsetU"    # F
    .param p5, "offsetV"    # F
    .param p6, "scaleU"    # F
    .param p7, "scaleV"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">(J",
            "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<",
            "TT;>;FFFF)V"
        }
    .end annotation

    .line 138
    .local p3, "textureDescription":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFFI)V

    .line 139
    return-void
.end method

.method public constructor <init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFFI)V
    .locals 0
    .param p1, "type"    # J
    .param p4, "offsetU"    # F
    .param p5, "offsetV"    # F
    .param p6, "scaleU"    # F
    .param p7, "scaleV"    # F
    .param p8, "uvIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">(J",
            "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<",
            "TT;>;FFFFI)V"
        }
    .end annotation

    .line 128
    .local p3, "textureDescription":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)V

    .line 129
    iput p4, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    .line 130
    iput p5, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    .line 131
    iput p6, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    .line 132
    iput p7, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    .line 133
    iput p8, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->uvIndex:I

    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;)V
    .locals 9
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    .line 152
    iget-wide v1, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->type:J

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    iget v4, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    iget v5, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    iget v7, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    iget v8, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->uvIndex:I

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFFI)V

    .line 154
    return-void
.end method

.method public static createAmbient(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3
    .param p0, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .line 82
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Ambient:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/Texture;)V

    return-object v0
.end method

.method public static createAmbient(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3
    .param p0, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 86
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Ambient:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v0
.end method

.method public static createBump(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3
    .param p0, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .line 74
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Bump:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/Texture;)V

    return-object v0
.end method

.method public static createBump(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3
    .param p0, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 78
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Bump:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v0
.end method

.method public static createDiffuse(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3
    .param p0, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/Texture;)V

    return-object v0
.end method

.method public static createDiffuse(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3
    .param p0, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v0
.end method

.method public static createEmissive(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3
    .param p0, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .line 90
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Emissive:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/Texture;)V

    return-object v0
.end method

.method public static createEmissive(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3
    .param p0, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 94
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Emissive:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v0
.end method

.method public static createNormal(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3
    .param p0, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .line 66
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Normal:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/Texture;)V

    return-object v0
.end method

.method public static createNormal(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3
    .param p0, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 70
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Normal:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v0
.end method

.method public static createReflection(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3
    .param p0, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .line 98
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Reflection:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/Texture;)V

    return-object v0
.end method

.method public static createReflection(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3
    .param p0, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 102
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Reflection:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v0
.end method

.method public static createSpecular(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3
    .param p0, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .line 58
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Specular:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/Texture;)V

    return-object v0
.end method

.method public static createSpecular(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 3
    .param p0, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Specular:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v0
.end method

.method public static final is(J)Z
    .locals 4
    .param p0, "mask"    # J

    .line 46
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Mask:J

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
    .locals 7
    .param p1, "o"    # Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .line 183
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->type:J

    iget-wide v2, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->type:J

    iget-wide v5, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 184
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    .line 185
    .local v0, "other":Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->compareTo(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)I

    move-result v3

    .line 186
    .local v3, "c":I
    if-eqz v3, :cond_2

    return v3

    .line 187
    :cond_2
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->uvIndex:I

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->uvIndex:I

    if-eq v4, v5, :cond_3

    sub-int/2addr v4, v5

    return v4

    .line 188
    :cond_3
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    invoke-static {v4, v5}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v4

    if-nez v4, :cond_5

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    move v1, v2

    :cond_4
    return v1

    .line 189
    :cond_5
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    invoke-static {v4, v5}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v4

    if-nez v4, :cond_7

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    move v1, v2

    :cond_6
    return v1

    .line 190
    :cond_7
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    invoke-static {v4, v5}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v4

    if-nez v4, :cond_9

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    move v1, v2

    :cond_8
    return v1

    .line 191
    :cond_9
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    invoke-static {v4, v5}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v4

    if-nez v4, :cond_b

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    move v1, v2

    :cond_a
    return v1

    .line 192
    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->compareTo(Lcom/badlogic/gdx/graphics/g3d/Attribute;)I

    move-result p1

    return p1
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .locals 1

    .line 166
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 171
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->hashCode()I

    move-result v0

    .line 172
    .local v0, "result":I
    mul-int/lit16 v1, v0, 0x3df

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 173
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit16 v0, v1, 0x3df

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 174
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit16 v1, v0, 0x3df

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 175
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit16 v0, v1, 0x3df

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 176
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit16 v1, v0, 0x3df

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 177
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit16 v0, v1, 0x3df

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->uvIndex:I

    add-int/2addr v0, v2

    .line 178
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public set(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    .line 158
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    .line 159
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    .line 160
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    .line 161
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    .line 162
    return-void
.end method
