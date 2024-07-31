.class final Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$2;
.super Ljava/lang/Object;
.source "DefaultTextToolOptionsView.kt"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "hasFocus",
        "",
        "onFocusChange"
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

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$2;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "$noName_0"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 83
    if-nez p2, :cond_0

    .line 84
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$2;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;->access$hideKeyboard(Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;)V

    .line 86
    :cond_0
    return-void
.end method
