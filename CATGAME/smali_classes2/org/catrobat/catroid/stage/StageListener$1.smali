.class Lorg/catrobat/catroid/stage/StageListener$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "StageListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/stage/StageListener;->initStageInputListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/stage/StageListener;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/stage/StageListener;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/stage/StageListener;

    .line 352
    iput-object p1, p0, Lorg/catrobat/catroid/stage/StageListener$1;->this$0:Lorg/catrobat/catroid/stage/StageListener;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .line 355
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v1

    invoke-static {v0, v1, p4}, Lorg/catrobat/catroid/utils/TouchUtil;->touchDown(FFI)V

    .line 356
    const/4 v0, 0x1

    return v0
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I

    .line 366
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v1

    invoke-static {v0, v1, p4}, Lorg/catrobat/catroid/utils/TouchUtil;->updatePosition(FFI)V

    .line 367
    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .line 361
    invoke-static {p4}, Lorg/catrobat/catroid/utils/TouchUtil;->touchUp(I)V

    .line 362
    return-void
.end method
