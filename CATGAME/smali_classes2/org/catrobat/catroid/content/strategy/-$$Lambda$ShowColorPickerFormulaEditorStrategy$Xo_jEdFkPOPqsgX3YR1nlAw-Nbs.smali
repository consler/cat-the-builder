.class public final synthetic Lorg/catrobat/catroid/content/strategy/-$$Lambda$ShowColorPickerFormulaEditorStrategy$Xo_jEdFkPOPqsgX3YR1nlAw-Nbs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/content/strategy/ShowColorPickerFormulaEditorStrategy;

.field public final synthetic f$1:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/content/strategy/ShowColorPickerFormulaEditorStrategy;Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/content/strategy/-$$Lambda$ShowColorPickerFormulaEditorStrategy$Xo_jEdFkPOPqsgX3YR1nlAw-Nbs;->f$0:Lorg/catrobat/catroid/content/strategy/ShowColorPickerFormulaEditorStrategy;

    iput-object p2, p0, Lorg/catrobat/catroid/content/strategy/-$$Lambda$ShowColorPickerFormulaEditorStrategy$Xo_jEdFkPOPqsgX3YR1nlAw-Nbs;->f$1:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;

    iput-object p3, p0, Lorg/catrobat/catroid/content/strategy/-$$Lambda$ShowColorPickerFormulaEditorStrategy$Xo_jEdFkPOPqsgX3YR1nlAw-Nbs;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lorg/catrobat/catroid/content/strategy/-$$Lambda$ShowColorPickerFormulaEditorStrategy$Xo_jEdFkPOPqsgX3YR1nlAw-Nbs;->f$0:Lorg/catrobat/catroid/content/strategy/ShowColorPickerFormulaEditorStrategy;

    iget-object v1, p0, Lorg/catrobat/catroid/content/strategy/-$$Lambda$ShowColorPickerFormulaEditorStrategy$Xo_jEdFkPOPqsgX3YR1nlAw-Nbs;->f$1:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;

    iget-object v2, p0, Lorg/catrobat/catroid/content/strategy/-$$Lambda$ShowColorPickerFormulaEditorStrategy$Xo_jEdFkPOPqsgX3YR1nlAw-Nbs;->f$2:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/catrobat/catroid/content/strategy/ShowColorPickerFormulaEditorStrategy;->lambda$showSelectEditDialog$0$ShowColorPickerFormulaEditorStrategy(Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;Landroid/view/View;Landroid/content/DialogInterface;I)V

    return-void
.end method
