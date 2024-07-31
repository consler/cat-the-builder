.class Lorg/catrobat/catroid/content/bricks/UserDataBrick$3;
.super Ljava/lang/Object;
.source "UserDataBrick.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/content/bricks/UserDataBrick;->onNewOptionSelected(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/content/bricks/UserDataBrick;

.field final synthetic val$brickData:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/content/bricks/UserDataBrick;Lorg/catrobat/catroid/content/bricks/Brick$BrickData;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/content/bricks/UserDataBrick;

    .line 219
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick$3;->this$0:Lorg/catrobat/catroid/content/bricks/UserDataBrick;

    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick$3;->val$brickData:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 222
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick$3;->this$0:Lorg/catrobat/catroid/content/bricks/UserDataBrick;

    invoke-static {v0}, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->access$000(Lorg/catrobat/catroid/content/bricks/UserDataBrick;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick$3;->val$brickData:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick$3;->this$0:Lorg/catrobat/catroid/content/bricks/UserDataBrick;

    iget-object v1, v1, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->userDataList:Lorg/catrobat/catroid/content/bricks/UserDataHashMap;

    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick$3;->val$brickData:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/common/Nameable;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Lorg/catrobat/catroid/common/Nameable;)V

    .line 223
    return-void
.end method
