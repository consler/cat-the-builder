.class public Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;
.super Lcom/badlogic/gdx/graphics/g3d/Attribute;
.source "IntAttribute.java"


# static fields
.field public static final CullFace:J

.field public static final CullFaceAlias:Ljava/lang/String; = "cullface"


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-string v0, "cullface"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->CullFace:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "type"    # J

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attribute;-><init>(J)V

    .line 33
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0
    .param p1, "type"    # J
    .param p3, "value"    # I

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attribute;-><init>(J)V

    .line 37
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->value:I

    .line 38
    return-void
.end method

.method public static createCullFace(I)Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;
    .locals 3
    .param p0, "value"    # I

    .line 26
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->CullFace:J

    invoke-direct {v0, v1, v2, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;-><init>(JI)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/badlogic/gdx/graphics/g3d/Attribute;)I
    .locals 4
    .param p1, "o"    # Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .line 54
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->type:J

    iget-wide v2, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->type:J

    iget-wide v2, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 55
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->value:I

    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->value:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 21
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->compareTo(Lcom/badlogic/gdx/graphics/g3d/Attribute;)I

    move-result p1

    return p1
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .locals 4

    .line 42
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;

    iget-wide v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->type:J

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->value:I

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;-><init>(JI)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 47
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->hashCode()I

    move-result v0

    .line 48
    .local v0, "result":I
    mul-int/lit16 v1, v0, 0x3d7

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->value:I

    add-int/2addr v1, v2

    .line 49
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
