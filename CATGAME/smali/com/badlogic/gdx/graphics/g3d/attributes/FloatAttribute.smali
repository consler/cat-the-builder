.class public Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;
.super Lcom/badlogic/gdx/graphics/g3d/Attribute;
.source "FloatAttribute.java"


# static fields
.field public static final AlphaTest:J

.field public static final AlphaTestAlias:Ljava/lang/String; = "alphaTest"

.field public static final Shininess:J

.field public static final ShininessAlias:Ljava/lang/String; = "shininess"


# instance fields
.field public value:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-string v0, "shininess"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->Shininess:J

    .line 32
    const-string v0, "alphaTest"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "type"    # J

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attribute;-><init>(J)V

    .line 42
    return-void
.end method

.method public constructor <init>(JF)V
    .locals 0
    .param p1, "type"    # J
    .param p3, "value"    # F

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attribute;-><init>(J)V

    .line 46
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->value:F

    .line 47
    return-void
.end method

.method public static createAlphaTest(F)Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;
    .locals 3
    .param p0, "value"    # F

    .line 35
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;-><init>(JF)V

    return-object v0
.end method

.method public static createShininess(F)Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;
    .locals 3
    .param p0, "value"    # F

    .line 28
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->Shininess:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;-><init>(JF)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/badlogic/gdx/graphics/g3d/Attribute;)I
    .locals 4
    .param p1, "o"    # Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .line 63
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->type:J

    iget-wide v2, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->type:J

    iget-wide v2, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 64
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->value:F

    .line 65
    .local v0, "v":F
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->value:F

    invoke-static {v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->value:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->compareTo(Lcom/badlogic/gdx/graphics/g3d/Attribute;)I

    move-result p1

    return p1
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .locals 4

    .line 51
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    iget-wide v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->type:J

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->value:F

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;-><init>(JF)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 56
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->hashCode()I

    move-result v0

    .line 57
    .local v0, "result":I
    mul-int/lit16 v1, v0, 0x3d1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->value:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 58
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
