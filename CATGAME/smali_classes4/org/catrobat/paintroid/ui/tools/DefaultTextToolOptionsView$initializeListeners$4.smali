.class final Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$4;
.super Ljava/lang/Object;
.source "DefaultTextToolOptionsView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;->initializeListeners()V
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
        "v",
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
.field final synthetic this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$4;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 94
    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    .line 95
    .local v0, "underlined":Z
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$4;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;

    invoke-static {v1, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;->access$notifyUnderlinedChanged(Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;Z)V

    .line 96
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$4;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;

    invoke-static {v1}, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;->access$hideKeyboard(Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;)V

    .line 97
    .end local v0    # "underlined":Z
    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.widget.Checkable"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
