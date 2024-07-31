.class Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "List.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/List;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    .line 127
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "toActor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 155
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;"
    const/4 v0, -0x1

    if-nez p4, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->pressedIndex:I

    .line 156
    :cond_0
    if-ne p4, v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->overIndex:I

    .line 157
    :cond_1
    return-void
.end method

.method public mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 150
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getItemIndexAt(F)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->overIndex:I

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 4
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .line 129
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;"
    const/4 v0, 0x1

    if-nez p4, :cond_5

    if-eqz p5, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_3

    return v0

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getItemIndexAt(F)I

    move-result v1

    .line 134
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    return v0

    .line 135
    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->choose(Ljava/lang/Object;)V

    .line 136
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iput v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->pressedIndex:I

    .line 137
    return v0

    .line 129
    .end local v1    # "index":I
    :cond_5
    :goto_0
    return v0
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I

    .line 146
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getItemIndexAt(F)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->overIndex:I

    .line 147
    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .line 141
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;"
    if-nez p4, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    const/4 v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->pressedIndex:I

    .line 143
    return-void

    .line 141
    :cond_1
    :goto_0
    return-void
.end method
