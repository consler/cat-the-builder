.class Lorg/catrobat/catroid/stage/StageActivity$1;
.super Landroid/os/Handler;
.source "StageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/stage/StageActivity;->setupAskHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/stage/StageActivity;

.field final synthetic val$currentStage:Lorg/catrobat/catroid/stage/StageActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/stage/StageActivity;Landroid/os/Looper;Lorg/catrobat/catroid/stage/StageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/stage/StageActivity;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 201
    iput-object p1, p0, Lorg/catrobat/catroid/stage/StageActivity$1;->this$0:Lorg/catrobat/catroid/stage/StageActivity;

    iput-object p3, p0, Lorg/catrobat/catroid/stage/StageActivity$1;->val$currentStage:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .line 204
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 206
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    .line 221
    sget-object v1, Lorg/catrobat/catroid/stage/StageActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message in messagehandler, case "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageActivity$1;->this$0:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/catrobat/catroid/stage/StageActivity;->access$100(Lorg/catrobat/catroid/stage/StageActivity;Ljava/lang/String;)V

    .line 219
    goto :goto_0

    .line 214
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageActivity$1;->this$0:Lorg/catrobat/catroid/stage/StageActivity;

    iget-object v1, v1, Lorg/catrobat/catroid/stage/StageActivity;->brickDialogManager:Lorg/catrobat/catroid/stage/BrickDialogManager;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/stage/BrickDialogManager$DialogType;

    .line 215
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 214
    invoke-virtual {v1, v2, v3, v4}, Lorg/catrobat/catroid/stage/BrickDialogManager;->showDialog(Lorg/catrobat/catroid/stage/BrickDialogManager$DialogType;Lcom/badlogic/gdx/scenes/scene2d/Action;Ljava/lang/String;)V

    .line 216
    goto :goto_0

    .line 211
    :cond_2
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageActivity$1;->val$currentStage:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lorg/catrobat/catroid/stage/StageActivity;->access$000(Lorg/catrobat/catroid/stage/StageActivity;I)V

    .line 212
    goto :goto_0

    .line 208
    :cond_3
    iget-object v1, p0, Lorg/catrobat/catroid/stage/StageActivity$1;->val$currentStage:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/stage/StageActivity$IntentListener;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/stage/StageActivity;->queueIntent(Lorg/catrobat/catroid/stage/StageActivity$IntentListener;)V

    .line 209
    nop

    .line 223
    :goto_0
    return-void
.end method
