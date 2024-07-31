.class final Lorg/catrobat/paintroid/ui/LayerAdapter$getView$2;
.super Ljava/lang/Object;
.source "LayerAdapter.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/ui/LayerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "event",
        "Landroid/view/MotionEvent;",
        "onTouch"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $localConvertView:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $position:I

.field final synthetic this$0:Lorg/catrobat/paintroid/ui/LayerAdapter;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/LayerAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;I)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$getView$2;->this$0:Lorg/catrobat/paintroid/ui/LayerAdapter;

    iput-object p2, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$getView$2;->$localConvertView:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput p3, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$getView$2;->$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "$noName_0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 84
    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$getView$2;->this$0:Lorg/catrobat/paintroid/ui/LayerAdapter;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/LayerAdapter;->getPresenter()Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->onStopDragging()V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$getView$2;->$localConvertView:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .local v0, "it":Landroid/view/View;
    const/4 v2, 0x0

    .line 86
    .local v2, "$i$a$-let-LayerAdapter$getView$2$1":I
    iget-object v3, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$getView$2;->this$0:Lorg/catrobat/paintroid/ui/LayerAdapter;

    invoke-virtual {v3}, Lorg/catrobat/paintroid/ui/LayerAdapter;->getPresenter()Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    move-result-object v3

    iget v4, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$getView$2;->$position:I

    invoke-interface {v3, v4, v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->onStartDragging(ILandroid/view/View;)V

    .line 87
    nop

    .line 85
    .end local v0    # "it":Landroid/view/View;
    .end local v2    # "$i$a$-let-LayerAdapter$getView$2$1":I
    nop

    .line 89
    :cond_2
    :goto_0
    nop

    .line 91
    return v1
.end method
