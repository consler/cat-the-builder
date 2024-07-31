.class Lorg/catrobat/catroid/content/Look$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "Look.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/content/Look;->addListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/content/Look;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/content/Look;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/content/Look;

    .line 110
    iput-object p1, p0, Lorg/catrobat/catroid/content/Look$1;->this$0:Lorg/catrobat/catroid/content/Look;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 4
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .line 113
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look$1;->this$0:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0, p2, p3, p4}, Lorg/catrobat/catroid/content/Look;->doTouchDown(FFI)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 114
    return v1

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look$1;->this$0:Lorg/catrobat/catroid/content/Look;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/Look;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 117
    iget-object v0, p0, Lorg/catrobat/catroid/content/Look$1;->this$0:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 118
    .local v0, "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 121
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/content/Look$1;->this$0:Lorg/catrobat/catroid/content/Look;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/Look;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 122
    const/4 v1, 0x0

    return v1
.end method
