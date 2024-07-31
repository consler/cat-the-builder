.class public Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;
.super Lcom/badlogic/gdx/graphics/g3d/Attribute;
.source "BlendingAttribute.java"


# static fields
.field public static final Alias:Ljava/lang/String; = "blended"

.field public static final Type:J


# instance fields
.field public blended:Z

.field public destFunction:I

.field public opacity:F

.field public sourceFunction:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const-string v0, "blended"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;-><init>(Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;)V

    .line 45
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "opacity"    # F

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;-><init>(ZF)V

    .line 69
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "sourceFunc"    # I
    .param p2, "destFunc"    # I

    .line 60
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;-><init>(IIF)V

    .line 61
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .param p1, "sourceFunc"    # I
    .param p2, "destFunc"    # I
    .param p3, "opacity"    # F

    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;-><init>(ZIIF)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;)V
    .locals 4
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    .line 72
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->blended:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez p1, :cond_2

    const/16 v1, 0x302

    goto :goto_2

    :cond_2
    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->sourceFunction:I

    :goto_2
    if-nez p1, :cond_3

    const/16 v2, 0x303

    goto :goto_3

    :cond_3
    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->destFunction:I

    :goto_3
    if-nez p1, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_4
    iget v3, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->opacity:F

    :goto_4
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;-><init>(ZIIF)V

    .line 74
    return-void
.end method

.method public constructor <init>(ZF)V
    .locals 2
    .param p1, "blended"    # Z
    .param p2, "opacity"    # F

    .line 64
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;-><init>(ZIIF)V

    .line 65
    return-void
.end method

.method public constructor <init>(ZIIF)V
    .locals 2
    .param p1, "blended"    # Z
    .param p2, "sourceFunc"    # I
    .param p3, "destFunc"    # I
    .param p4, "opacity"    # F

    .line 48
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attribute;-><init>(J)V

    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->opacity:F

    .line 49
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->blended:Z

    .line 50
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->sourceFunction:I

    .line 51
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->destFunction:I

    .line 52
    iput p4, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->opacity:F

    .line 53
    return-void
.end method

.method public static final is(J)Z
    .locals 2
    .param p0, "mask"    # J

    .line 29
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    and-long/2addr v0, p0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public compareTo(Lcom/badlogic/gdx/graphics/g3d/Attribute;)I
    .locals 5
    .param p1, "o"    # Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .line 93
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->type:J

    iget-wide v2, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->type:J

    iget-wide v2, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 94
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    .line 95
    .local v0, "other":Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->blended:Z

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->blended:Z

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    return v3

    .line 96
    :cond_2
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->sourceFunction:I

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->sourceFunction:I

    if-eq v1, v2, :cond_3

    sub-int/2addr v1, v2

    return v1

    .line 97
    :cond_3
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->destFunction:I

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->destFunction:I

    if-eq v1, v2, :cond_4

    sub-int/2addr v1, v2

    return v1

    .line 98
    :cond_4
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->opacity:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->opacity:F

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->opacity:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->opacity:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    goto :goto_1

    :cond_6
    move v3, v4

    :goto_1
    return v3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 24
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->compareTo(Lcom/badlogic/gdx/graphics/g3d/Attribute;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->copy()Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;
    .locals 1

    .line 78
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;-><init>(Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 83
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->hashCode()I

    move-result v0

    .line 84
    .local v0, "result":I
    mul-int/lit16 v1, v0, 0x3b3

    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->blended:Z

    add-int/2addr v1, v2

    .line 85
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit16 v0, v1, 0x3b3

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->sourceFunction:I

    add-int/2addr v0, v2

    .line 86
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit16 v1, v0, 0x3b3

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->destFunction:I

    add-int/2addr v1, v2

    .line 87
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit16 v0, v1, 0x3b3

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->opacity:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 88
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
