.class Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->key(ILjava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

.field final synthetic val$keycode:I

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;ILjava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    .line 257
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->val$keycode:I

    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "keycode2"    # I

    .line 259
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->val$keycode:I

    if-ne v0, p2, :cond_0

    .line 261
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4$1;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    .line 269
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
