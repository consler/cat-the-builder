.class public Lcom/badlogic/gdx/graphics/g3d/ModelInstance;
.super Ljava/lang/Object;
.source "ModelInstance.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;


# static fields
.field public static defaultShareKeyframes:Z


# instance fields
.field public final animations:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Animation;",
            ">;"
        }
    .end annotation
.end field

.field public final materials:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Material;",
            ">;"
        }
    .end annotation
.end field

.field public final model:Lcom/badlogic/gdx/graphics/g3d/Model;

.field public final nodes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;"
        }
    .end annotation
.end field

.field public transform:Lcom/badlogic/gdx/math/Matrix4;

.field public userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->defaultShareKeyframes:Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;)V
    .locals 1
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 62
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;[Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;FFF)V
    .locals 1
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 188
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;)V

    .line 189
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p2, p3, p4}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 190
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 194
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;[Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"    # Lcom/badlogic/gdx/math/Matrix4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/Model;",
            "Lcom/badlogic/gdx/math/Matrix4;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p3, "rootNodeIds":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->defaultShareKeyframes:Z

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/utils/Array;Z)V

    .line 169
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/utils/Array;Z)V
    .locals 1
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p4, "shareKeyframes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/Model;",
            "Lcom/badlogic/gdx/math/Matrix4;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 172
    .local p3, "rootNodeIds":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    .line 173
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 174
    if-nez p2, :cond_0

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    .line 175
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNodes(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)V

    .line 176
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v0, p4}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyAnimations(Ljava/lang/Iterable;Z)V

    .line 177
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    .line 178
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p3, "nodeId"    # Ljava/lang/String;
    .param p4, "mergeTransform"    # Z

    .line 77
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p3, "nodeId"    # Ljava/lang/String;
    .param p4, "parentTransform"    # Z
    .param p5, "mergeTransform"    # Z

    .line 97
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V
    .locals 8
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p3, "nodeId"    # Ljava/lang/String;
    .param p4, "recursive"    # Z
    .param p5, "parentTransform"    # Z
    .param p6, "mergeTransform"    # Z

    .line 118
    sget-boolean v7, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->defaultShareKeyframes:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZZ)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZZ)V
    .locals 4
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p3, "nodeId"    # Ljava/lang/String;
    .param p4, "recursive"    # Z
    .param p5, "parentTransform"    # Z
    .param p6, "mergeTransform"    # Z
    .param p7, "shareKeyframes"    # Z

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    .line 129
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 130
    if-nez p2, :cond_0

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    .line 131
    invoke-virtual {p1, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/Model;->getNode(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    .line 132
    .local v0, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->copy()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v2

    move-object v3, v2

    .local v3, "copy":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 133
    if-eqz p6, :cond_2

    .line 134
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    if-eqz p5, :cond_1

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    :goto_1
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 135
    iget-object v1, v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 136
    iget-object v1, v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Quaternion;->idt()Lcom/badlogic/gdx/math/Quaternion;

    .line 137
    iget-object v1, v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_2

    .line 138
    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->hasParent()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getParent()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v2

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 139
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->invalidate()V

    .line 140
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v1, p7}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyAnimations(Ljava/lang/Iterable;Z)V

    .line 141
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    .line 142
    return-void
.end method

.method public varargs constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;[Ljava/lang/String;)V
    .locals 2
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p3, "rootNodeIds"    # [Ljava/lang/String;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    .line 151
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 152
    if-nez p2, :cond_0

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    .line 153
    if-nez p3, :cond_1

    .line 154
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNodes(Lcom/badlogic/gdx/utils/Array;)V

    goto :goto_1

    .line 156
    :cond_1
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNodes(Lcom/badlogic/gdx/utils/Array;[Ljava/lang/String;)V

    .line 157
    :goto_1
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    sget-boolean v1, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->defaultShareKeyframes:Z

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyAnimations(Ljava/lang/Iterable;Z)V

    .line 158
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    .line 159
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "position"    # Lcom/badlogic/gdx/math/Vector3;

    .line 182
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;)V

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 184
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/Model;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 163
    .local p2, "rootNodeIds":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/utils/Array;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "nodeId"    # Ljava/lang/String;
    .param p3, "mergeTransform"    # Z

    .line 69
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "nodeId"    # Ljava/lang/String;
    .param p3, "parentTransform"    # Z
    .param p4, "mergeTransform"    # Z

    .line 86
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Ljava/lang/String;ZZZ)V
    .locals 7
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "nodeId"    # Ljava/lang/String;
    .param p3, "recursive"    # Z
    .param p4, "parentTransform"    # Z
    .param p5, "mergeTransform"    # Z

    .line 107
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V

    .line 108
    return-void
.end method

.method public varargs constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;[Ljava/lang/String;)V
    .locals 1
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "rootNodeIds"    # [Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;[Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;)V
    .locals 1
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    .line 199
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 200
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/ModelInstance;
    .param p2, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 204
    sget-boolean v0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->defaultShareKeyframes:Z

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;Lcom/badlogic/gdx/math/Matrix4;Z)V

    .line 205
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;Lcom/badlogic/gdx/math/Matrix4;Z)V
    .locals 1
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/ModelInstance;
    .param p2, "transform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p3, "shareKeyframes"    # Z

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    .line 209
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 210
    if-nez p2, :cond_0

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    .line 211
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNodes(Lcom/badlogic/gdx/utils/Array;)V

    .line 212
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyAnimations(Ljava/lang/Iterable;Z)V

    .line 213
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    .line 214
    return-void
.end method

.method private copyNodes(Lcom/badlogic/gdx/utils/Array;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;)V"
        }
    .end annotation

    .line 222
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/model/Node;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 223
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 224
    .local v2, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->copy()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 222
    .end local v2    # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->invalidate()V

    .line 227
    return-void
.end method

.method private copyNodes(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 243
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/model/Node;>;"
    .local p2, "nodeIds":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 244
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 245
    .local v2, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 246
    .local v4, "nodeId":Ljava/lang/String;
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 247
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->copy()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 248
    goto :goto_2

    .line 250
    .end local v4    # "nodeId":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 243
    .end local v2    # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_2
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->invalidate()V

    .line 253
    return-void
.end method

.method private varargs copyNodes(Lcom/badlogic/gdx/utils/Array;[Ljava/lang/String;)V
    .locals 7
    .param p2, "nodeIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 230
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/model/Node;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 231
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 232
    .local v2, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    array-length v3, p2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, p2, v4

    .line 233
    .local v5, "nodeId":Ljava/lang/String;
    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 234
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->copy()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 235
    goto :goto_2

    .line 232
    .end local v5    # "nodeId":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 230
    .end local v2    # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_2
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->invalidate()V

    .line 240
    return-void
.end method

.method private invalidate()V
    .locals 3

    .line 282
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 283
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->invalidate(Lcom/badlogic/gdx/graphics/g3d/model/Node;)V

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method private invalidate(Lcom/badlogic/gdx/graphics/g3d/model/Node;)V
    .locals 7
    .param p1, "node"    # Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 258
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 259
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    .line 260
    .local v2, "part":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    .line 261
    .local v3, "bindPose":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/math/Matrix4;>;"
    if-eqz v3, :cond_0

    .line 262
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget v5, v3, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge v4, v5, :cond_0

    .line 263
    iget-object v5, v3, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    check-cast v5, [Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v6, v3, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    check-cast v6, [Lcom/badlogic/gdx/graphics/g3d/model/Node;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v6

    aput-object v6, v5, v4

    .line 262
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 266
    .end local v4    # "j":I
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 267
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v4

    .line 268
    .local v4, "midx":I
    if-gez v4, :cond_1

    .line 269
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g3d/Material;->copy()Lcom/badlogic/gdx/graphics/g3d/Material;

    move-result-object v6

    iput-object v6, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 271
    :cond_1
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/Material;

    iput-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 258
    .end local v2    # "part":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    .end local v3    # "bindPose":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/math/Matrix4;>;"
    .end local v4    # "midx":I
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getChildCount()I

    move-result v1

    .restart local v1    # "n":I
    :goto_3
    if-ge v0, v1, :cond_4

    .line 275
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getChild(I)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->invalidate(Lcom/badlogic/gdx/graphics/g3d/model/Node;)V

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 277
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_4
    return-void
.end method


# virtual methods
.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 1
    .param p1, "out"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 415
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 416
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public calculateTransforms()V
    .locals 4

    .line 402
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 403
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_0

    .line 404
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateTransforms(Z)V

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 407
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateBoneTransforms(Z)V

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 409
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/ModelInstance;
    .locals 1

    .line 218
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;)V

    return-object v0
.end method

.method public copyAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;)V
    .locals 1
    .param p1, "sourceAnim"    # Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    .line 307
    sget-boolean v0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->defaultShareKeyframes:Z

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;Z)V

    .line 308
    return-void
.end method

.method public copyAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;Z)V
    .locals 11
    .param p1, "sourceAnim"    # Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .param p2, "shareKeyframes"    # Z

    .line 314
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/Animation;-><init>()V

    .line 315
    .local v0, "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    .line 316
    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    .line 317
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;

    .line 318
    .local v2, "nanim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v3

    .line 319
    .local v3, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    if-nez v3, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    new-instance v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;-><init>()V

    .line 321
    .local v4, "nodeAnim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    iput-object v3, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 322
    if-eqz p2, :cond_1

    .line 323
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    iput-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    .line 324
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    iput-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    .line 325
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    iput-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    goto/16 :goto_4

    .line 327
    :cond_1
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    if-eqz v5, :cond_2

    .line 328
    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    .line 329
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    .line 330
    .local v6, "kf":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    new-instance v8, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    iget-object v10, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .end local v6    # "kf":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    goto :goto_1

    .line 332
    :cond_2
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    if-eqz v5, :cond_3

    .line 333
    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    .line 334
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    .line 335
    .local v6, "kf":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<Lcom/badlogic/gdx/math/Quaternion;>;"
    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    new-instance v8, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    iget-object v10, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .end local v6    # "kf":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<Lcom/badlogic/gdx/math/Quaternion;>;"
    goto :goto_2

    .line 337
    :cond_3
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    if-eqz v5, :cond_4

    .line 338
    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    .line 339
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    .line 340
    .local v6, "kf":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    new-instance v8, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v9, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    iget-object v10, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .end local v6    # "kf":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    goto :goto_3

    .line 343
    :cond_4
    :goto_4
    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    if-nez v5, :cond_5

    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    if-nez v5, :cond_5

    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    if-eqz v5, :cond_6

    .line 344
    :cond_5
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 345
    .end local v2    # "nanim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    .end local v3    # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .end local v4    # "nodeAnim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    :cond_6
    goto/16 :goto_0

    .line 346
    :cond_7
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 347
    :cond_8
    return-void
.end method

.method public copyAnimations(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Animation;",
            ">;)V"
        }
    .end annotation

    .line 290
    .local p1, "source":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/badlogic/gdx/graphics/g3d/model/Animation;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    .line 291
    .local v1, "anim":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    sget-boolean v2, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->defaultShareKeyframes:Z

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;Z)V

    .line 292
    .end local v1    # "anim":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    goto :goto_0

    .line 293
    :cond_0
    return-void
.end method

.method public copyAnimations(Ljava/lang/Iterable;Z)V
    .locals 2
    .param p2, "shareKeyframes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Animation;",
            ">;Z)V"
        }
    .end annotation

    .line 299
    .local p1, "source":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/badlogic/gdx/graphics/g3d/model/Animation;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    .line 300
    .local v1, "anim":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    invoke-virtual {p0, v1, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;Z)V

    .line 301
    .end local v1    # "anim":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    goto :goto_0

    .line 302
    :cond_0
    return-void
.end method

.method public extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 3
    .param p1, "out"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 424
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 425
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 426
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v1    # "i":I
    :cond_0
    return-object p1
.end method

.method public getAnimation(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 433
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .line 440
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 442
    .local v0, "n":I
    if-eqz p2, :cond_2

    .line 443
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 444
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    move-object v3, v2

    .local v3, "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v3

    .line 443
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v3    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    :cond_1
    goto :goto_2

    .line 446
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 447
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    move-object v3, v2

    .restart local v3    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v3

    .line 446
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 449
    .end local v1    # "i":I
    .end local v3    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    :cond_4
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMaterial(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/Material;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 455
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getMaterial(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/Material;

    move-result-object v0

    return-object v0
.end method

.method public getMaterial(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/Material;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .line 462
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 464
    .local v0, "n":I
    if-eqz p2, :cond_2

    .line 465
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 466
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Material;

    move-object v3, v2

    .local v3, "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v3

    .line 465
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v3    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_1
    goto :goto_2

    .line 468
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 469
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Material;

    move-object v3, v2

    .restart local v3    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v3

    .line 468
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 471
    .end local v1    # "i":I
    .end local v3    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_4
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 477
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getNode(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNode(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "recursive"    # Z

    .line 484
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getNode(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNode(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "recursive"    # Z
    .param p3, "ignoreCase"    # Z

    .line 492
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    return-object v0
.end method

.method public getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .locals 2
    .param p1, "out"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 362
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v0

    return-object v0
.end method

.method public getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .locals 2
    .param p1, "out"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "node"    # Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 367
    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/graphics/g3d/model/NodePart;)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v0

    return-object v0
.end method

.method public getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/graphics/g3d/model/NodePart;)Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .locals 2
    .param p1, "out"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "node"    # Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .param p3, "nodePart"    # Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    .line 371
    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->setRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 372
    iget-object v0, p3, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v1, p2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_0

    .line 377
    :cond_1
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 378
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->userData:Ljava/lang/Object;

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->userData:Ljava/lang/Object;

    .line 379
    return-object p1
.end method

.method protected getRenderables(Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V
    .locals 3
    .param p1, "node"    # Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;)V"
        }
    .end annotation

    .line 383
    .local p2, "renderables":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    .local p3, "pool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_1

    .line 384
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    .line 385
    .local v1, "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->enabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-virtual {p0, v2, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/graphics/g3d/model/NodePart;)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 386
    .end local v1    # "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    :cond_0
    goto :goto_0

    .line 389
    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getChildren()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 390
    .local v1, "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    invoke-virtual {p0, v1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getRenderables(Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    .line 391
    .end local v1    # "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    goto :goto_1

    .line 392
    :cond_2
    return-void
.end method

.method public getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;)V"
        }
    .end annotation

    .line 355
    .local p1, "renderables":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    .local p2, "pool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 356
    .local v1, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    invoke-virtual {p0, v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getRenderables(Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    .line 357
    .end local v1    # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    goto :goto_0

    .line 358
    :cond_0
    return-void
.end method
