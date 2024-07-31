.class Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$2;
.super Ljava/lang/Object;
.source "FormulaEditorEditText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    .line 262
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$2;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 265
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$2;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->access$500(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$2;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-static {v1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->access$500(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, -0x1000000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$2;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->invalidate()V

    .line 267
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$2;->this$0:Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->access$600(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 268
    return-void
.end method
