.class Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1$1;
.super Ljava/lang/Object;
.source "FormulaEditorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->handleLongClick(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;

    .line 322
    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1$1;->this$1:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 325
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1$1;->this$1:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->access$000(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 326
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1$1;->this$1:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->access$100(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->isThereSomethingToDelete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1$1;->this$1:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1;->this$0:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->access$100(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment$1$1;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->handleKeyEvent(ILjava/lang/String;)V

    .line 329
    :cond_0
    return-void
.end method
