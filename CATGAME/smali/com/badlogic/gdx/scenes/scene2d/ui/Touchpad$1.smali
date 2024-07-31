.class Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "Touchpad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;-><init>(FLcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;

    .line 70
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 3
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->touched:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->touched:Z

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;

    invoke-virtual {v0, p2, p3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->calculatePositionAndValue(FFZ)V

    .line 76
    return v2
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->calculatePositionAndValue(FFZ)V

    .line 82
    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->touched:Z

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;

    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->resetOnTouchUp:Z

    invoke-virtual {v0, p2, p3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->calculatePositionAndValue(FFZ)V

    .line 88
    return-void
.end method
