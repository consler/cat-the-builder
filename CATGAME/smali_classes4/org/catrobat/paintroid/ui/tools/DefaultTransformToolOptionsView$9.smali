.class final Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$9;
.super Ljava/lang/Object;
.source "DefaultTransformToolOptionsView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$9;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "it"    # Landroid/view/View;

    .line 99
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$9;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->access$getCallback$p(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$9;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;

    invoke-static {v1}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->access$getResizeSeekBar$p(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)Landroidx/appcompat/widget/AppCompatSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;->applyResizeClicked(I)V

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$9;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->access$getCallback$p(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;->hideToolOptions()V

    .line 101
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$9;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->access$getResizeSeekBar$p(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)Landroidx/appcompat/widget/AppCompatSeekBar;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 102
    return-void
.end method
