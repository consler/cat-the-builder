.class public final Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView$initializeListeners$7;
.super Ljava/lang/Object;
.source "DefaultShapeToolOptionsView.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView;->initializeListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "org/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView$initializeListeners$7",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "onProgressChanged",
        "",
        "seekBar",
        "Landroid/widget/SeekBar;",
        "progress",
        "",
        "fromUser",
        "",
        "onStartTrackingTouch",
        "onStopTrackingTouch",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView$initializeListeners$7;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    move v0, p2

    .line 97
    .local v0, "currentProgress":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 100
    :cond_0
    if-eqz p3, :cond_1

    .line 101
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 103
    :cond_1
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView$initializeListeners$7;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView;

    invoke-static {v1}, Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView;->access$getOutlineWidthEditText$p(Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView$initializeListeners$7;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView;

    invoke-static {v1, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView;->access$onOutlineWidthChanged(Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView;I)V

    .line 105
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    return-void
.end method
