.class public final Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$1;
.super Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;
.source "DefaultTransformToolOptionsView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "org/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$1",
        "Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;",
        "setValue",
        "",
        "value",
        "",
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$1;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;

    .line 66
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method protected setValue(F)V
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$1;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->access$getCallback$p(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;->setBoxWidth(F)V

    :goto_0
    return-void
.end method
