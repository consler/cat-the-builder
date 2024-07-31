.class Lorg/catrobat/catroid/ui/fragment/SingleSeekBar$1;
.super Ljava/lang/Object;
.source "SingleSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;->getView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;

    .line 65
    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar$1;->this$0:Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "i"    # I
    .param p3, "b"    # Z

    .line 68
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar$1;->this$0:Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;->access$000(Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 73
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 77
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar$1;->this$0:Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;->access$200(Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;)Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar$1;->this$0:Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;->access$100(Lorg/catrobat/catroid/ui/fragment/SingleSeekBar;)Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 78
    return-void
.end method
