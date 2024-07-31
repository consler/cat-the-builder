.class Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter$1;
.super Ljava/lang/Object;
.source "BrickSpinner.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;

.field final synthetic val$item:Lorg/catrobat/catroid/common/Nameable;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;Lorg/catrobat/catroid/common/Nameable;)V
    .locals 0
    .param p1, "this$1"    # Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;

    .line 230
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter$1;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter$1;"
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter$1;->this$1:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;

    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter$1;->val$item:Lorg/catrobat/catroid/common/Nameable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 233
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter$1;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter$1;"
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter$1;->val$item:Lorg/catrobat/catroid/common/Nameable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter$1;->this$1:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;

    iget-object v0, v0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->this$0:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    invoke-static {v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->access$100(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;)Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter$1;->this$1:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;

    iget-object v1, v1, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->this$0:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    invoke-static {v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->access$000(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;->onNewOptionSelected(Ljava/lang/Integer;)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter$1;->val$item:Lorg/catrobat/catroid/common/Nameable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/catrobat/catroid/content/bricks/brickspinner/EditOption;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter$1;->this$1:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;

    iget-object v0, v0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->this$0:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    invoke-static {v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->access$100(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;)Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter$1;->this$1:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;

    iget-object v1, v1, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->this$0:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    invoke-static {v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->access$000(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;->onEditOptionSelected(Ljava/lang/Integer;)V

    .line 240
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
