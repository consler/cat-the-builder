.class public Lcom/badlogic/gdx/scenes/scene2d/Stage;
.super Lcom/badlogic/gdx/InputAdapter;
.source "Stage.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    }
.end annotation


# static fields
.field static debug:Z


# instance fields
.field private actionsRequestRendering:Z

.field private final batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

.field private debugAll:Z

.field private final debugColor:Lcom/badlogic/gdx/graphics/Color;

.field private debugInvisible:Z

.field private debugParentUnderMouse:Z

.field private debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

.field private debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

.field private debugUnderMouse:Z

.field private keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private mouseOverActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private mouseScreenX:I

.field private mouseScreenY:I

.field private ownsBatch:Z

.field private final pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private final pointerScreenX:[I

.field private final pointerScreenY:[I

.field private final pointerTouched:[Z

.field private root:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field private scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private final tempCoords:Lcom/badlogic/gdx/math/Vector2;

.field final touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SnapshotArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;",
            ">;"
        }
    .end annotation
.end field

.field private viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 92
    new-instance v0, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    int-to-float v3, v3

    new-instance v4, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;-><init>(Lcom/badlogic/gdx/utils/Scaling;FFLcom/badlogic/gdx/graphics/Camera;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(Lcom/badlogic/gdx/utils/viewport/Viewport;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->ownsBatch:Z

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/viewport/Viewport;)V
    .locals 1
    .param p1, "viewport"    # Lcom/badlogic/gdx/utils/viewport/Viewport;

    .line 100
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(Lcom/badlogic/gdx/utils/viewport/Viewport;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->ownsBatch:Z

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/viewport/Viewport;Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 5
    .param p1, "viewport"    # Lcom/badlogic/gdx/utils/viewport/Viewport;
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 107
    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    .line 73
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    .line 74
    const/16 v0, 0x14

    new-array v1, v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 75
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerTouched:[Z

    .line 76
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    .line 77
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    .line 81
    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 82
    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->actionsRequestRendering:Z

    .line 86
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 87
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f59999a    # 0.85f

    invoke-direct {v0, v1, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugColor:Lcom/badlogic/gdx/graphics/Color;

    .line 108
    if-eqz p1, :cond_1

    .line 109
    if-eqz p2, :cond_0

    .line 110
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    .line 111
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 113
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 114
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 116
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->update(IIZ)V

    .line 117
    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "batch cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "viewport cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private disableDebug(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 4
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "except"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 175
    if-ne p1, p2, :cond_0

    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    .line 177
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_1

    .line 178
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 179
    .local v0, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 180
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-direct {p0, v3, p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->disableDebug(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v0    # "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return-void
.end method

.method private drawDebug()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 137
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setAutoShapeType(Z)V

    .line 140
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugUnderMouse:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugParentUnderMouse:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugAll:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_4

    .line 141
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2}, Lcom/badlogic/gdx/Input;->getX()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v3}, Lcom/badlogic/gdx/Input;->getY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 143
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-nez v0, :cond_3

    return-void

    .line 145
    :cond_3
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugParentUnderMouse:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v2, :cond_4

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 147
    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v2, v3, :cond_5

    .line 148
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    goto :goto_3

    .line 150
    :cond_5
    :goto_1
    if-eqz v0, :cond_7

    .line 151
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    if-eqz v1, :cond_6

    goto :goto_2

    .line 152
    :cond_6
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_1

    .line 154
    :cond_7
    :goto_2
    if-nez v0, :cond_8

    return-void

    .line 155
    :cond_8
    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 158
    :goto_3
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugAll:Z

    if-eqz v1, :cond_9

    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 160
    :cond_9
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->disableDebug(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 161
    .end local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    nop

    .line 165
    :cond_a
    :goto_4
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 166
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v2

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 167
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin()V

    .line 168
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 169
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 170
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 171
    return-void
.end method

.method private fireEnterAndExit(Lcom/badlogic/gdx/scenes/scene2d/Actor;III)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3
    .param p1, "overLast"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "screenX"    # I
    .param p3, "screenY"    # I
    .param p4, "pointer"    # I

    .line 227
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 229
    .local v0, "over":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-ne v0, p1, :cond_0

    return-object p1

    .line 232
    :cond_0
    if-eqz p1, :cond_1

    .line 233
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 234
    .local v1, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 235
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 236
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 237
    invoke-virtual {v1, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 238
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->exit:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 239
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 240
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 241
    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 244
    .end local v1    # "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    :cond_1
    if-eqz v0, :cond_2

    .line 245
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 246
    .restart local v1    # "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 247
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 248
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 249
    invoke-virtual {v1, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 250
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->enter:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 251
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 252
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 253
    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 255
    .end local v1    # "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    :cond_2
    return-object v0
.end method


# virtual methods
.method public act()V
    .locals 2

    .line 186
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v0

    const v1, 0x3d088889

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->act(F)V

    .line 187
    return-void
.end method

.method public act(F)V
    .locals 6
    .param p1, "delta"    # F

    .line 194
    const/4 v0, 0x0

    .local v0, "pointer":I
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    array-length v1, v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 195
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aget-object v3, v2, v0

    .line 197
    .local v3, "overLast":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerTouched:[Z

    aget-boolean v4, v4, v0

    if-nez v4, :cond_0

    .line 198
    if-eqz v3, :cond_1

    .line 199
    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 200
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    aget v4, v4, v0

    int-to-float v4, v4

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    aget v5, v5, v0

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 202
    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v2}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 203
    .local v2, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->exit:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 204
    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 205
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 206
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 207
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 208
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 209
    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 210
    invoke-static {v2}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 211
    .end local v2    # "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    goto :goto_1

    .line 215
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    aget v5, v5, v0

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->fireEnterAndExit(Lcom/badlogic/gdx/scenes/scene2d/Actor;III)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v4

    aput-object v4, v2, v0

    .line 194
    .end local v3    # "overLast":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    .end local v0    # "pointer":I
    .end local v1    # "n":I
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    .line 219
    .local v0, "type":Lcom/badlogic/gdx/Application$ApplicationType;
    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Applet:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_4

    .line 220
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseOverActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenX:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenY:I

    const/4 v4, -0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->fireEnterAndExit(Lcom/badlogic/gdx/scenes/scene2d/Actor;III)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseOverActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 222
    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->act(F)V

    .line 223
    return-void
.end method

.method public addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 549
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 550
    return-void
.end method

.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 543
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 544
    return-void
.end method

.method public addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 573
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result v0

    return v0
.end method

.method public addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 561
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result v0

    return v0
.end method

.method public addTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;II)V
    .locals 2
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    .param p2, "listenerActor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p3, "target"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .line 452
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 453
    .local v0, "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    iput-object p2, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 454
    iput-object p3, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 455
    iput-object p1, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 456
    iput p4, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    .line 457
    iput p5, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    .line 458
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->add(Ljava/lang/Object;)V

    .line 459
    return-void
.end method

.method public calculateScissors(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 2
    .param p1, "localRect"    # Lcom/badlogic/gdx/math/Rectangle;
    .param p2, "scissorRect"    # Lcom/badlogic/gdx/math/Rectangle;

    .line 750
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->isDrawing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    .local v0, "transformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    goto :goto_0

    .line 753
    .end local v0    # "transformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    .line 754
    .restart local v0    # "transformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v1, v0, p1, p2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->calculateScissors(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 755
    return-void
.end method

.method public cancelTouchFocus()V
    .locals 1

    .line 508
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocusExcept(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 509
    return-void
.end method

.method public cancelTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 7
    .param p1, "listenerActor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 478
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 479
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 480
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 481
    const/high16 v1, -0x31000000

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 482
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 486
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 487
    .local v1, "touchFocuses":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;>;"
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 488
    .local v2, "items":[Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 489
    aget-object v5, v2, v3

    .line 490
    .local v5, "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq v6, p1, :cond_0

    goto :goto_1

    .line 491
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 492
    :cond_1
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 493
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 494
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 495
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setButton(I)V

    .line 496
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 488
    .end local v5    # "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 499
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 501
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 502
    return-void
.end method

.method public cancelTouchFocusExcept(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 7
    .param p1, "exceptListener"    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    .param p2, "exceptActor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 514
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 515
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 516
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 517
    const/high16 v1, -0x31000000

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 518
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 522
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 523
    .local v1, "touchFocuses":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;>;"
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 524
    .local v2, "items":[Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 525
    aget-object v5, v2, v3

    .line 526
    .local v5, "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    if-ne v6, p1, :cond_0

    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v6, p2, :cond_0

    goto :goto_1

    .line 527
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 528
    :cond_1
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 529
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 530
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 531
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setButton(I)V

    .line 532
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 524
    .end local v5    # "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 535
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 537
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 538
    return-void
.end method

.method public clear()V
    .locals 1

    .line 584
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocusAll()V

    .line 585
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    .line 586
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 833
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->clear()V

    .line 834
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->ownsBatch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->dispose()V

    .line 835
    :cond_0
    return-void
.end method

.method public draw()V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v0

    .line 121
    .local v0, "camera":Lcom/badlogic/gdx/graphics/Camera;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Camera;->update()V

    .line 123
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 126
    .local v1, "batch":Lcom/badlogic/gdx/graphics/g2d/Batch;
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 127
    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->begin()V

    .line 128
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 129
    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->end()V

    .line 131
    sget-boolean v2, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debug:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->drawDebug()V

    .line 132
    :cond_1
    return-void
.end method

.method public getActionsRequestRendering()Z
    .locals 1

    .line 765
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->actionsRequestRendering:Z

    return v0
.end method

.method public getActors()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation

    .line 555
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    return-object v0
.end method

.method public getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    return-object v0
.end method

.method public getCamera()Lcom/badlogic/gdx/graphics/Camera;
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getDebugColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldHeight()F

    move-result v0

    return v0
.end method

.method public getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object v0
.end method

.method public getScrollFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldWidth()F

    move-result v0

    return v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3
    .param p1, "stageX"    # F
    .param p2, "stageY"    # F
    .param p3, "touchable"    # Z

    .line 719
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 720
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public isDebugAll()Z
    .locals 1

    .line 789
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugAll:Z

    return v0
.end method

.method protected isInsideViewport(II)Z
    .locals 6
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I

    .line 839
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenX()I

    move-result v0

    .line 840
    .local v0, "x0":I
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenWidth()I

    move-result v1

    add-int/2addr v1, v0

    .line 841
    .local v1, "x1":I
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenY()I

    move-result v2

    .line 842
    .local v2, "y0":I
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 843
    .local v3, "y1":I
    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    sub-int/2addr v4, p2

    .line 844
    .end local p2    # "screenY":I
    .local v4, "screenY":I
    if-lt p1, v0, :cond_0

    if-ge p1, v1, :cond_0

    if-lt v4, v2, :cond_0

    if-ge v4, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5
.end method

.method public keyDown(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .line 408
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 409
    .local v0, "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 410
    .local v1, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 411
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 412
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setKeyCode(I)V

    .line 413
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 414
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v2

    .line 415
    .local v2, "handled":Z
    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 416
    return v2
.end method

.method public keyTyped(C)Z
    .locals 3
    .param p1, "character"    # C

    .line 436
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 437
    .local v0, "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 438
    .local v1, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 439
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyTyped:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 440
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setCharacter(C)V

    .line 441
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 442
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v2

    .line 443
    .local v2, "handled":Z
    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 444
    return v2
.end method

.method public keyUp(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .line 422
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 423
    .local v0, "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 424
    .local v1, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 425
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 426
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setKeyCode(I)V

    .line 427
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 428
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v2

    .line 429
    .local v2, "handled":Z
    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 430
    return v2
.end method

.method public mouseMoved(II)Z
    .locals 4
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I

    .line 364
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenX:I

    .line 365
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenY:I

    .line 367
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->isInsideViewport(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 371
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 372
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 373
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->mouseMoved:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 374
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 375
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 377
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    .line 378
    .local v1, "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 380
    :cond_1
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 381
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v2

    .line 382
    .local v2, "handled":Z
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 383
    return v2
.end method

.method public removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 579
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result v0

    return v0
.end method

.method public removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 567
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result v0

    return v0
.end method

.method public removeTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;II)V
    .locals 4
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    .param p2, "listenerActor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p3, "target"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .line 464
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 465
    .local v0, "touchFocuses":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;>;"
    iget v1, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 466
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 467
    .local v2, "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    if-ne v3, p1, :cond_0

    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v3, p2, :cond_0

    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v3, p3, :cond_0

    iget v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    if-ne v3, p4, :cond_0

    iget v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    if-ne v3, p5, :cond_0

    .line 469
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeIndex(I)Ljava/lang/Object;

    .line 470
    invoke-static {v2}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 465
    .end local v2    # "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 473
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "screenCoords"    # Lcom/badlogic/gdx/math/Vector2;

    .line 726
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->unproject(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 727
    return-object p1
.end method

.method public scrolled(I)Z
    .locals 4
    .param p1, "amount"    # I

    .line 389
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 391
    .local v0, "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenY:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 393
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 394
    .local v1, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 395
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->scrolled:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 396
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setScrollAmount(I)V

    .line 397
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 398
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 399
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 400
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v2

    .line 401
    .local v2, "handled":Z
    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 402
    return v2
.end method

.method public setActionsRequestRendering(Z)V
    .locals 0
    .param p1, "actionsRequestRendering"    # Z

    .line 761
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->actionsRequestRendering:Z

    .line 762
    return-void
.end method

.method public setDebugAll(Z)V
    .locals 3
    .param p1, "debugAll"    # Z

    .line 780
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugAll:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 781
    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugAll:Z

    .line 782
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 783
    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debug:Z

    goto :goto_0

    .line 785
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    .line 786
    :goto_0
    return-void
.end method

.method public setDebugInvisible(Z)V
    .locals 0
    .param p1, "debugInvisible"    # Z

    .line 775
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugInvisible:Z

    .line 776
    return-void
.end method

.method public setDebugParentUnderMouse(Z)V
    .locals 3
    .param p1, "debugParentUnderMouse"    # Z

    .line 805
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugParentUnderMouse:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 806
    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugParentUnderMouse:Z

    .line 807
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 808
    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debug:Z

    goto :goto_0

    .line 810
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    .line 811
    :goto_0
    return-void
.end method

.method public setDebugTableUnderMouse(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)V
    .locals 3
    .param p1, "debugTableUnderMouse"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 817
    if-nez p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v0, p1, :cond_1

    return-void

    .line 819
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 820
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    .line 821
    sput-boolean v1, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debug:Z

    goto :goto_0

    .line 823
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    .line 824
    :goto_0
    return-void
.end method

.method public setDebugTableUnderMouse(Z)V
    .locals 1
    .param p1, "debugTableUnderMouse"    # Z

    .line 829
    if-eqz p1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setDebugTableUnderMouse(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)V

    .line 830
    return-void
.end method

.method public setDebugUnderMouse(Z)V
    .locals 3
    .param p1, "debugUnderMouse"    # Z

    .line 794
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugUnderMouse:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 795
    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugUnderMouse:Z

    .line 796
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 797
    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debug:Z

    goto :goto_0

    .line 799
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    .line 800
    :goto_0
    return-void
.end method

.method public setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 5
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 606
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 607
    :cond_0
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    .line 608
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 609
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;->keyboard:Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;)V

    .line 610
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 611
    .local v2, "oldKeyboardFocus":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v2, :cond_1

    .line 612
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setFocused(Z)V

    .line 613
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 614
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 616
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->isCancelled()Z

    move-result v3

    xor-int/2addr v3, v1

    .line 617
    .local v3, "success":Z
    if-eqz v3, :cond_2

    .line 618
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 619
    if-eqz p1, :cond_2

    .line 620
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setFocused(Z)V

    .line 621
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 622
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 623
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->isCancelled()Z

    move-result v4

    xor-int/2addr v1, v4

    move v3, v1

    .line 624
    if-nez v3, :cond_2

    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 627
    :cond_2
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 628
    return v3
.end method

.method public setRoot(Lcom/badlogic/gdx/scenes/scene2d/Group;)V
    .locals 2
    .param p1, "root"    # Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 707
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    .line 708
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 709
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 710
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 711
    return-void
.end method

.method public setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 5
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 641
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 642
    :cond_0
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    .line 643
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 644
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;->scroll:Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;)V

    .line 645
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 646
    .local v2, "oldScrollFocus":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v2, :cond_1

    .line 647
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setFocused(Z)V

    .line 648
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 649
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 651
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->isCancelled()Z

    move-result v3

    xor-int/2addr v3, v1

    .line 652
    .local v3, "success":Z
    if-eqz v3, :cond_2

    .line 653
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 654
    if-eqz p1, :cond_2

    .line 655
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setFocused(Z)V

    .line 656
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 657
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 658
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->isCancelled()Z

    move-result v4

    xor-int/2addr v1, v4

    move v3, v1

    .line 659
    if-nez v3, :cond_2

    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 662
    :cond_2
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 663
    return v3
.end method

.method public setViewport(Lcom/badlogic/gdx/utils/viewport/Viewport;)V
    .locals 0
    .param p1, "viewport"    # Lcom/badlogic/gdx/utils/viewport/Viewport;

    .line 681
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    .line 682
    return-void
.end method

.method public stageToScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "stageCoords"    # Lcom/badlogic/gdx/math/Vector2;

    .line 733
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->project(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 734
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 735
    return-object p1
.end method

.method public toScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "coords"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "transformMatrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 743
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->toScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public touchDown(IIII)Z
    .locals 4
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .line 261
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->isInsideViewport(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerTouched:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p3

    .line 264
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    aput p1, v0, p3

    .line 265
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    aput p2, v0, p3

    .line 267
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 269
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 270
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 271
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 272
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 273
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 274
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 275
    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setButton(I)V

    .line 277
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v2, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    .line 278
    .local v1, "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-nez v1, :cond_1

    .line 279
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 283
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v2

    .line 284
    .local v2, "handled":Z
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 285
    return v2
.end method

.method public touchDragged(III)Z
    .locals 7
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "pointer"    # I

    .line 291
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    aput p1, v0, p3

    .line 292
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    aput p2, v0, p3

    .line 293
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenX:I

    .line 294
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenY:I

    .line 296
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 300
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 301
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDragged:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 302
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 303
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 304
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 305
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 307
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 308
    .local v1, "touchFocuses":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;>;"
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 309
    .local v2, "focuses":[Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 310
    aget-object v5, v2, v3

    .line 311
    .local v5, "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    if-eq v6, p3, :cond_1

    goto :goto_1

    .line 312
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/badlogic/gdx/utils/SnapshotArray;->contains(Ljava/lang/Object;Z)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 313
    :cond_2
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 314
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 315
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->handle()V

    .line 309
    .end local v5    # "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 317
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_4
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 319
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v3

    .line 320
    .local v3, "handled":Z
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 321
    return v3
.end method

.method public touchUp(IIII)Z
    .locals 7
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .line 327
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerTouched:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p3

    .line 328
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    aput p1, v0, p3

    .line 329
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    aput p2, v0, p3

    .line 331
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-nez v0, :cond_0

    return v1

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 335
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 336
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 337
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 338
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 339
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 340
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 341
    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setButton(I)V

    .line 343
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 344
    .local v1, "touchFocuses":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;>;"
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 345
    .local v2, "focuses":[Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_5

    .line 346
    aget-object v5, v2, v3

    .line 347
    .local v5, "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    if-ne v6, p3, :cond_4

    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    if-eq v6, p4, :cond_1

    goto :goto_1

    .line 348
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 349
    :cond_2
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 350
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 351
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->handle()V

    .line 352
    :cond_3
    invoke-static {v5}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 345
    .end local v5    # "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 354
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_5
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 356
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v3

    .line 357
    .local v3, "handled":Z
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 358
    return v3
.end method

.method public unfocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 597
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 598
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 600
    :cond_1
    return-void
.end method

.method public unfocusAll()V
    .locals 1

    .line 590
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 591
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 592
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocus()V

    .line 593
    return-void
.end method
