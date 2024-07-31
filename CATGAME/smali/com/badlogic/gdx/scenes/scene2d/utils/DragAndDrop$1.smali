.class Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;
.source "DragAndDrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->addSource(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

.field final synthetic val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    .line 52
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;-><init>()V

    return-void
.end method


# virtual methods
.method public drag(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 16
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I

    .line 73
    move-object/from16 v0, p0

    move/from16 v7, p4

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    if-nez v1, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->activePointer:I

    if-eq v7, v1, :cond_1

    return-void

    .line 76
    :cond_1
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-virtual {v1, v8, v9, v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->drag(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v11

    .line 80
    .local v11, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v1, :cond_2

    .line 81
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 82
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 86
    :cond_2
    const/4 v1, 0x0

    .line 87
    .local v1, "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->isValidTarget:Z

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v2

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->touchOffsetX:F

    add-float v12, v2, v4

    .local v12, "stageX":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v2

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->touchOffsetY:F

    add-float v13, v2, v4

    .line 89
    .local v13, "stageY":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v12, v13, v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    .line 90
    .local v2, "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-nez v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v4

    invoke-virtual {v4, v12, v13, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    :cond_3
    move-object v14, v2

    .line 91
    .end local v2    # "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .local v14, "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v14, :cond_5

    .line 92
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->targets:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 93
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->targets:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    .line 94
    .local v4, "target":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    iget-object v5, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v5, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isAscendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 92
    .end local v4    # "target":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .restart local v4    # "target":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    :cond_4
    move-object v1, v4

    .line 96
    iget-object v5, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v6, v12, v13}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 97
    move-object v15, v1

    goto :goto_1

    .line 101
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local v4    # "target":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    :cond_5
    move-object v15, v1

    .end local v1    # "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    .local v15, "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    :goto_1
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    if-eq v15, v1, :cond_7

    .line 102
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->reset(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;)V

    .line 103
    :cond_6
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object v15, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    .line 106
    :cond_7
    if-eqz v15, :cond_8

    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iget-object v3, v6, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v1, v15

    move-object v7, v6

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->drag(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;FFI)Z

    move-result v1

    iput-boolean v1, v7, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->isValidTarget:Z

    .line 109
    :cond_8
    const/4 v1, 0x0

    .line 110
    .local v1, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-boolean v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->isValidTarget:Z

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->validDragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    goto :goto_2

    :cond_9
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->invalidDragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :goto_2
    move-object v1, v2

    .line 111
    :cond_a
    if-nez v1, :cond_b

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    iget-object v1, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 112
    :cond_b
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object v1, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 113
    if-nez v1, :cond_c

    return-void

    .line 114
    :cond_c
    invoke-virtual {v11, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActorX:F

    add-float/2addr v2, v3

    .line 116
    .local v2, "actorX":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v3

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActorY:F

    add-float/2addr v3, v4

    .line 117
    .local v3, "actorY":F
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-boolean v4, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->keepWithinStage:Z

    if-eqz v4, :cond_10

    .line 118
    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-gez v5, :cond_d

    const/4 v2, 0x0

    .line 119
    :cond_d
    cmpg-float v4, v3, v4

    if-gez v4, :cond_e

    const/4 v3, 0x0

    .line 120
    :cond_e
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v4

    add-float/2addr v4, v2

    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f

    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v4

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    move v2, v4

    .line 121
    :cond_f
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v4

    add-float/2addr v4, v3

    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_10

    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v4

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v5

    sub-float v3, v4, v5

    .line 123
    :cond_10
    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    .line 124
    return-void
.end method

.method public dragStart(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 5
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I

    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->activePointer:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stop()V

    .line 56
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput p4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->activePointer:I

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragTime:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragValidTime:J

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragSource:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    .line 63
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->getTouchDownX()F

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->getTouchDownY()F

    move-result v3

    invoke-virtual {v1, p1, v2, v3, p4}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->dragStart(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    .line 64
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stop()V

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->cancelTouchFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 68
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocusExcept(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 70
    .end local v0    # "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    :cond_1
    return-void
.end method

.method public dragStop(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 12
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I

    .line 127
    move-object v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->activePointer:I

    move/from16 v9, p4

    if-eq v9, v1, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    const/4 v2, -0x1

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->activePointer:I

    .line 129
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    if-nez v1, :cond_1

    return-void

    .line 131
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-wide v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragValidTime:J

    cmp-long v1, v1, v3

    const/4 v10, 0x0

    if-gez v1, :cond_2

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-boolean v10, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->isValidTarget:Z

    .line 132
    :cond_2
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 133
    :cond_3
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->isValidTarget:Z

    if-eqz v1, :cond_4

    .line 134
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v1

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->touchOffsetX:F

    add-float/2addr v1, v2

    .local v1, "stageX":F
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v2

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->touchOffsetY:F

    add-float v8, v2, v3

    .line 135
    .local v8, "stageY":F
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v1, v8}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 136
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->drop(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;FFI)V

    .line 138
    .end local v1    # "stageX":F
    .end local v8    # "stageY":F
    :cond_4
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v7, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->isValidTarget:Z

    const/4 v11, 0x0

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    move-object v8, v1

    goto :goto_0

    :cond_5
    move-object v8, v11

    :goto_0
    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->dragStop(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;)V

    .line 139
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->reset(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;)V

    .line 140
    :cond_6
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object v11, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragSource:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    .line 141
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object v11, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    .line 142
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object v11, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    .line 143
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-boolean v10, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->isValidTarget:Z

    .line 144
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object v11, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 145
    return-void
.end method
