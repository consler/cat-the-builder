.class public Lcom/badlogic/gdx/graphics/g3d/Material;
.super Lcom/badlogic/gdx/graphics/g3d/Attributes;
.source "Material.java"


# static fields
.field private static counter:I


# instance fields
.field public id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/Material;->counter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mtl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/badlogic/gdx/graphics/g3d/Material;->counter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/badlogic/gdx/graphics/g3d/Material;->counter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Material;)V
    .locals 1
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 62
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/Material;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Attribute;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "attributes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Attribute;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Ljava/lang/Iterable;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/Material;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 67
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/Material;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .line 69
    .local v1, "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->copy()Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .end local v1    # "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/utils/Array;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Attribute;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p2, "attributes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Attribute;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Ljava/lang/Iterable;)V

    .line 58
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/badlogic/gdx/graphics/g3d/Attribute;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "attributes"    # [Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .line 44
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/Material;->set([Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 46
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/g3d/Attribute;)V
    .locals 0
    .param p1, "attributes"    # [Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .line 38
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Material;->set([Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 40
    return-void
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/graphics/g3d/Material;
    .locals 1

    .line 74
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>(Lcom/badlogic/gdx/graphics/g3d/Material;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 84
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/Material;

    if-eqz v0, :cond_1

    if-eq p1, p0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/Material;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method
